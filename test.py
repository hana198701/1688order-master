from pprint import pprint

import util
import api
import timetask
import time
import requests
# appKey="3575450"
# appSecret="euheCyNDwMV"
# baseUrl="http://gw.open.1688.com/openapi/"
# orderListUrl="param2/1/com.alibaba.trade/alibaba.trade.getBuyerOrderList/"+appKey
# refreshToken="a24effb7-f97d-42e4-82dd-28cefc57605c"
# refreshToken="9fc511da-264e-4b9c-acbb-65d999fd8919"
# #通过refreshToken换取access_token
# get_access_token_url="https://gw.open.1688.com/openapi/param2/1/system.oauth2/getToken/"+appKey+"?grant_type=refresh_token&client_id="+appKey+"&client_secret="+appSecret+"&refresh_token="+refreshToken
# response = requests.get(url=get_access_token_url)
# resultJson=response.json()
# accessToken=resultJson.get('access_token')
# aopTimestamp=str(int(time.time() * 1000))
# print(aopTimestamp)
# param=orderListUrl+"_aop_timestamp"+aopTimestamp+"access_token"+accessToken
#
# sig=util.genSignature(appSecret,param)
# print(sig)
# result=util.getAccessToken(appKey,appSecret,refreshToken)
# print(result)
# pprint(api.get_order_list("fb70122b-b758-49d3-827f-fbdddca47226"))
# result= api.get_order_trace("2829728450828411134", "1688","df011bd7-a645-4a4c-95c9-790f3f2af226")
# pprint(result)
# result = api.get_order_detail("2808362414546803504", "1688","a24effb7-f97d-42e4-82dd-28cefc57605c")
# pprint(result)
timetask.sync_all_data()
# print(103/50)
# for i in range(1,5):
#     print(i)