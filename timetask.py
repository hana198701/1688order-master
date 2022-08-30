from pprint import pprint

from flask_apscheduler import APScheduler
from apscheduler.schedulers.background import BackgroundScheduler
import api
import json
import time
# 启动定时任务
import util

scheduler = APScheduler(BackgroundScheduler(timezone="Asia/Shanghai"))


# 定时任务配置

class Config:
    JOBS = [
        {
            "id": "999",
            "func": "timetask:sync_all_data",
            "trigger": "interval",
            "seconds": 60*60*60
        }
    ]
    # 一定要开启API功能，这样才可以用api的方式去查看和修改定时任务
    SCHEDULER_TIMEZONE = 'Asia/Shanghai'
    SCHEDULER_API_ENABLED = True


# 同步订单数据
def sync_all_data():
    print("执行定时任务时间:"+time.strftime('%Y%m%d%H%M%S', time.localtime(time.time())))
    refresh_tokens = []
    conn=util.get_conn()
    cursor = conn.cursor()
    count=0
    # 查询token表中的所有refresh_token
    cursor.execute('SELECT refresh_token FROM token')
    # 获取一条记录
    rows = cursor.fetchall()
    for row in rows:  # 遍历所有refresh_token
        refresh_tokens.append(row[0])

    # print(refresh_tokens)
    for refresh_token in refresh_tokens:
        # 拿到订单列表数据
        order_list_json = api.get_order_list(refresh_token)
        # print(order_list_json)
        # print(refresh_token+"的订单数量为："+str(len(order_list_json)))
        for order_list in order_list_json:
            # pprint(order_list)
            # 拿到每个订单的id
            order_id = str(order_list.get("baseInfo").get("id"))
            print("orderId ", order_id)
            # 如果是UNCREATED则跳过
            if order_id == 'UNCREATED':
                count=count+1
                # print(order_id+" "+count)
                continue
            sync_one_order_data(order_id,refresh_token)
    conn.close()

def sync_one_order_data(order_id, refresh_token):
    conn = util.get_conn()
    cursor = conn.cursor()
    # 拿到订单详情
    order_detail = api.get_order_detail(order_id, 1688, refresh_token).get("result")
    # pprint(order_detail)
    order_detail_base_info = order_detail.get("baseInfo")

    # 下单账号
    buyer_login_id = order_detail_base_info.get("buyerLoginId")
    company_name = order_detail_base_info.get("sellerContact").get("companyName")
    status_str = order_detail.get("productItems")[0].get("statusStr")

    if status_str == "交易取消":
        # print(order_id+status_str)
        return
    create_time = order_detail_base_info.get("createTime")
    phas_amount = str(order_detail.get("tradeTerms")[0].get("phasAmount"))
    pay_channel = ','.join(str(i) for i in order_detail_base_info.get("payChannelList"))
    receive_info = order_detail_base_info.get("receiverInfo").get("toArea")
    if order_detail.get("nativeLogistics").get("logisticsItems")==None:
        logistics_company_name=""
        logistics_bill_no=""
    else:
        logistics_bill_no = order_detail.get("nativeLogistics").get("logisticsItems")[0].get("logisticsBillNo")
        if logistics_bill_no=="不需要物流":
            logistics_company_name=""
        else:
            logistics_company_name = order_detail.get("nativeLogistics").get("logisticsItems")[0].get("logisticsCompanyName")

    product_items = order_detail.get("productItems")
    # 先查询一下是否有该条记录，更新没有插入有则跳过（因为订单里的商品不会变）
    select_product_sql = "select * from product where orderId=" + order_id
    cursor.execute(select_product_sql)
    product_rows = cursor.fetchall()
    if len(product_rows) == 0:
        # 遍历订单中的商品
        for product_item in product_items:
            # pprint(product_item)
            product_name = product_item.get("name")
            product_id = str(product_item.get("productID"))
            price = str(product_item.get("price"))
            quantity = str(product_item.get("quantity"))
            sku_infos = json.dumps(product_item.get("skuInfos"), indent=2, ensure_ascii=False)
            # 插入product商品表
            insert_product_sql = "insert into product (orderId,productName,productID,quantity,price,skuInfo) values (" + order_id + ",'" + product_name + "'," + product_id + "," + quantity + "," + price + ",'" + sku_infos + "')"
            # print(insert_product_sql)
            cursor.execute(insert_product_sql)
            conn.commit()

    # 物流信息
    order_trace = api.get_order_trace(order_id, 1688, refresh_token)
    # 没有物流信息的跳过
    if order_trace.get("errorMessage") != "该订单没有物流跟踪信息。":
        traces = order_trace.get("logisticsTrace")[0].get("logisticsSteps")
        # 先删掉该订单所有物流信息
        del_trace_sql = "delete from trace where orderId=" + order_id
        # print(del_trace_sql)
        cursor.execute(del_trace_sql)
        conn.commit()
        for trace in traces:
            accept_time = trace.get("acceptTime")
            remark = trace.get("remark")
            insert_trace_sql = "insert into trace (orderId,acceptTime,remark) values (" + order_id + ",'" + accept_time + "'," + "'" + remark + "')"
            # print(insert_trace_sql)
            cursor.execute(insert_trace_sql)
            conn.commit()
        # else:
            # print("======================"+order_id+"没有物流信息==================================")

    # 最后把需要的订单数据插入order表，先查询是否已经通步过该订单，有则更新没有则插入
    select_order_sql = "select * from [order] where orderId=" + order_id
    # print(select_order_sql)
    cursor.execute(select_order_sql)
    order_row = cursor.fetchone()
    if order_row == None:

        inser_order_sql = "insert into [order] (orderId,buyerLoginId,companyName,statusStr,createTime,phasAmount,receiverInfo,logisticsCompanyName,logisticsBillNo,payChannel) values (" + order_id + ",'" + buyer_login_id + "','" + company_name + "','" + status_str + "','" + create_time + "','" + phas_amount + "','" + receive_info + "','" + logistics_company_name + "','" + logistics_bill_no + "','" + pay_channel + "')"
        # print(inser_order_sql)
        cursor.execute(inser_order_sql)
        conn.commit()
    else:
        update_order_sql = "update [order] set statusStr='" + status_str + "',phasAmount='" + phas_amount + "',payChannel='" + pay_channel + "',logisticsCompanyName='" + logistics_company_name + "',logisticsBillNo='" + logistics_bill_no + "' where orderId="+order_id
        # print(update_order_sql)
        cursor.execute(update_order_sql)
        conn.commit()
    # 连接用完后记得关闭以释放资源

