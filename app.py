import json
from pprint import pprint
from flask import Flask, render_template, request, redirect, session
import pymysql
import api
import timetask
import util
import pdfplumber


app = Flask(__name__)
app.debug=True
# 启动定时任务

app.config.from_object(timetask.Config)
timetask.scheduler.init_app(app)
timetask.scheduler.start()
# 启动定时任务 end



# 默认跳登录页
@app.route('/')
def login():  # put application's code here
    return render_template('login.html')


# 跳转首页
@app.route('/index')
def index():  # put application's code here
    return render_template('index.html')

# 跳转工作台
@app.route('/desk')
def desk():
    return render_template('desk.html')


# 跳转销售汇总列表
@app.route('/salessum')
def sales_sum():
    return render_template('salessum.html')

# 跳转SKU简名列表
@app.route('/skuname')
def sku_name():
    return render_template('skuname.html')

# 退出
@app.route('/logout')
def logout():
    return redirect('/')

# 登录校验
@app.route('/loginCheck', methods=['POST'])
def loginCheck():
    # 获取表单提交的数据
    username = request.form.get('username')
    password = request.form.get('password')

    if username=='admin' and password=='123456' :
        return redirect('/index')
    else:
        return render_template('login.html', msg='账号或者密码错误')


# 获取销售信息分页列表
@app.route('/getPageList', methods=['POST'])
def getPageList():
    result = {}
    diaryList = []
    param = request.json
    # param=json.loads(paramJson)
    page = param['page']
    limit = param['limit']
    #ship_time = param['shiptime']
    shiptime = 15
    #order_id = param['orderId']
    #buyer_login_id = param['buyerLoginId']
    page=(page-1)*limit
    # 打开数据库连接
    conn=util.get_conn()
    # 使用cursor()方法获取操作游标
    cursor = conn.cursor()
    count=0
    # SQL 查询语句

    sql="select top "+str(limit)+" * from sellercount1 where SellerSKU not in (select top "+str(page)+" SellerSKU from sellercount1 order by Unit desc ) "
    count_sql = "SELECT count(*) count FROM sellercount1 where 1=1"
    #if order_id != "":
    # sql = sql+" and statusStr like '%"+str(order_id)+"%'"
    #count_sql =count_sql+" and statusStr like '%"+str(order_id)+"%'"

    #if buyer_login_id != "":
    #    sql = sql + " and buyerLoginId like '%" + str(buyer_login_id) + "%'"
    #    count_sql = count_sql + " and buyerLoginId like '%" + str(buyer_login_id) + "%'"
    sql=sql+" order by Unit desc"


    print(sql)
    print(count_sql)
    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        rows = cursor.fetchall()
        for row in rows:  # 遍历列表
            listItem = {}
            for index in range(len(cursor.description)):  # 遍历对象内的属性，添加到 content 字典中
                key = cursor.description[index][0]
                listItem[key] = row[index]

            conn1 = util.get_conn1()        #conn1~listIteam[cnname]行是用SQL查询到中文简名
            seller_sku = listItem.get('SellerSKU')
            print(seller_sku)
            cn_sql = "select cnShortName from skuforname where sku='" + seller_sku + "'"
            cursor1=conn1.cursor()
            cursor1.execute(cn_sql)
            cn_row=cursor1.fetchone()

            listItem["cnName"]=cn_row[0]
            print(listItem)


            diaryList.append(listItem)
           

        cursor.execute(count_sql)
        # 获取所有记录列表
        count = cursor.fetchone()[0]
        # print(count)
        # result={'count':count,'msg':'操作成功','code':'0','data':diaryList}

        # print(json.dumps(diaryList))

    except Exception as e:
        print("出错啦")
        print(e)

    # 关闭数据库连接
    conn.close()
    result['count'] = count
    result['msg'] = '操作成功'
    result['code'] = '0'
    result['data'] = diaryList
    return json.dumps({'data': result}, default=str)

