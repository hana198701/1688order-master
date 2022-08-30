import time
from pprint import pprint
import requests
from hashlib import sha1
import hmac

# 基本信息
baseUrl="http://gw.open.1688.com/openapi/"
appKey="3575450"
appSecret="euheCyNDwMV"
refreshToken="a24effb7-f97d-42e4-82dd-28cefc57605c"
#通过refreshToken换取access_token
get_access_token_url="https://gw.open.1688.com/openapi/param2/1/system.oauth2/getToken/"+appKey+"?grant_type=refresh_token&client_id="+appKey+"&client_secret="+appSecret+"&refresh_token="+refreshToken
response = requests.get(url=get_access_token_url)
resultJson=response.json()
accessToken=resultJson.get('access_token')
memberId=resultJson.get('memberId')
print(response.json())
print(accessToken)
print(memberId)
# 订单列表查看(买家视角)url
orderListUrl="param2/1/com.alibaba.trade/alibaba.trade.getBuyerOrderList/"+appKey
# 时间戳
aopTimestamp=str(int(time.time() * 1000))

print(aopTimestamp)
# 拼接签名
# 签名因子
param=orderListUrl+"_aop_timestamp"+aopTimestamp+"access_token"+accessToken
print("param",param)
# 加密算法参数顺序：appsercet，要加密的字符串param
hmac_code = hmac.new(appSecret.encode(),param.encode(), sha1)
# 把签名字符串转大写
aopSignature=hmac_code.hexdigest().upper()
print(aopSignature)
print("=========")
# 拼接完整的要发送的url（订单列表查看(买家视角)）
fullOrderListUrl=baseUrl+orderListUrl+"?_aop_timestamp="+aopTimestamp+"&access_token="+accessToken+"&_aop_signature="+aopSignature
print(fullOrderListUrl)
olderListResult=requests.get(fullOrderListUrl)
pprint(olderListResult.json())
