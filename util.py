import requests
from hashlib import sha1
import hmac
import pymssql


# 工具类

# 使用refresh_token 获取access_token
def getAccessToken(appKey, appSecret, refreshToken):
    # 定义获取accessToken的url
    get_access_token_url = "https://gw.open.1688.com/openapi/param2/1/system.oauth2/getToken/" + appKey + "?grant_type=refresh_token&client_id=" + appKey + "&client_secret=" + appSecret + "&refresh_token=" + refreshToken
    response = requests.get(url=get_access_token_url)
    return response.json()


# 生成签名
def genSignature(appSecret, param):
    return hmac.new(appSecret.encode(), param.encode(), sha1).hexdigest().upper()

# 获取数据库链接
def get_conn():
    # sql服务器名，这里(127.0.0.1)是本地数据库IP
    serverName = '132.232.75.203'
    # 登陆用户名和密码
    userName = 'sa'
    passWord = 'stq123!@#'
    # 建立连接并获取cursor
    conn = pymssql.connect(serverName, userName, passWord, "STQSellerHelper")
    return conn

# 获取数据库链接(本地)
def get_conn1():
    # sql服务器名，这里(127.0.0.1)是本地数据库IP
    serverName = 'sutekus.f3322.net'
    # 登陆用户名和密码
    userName = 'sa'
    passWord = 'huaYD5447020.'
    # 建立连接并获取cursor
    conn = pymssql.connect(serverName, userName, passWord, "commodity")
    return conn