# 获取SKU信息分页列表
@app.route('/skuname', methods=['POST'])
def skuname():
    result = {}
    diaryList = []
    param = request.json
    # param=json.loads(paramJson)
    page = param['page']
    limit = param['limit']
    #order_id = param['orderId']
    #buyer_login_id = param['buyerLoginId']
    page=(page-1)*limit
    # 打开数据库连接
    conn=util.get_conn1()
    # 使用cursor()方法获取操作游标
    cursor = conn.cursor()
    count=0
    # SQL 查询语句

    sql="select top "+str(limit)+" * from skuforname where sku not in (select top "+str(page)+" sku from skuforname ) "
    count_sql = "SELECT count(*) count FROM skuforname where 1=1"
    #if order_id != "":
    # sql = sql+" and statusStr like '%"+str(order_id)+"%'"
    #count_sql =count_sql+" and statusStr like '%"+str(order_id)+"%'"

    #if buyer_login_id != "":
    #    sql = sql + " and buyerLoginId like '%" + str(buyer_login_id) + "%'"
    #    count_sql = count_sql + " and buyerLoginId like '%" + str(buyer_login_id) + "%'"
    #sql=sql+" order by Unit desc"

    print(sql)
    print(count_sql)
    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        rows = cursor.fetchall()
        for row in rows:  # 遍历列表
            listItem = {}
            for index in range(len(cursor.description)):  # 遍历对象内的属性，添加到 content 字典中
                key = cursor.description[index][0]
                listItem[key] = row[index]
            print(listItem)
            diaryList.append(listItem)

        cursor.execute(count_sql)
        # 获取所有记录列表
        count = cursor.fetchone()[0]
        # print(count)
        # result={'count':count,'msg':'操作成功','code':'0','data':diaryList}

        # print(json.dumps(diaryList))

    except:
        print("Error: unable to fetch data")

    # 关闭数据库连接
    conn.close()
    result['count'] = count
    result['msg'] = '操作成功'
    result['code'] = '0'
    result['data'] = diaryList
    return json.dumps({'data': result}, default=str)



@app.route('/updateNote', methods=['POST'])
def updateNote():
    param = request.json
    id = param['id']
    note = param['note']
    # 打开数据库连接
    conn=util.get_conn()

    # 使用cursor()方法获取操作游标
    cursor = conn.cursor()
    sql = "update [order] set note='"+note+"' where id="+str(id)
    print(sql)
    try:
        # 执行SQL语句
        cursor.execute(sql)
        conn.commit()
        conn.close()
    except:
        print("Error: unable to fetch data")

    return json.dumps({'code':200 }, default=str)

@app.route('/replace', methods=['POST'])
def replace():
    param = request.json
    salesday = param['salesday']
    salesday = 'Unit'*10
    print(salesday)
    content = param['content']
    # 打开数据库连接
    conn=util.get_conn()

    # 使用cursor()方法获取操作游标
    cursor = conn.cursor()
    # 先查一下
    select_replace_sql="select * from replace where businessId='"+str(id)+"'"
    print(select_replace_sql)
    cursor.execute(select_replace_sql)
    row=cursor.fetchone()
    print(row)
    sql = "update [order] set content='" + content + "' where businessId='" + str(id)+"'"

    if row == None:
        sql = "insert into replace (businessId,content) values ('" + str(id) + "','" + content + "')"


    try:
        print(sql)
        # 执行SQL语句
        cursor.execute(sql)
        conn.commit()
        conn.close()
    except:
        print("Error: unable to fetch data")

    return json.dumps({'code':200 }, default=str)


# 跳转订单列表
@app.route('/hourList')
def hourList():
    return render_template('hourList.html')

