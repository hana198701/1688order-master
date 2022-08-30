import util
import time
import requests
import math

# 接口调用工具类

base_url = "http://gw.open.1688.com/openapi/"
app_key = "3575450"
app_secret = "euheCyNDwMV"
# refresh_token = "a24effb7-f97d-42e4-82dd-28cefc57605c"
# refresh_token = "89c43049-9821-49b4-96bb-e7c0a0828f9a"


# 获取订单列表
def get_order_list(refresh_token):
    # 获取accessToken
    access_token = util.getAccessToken(app_key, app_secret, refresh_token).get("access_token")
    # print(access_token)
    # 订单列表查看(买家视角)url
    order_list_url = "param2/1/com.alibaba.trade/alibaba.trade.getBuyerOrderList/" + app_key
    # 时间戳
    aopTimestamp = str(int(time.time() * 1000))
    # 签名因子
    param = order_list_url + "_aop_timestamp" + aopTimestamp + "access_token" + access_token+"pageSize50"
    # 获取签名
    aopSignature = util.genSignature(app_secret, param)
    fullOrderListUrl = base_url + order_list_url + "?_aop_timestamp=" + aopTimestamp + "&access_token=" + access_token + "&_aop_signature=" + aopSignature+"&pageSize=50"
    print(fullOrderListUrl)
    # 发送get请求
    response = requests.get(fullOrderListUrl).json()
    order_list=response.get("result")
    print(len(order_list))
    total_record=response.get("totalRecord")
    page=math.ceil(total_record/50)
    page
    for i in range(2,page+1):
        param = order_list_url + "_aop_timestamp" + aopTimestamp + "access_token" + access_token +"page"+str(i)+ "pageSize50"
        # 获取签名
        aop_signature = util.genSignature(app_secret, param)
        full_order_ist_url = base_url + order_list_url + "?_aop_timestamp=" + aopTimestamp + "&access_token=" + access_token + "&_aop_signature=" + aop_signature + "&pageSize=50&page="+str(i)
        print(full_order_ist_url)
        result = requests.get(full_order_ist_url).json().get("result")
        order_list=order_list+result
        print(len(order_list))
    return order_list



# 获取订单详情
def get_order_detail(order_id, web_site,refresh_token):

    # 获取accessToken
    access_token = util.getAccessToken(app_key, app_secret, refresh_token).get("access_token")
    # print(access_token)
    # 订单列表查看(买家视角)url
    url = "param2/1/com.alibaba.trade/alibaba.trade.get.buyerView/" + app_key
    # 时间戳
    aop_timestamp = str(int(time.time() * 1000))
    # 签名因子
    param = url + "_aop_timestamp" + aop_timestamp + "access_token" + access_token + "orderId" + str(order_id) + "webSite" + str(web_site)
    # 获取签名
    aop_signature = util.genSignature(app_secret, param)
    fullUrl = base_url + url + "?_aop_timestamp=" + aop_timestamp + "&access_token=" + access_token + "&_aop_signature=" + aop_signature + "&orderId=" + str(order_id) + "&webSite=" + str(web_site)
    # print(fullUrl)
    # 发送get请求
    result = requests.get(fullUrl)
    return result.json()


# 获取订单物流
def get_order_trace(order_id, web_site,refresh_token):
    print(refresh_token)
    # 获取accessToken
    access_token = util.getAccessToken(app_key, app_secret, refresh_token).get("access_token")
    print(access_token)
    # 订单列表查看(买家视角)url
    url = "param2/1/com.alibaba.logistics/alibaba.trade.getLogisticsTraceInfo.buyerView/" + app_key
    # 时间戳
    aopTimestamp = str(int(time.time() * 1000))
    # 签名因子
    param = url + "_aop_timestamp" + aopTimestamp + "access_token" + access_token + "orderId" + str(order_id) + "webSite" + str(web_site)
    # 获取签名
    aop_signature = util.genSignature(app_secret, param)
    fullUrl = base_url + url + "?_aop_timestamp=" + aopTimestamp + "&access_token=" + access_token + "&_aop_signature=" + aop_signature + "&orderId=" + str(order_id) + "&webSite=" + str(web_site)
    # print(fullUrl)
    # 发送get请求
    result = requests.get(fullUrl)
    return result.json()