# 获取库存列表(缺货时间)
@app.route('/getHourPageList', methods=['POST'])
@app.route('/getHourPageList', methods=['POST'])
def getHourPageList():
    result = {}
    dataList = []
    param = request.json
    # param=json.loads(paramJson)
    page = param['page']
    limit = param['limit']
    # order_id = param['orderId']
    # buyer_login_id = param['buyerLoginId']
    page=(page-1)*limit
    # 打开数据库连接
    conn=util.get_conn()
    # 使用cursor()方法获取操作游标
    cursor = conn.cursor()
    count=0
    # SQL 查询语句

    sql="select top "+str(limit)+" * from T_ChangeRecord where OrginalData=0 and CurrentData > 0 and SellerId like 'A12TUCUVBEY0FW' and id not in (select top "+str(page)+" id from T_ChangeRecord order by createTime desc) and  ChangeType='Inventory_InStock' and DATEDIFF(day, CreateTime,GETDATE() )<30 and DATEDIFF(day, CreateTime,GETDATE() )>=0"
    count_sql = "SELECT count(*) count FROM T_ChangeRecord where 1=1 and OrginalData=0 and ChangeType='Inventory_InStock' and DATEDIFF(day, CreateTime,GETDATE() )<30 and DATEDIFF(day, CreateTime,GETDATE() )>=0"
    sql=sql+" order by createTime desc"
    print(sql)
    print(count_sql)
    try:
        # 执行SQL语句
        cursor.execute(sql)
        # 获取所有记录列表
        rows = cursor.fetchall()
        for row in rows:  # 遍历列表
            listItem = {}
            for index in range(len(cursor.description)):  # 遍历对象内的属性，添加到 content 字典中
                key = cursor.description[index][0]
                listItem[key] = row[index]
            # 判断currentDate是不是0
            if listItem.get('CurrentData')!='0':
                id=listItem.get('Id')
                seller_id=listItem.get('SellerId')
                create_time=listItem.get('CreateTime')
                seller_sku=listItem.get('SellerSKU')
                orginal_sql = "select * from T_ChangeRecord where  id= (select max(id) from T_ChangeRecord where id<"+str(id)+" and SellerId='"+str(seller_id)+"' and SellerSKU='"+str(seller_sku)+"'  and ChangeType='Inventory_InStock' and DATEDIFF(day, CreateTime,GETDATE() )<30 and DATEDIFF(day, CreateTime,GETDATE() )>=0 ) "
                print(orginal_sql)
                cursor.execute(orginal_sql)
                row=cursor.fetchone()
                # 如果查不到最近的，则查最开始的一条
                if row==None:
                    min_sql = "select top 1 * from T_ChangeRecord where  ChangeType='Inventory_InStock' and DATEDIFF(day, CreateTime,GETDATE() )<30 ORDER BY CreateTime ASC"
                    print(min_sql)
                    cursor.execute(min_sql)
                    min_row = cursor.fetchone()
                    print(min_row)
                    if min_row==None:
                        listItem['hour'] = None
                        min_sql = "select top 1 * from T_ChangeRecord where  and ChangeType='Inventory_InStock' and DATEDIFF(day, CreateTime,GETDATE() )<30 and DATEDIFF(day, CreateTime,GETDATE() )>=0 ) ORDER BY CreateTime ASC "
                    else:
                        # 获取时间差的小时数
                        hour = round((create_time - min_row[3]).total_seconds() / 3600/24)
                        listItem['hour'] = hour

                else:
                    # 获取时间差的小时数
                    hour=round((create_time-row[3]).total_seconds()/3600/24)
                    listItem['hour']=hour
            print(listItem)
            dataList.append(listItem)


        cursor.execute(count_sql)
        # 获取所有记录列表
        count = cursor.fetchone()[0]
        # print(count)
        # result={'count':count,'msg':'操作成功','code':'0','data':diaryList}

        # print(json.dumps(diaryList))

    except Exception as e:
        print(e)
        print("Error: unable to fetch data")

    # 关闭数据库连接
    conn.close()
    result['count'] = count
    result['msg'] = '操作成功'
    result['code'] = '0'
    result['data'] = dataList
    return json.dumps({'data': result}, default=str)

if __name__ == '__main__':
    app.config['SECRET_KEY'] = '2022'
    app.run(host='0.0.0.0',port='3000')
