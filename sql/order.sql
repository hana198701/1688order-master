/*
 Navicat Premium Data Transfer

 Source Server         : sqlserver
 Source Server Type    : SQL Server
 Source Server Version : 11003156
 Source Catalog        : order
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 11003156
 File Encoding         : 65001

 Date: 21/08/2022 23:18:30
*/


-- ----------------------------
-- Table structure for order
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[order]') AND type IN ('U'))
	DROP TABLE [dbo].[order]
GO

CREATE TABLE [dbo].[order] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [buyerLoginId] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [companyName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [statusStr] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [createTime] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [phasAmount] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [receiverInfo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [logisticsCompanyName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [logisticsBillNo] nvarchar(255) COLLATE Chinese_PRC_90_CI_AS  NULL,
  [note] nvarchar(4000) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderID] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [payChannel] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[order] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'下单账号',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'buyerLoginId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'卖家公司名',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'companyName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单状态',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'statusStr'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单创建时间',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'createTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实付款',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'phasAmount'
GO

EXEC sp_addextendedproperty
'MS_Description', N'收货地址',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'receiverInfo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'物流公司名称',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'logisticsCompanyName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'物流单号',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'logisticsBillNo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'note'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单编号',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'orderID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'支付渠道',
'SCHEMA', N'dbo',
'TABLE', N'order',
'COLUMN', N'payChannel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单表',
'SCHEMA', N'dbo',
'TABLE', N'order'
GO


-- ----------------------------
-- Records of order
-- ----------------------------
SET IDENTITY_INSERT [dbo].[order] ON
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'307', N'tb9204368391', N'广州洛丽塔服饰有限公司', N'等待买家收货', N'20220812153923000+0800', N'1705', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'中通快递(ZTO)', N'78605607187321', NULL, N'2815955569448411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'308', N'tb9204368391', N'义乌市优道电子厂', N'等待买家收货', N'20220812152638000+0800', N'71', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司
', N'中通快递(ZTO)', N'78606912350490', NULL, N'2815921009631411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'309', N'tb9204368391', N'义乌市蓝鲸玩具有限公司', N'等待卖家发货', N'20220812152158000+0800', N'115.25', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'', N'', NULL, N'2816302682624411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'310', N'tb9204368391', N'深圳市马哥孛罗贸易有限公司', N'等待买家收货', N'20220812150726000+0800', N'453', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'中通快递(ZTO)', N'78605536289846', NULL, N'2815030944109411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'311', N'tb9204368391', N'义乌市竹亭画材有限公司', N'等待买家收货', N'20220812145445000+0800', N'300', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432732037976476', NULL, N'2815843465035411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'312', N'tb9204368391', N'灌云县伊虹服装厂', N'等待买家收货', N'20220812144744000+0800', N'915', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432722332819040', NULL, N'2814982704200411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'313', N'tb9204368391', N'义乌市媛娘帽业有限公司', N'等待买家收货', N'20220812142438000+0800', N'101.95', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'圆通速递(YTO)', N'YT6678649575469', NULL, N'2814930072454411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'314', N'tb9204368391', N'曹县舞动时尚服饰有限公司', N'等待买家收货', N'20220812141901000+0800', N'780', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432722410434042', NULL, N'2816530959306411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'315', N'tb9204368391', N'义乌市纽纶假发厂', N'等待买家收货', N'20220812135540000+0800', N'500', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432723170574809', NULL, N'2814876324884411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'316', N'tb9204368391', N'台州趣匠玩具有限公司', N'等待买家收货', N'20220812135404000+0800', N'840', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'中通快递(ZTO)', N'78605564203742', NULL, N'2816114798900411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'317', N'tb9204368391', N'广州千行贸易有限公司', N'等待买家收货', N'20220812114613000+0800', N'1440', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'圆通速递(YTO)', N'YT6678934931020', NULL, N'2814621012885411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'318', N'tb9204368391', N'义乌爱莎饰品有限公司', N'等待买家收货', N'20220812104725000+0800', N'308.8', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432721666280166', NULL, N'2816048775480411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'319', N'tb9204368391', N'义乌市义乐贸易有限公司', N'等待买家收货', N'20220812100813000+0800', N'190', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432721239023021', NULL, N'2814351516435411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'320', N'tb9204368391', N'义乌市倩影饰品有限公司', N'等待买家收货', N'20220812094927000+0800', N'166.6', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'中通快递(ZTO)', N'78606936249393', NULL, N'2815551722553411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'321', N'tb9204368391', N'义乌市吉茂日用品有限公司', N'等待买家收货', N'20220811164840000+0800', N'10.3', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'中通快递(ZTO)', N'78605347340788', NULL, N'2814955311619411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'322', N'tb9204368391', N'宁波海曙聚鑫塑业有限公司', N'等待买家收货', N'20220811143034000+0800', N'163', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'中通快递(ZTO)', N'73188497956032', NULL, N'2813186700407411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'323', N'tb9204368391', N'义乌市媛娘帽业有限公司', N'等待买家收货', N'20220811142601000+0800', N'303', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6676742201400', NULL, N'2813180256983411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'324', N'tb9204368391', N'义乌市美睿假发有限公司', N'等待买家收货', N'20220811141244000+0800', N'185', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'申通快递(STO)', N'773175588816608', NULL, N'2814401666639411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'325', N'tb9204368391', N'广州市谷富优贸易有限公司', N'交易成功', N'20220809153417000+0800', N'37.5', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432716451388625', NULL, N'2810124612737411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'326', N'tb9204368391', N'义乌市舒旭家居用品有限公司', N'交易成功', N'20220809142654000+0800', N'9.4', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'中通快递(ZTO)', N'78604978527328', NULL, N'2811631755017411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'327', N'tb9204368391', N'杭州宏扬机械厂', N'等待买家收货', N'20220809142242000+0800', N'113.4', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'顺丰速运', N'185695728872', NULL, N'2811618471798411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'328', N'tb9204368391', N'台州市黄岩南跃塑料厂', N'交易成功', N'20220809105000000+0800', N'145', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'5301163376510', NULL, N'2810260189480411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'329', N'tb9204368391', N'杭州十秒户外用品有限公司', N'交易成功', N'20220809100635000+0800', N'80', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432716236605158', NULL, N'2810136745058411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'330', N'tb9204368391', N'台州市黄岩南跃塑料厂', N'交易成功', N'20220804145144000+0800', N'21.8', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'5301163376503', NULL, N'2798550648492411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'331', N'tb9204368391', N'杭州十秒户外用品有限公司', N'交易成功', N'20220802153434000+0800', N'30', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432709607311172', NULL, N'2795548106309411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'383', N'hydawhy1314', N'永康市吉得工贸有限公司', N'等待买家收货', N'20220804143641000+0800', N'40000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'顺丰速运', N'SF1150787758015', NULL, N'2799770294469803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'384', N'hydawhy1314', N'深圳市信恒泰电子有限公司', N'已收货', N'20220802132632000+0800', N'7000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'龙邦速递', N'800239495650', NULL, N'2795721087957803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'385', N'hydawhy1314', N'义乌市雪彩电子商务商行', N'交易成功', N'20220731114441000+0800', N'47780', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'胜发物流', N'00217660060', NULL, N'2790831710609803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'386', N'hydawhy1314', N'义乌市丰创服装辅料厂', N'交易成功', N'20220728121354000+0800', N'650', N'浙江省 宁波市 余姚市 马渚镇黄泥堰路218号', N'圆通速递(YTO)', N'YT6653971717782', NULL, N'2784955286551803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'387', N'hydawhy1314', N'平乡县在路上骑行装备门市', N'已收货', N'20220727114904000+0800', N'60', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773173062455678', NULL, N'2783356491805803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'388', N'hydawhy1314', N'义乌市铭恒烫画有限公司', N'已收货', N'20220727103902000+0800', N'2000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'78601487479886', NULL, N'2782748954143803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'389', N'hydawhy1314', N'福建泉州昌鸿工艺品有限公司', N'交易成功', N'20220726100433000+0800', N'90', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'韵达快递', N'312151836898348', NULL, N'2781148863785803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'390', N'hydawhy1314', N'温州汇聪电气有限公司', N'已收货', N'20220725134442000+0800', N'829', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'韵达快递', N'432690016200094', NULL, N'2779793211814803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'391', N'hydawhy1314', N'太和县皮条孙镇修振休闲户外用品加工厂', N'已收货', N'20220722143933000+0800', N'6460', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'221943749', NULL, N'2773368865663803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'392', N'hydawhy1314', N'余姚市佳诚户外休闲用品有限公司', N'等待卖家发货', N'20220722141201000+0800', N'60600', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'', NULL, N'2774076987908803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'393', N'hydawhy1314', N'丹阳市创科机械制造有限公司', N'已收货', N'20220722123051000+0800', N'8600', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'218020699', NULL, N'2773189909529803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'394', N'hydawhy1314', N'乐清市云腾泵业有限公司', N'交易成功', N'20220722113628000+0800', N'15090', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'80697445640', NULL, N'2773837947412803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'395', N'hydawhy1314', N'永康市名大进出口有限公司', N'交易成功', N'20220722113119000+0800', N'3991.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2773825671808803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'396', N'hydawhy1314', N'永康市航速工贸有限公司', N'交易成功', N'20220722112224000+0800', N'24000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2773424234589803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'397', N'hydawhy1314', N'金华市羽睿家居用品有限公司', N'交易成功', N'20220720110435000+0800', N'807.2', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'700651497105', NULL, N'2768310216824803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'398', N'hydawhy1314', N'义乌市浙锦箱包有限公司', N'等待卖家发货', N'20220719113102000+0800', N'17150', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'', NULL, N'2766505824804803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'399', N'hydawhy1314', N'诸暨市路拓汽保工具厂', N'交易成功', N'20220719113022000+0800', N'7400', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'顺心捷达', N'S60314121945', NULL, N'2768134611547803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'400', N'hydawhy1314', N'上海亨圆顺商贸有限公司', N'交易成功', N'20220716183717000+0800', N'180.5', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16幢101', N'极兔速递', N'JT0005987757551', NULL, N'2762866658825803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'401', N'hydawhy1314', N'义乌市晶辉文体用品商行', N'交易成功', N'20220716110746000+0800', N'4500', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'700607924372', NULL, N'2761497829622803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'402', N'hydawhy1314', N'金华市宏翔绳带厂', N'交易成功', N'20220716103945000+0800', N'16620', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2760560856498803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'403', N'hydawhy1314', N'潍坊圣恩鸿运工艺品制造有限公司', N'交易成功', N'20220714141715000+0800', N'860', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'圆通速递(YTO)', N'YT6623037640019', NULL, N'2758306718932803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'404', N'hydawhy1314', N'义乌市雪彩电子商务商行', N'交易成功', N'20220713182713000+0800', N'46350', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'胜发物流', N'0011955', NULL, N'2757180747727803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'405', N'hydawhy1314', N'宁波市达拉户外用品有限公司', N'交易成功', N'20220713115235000+0800', N'290.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'中通快递(ZTO)', N'75897327437301', NULL, N'2755588033912803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'406', N'hydawhy1314', N'义乌市浙锦箱包有限公司', N'交易成功', N'20220712171400000+0800', N'23140', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500048241911', NULL, N'2754218738036803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'407', N'hydawhy1314', N'义乌市狂风体育用品厂', N'交易成功', N'20220712170427000+0800', N'4764', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'300352309557', NULL, N'2752944912083803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'408', N'hydawhy1314', N'太和县皮条孙镇修振休闲户外用品加工厂', N'交易成功', N'20220712165648000+0800', N'4845', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'80679119824', NULL, N'2752929648011803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'409', N'hydawhy1314', N'温州仁翰包装有限公司', N'交易成功', N'20220712161958000+0800', N'141', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773170586064213', NULL, N'2754117362923803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'410', N'hydawhy1314', N'乐清市钇鑫五金工具有限公司', N'交易成功', N'20220712123842000+0800', N'31.25', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'圆通速递(YTO)', N'YT6618278784941', NULL, N'2754159195807803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'411', N'hydawhy1314', N'乐清市启源工具厂', N'交易成功', N'20220708170910000+0800', N'38.25', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'韵达快递', N'432670255884267', NULL, N'2745296136274803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'412', N'hydawhy1314', N'永康市广华工具厂', N'交易成功', N'20220708170432000+0800', N'46', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'申通快递(STO)', N'773170464732105', NULL, N'2746200025441803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'413', N'hydawhy1314', N'上海增豪包装制品有限公司', N'交易成功', N'20220706110037000+0800', N'1780', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'速通物流', N'0212020735137', NULL, N'2742012794041803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'414', N'hydawhy1314', N'常州市阳源缓冲材料有限公司', N'交易成功', N'20220706104608000+0800', N'56', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'韵达快递', N'312145703600042', NULL, N'2740694472916803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'415', N'hydawhy1314', N'兴化市八方不锈钢制品有限公司', N'交易成功', N'20220705102821000+0800', N'118.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'德邦快递', N'DPK300547128496', NULL, N'2738706192441803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'416', N'hydawhy1314', N'山东东力轴承科技有限公司', N'交易成功', N'20220703094542000+0800', N'16.6', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'圆通速递(YTO)', N'YT6605299982401', NULL, N'2736322239322803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'417', N'hydawhy1314', N'义乌市雪彩电子商务商行', N'交易成功', N'20220702105409000+0800', N'70170', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'胜发物流', N'5000080005', NULL, N'2734438791585803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'418', N'hydawhy1314', N'台州品正轴承有限公司', N'交易成功', N'20220701165834000+0800', N'37', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'中通快递(ZTO)', N'75894061566026', NULL, N'2731530996303803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'419', N'hydawhy1314', N'宁波圆达轴承有限公司', N'交易成功', N'20220701165455000+0800', N'31.8', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'中通快递(ZTO)', N'75894059453389', NULL, N'2732478877401803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'420', N'hydawhy1314', N'温州市瓯海仙岩宏泰机车部件厂', N'交易成功', N'20220630125049000+0800', N'8200', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500029211179', NULL, N'2730889875877803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'421', N'hydawhy1314', N'南京贝石特网络科技有限公司', N'交易成功', N'20220630083324000+0800', N'93', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16幢101', N'中通快递(ZTO)', N'75893611953474', NULL, N'2729613961108803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'422', N'hydawhy1314', N'扬州市新恒鞋业有限公司', N'交易成功', N'20220623092222000+0800', N'29850', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2717283459889803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'423', N'hydawhy1314', N'义乌市光顺日用品有限公司', N'交易成功', N'20220622111618000+0800', N'71', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'75891435075598', NULL, N'2714907529649803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'424', N'hydawhy1314', N'宁波市鄞州横溪福兴五金拉丝厂', N'交易成功', N'20220622093433000+0800', N'7476', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'速通物流', N'8000029269232', NULL, N'2714688397117803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'425', N'hydawhy1314', N'永康市航速工贸有限公司', N'交易成功', N'20220622093309000+0800', N'48000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2715455739899803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'426', N'hydawhy1314', N'深圳市健力达纺织品有限公司', N'交易成功', N'20220621114222000+0800', N'1350', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快递', N'432628379126041', NULL, N'2713466054403803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'427', N'hydawhy1314', N'宁波市达拉户外用品有限公司', N'交易成功', N'20220620162839000+0800', N'2961.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'75890830854222', NULL, N'2710293588594803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'428', N'hydawhy1314', N'通州区五接镇鲁格光学仪器厂', N'交易成功', N'20220620160154000+0800', N'18260', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300502494318', NULL, N'2711473166513803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'429', N'hydawhy1314', N'慈溪市金马光学仪器厂（普通合伙）', N'交易成功', N'20220620130808000+0800', N'2355', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'700621212481', NULL, N'2709846108390803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'430', N'hydawhy1314', N'诸暨市路拓汽保工具厂', N'交易成功', N'20220620125812000+0800', N'3700', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'600009633062', NULL, N'2711585091554803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'431', N'hydawhy1314', N'余姚市特力工具厂', N'交易成功', N'20220620120528000+0800', N'3226', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'800233153018', NULL, N'2710613233868803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'432', N'hydawhy1314', N'泰州市飞鸟特种装备有限公司', N'交易成功', N'20220620101814000+0800', N'3360', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'顺心捷达', N'3505525805', NULL, N'2711095131964803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'358', N'hydawhy1314', N'东莞市瀚宇饰品有限公司', N'等待买家收货', N'20220815155617000+0800', N'46.4', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16幢101', N'圆通速递(YTO)', N'YT6684115588344', NULL, N'2822485718643803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'359', N'hydawhy1314', N'衡水北丰橡塑科技有限公司', N'等待卖家发货', N'20220815101321000+0800', N'10000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'', NULL, N'2822094471170803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'360', N'hydawhy1314', N'广州尚呈皮具箱包厂', N'等待卖家发货', N'20220812100944000+0800', N'32400', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'', NULL, N'2814356844481803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'361', N'hydawhy1314', N'山东康安纺织有限公司', N'等待买家收货', N'20220811154918000+0800', N'167', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'圆通速递(YTO)', N'YT6677052805500', NULL, N'2814499946743803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'362', N'hydawhy1314', N'九江和佳剪具有限公司', N'等待买家收货', N'20220811154824000+0800', N'100', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'圆通速递(YTO)', N'YT2237184379892', NULL, N'2814501242250803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'363', N'hydawhy1314', N'阳江市江城区千源工贸有限公司', N'等待买家收货', N'20220811154730000+0800', N'1878', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'809730814', NULL, N'2814500126207803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'364', N'hydawhy1314', N'临沂市双松园林工具有限公司', N'等待买家收货', N'20220811154714000+0800', N'1650', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'219656082', NULL, N'2814886623202803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'365', N'hydawhy1314', N'温州市瓯海仙岩宏泰机车部件厂', N'等待买家收货', N'20220811100531000+0800', N'17220', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500029211184', NULL, N'2812880016015803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'366', N'hydawhy1314', N'义乌市斑斓电子商务有限公司', N'等待卖家发货', N'20220808140520000+0800', N'4537.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'', NULL, N'2807229816921803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'367', N'hydawhy1314', N'广州市老陈工艺品有限公司', N'交易成功', N'20220808140242000+0800', N'3000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'202185044708', NULL, N'2807227296244803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'368', N'hydawhy1314', N'义乌市韩迈户外用品有限公司', N'等待买家收货', N'20220808134121000+0800', N'1599', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'圆通速递(YTO)', N'YT6693265357718', NULL, N'2808844995910803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'369', N'hydawhy1314', N'北京真彩服饰有限公司', N'等待买家收货', N'20220808130518000+0800', N'44688', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快递', N'432726048086690', NULL, N'2808362414546803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'370', N'hydawhy1314', N'北京佳航博创科技有限公司', N'交易成功', N'20220808123504000+0800', N'1300', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773175054885524', NULL, N'2807053056800803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'371', N'hydawhy1314', N'慈溪市掌起镇凯路五金厂', N'交易成功', N'20220808122205000+0800', N'13360', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500038483437', NULL, N'2808268526758803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'372', N'hydawhy1314', N'余姚市金帅电气动设备有限公司', N'交易成功', N'20220808121920000+0800', N'15800', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300481436971', NULL, N'2808677271370803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'373', N'hydawhy1314', N'义乌市儒慧贸易有限公司', N'已收货', N'20220808115739000+0800', N'3349.44', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'圆通速递(YTO)', N'YT6671861929162', NULL, N'2808206282697803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'374', N'hydawhy1314', N'杭州风友五金机电有限公司', N'交易成功', N'20220808115404000+0800', N'8620', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'万家物流', N'33010001993965', NULL, N'2808607791931803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'375', N'hydawhy1314', N'中山市鸿捷运动用品有限公司', N'交易成功', N'20220808114505000+0800', N'8800', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'320013763310', NULL, N'2806927848088803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'376', N'hydawhy1314', N'上海边城电子科技有限公司', N'已收货', N'20220808111758000+0800', N'3100', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2808492051669803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'377', N'hydawhy1314', N'安平县泊林金属丝网有限公司', N'等待卖家发货', N'20220805155552000+0800', N'9000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'', NULL, N'2800942740089803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'378', N'hydawhy1314', N'苍南县创德织带厂', N'已收货', N'20220805124453000+0800', N'375', N'江苏省 盐城市 东台市 东台中学旁碧桂园菜鸟驿站', N'中通快递(ZTO)', N'78603598667955', NULL, N'2800560384918803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'379', N'hydawhy1314', N'义乌市思赫织带商行', N'已收货', N'20220805122222000+0800', N'280', N'江苏省 盐城市 东台市 东台中学旁碧桂园菜鸟驿站', N'圆通速递(YTO)', N'YT6665592541122', NULL, N'2801749646154803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'380', N'hydawhy1314', N'温州豪鲁电气科技有限公司', N'交易成功', N'20220805110005000+0800', N'528', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'300362719526', NULL, N'2800232568913803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'381', N'hydawhy1314', N'泰州市飞鸟特种装备有限公司', N'交易成功', N'20220805105114000+0800', N'10080', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'顺心捷达', N'S35114220570', NULL, N'2801863371632803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'382', N'hydawhy1314', N'义乌市浙锦箱包有限公司', N'已收货', N'20220805104923000+0800', N'15247', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300516311624', NULL, N'2801858439338803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'332', N'tb9204368391', N'安徽泾县澄心堂宣纸工艺品厂', N'交易成功', N'20220726140703000+0800', N'162', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432691832799215', NULL, N'2781328394268411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'333', N'tb9204368391', N'进贤县文港壹涛制笔厂', N'交易成功', N'20220726131436000+0800', N'98.5', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6646442014077', NULL, N'2781236378565411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'334', N'tb9204368391', N'义乌市志天日用品有限公司', N'交易成功', N'20220722102447000+0800', N'6.29', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'中通快递(ZTO)', N'75899872217087', NULL, N'2772055836974411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'335', N'tb9204368391', N'宁波玩客户外用品有限公司', N'交易成功', N'20220722092906000+0800', N'31', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432684385205270', NULL, N'2771981496284411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'336', N'tb9204368391', N'宣城青弋新文房文化创意有限公司', N'交易成功', N'20220721164120000+0800', N'11.21', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'邮政国内小包', N'9888238875297', NULL, N'2772104257106411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'337', N'tb9204368391', N'广州敖立美化妆品有限公司', N'交易成功', N'20220721114929000+0800', N'28', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432683331935806', NULL, N'2771605693920411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'338', N'tb9204368391', N'宜都市红速电商贸店', N'交易成功', N'20220720115817000+0800', N'27.4', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'申通快递(STO)', N'773171935095572', NULL, N'2768470884981411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'339', N'tb9204368391', N'宁波华盛塑胶制品股份有限公司', N'交易成功', N'20220715145816000+0800', N'25.9', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'申通快递(STO)', N'773171165072505', NULL, N'2760761343335411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'340', N'tb9204368391', N'山东明杭磨料磨具有限公司', N'交易成功', N'20220707141122000+0800', N'128', N'江苏省 苏州市 吴中区 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'圆通速递(YTO)', N'YT6610782192421', NULL, N'2744794803200411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'341', N'tb9204368391', N'义乌市中正日用百货有限公司', N'交易成功', N'20220704131319000+0800', N'567.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'圆通速递(YTO)', N'YT6602635868400', NULL, N'2738818551173411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'342', N'tb9204368391', N'义乌市中正日用百货有限公司', N'交易成功', N'20220628110535000+0800', N'18.5', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6590882765910', NULL, N'2726141293873411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'343', N'tb9204368391', N'潮州市潮安区广凯五金制品有限公司', N'交易成功', N'20220628105117000+0800', N'24.7', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6590927844031', NULL, N'2725106580821411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'344', N'tb9204368391', N'保定白沟新城舍丽夫箱包销售处', N'交易成功', N'20220617133548000+0800', N'58', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6566220205356', NULL, N'2702483894420411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'345', N'tb9204368391', N'山东明杭磨料磨具有限公司', N'交易成功', N'20220616130907000+0800', N'15.3', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6564664956946', NULL, N'2698554780065411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'346', N'tb9204368391', N'义乌市佳成纸制品商行', N'交易成功', N'20220616130719000+0800', N'28', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'中通快递(ZTO)', N'75889212170738', NULL, N'2699788538326411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'347', N'tb9204368391', N'深圳市创信通达科技有限公司', N'交易成功', N'20220616120151000+0800', N'203', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6562208916333', NULL, N'2699597306611411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'348', N'tb9204368391', N'义乌公台贸易有限公司', N'交易成功', N'20220602145400000+0800', N'366', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6531699256280', NULL, N'2669758994780411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'349', N'whyahyd1314', N'汕头市金一诺科技有限公司', N'等待买家收货', N'20220813195313000+0800', N'29', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16-101', N'中通快递(ZTO)', N'78605974320606', NULL, N'1643036882173607283', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'350', N'whyahyd1314', N'深圳市龙岗区亨烁玩具行', N'等待买家收货', N'20220813195312000+0800', N'111', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16-101', N'圆通速递(YTO)', N'YT6684323287131', NULL, N'1643035370977607283', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'351', N'whyahyd1314', N'汕头市澄海区搏信玩具厂', N'等待买家收货', N'20220813195312000+0800', N'41', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16-101', N'中通快递(ZTO)', N'78605997669016', NULL, N'1643081235700607283', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'352', N'whyahyd1314', N'祁县辰星玻璃器皿有限公司', N'等待买家收货', N'20220812202522000+0800', N'38.12', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16-101', N'极兔速递-原百世快递', N'JT3009908982533', NULL, N'2817145370699607283', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'353', N'whyahyd1314', N'汕头市善思尔贸易有限公司', N'交易成功', N'20220725095209000+0800', N'55', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16-101', N'圆通速递(YTO)', N'YT6644329918578', NULL, N'1625290032301607283', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'354', N'whyahyd1314', N'东海县玺品珠宝有限公司', N'交易成功', N'20220705192846000+0800', N'26.5', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16-101', N'中通快递(ZTO)', N'75895268087976', NULL, N'1607985444342607283', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'355', N'whyahyd1314', N'汕头市尚思乐玩具有限公司', N'交易成功', N'20220531135742000+0800', N'117.6', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16-101', N'中通快递(ZTO)', N'75883767883223', NULL, N'1576853832631607283', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'356', N'hydawhy1314', N'永康市龙开金属制品厂', N'等待买家收货', N'20220816165644000+0800', N'68.4', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773176418599625', NULL, N'2823321744941803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'357', N'hydawhy1314', N'义乌市思赫织带商行', N'等待卖家发货', N'20220816163557000+0800', N'325', N'江苏省 盐城市 东台市 东台中学旁碧桂园菜鸟驿站', N'', N'', NULL, N'2824847283889803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'282', N'tb9204368391', N'沧州智趣玩具有限公司', N'等待买家收货', N'20220819132208000+0800', N'11.92', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6691136007883', N'5算法而是方法', N'2829073860875411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'283', N'tb9204368391', N'义乌市纽纶假发厂', N'等待买家收货', N'20220819091128000+0800', N'34', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432733975157428', NULL, N'2829728450828411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'284', N'tb9204368391', N'东莞市皇逸工艺制品有限公司', N'等待买家收货', N'20220818170548000+0800', N'19', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'申通快递(STO)', N'773176829247217', NULL, N'2828059381207411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'285', N'tb9204368391', N'温州市银崛塑膜制品有限公司', N'等待买家收货', N'20220818163132000+0800', N'21.24', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6689754611688', NULL, N'2828354330323411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'286', N'tb9204368391', N'义乌市常申服装厂', N'等待买家收货', N'20220818161907000+0800', N'824', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'中通快递(ZTO)', N'78607049098378', NULL, N'2828701263071411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'287', N'tb9204368391', N'广州源河汽配实业有限公司', N'等待买家收货', N'20220818153649000+0800', N'93.3', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'中通快递(ZTO)', N'78607330898792', NULL, N'2828622207079411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'288', N'tb9204368391', N'义乌市凡高箱包厂', N'等待买家收货', N'20220818150841000+0800', N'33.96', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'申通快递(STO)', N'773176744744473', NULL, N'2827828693860411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'289', N'tb9204368391', N'义乌市悠汇日用品有限公司', N'等待买家收货', N'20220818141703000+0800', N'36.35', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT8303431388659', NULL, N'2827733761447411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'290', N'tb9204368391', N'东莞市皇逸工艺制品有限公司', N'等待买家收货', N'20220818101917000+0800', N'64', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'申通快递(STO)', N'773176746167943', NULL, N'2826310212653411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'291', N'tb9204368391', N'义乌市漫星服装有限公司', N'等待买家收货', N'20220817164127000+0800', N'11', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432730843673430', NULL, N'2826813639483411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'292', N'tb9204368391', N'义乌市百醇贸易有限公司', N'等待卖家发货', N'20220817164021000+0800', N'15', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'', N'', NULL, N'2826812631267411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'293', N'tb9204368391', N'义乌市素琴假发厂', N'等待卖家发货', N'20220817163705000+0800', N'36.36', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'', N'', NULL, N'2826066025762411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'294', N'tb9204368391', N'浦江县豆蔻假发厂', N'等待买家收货', N'20220817161227000+0800', N'57', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'中通快递(ZTO)', N'78606790463722', N'胜多负少', N'2825160480055411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'295', N'tb9204368391', N'义乌市彩夕假发有限公司', N'等待买家收货', N'20220817151552000+0800', N'27.17', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'圆通速递(YTO)', N'YT6687635994792', NULL, N'2826657183093411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'296', N'tb9204368391', N'灌云县伊虹服装厂', N'等待买家收货', N'20220817133346000+0800', N'460', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432730453732008', NULL, N'2825735005445411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'297', N'tb9204368391', N'泉州市澳莱格电子有限责任公司', N'等待买家收货', N'20220816115627000+0800', N'35.99', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'申通快递(STO)', N'773176367064085', NULL, N'2822734872766411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'298', N'tb9204368391', N'义乌市翔宏贸易有限公司', N'等待买家收货', N'20220815125011000+0800', N'272.6', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'申通快递(STO)', N'773176996556915', NULL, N'2820932712061411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'299', N'tb9204368391', N'义乌瑢睿服饰有限公司', N'等待卖家发货', N'20220815113828000+0800', N'660.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'', N'', NULL, N'2820757464311411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'300', N'tb9204368391', N'义乌淘卉电子商务有限公司', N'等待买家收货', N'20220815104942000+0800', N'183.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'速腾快递', N'999015216617', NULL, N'2822175183676411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'301', N'tb9204368391', N'广州市谷富优贸易有限公司', N'等待买家收货', N'20220815091651000+0800', N'536', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'韵达快递', N'432726043708603', NULL, N'2822007315026411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'302', N'tb9204368391', N'佛山品色服饰有限公司', N'等待买家收货', N'20220812174554000+0800', N'179.4', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'中通快递(ZTO)', N'78605666557546', NULL, N'2815456680582411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'303', N'tb9204368391', N'广州洛丽塔服饰有限公司', N'等待买家收货', N'20220812174349000+0800', N'1253', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'中通快递(ZTO)', N'78605592004534', NULL, N'2816681366401411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'304', N'tb9204368391', N'曹县大集镇寻梦服装加工厂', N'等待买家收货', N'20220812165847000+0800', N'560', N'江苏省 苏州市 吴中区 郭巷街道 天运广场5幢2005', N'德邦快递', N'DPK300572462923', NULL, N'2816550362733411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'305', N'tb9204368391', N'义乌爱莎饰品有限公司', N'等待买家收货', N'20220812160341000+0800', N'252', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'韵达快递', N'432721978527709', NULL, N'2815172424474411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'306', N'tb9204368391', N'义乌市媛娘帽业有限公司', N'等待买家收货', N'20220812155724000+0800', N'5.3', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江998号宝带科技园b幢5楼北 苏州斯泰奇科技有限公司', N'圆通速递(YTO)', N'YT6678649575469', NULL, N'2816390198513411134', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'433', N'hydawhy1314', N'义乌尼克户外野营用具有限公司', N'交易成功', N'20220614205316000+0800', N'19', N'江苏省 苏州市 吴中区 郭巷街道 保利居上二期16幢101', N'韵达快递', N'432612063734474', NULL, N'2696069810171803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'434', N'hydawhy1314', N'河北网世包装有限公司', N'交易成功', N'20220614151919000+0800', N'90.8', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'圆通速递(YTO)', N'YT6557892178500', NULL, N'2695438946429803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'435', N'hydawhy1314', N'海门市希梦润纺织品厂', N'交易成功', N'20220608155809000+0800', N'1578', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'韵达快运', N'212922166', NULL, N'2683824519549803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'436', N'hydawhy1314', N'义乌市梦昕防雨制品厂', N'交易成功', N'20220607170705000+0800', N'1425.5', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'韵达快递', N'432599619459505', NULL, N'2681890059547803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'437', N'hydawhy1314', N'贵池区全克工艺品厂', N'交易成功', N'20220607163922000+0800', N'176.35', N'江苏省 苏州市 吴中区 郭巷街道 吴淞江大道111号天运广场5号楼2005', N'中通快递(ZTO)', N'75886595245546', NULL, N'2680982317336803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'438', N'hydawhy1314', N'绍兴市上虞区林宇旅游休闲用品厂', N'交易成功', N'20220607145758000+0800', N'1560', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'顺心捷达', N'S60278160820', NULL, N'2681638707801803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'439', N'hydawhy1314', N'玉环县富华金属制品厂', N'交易成功', N'20220607143312000+0800', N'4020', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'700600378274', NULL, N'2680731973638803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'440', N'hydawhy1314', N'潍坊巧亮工艺礼品有限公司', N'交易成功', N'20220607143126000+0800', N'2555', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'808719029', NULL, N'2680727617732803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'441', N'hydawhy1314', N'广州东恒塑料制品有限公司', N'交易成功', N'20220607142636000+0800', N'4800', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'222583172', NULL, N'2680721605250803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'442', N'hydawhy1314', N'义乌市柯诺野营用具有限公司', N'交易成功', N'20220607140215000+0800', N'5520', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'91793059201', NULL, N'2681533839275803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'443', N'hydawhy1314', N'潍坊恒大风筝制造有限公司', N'交易成功', N'20220607120559000+0800', N'2676', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'75886483187236', NULL, N'2681290191535803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'444', N'hydawhy1314', N'金华市苍怡商贸有限公司', N'交易成功', N'20220606123500000+0800', N'4300', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'220989937', NULL, N'2679241971523803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'445', N'hydawhy1314', N'中山市鸿捷运动用品有限公司', N'交易成功', N'20220606123109000+0800', N'5490', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'202176390703', NULL, N'2678388409197803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'446', N'hydawhy1314', N'泰州市飞鸟特种装备有限公司', N'交易成功', N'20220606123006000+0800', N'6000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'74100195950463', NULL, N'2678686454426803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'447', N'hydawhy1314', N'太和县皮条孙镇修振休闲户外用品加工厂', N'交易成功', N'20220606120819000+0800', N'7220', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'221942285', NULL, N'2679171663918803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'448', N'hydawhy1314', N'义乌市浙锦箱包有限公司', N'交易成功', N'20220606115439000+0800', N'17150', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500048241856', NULL, N'2679138507220803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'449', N'hydawhy1314', N'永康市航速工贸有限公司', N'交易成功', N'20220606114758000+0800', N'16000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'顺心捷达', N'S60277200145', NULL, N'2679116295429803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'450', N'hydawhy1314', N'永康市名大进出口有限公司', N'交易成功', N'20220606113816000+0800', N'2295', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'73183707916037', NULL, N'2678545478376803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'451', N'hydawhy1314', N'乐清市云腾泵业有限公司', N'交易成功', N'20220606111714000+0800', N'15090', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'80647095631', NULL, N'2678476538172803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'452', N'hydawhy1314', N'金华市宏翔绳带厂', N'交易成功', N'20220602085942000+0800', N'2025', N'浙江省 杭州市 临安区 区 昌化镇工业园区座陇山路一号', N'中通快递(ZTO)', N'74100195151997', NULL, N'2669427687995803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'453', N'hydawhy1314', N'宁波博远特电器有限公司', N'交易成功', N'20220601113829000+0800', N'2274', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'73183475484913', NULL, N'2666336365689803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'454', N'hydawhy1314', N'深圳市南山区美叶包装文具厂', N'交易成功', N'20220530095158000+0800', N'1099', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'202177328025', NULL, N'2660585112842803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'455', N'hydawhy1314', N'成都精骑士雨衣加工厂', N'交易成功', N'20220530094544000+0800', N'36500', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300506079904', NULL, N'2662470903430803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'456', N'hydawhy1314', N'义乌市雪彩电子商务商行', N'交易成功', N'20220528224357000+0800', N'70500', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'胜发物流', N'001759500080', NULL, N'2659381454697803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'457', N'hydawhy1314', N'北京佳航博创科技有限公司', N'交易成功', N'20220528105409000+0800', N'4000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773162576833604', NULL, N'2657549161603803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'458', N'hydawhy1314', N'诸暨市路拓汽保工具厂', N'交易成功', N'20220528104156000+0800', N'3700', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'610002986877', NULL, N'2657519173165803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'459', N'hydawhy1314', N'诸暨市路拓汽保工具厂', N'交易成功', N'20220528103442000+0800', N'8800', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'610002986877', NULL, N'2657737226279803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'460', N'hydawhy1314', N'义乌市晶辉文体用品商行', N'交易成功', N'20220528103334000+0800', N'8600', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'700616803806', NULL, N'2658350811734803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'461', N'hydawhy1314', N'南通展豪运动用品有限公司', N'交易成功', N'20220528102836000+0800', N'14400', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'202171005858', NULL, N'2658337671882803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'462', N'hydawhy1314', N'乐清市云腾泵业有限公司', N'交易成功', N'20220528101009000+0800', N'11317', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'70202673030', NULL, N'2656444644345803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'463', N'hydawhy1314', N'晋江市足享来鞋材制造有限公司', N'交易成功', N'20220526134446000+0800', N'4845', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'202131208225', NULL, N'2654446683296803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'464', N'hydawhy1314', N'通州区五接镇鲁格光学仪器厂', N'交易成功', N'20220525105835000+0800', N'19200', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300502494244', NULL, N'2650988593767803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'465', N'hydawhy1314', N'临沂市双松园林工具有限公司', N'交易成功', N'20220525093440000+0800', N'825', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'800229065094', NULL, N'2651009294389803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'466', N'hydawhy1314', N'金华市弗斯卡日用品有限公司', N'交易成功', N'20220523143142000+0800', N'2214', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'其它', N'10410329S9779399', NULL, N'2646671976060803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'467', N'hydawhy1314', N'扬州市新恒鞋业有限公司', N'交易成功', N'20220521131310000+0800', N'32500', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2644126671141803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'468', N'hydawhy1314', N'义乌市浙锦箱包有限公司', N'交易成功', N'20220520160308000+0800', N'17150', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500048241544', NULL, N'2641519801588803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'469', N'hydawhy1314', N'九江和佳剪具有限公司', N'交易成功', N'20220518120543000+0800', N'99', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773160943846928', NULL, N'2637227666732803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'470', N'hydawhy1314', N'山东康安纺织有限公司', N'交易成功', N'20220518120017000+0800', N'165', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'75879934384747', NULL, N'2637212870537803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'471', N'hydawhy1314', N'丹阳市创科机械制造有限公司', N'交易成功', N'20220518115101000+0800', N'8600', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'韵达快运', N'221762989', NULL, N'2636971129478803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'472', N'hydawhy1314', N'东莞市美雅手袋制品有限公司', N'交易成功', N'20220517161416000+0800', N'2250', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2635458518839803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'473', N'hydawhy1314', N'邯郸市硕工紧固件制造有限公司', N'交易成功', N'20220516125830000+0800', N'696', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'202163182951', NULL, N'2633270041495803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'474', N'hydawhy1314', N'义乌市浙锦箱包有限公司', N'交易成功', N'20220516110546000+0800', N'10060', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'320009109746', NULL, N'2632996801245803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'475', N'hydawhy1314', N'余姚市特力工具厂', N'交易成功', N'20220516101608000+0800', N'7001', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'800228355828', NULL, N'2631883500482803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'476', N'hydawhy1314', N'宁国市佰斯特隔热制品销售有限公司', N'交易成功', N'20220510141837000+0800', N'4500', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'70175625660', NULL, N'2621135700467803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'477', N'hydawhy1314', N'金华彩亚工艺品有限公司', N'交易成功', N'20220510124245000+0800', N'973.2', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500023534809', NULL, N'2622182330717803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'478', N'hydawhy1314', N'广州市华盛旅游用品有限公司', N'交易成功', N'20220510120138000+0800', N'14880', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'畅通物流', N'0002673', NULL, N'2621913841190803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'479', N'hydawhy1314', N'广州市华盛旅游用品有限公司', N'交易成功', N'20220510110025000+0800', N'39241', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'畅通物流', N'0001834', NULL, N'2621748349673803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'480', N'hydawhy1314', N'义乌市狂风体育用品厂', N'交易成功', N'20220509120436000+0800', N'2384', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快运', N'300321770142', NULL, N'2618754372676803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'481', N'hydawhy1314', N'余姚市金帅电气动设备有限公司', N'交易成功', N'20220509095953000+0800', N'26400', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300481436930', NULL, N'2620300611113803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'482', N'hydawhy1314', N'慈溪市掌起镇凯路五金厂', N'交易成功', N'20220507181042000+0800', N'11440', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'500023506984', NULL, N'2617743819004803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'483', N'hydawhy1314', N'保定白沟新城周王皮具厂', N'交易成功', N'20220507180020000+0800', N'13823', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'80620372954', NULL, N'2615897340440803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'484', N'hydawhy1314', N'金华市宏翔绳带厂', N'交易成功', N'20220507174103000+0800', N'23900', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'105298553625', NULL, N'2616891985710803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'485', N'hydawhy1314', N'泰州市飞鸟特种装备有限公司', N'交易成功', N'20220507172743000+0800', N'6000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'74100195951139', NULL, N'2616881257370803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'486', N'hydawhy1314', N'阳江市江城区千源工贸有限公司', N'交易成功', N'20220507164932000+0800', N'970', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773159584607455', NULL, N'2617039658544803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'487', N'hydawhy1314', N'余姚市佳诚户外休闲用品有限公司', N'交易成功', N'20220506180446000+0800', N'125800', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'于东货运', N'0008599', NULL, N'2615807269023803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'488', N'hydawhy1314', N'乐清市云腾泵业有限公司', N'交易成功', N'20220506172303000+0800', N'11100', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'70145015732', NULL, N'2615690089833803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'489', N'hydawhy1314', N'深圳市信恒泰电子有限公司', N'交易成功', N'20220506162510000+0800', N'3300', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'龙邦速递', N'800226287373', NULL, N'2614531680661803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'490', N'hydawhy1314', N'通州区五接镇鲁格光学仪器厂', N'交易成功', N'20220506161655000+0800', N'24280', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300502494011', NULL, N'2615517793442803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'491', N'hydawhy1314', N'金华市乔客日用品有限公司', N'交易成功', N'20220505152035000+0800', N'564.6', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'圆通速递(YTO)', N'YT6478559765598', NULL, N'2614809711827803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'492', N'hydawhy1314', N'临沂市双松园林工具有限公司', N'交易成功', N'20220502104640000+0800', N'825', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2606591628485803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'493', N'hydawhy1314', N'阳江市江城区千源工贸有限公司', N'交易成功', N'20220502104640000+0800', N'970', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'申通快递(STO)', N'773158854801588', NULL, N'2606592996198803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'494', N'hydawhy1314', N'永康市名大进出口有限公司', N'交易成功', N'20220426133701000+0800', N'23', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2596668265244803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'495', N'hydawhy1314', N'余姚市金帅电气动设备有限公司', N'交易成功', N'20220419153917000+0800', N'16400', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'安能物流', N'300481436978', NULL, N'2584612046386803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'496', N'hydawhy1314', N'上海边城电子科技有限公司', N'交易成功', N'20220418122034000+0800', N'3100', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2582686046891803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'497', N'hydawhy1314', N'余姚市特力工具厂', N'交易成功', N'20220418120752000+0800', N'7001', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'800224779601', NULL, N'2583314175086803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'498', N'hydawhy1314', N'义乌市柯诺野营用具有限公司', N'交易成功', N'20220417120448000+0800', N'12680', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'百世物流', N'80588160984', NULL, N'2579702544839803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'499', N'hydawhy1314', N'义乌市卡姿汽车用品有限公司', N'交易成功', N'20220417111338000+0800', N'18000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'其它', N'10410329S9374060', NULL, N'2580818906002803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'500', N'hydawhy1314', N'永康市航速工贸有限公司', N'交易成功', N'20220417105849000+0800', N'20000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2579536728332803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'501', N'hydawhy1314', N'深圳市南山区美叶包装文具厂', N'交易成功', N'20220415095548000+0800', N'784.35', N'江苏省 苏州市 吴中区 城南街道招商小石城玉兰园3栋808室', N'德邦快递', N'DPK211002208847', NULL, N'2577843183659803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'502', N'hydawhy1314', N'广州市华盛旅游用品有限公司', N'交易成功', N'20220409124325000+0800', N'7440', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'畅通物流', N'0002673', NULL, N'2565622476154803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'503', N'hydawhy1314', N'永康市名大进出口有限公司', N'交易成功', N'20220402124510000+0800', N'1527', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'中通快递(ZTO)', N'73181568284840', NULL, N'2555004422463803504', N'支付宝')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'504', N'hydawhy1314', N'河南泰格汽车饰品有限公司', N'交易成功', N'20220330091523000+0800', N'148', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'德邦快递', N'DPK211004160287', NULL, N'2549016361267803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'505', N'hydawhy1314', N'义乌市浙锦箱包有限公司', N'交易成功', N'20220323163955000+0800', N'18861', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'壹米滴答', N'105116328547', NULL, N'2537596261789803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'506', N'hydawhy1314', N'余姚市佳诚户外休闲用品有限公司', N'交易成功', N'20220323161723000+0800', N'91000', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2536487352739803504', N'诚e赊')
GO

INSERT INTO [dbo].[order] ([id], [buyerLoginId], [companyName], [statusStr], [createTime], [phasAmount], [receiverInfo], [logisticsCompanyName], [logisticsBillNo], [note], [orderID], [payChannel]) VALUES (N'507', N'hydawhy1314', N'余姚市佳诚户外休闲用品有限公司', N'交易成功', N'20220221115321000+0800', N'45200', N'江苏省 苏州市 吴中区 郭巷街道 吴淞路988号宝带科技园B幢5楼北 苏州斯泰奇信息科技有限公司', N'', N'不需要物流', NULL, N'2481295106719803504', N'诚e赊')
GO

SET IDENTITY_INSERT [dbo].[order] OFF
GO


-- ----------------------------
-- Table structure for product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type IN ('U'))
	DROP TABLE [dbo].[product]
GO

CREATE TABLE [dbo].[product] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [productName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderId] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [quantity] nvarchar(255) COLLATE Chinese_PRC_90_CI_AS  NULL,
  [price] nvarchar(255) COLLATE Chinese_PRC_90_CI_AS  NULL,
  [productID] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [skuInfo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[product] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'product',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品名称',
'SCHEMA', N'dbo',
'TABLE', N'product',
'COLUMN', N'productName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单编号',
'SCHEMA', N'dbo',
'TABLE', N'product',
'COLUMN', N'orderId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数量',
'SCHEMA', N'dbo',
'TABLE', N'product',
'COLUMN', N'quantity'
GO

EXEC sp_addextendedproperty
'MS_Description', N'单价',
'SCHEMA', N'dbo',
'TABLE', N'product',
'COLUMN', N'price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品编号',
'SCHEMA', N'dbo',
'TABLE', N'product',
'COLUMN', N'productID'
GO

EXEC sp_addextendedproperty
'MS_Description', N'商品规格',
'SCHEMA', N'dbo',
'TABLE', N'product',
'COLUMN', N'skuInfo'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单表',
'SCHEMA', N'dbo',
'TABLE', N'product'
GO


-- ----------------------------
-- Records of product
-- ----------------------------
SET IDENTITY_INSERT [dbo].[product] ON
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'631', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC213"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'658', N'S-4XL大码女仆装 超萌大蝴蝶结洛丽塔连衣裙 女装大佬粉蓝可爱裙', N'2816550362733411134', N'8', N'33', N'668955157378', N'[
  {
    "name": "颜色",
    "value": "粉色五件套"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'705', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'7', N'55', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "鬼新娘-0.42kg"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'760', N'pop fidget bag 亚马逊爆款泡泡灭鼠先锋草莓肩带包零钱包斜挎包', N'2699597306611411134', N'5', N'9.5', N'660104315067', N'[
  {
    "name": "颜色",
    "value": "泡泡肩带包-马卡龙色草莓"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'815', N'J422码钉枪 家用装修气动钉枪 建筑装修射钉枪 厂家生产钉枪', N'2808677271370803504', N'200', N'120', N'30135846', N'[
  {
    "name": "型号",
    "value": "J422-1"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'872', N'封箱胶带大量批发 物流封口胶布 快递打包胶带透明胶带整箱批发', N'2754117362923803504', N'30', N'4.7', N'655048175487', N'[
  {
    "name": "规格",
    "value": "宽6cm厚2.0cm长约110m(整箱60卷）"
  },
  {
    "name": "型号",
    "value": "透明色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'892', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.02', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*8"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'893', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.07', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M6*10"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'894', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.05', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*25"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'895', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.09', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M6*16"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'896', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.05', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M5*6"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'897', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.07', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M6*8"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'898', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.1', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M6*20"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'899', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.07', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M5*20"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'900', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.06', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*30"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'901', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.08', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M6*12"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'902', N'厂家直营304不锈钢尼龙锁紧螺母DIN985防松螺帽规格齐全', N'2738706192441803504', N'300', N'0.05', N'622964307823', N'[
  {
    "name": "产品规格",
    "value": "M3"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'903', N'厂家直营304不锈钢尼龙锁紧螺母DIN985防松螺帽规格齐全', N'2738706192441803504', N'300', N'0.08', N'622964307823', N'[
  {
    "name": "产品规格",
    "value": "M6"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'904', N'厂家直营304不锈钢尼龙锁紧螺母DIN985防松螺帽规格齐全', N'2738706192441803504', N'300', N'0.06', N'622964307823', N'[
  {
    "name": "产品规格",
    "value": "M5"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'905', N'微型小轴承 MR74轴承 MR84 MR85 MR95 MR104 MR105 4*7*2.5轴承', N'2736322239322803504', N'20', N'0.83', N'656365470978', N'[
  {
    "name": "型号",
    "value": "MR126ZZ"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'906', N'厂家直供i2000电子珠宝秤厨房充电食物称便携式烘焙秤 電子秤台秤', N'2734438791585803504', N'5000', N'16', N'536080305673', N'[
  {
    "name": "颜色",
    "value": "英文3000g/0.1g"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'907', N'单向滚针轴承HF0612/0812/1012/1216/2016/2520/3020/3520/0608', N'2731530996303803504', N'10', N'1.5', N'591147344275', N'[
  {
    "name": "型号",
    "value": "HF0612"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'908', N'单向滚针轴承HF0612/0812/1012/1216/2016/2520/3020/3520/0608', N'2731530996303803504', N'10', N'1.7', N'591147344275', N'[
  {
    "name": "型号",
    "value": "HF0608"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'909', N'厂家现货饰品戒指手表四驱车MR52ZZ轴承 MR63ZZ 旋转小轴承', N'2732478877401803504', N'20', N'0.67', N'586239181960', N'[
  {
    "name": "型号",
    "value": "MR63(3*6*2)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'910', N'厂家现货饰品戒指手表四驱车MR52ZZ轴承 MR63ZZ 旋转小轴承', N'2732478877401803504', N'20', N'0.62', N'586239181960', N'[
  {
    "name": "型号",
    "value": "MR63X(3*6*2.5)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'706', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'1', N'40', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "巫婆A-0.65kg"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'707', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'2', N'55', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "鬼新娘-0.42kg"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'708', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'1', N'55', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "鬼新娘-0.42kg"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'709', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'4', N'40', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "巫婆A-0.65kg"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'710', N'老人假发cosplay老奶奶装扮套装万圣节舞会舞台剧假发套老人套装', N'2816048775480411134', N'5', N'14.99', N'634568704718', N'[
  {
    "name": "颜色分类",
    "value": "银色丸子发七件套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'711', N'老人假发cosplay老奶奶装扮套装万圣节舞会舞台剧假发套老人套装', N'2816048775480411134', N'5', N'14.99', N'634568704718', N'[
  {
    "name": "颜色分类",
    "value": "浅灰色卷发七件套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'712', N'老人假发cosplay老奶奶装扮套装万圣节舞会舞台剧假发套老人套装', N'2816048775480411134', N'5', N'14.99', N'634568704718', N'[
  {
    "name": "颜色分类",
    "value": "银灰色卷发七件套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'713', N'老人假发cosplay老奶奶装扮套装万圣节舞会舞台剧假发套老人套装', N'2816048775480411134', N'5', N'14.99', N'634568704718', N'[
  {
    "name": "颜色分类",
    "value": "灰色丸子发七件套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'714', N'爆炸头彩色假发搞怪小丑头套演出道具套幼儿园表演儿童成人球迷发', N'2814351516435411134', N'10', N'5.78', N'673183463028', N'[
  {
    "name": "颜色",
    "value": "彩色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'715', N'爆炸头彩色假发搞怪小丑头套演出道具套幼儿园表演儿童成人球迷发', N'2814351516435411134', N'5', N'5.78', N'673183463028', N'[
  {
    "name": "颜色",
    "value": "酒红色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'716', N'爆炸头彩色假发搞怪小丑头套演出道具套幼儿园表演儿童成人球迷发', N'2814351516435411134', N'5', N'5.78', N'673183463028', N'[
  {
    "name": "颜色",
    "value": "白色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'717', N'爆炸头彩色假发搞怪小丑头套演出道具套幼儿园表演儿童成人球迷发', N'2814351516435411134', N'5', N'5.78', N'673183463028', N'[
  {
    "name": "颜色",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'718', N'爆炸头彩色假发搞怪小丑头套演出道具套幼儿园表演儿童成人球迷发', N'2814351516435411134', N'5', N'5.78', N'673183463028', N'[
  {
    "name": "颜色",
    "value": "咖色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'719', N'红色蓬松另类欧美假发个性节日火焰假发万圣节假发巨魔节假发精灵', N'2815551722553411134', N'10', N'16.66', N'523274645313', N'[
  {
    "name": "颜色",
    "value": "橙黄色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'720', N'工厂浴室强力粘胶挂钩超市批发无痕透明挂钩免钉贴衣服魔力粘钩子', N'2814955311619411134', N'70', N'0.09', N'560014000826', N'[
  {
    "name": "颜色",
    "value": "40c薄款透明挂钩（6*6cm）"
  },
  {
    "name": "规格",
    "value": "不混批 混批不发货"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'721', N'光头和尚头皮假发 头套 舞会化妆道具 万圣节道具全光头 假头皮套', N'2813186700407411134', N'10', N'5.2', N'641617596512', N'[
  {
    "name": "造型",
    "value": "黄色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'722', N'光头和尚头皮假发 头套 舞会化妆道具 万圣节道具全光头 假头皮套', N'2813186700407411134', N'20', N'5.2', N'641617596512', N'[
  {
    "name": "造型",
    "value": "肤色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'723', N'跨境假发女欧美全头套式cos黑白魔女库伊拉阴阳头中长小卷发现货', N'2813180256983411134', N'20', N'14.8', N'656411616961', N'[
  {
    "name": "颜色",
    "value": "黑白阴阳发"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'724', N'脏辫马尾 彩色小辫子马尾发圈小辫彩色马尾 彩色脏辫马尾个性头饰', N'2814401666639411134', N'10', N'6', N'620049556758', N'[
  {
    "name": "颜色分类",
    "value": "马尾26 米白+湖蓝+宝蓝"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'725', N'脏辫马尾 彩色小辫子马尾发圈小辫彩色马尾 彩色脏辫马尾个性头饰', N'2814401666639411134', N'10', N'6', N'620049556758', N'[
  {
    "name": "颜色分类",
    "value": "马尾56 紫+湖蓝+浅紫"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'726', N'脏辫马尾 彩色小辫子马尾发圈小辫彩色马尾 彩色脏辫马尾个性头饰', N'2814401666639411134', N'10', N'6', N'620049556758', N'[
  {
    "name": "颜色分类",
    "value": "马尾44 黑+粉+紫"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'727', N'橙色挂钩套装仓库收纳挂钩阳台储物钩车库挂钩 金属收纳挂钩 跨境', N'2810124612737411134', N'1', N'2.5', N'587506423017', N'[
  {
    "name": "规格",
    "value": "加固铁片（5片）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'728', N'橙色挂钩套装仓库收纳挂钩阳台储物钩车库挂钩 金属收纳挂钩 跨境', N'2810124612737411134', N'1', N'27', N'587506423017', N'[
  {
    "name": "规格",
    "value": "挂钩5件套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'729', N'免打孔无痕贴卡扣塑料长条挂墙壁双钩配件创意子母扣钩挂钩贴片', N'2811631755017411134', N'20', N'0.22', N'594993019762', N'[
  {
    "name": "颜色",
    "value": "7*7透明置物架卡扣贴片【PC材质】"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'730', N'HOYO大飞中飞F杆加长万向活动接头弯杆转向套筒轮胎扳手五金工具', N'2811618471798411134', N'3', N'13.6', N'671513710758', N'[
  {
    "name": "系列",
    "value": "3/8系列10寸F杆葫芦柄"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'731', N'HOYO大飞中飞F杆加长万向活动接头弯杆转向套筒轮胎扳手五金工具', N'2811618471798411134', N'3', N'18.2', N'671513710758', N'[
  {
    "name": "系列",
    "value": "1/2系列15寸F杆滚花柄"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'659', N'S-4XL大码女仆装 超萌大蝴蝶结洛丽塔连衣裙 女装大佬粉蓝可爱裙', N'2816550362733411134', N'1', N'33', N'668955157378', N'[
  {
    "name": "颜色",
    "value": "粉色五件套"
  },
  {
    "name": "尺码",
    "value": "XXXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'660', N'S-4XL大码女仆装 超萌大蝴蝶结洛丽塔连衣裙 女装大佬粉蓝可爱裙', N'2816550362733411134', N'1', N'33', N'668955157378', N'[
  {
    "name": "颜色",
    "value": "粉色五件套"
  },
  {
    "name": "尺码",
    "value": "XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'661', N'S-4XL大码女仆装 超萌大蝴蝶结洛丽塔连衣裙 女装大佬粉蓝可爱裙', N'2816550362733411134', N'3', N'33', N'668955157378', N'[
  {
    "name": "颜色",
    "value": "粉色五件套"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'662', N'S-4XL大码女仆装 超萌大蝴蝶结洛丽塔连衣裙 女装大佬粉蓝可爱裙', N'2816550362733411134', N'2', N'33', N'668955157378', N'[
  {
    "name": "颜色",
    "value": "粉色五件套"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'663', N'老爷爷灰色假发男士中老年短发胡子老奶奶头套短直发舞台表演道具', N'2815172424474411134', N'10', N'24.5', N'641190361913', N'[
  {
    "name": "颜色分类",
    "value": "老爷爷套装五件套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'664', N'假发网帽佩戴假发bi备发网收纳头发假发周边护理配件工具假发网帽', N'2816390198513411134', N'10', N'0.53', N'623088768251', N'[
  {
    "name": "颜色分类",
    "value": "发网（两头通）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'665', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'1', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "蓝"
  },
  {
    "name": "尺码",
    "value": "2XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'666', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'4', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "桃红"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'667', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'2', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "桃红"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'668', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'2', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "蓝"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'669', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'5', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "桃红"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'670', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'3', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "蓝"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'671', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'1', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "桃红"
  },
  {
    "name": "尺码",
    "value": "2XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'672', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'3', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "桃红"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'673', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'4', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "蓝"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'674', N'新款女仆可爱软萌粉色蝴蝶结洛丽塔连衣裙女装大佬可爱裙', N'2815955569448411134', N'5', N'56.84', N'670065538868', N'[
  {
    "name": "颜色",
    "value": "蓝"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'675', N'跨境新款万圣节南瓜灯儿童小提灯节日气氛道具万圣节装饰品小马灯', N'2815921009631411134', N'5', N'4.5', N'677344517502', N'[
  {
    "name": "颜色",
    "value": "大号 C款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'676', N'跨境新款万圣节南瓜灯儿童小提灯节日气氛道具万圣节装饰品小马灯', N'2815921009631411134', N'5', N'4.5', N'677344517502', N'[
  {
    "name": "颜色",
    "value": "大号 B款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'677', N'跨境新款万圣节南瓜灯儿童小提灯节日气氛道具万圣节装饰品小马灯', N'2815921009631411134', N'5', N'4.5', N'677344517502', N'[
  {
    "name": "颜色",
    "value": "大号 A款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'678', N'万圣节舞台演出服装 化装舞会道具搞笑愚人服饰大胸肌大肚皮批发', N'2816302682624411134', N'15', N'7.35', N'591232840839', N'[
  {
    "name": "颜色",
    "value": "大胸肌"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'679', N'Jue-Fish 万圣节化妆包 肤蜡血浆刀疤彩绘万圣节恐怖妆容装扮套装', N'2815030944109411134', N'30', N'15', N'676956389026', N'[
  {
    "name": "颜色",
    "value": "万圣节化妆包"
  },
  {
    "name": "尺码",
    "value": "万圣节化妆道具"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'680', N'12色油彩无毒 万圣节化妆油彩人体彩绘 戏剧彩妆脸谱身体油彩', N'2815843465035411134', N'30', N'10', N'590626073314', N'[
  {
    "name": "颜色",
    "value": "12色油彩+6支画笔"
  },
  {
    "name": "规格",
    "value": "12色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'681', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'3', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "红色"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'761', N'跨境热销灭鼠先锋章鱼包包2022新款硅胶零钱包 pop bag单肩斜挎包', N'2699597306611411134', N'5', N'9.5', N'661580678443', N'[
  {
    "name": "颜色",
    "value": "泡泡肩带包-马卡龙色章鱼包"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'762', N'户外沐浴袋自驾野营太阳能热水袋便携野外洗澡晒水袋20L储水袋', N'2669758994780411134', N'10', N'36', N'520852614012', N'[
  {
    "name": "颜色",
    "value": "军绿色"
  },
  {
    "name": "适用人数",
    "value": "双人"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'763', N'网红儿童发光玩具灯光音乐陀螺旋转玩具男孩女孩地摊广场批发跨境', N'1643036882173607283', N'10', N'129.6', N'639125252630', N'[
  {
    "name": "颜色",
    "value": "弹跳灯光陀螺（色随机 袋装）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'764', N'抖音儿童竹蜻蜓玩具发光飞碟枪陀螺灯光飞盘飞天户外玩具夜市热卖', N'1643035370977607283', N'10', N'4.65', N'652645003659', N'[
  {
    "name": "规格",
    "value": "小熊+彩灯大飞盘+2小飞盘"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'765', N'抖音儿童竹蜻蜓玩具发光飞碟枪陀螺灯光飞盘飞天户外玩具夜市热卖', N'1643035370977607283', N'10', N'4.65', N'652645003659', N'[
  {
    "name": "规格",
    "value": "小猪+彩灯大飞盘+2小飞盘"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'766', N'指尖陀螺地摊广场儿童成人减压玩具发光带灯光夜荧光edc三叶旋转', N'1643081235700607283', N'10', N'3.5', N'619972425013', N'[
  {
    "name": "颜色",
    "value": "水晶灯光指尖陀螺"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'767', N'日式玻璃杯可爱网红小雏菊创意锤纹杯家用菊花金边饮料果汁牛奶杯', N'2817145370699607283', N'4', N'8.78', N'624994174993', N'[
  {
    "name": "颜色",
    "value": "C款高14.5厘米小雏菊款"
  },
  {
    "name": "容量",
    "value": "301-400ml"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'768', N'纽奇批发新款网红多米诺骨牌趣味自动投放电动小火车益智儿童玩具', N'1625290032301607283', N'2', N'22.5', N'646446684413', N'[
  {
    "name": "颜色",
    "value": "多米诺骨牌车"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'769', N'黑白猫咪天然水晶手链女转运招财极细ins小众设计闺蜜黑曜石串珠', N'1607985444342607283', N'2', N'12', N'672395339233', N'[
  {
    "name": "颜色",
    "value": "黑猫手链【可调节】"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'770', N'热卖儿童沙滩戏水玩具抽拉式气压大号水枪玩具泼水节儿童水枪批发', N'1576853832631607283', N'3', N'21.2', N'546847695513', N'[
  {
    "name": "颜色",
    "value": "特大号黑水枪"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'771', N'跨境儿童动物水炮鳄鱼鲨鱼喷水抽水枪夏季男女孩沙滩戏水洗澡玩具', N'1576853832631607283', N'1', N'5', N'670484103455', N'[
  {
    "name": "颜色",
    "value": "鳄鱼（opp袋）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'772', N'跨境儿童动物水炮鳄鱼鲨鱼喷水抽水枪夏季男女孩沙滩戏水洗澡玩具', N'1576853832631607283', N'1', N'5', N'670484103455', N'[
  {
    "name": "颜色",
    "value": "鲨鱼（opp袋）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'773', N'爆款户外儿童弹射小风筝玩具手持弹力风筝手指皮筋弹射风筝', N'1576853832631607283', N'1', N'4.2', N'674089817555', N'[
  {
    "name": "颜色",
    "value": "恐龙"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'774', N'爆款户外儿童弹射小风筝玩具手持弹力风筝手指皮筋弹射风筝', N'1576853832631607283', N'1', N'4.2', N'674089817555', N'[
  {
    "name": "颜色",
    "value": "麒麟"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'775', N'爆款户外儿童弹射小风筝玩具手持弹力风筝手指皮筋弹射风筝', N'1576853832631607283', N'1', N'4.2', N'674089817555', N'[
  {
    "name": "颜色",
    "value": "宇航员"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'776', N'爆款户外儿童弹射小风筝玩具手持弹力风筝手指皮筋弹射风筝', N'1576853832631607283', N'1', N'4.2', N'674089817555', N'[
  {
    "name": "颜色",
    "value": "小兔"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'777', N'爆款户外儿童弹射小风筝玩具手持弹力风筝手指皮筋弹射风筝', N'1576853832631607283', N'1', N'4.2', N'674089817555', N'[
  {
    "name": "颜色",
    "value": "独角兽"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'778', N'红蚁作十字绣U型纱剪线头的弹簧小剪刀鱼线剪缝纫线剪线头剪批发', N'2823321744941803504', N'60', N'1.14', N'643334629404', N'[
  {
    "name": "规格",
    "value": "大号纱剪【按照12倍数下单】"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'779', N'美国纹珠纹平纹织带背包箱包辅料彩带彩色包边带丙纶手提编织带', N'2824847283889803504', N'3000', N'0.1', N'566040063921', N'[
  {
    "name": "规格型号",
    "value": "黑色*2.2CM加密包边带"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'780', N'瀚宇供应不锈钢口哨 6字金属裁判口哨 急救口哨 助威加油裁判哨子', N'2822485718643803504', N'12', N'3.2', N'556727842509', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'781', N'厂家直发 尼龙球 尼龙件 塑料制品 尼龙白色球 质量保障 多种规格', N'2822094471170803504', N'1000', N'9.5', N'633035594272', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'782', N'跨境速卖通爆款渔具收纳包 海钓渔具大容量邮差便携包 防水手提包', N'2814356844481803504', N'1200', N'90', N'664530310263', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'783', N'劳保手套浸胶线手套劳保丁青浸胶手套挂胶手套半胶手套手劳保手套', N'2814499946743803504', N'100', N'1.57', N'617657837979', N'[
  {
    "name": "规格型号",
    "value": "灰纱蓝防滑皱纹"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'784', N'小剪刀批发 u型大号弹簧小纱剪 十字绣剪刀裁缝小剪刀鱼线修线剪', N'2814501242250803504', N'100', N'0.93', N'598094950612', N'[
  {
    "name": "规格",
    "value": "大号12.5cm(单个装）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'785', N'专业不锈钢尖头果园摘果剪 采摘水果葡萄稀果剪刀 修枝果枝树枝剪', N'2814500126207803504', N'100', N'5.4', N'561028760777', N'[
  {
    "name": "规格",
    "value": "红黑色（不带包装）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'786', N'优质多功能树枝粗枝剪 果树果枝修枝剪刀 园林剪园艺工具防滑设计', N'2814500126207803504', N'100', N'8.5', N'643488734403', N'[
  {
    "name": "规格",
    "value": "热销款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'787', N'热销防滑手柄园艺剪刀 果树摘果剪刀果枝树枝修枝剪 园林花园工具', N'2814500126207803504', N'100', N'4.9', N'650637660618', N'[
  {
    "name": "规格",
    "value": "红黑色款-简装"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'788', N'厂家直供滑轮剪滑轮省力剪园林剪刀修枝剪跳段剪分段剪园林工具', N'2814886623202803504', N'100', N'16.15', N'602088910569', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'789', N'厂家现货供应宏泰NTK-621锥 车真皮锁防盗锁用安全锤', N'2812880016015803504', N'420', N'55', N'536745915886', N'[
  {
    "name": "规格",
    "value": "1"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'816', N'智趣屋diy小屋小猫日记手工房子建筑模型玩具送女生闺蜜生日礼物', N'2808206282697803504', N'128', N'26', N'535415656406', N'[
  {
    "name": "颜色",
    "value": "小猫日记-英文版"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'817', N'风友S40A气动砂轮机 风磨机气动打磨机直磨机内磨机抛光机', N'2808607791931803504', N'100', N'70', N'521222814488', N'[
  {
    "name": "型号",
    "value": "S40"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'818', N'PRO-BIKER摩托车护具四件套不锈钢护肘护膝防摔防撞防风机车护具', N'2806927848088803504', N'200', N'43', N'565250077306', N'[
  {
    "name": "颜色",
    "value": "长款护肘+护膝四件套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'819', N'TX-1001B手持式金属探测器高灵敏度车站机场考场安检仪器全国包邮', N'2808492051669803504', N'100', N'78.2', N'39474641605', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'820', N'便携户外野营焚火架台烤火架不锈钢轻折叠烧烤架篝火炉柴火炉', N'2800942740089803504', N'500', N'13.3', N'659581004916', N'[
  {
    "name": "规格(长*宽*高)",
    "value": "单独304网（起订量100张）承重大于5kg"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'821', N'尼龙绳 空芯绳 丙纶绳 束口绳 彩色绳 编制绳 八股绳 PP绳 绳子', N'2800560384918803504', N'12000', N'0.03', N'536114677097', N'[
  {
    "name": "规格型号",
    "value": "白色*3mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'822', N'美国纹珠纹平纹织带背包箱包辅料彩带彩色包边带丙纶手提编织带', N'2801749646154803504', N'2000', N'0.1', N'566040063921', N'[
  {
    "name": "规格型号",
    "value": "黑色*2.2CM加密包边带"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'823', N'圆管外套PVC脚套不锈钢管橡胶管套凳子椅子保护脚套防滑家具脚垫', N'2800232568913803504', N'10000', N'0.05', N'631473383591', N'[
  {
    "name": "尺寸",
    "value": "19黑圆外套"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'824', N'厂家直销多色可选伪装网迷彩网丛林迷彩伪装网防航拍装潢装饰隐蔽', N'2801863371632803504', N'3600', N'4.5', N'535827040483', N'[
  {
    "name": "尺寸",
    "value": "尺寸齐全"
  },
  {
    "name": "颜色",
    "value": "迷彩"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'825', N'帐篷广告固定沙包防水防风遮阳伞沙袋600D面料可印logo亚马逊', N'2801858439338803504', N'3000', N'5.14', N'613137621522', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'826', N'不锈钢烧烤架 户外便携折叠野外露营烧烤炉家用bbq烧烤用具烧烤架', N'2799770294469803504', N'500', N'198', N'608933719036', N'[
  {
    "name": "烤架/盘规格",
    "value": "询问客服"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'827', N'环保USB转dc3.5公头电源充电线1米2A适用加湿器台灯dc3.5充电线2A', N'2795721087957803504', N'5000', N'1.05', N'625302089051', N'[
  {
    "name": "型号",
    "value": "1米环保dc3.5充电线"
  },
  {
    "name": "颜色",
    "value": "白色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'828', N'WH-B05厨房电子秤5公斤秤重烘培迷你食物秤家用厨房秤 电子称台秤', N'2790831710609803504', N'2000', N'9', N'43561011848', N'[
  {
    "name": "颜色",
    "value": "英文5kg/1g"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'829', N'大书本秤克拉珠宝秤电子厨房秤家用电子秤便携电子称食物烘焙克秤', N'2790831710609803504', N'500', N'18.5', N'678613260058', N'[
  {
    "name": "颜色",
    "value": "2000g/0.01g"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'830', N'大书本秤克拉珠宝秤电子厨房秤家用电子秤便携电子称食物烘焙克秤', N'2790831710609803504', N'2500', N'19.5', N'678613260058', N'[
  {
    "name": "颜色",
    "value": "500g/0.01g"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'831', N'厂家织唛箱包布袋长方形夹标黑色织唛服装袖标布标对折标', N'2784955286551803504', N'10000', N'0.1', N'573042833372', N'[
  {
    "name": "规格型号",
    "value": "黑色*定做产品咨询客服！"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'832', N'现货批发自行车胶管气门芯黑色黄色胶乳管弹力气门芯配件', N'2783356491805803504', N'2', N'25', N'614298913305', N'[
  {
    "name": "颜色",
    "value": "黄色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'833', N'18元起包邮 可爱动漫烫画热转印柯式烫画图案 卡通服装diy烫图', N'2782748954143803504', N'2000', N'1', N'599532771450', N'[
  {
    "name": "颜色",
    "value": "定制"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'834', N'跨境 壁炉木柴架支架 铁艺木头收纳架 木材堆放架 厂家现货', N'2781148863785803504', N'2', N'32', N'642688711660', N'[
  {
    "name": "颜色",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'835', N'PCT-222电线万能快速接线端子 插拔式快速分线器照明灯具对接接头', N'2779793211814803504', N'100', N'1.57', N'663833132742', N'[
  {
    "name": "规格",
    "value": "彩色*二进六出*铜"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'836', N'PCT-222电线万能快速接线端子 插拔式快速分线器照明灯具对接接头', N'2779793211814803504', N'200', N'1.14', N'663833132742', N'[
  {
    "name": "规格",
    "value": "彩色*二进四出*铜"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'837', N'PCT-222电线万能快速接线端子 插拔式快速分线器照明灯具对接接头', N'2779793211814803504', N'1000', N'0.52', N'663833132742', N'[
  {
    "name": "规格",
    "value": "彩色*二进二出*铜*2进2出-彩色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'838', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2773368865663803504', N'200', N'16.15', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "双人吊床红条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'839', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2773368865663803504', N'200', N'16.15', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "双人吊床篮条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'840', N'【月销20000＋】极地虎单人迷彩帐篷户外休闲露营野营帐礼品帐篷', N'2774076987908803504', N'1200', N'35', N'522018302741', N'[
  {
    "name": "颜色",
    "value": "大花迷彩"
  },
  {
    "name": "适用人数",
    "value": "单人"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'841', N'厂家直销特种钢多功能车轮胎撬棒撬杠翘棍扒胎工具量大优先', N'2773189909529803504', N'300', N'30', N'625321753646', N'[
  {
    "name": "型号",
    "value": "多功能轮胎撬棍"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'842', N'厂家直销直流潜水泵12V24V微型水泵农用家用抽水机游艇船用舱底泵', N'2773837947412803504', N'400', N'35', N'620900191672', N'[
  {
    "name": "规格",
    "value": "12V微型舱底泵送夹子抱扣"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'911', N'厂家现货供应宏泰NTK-621锥 车真皮锁防盗锁用安全锤', N'2730889875877803504', N'200', N'55', N'536745915886', N'[
  {
    "name": "规格",
    "value": "1"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'912', N'玻璃吸盘强力重型吸提器单双爪真空铝合金贴瓷砖地板搬运固定工具', N'2729613961108803504', N'2', N'45', N'651319861250', N'[
  {
    "name": "型号",
    "value": "加强加厚款双爪铝合金吸盘（吸力王）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'913', N'厂家批发高帮巴拿马军靴无拉链作战靴特种兵透气沙漠靴军靴耐磨', N'2717283459889803504', N'500', N'60', N'596305233569', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "41"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'914', N'T铝合金小号美工刀 不锈钢裁切纸刀 金属小刀 手工墙纸壁纸刀厂家', N'2714907529649803504', N'300', N'0.21', N'545892508712', N'[
  {
    "name": "规格",
    "value": "尖头"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'915', N'跨进热销现货野营锤 长柄锤 地钉锤 户外铝合金锤多功能铝柄锤', N'2714688397117803504', N'300', N'25', N'520728234191', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'916', N'工厂直销手拉车铝合金购物车便携折叠行李车小拖车拉杆车推车', N'2715455739899803504', N'500', N'39', N'42285599446', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "折叠型"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'917', N'工厂直销手拉车铝合金购物车便携折叠行李车小拖车拉杆车推车', N'2715455739899803504', N'200', N'42', N'42285599446', N'[
  {
    "name": "颜色",
    "value": "紫色"
  },
  {
    "name": "规格",
    "value": "折叠型"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'918', N'工厂直销手拉车铝合金购物车便携折叠行李车小拖车拉杆车推车', N'2715455739899803504', N'500', N'42', N'42285599446', N'[
  {
    "name": "颜色",
    "value": "蓝色"
  },
  {
    "name": "规格",
    "value": "折叠型"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'919', N'手部动作矫正器曲臂警觉器高尔夫挥杆练习辅助品高尔夫姿势矫正带', N'2713466054403803504', N'300', N'4.56', N'604847920430', N'[
  {
    "name": "颜色",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'920', N'Naturehike挪客折叠收纳圆桶户外露营野营可折叠便携杂物收纳桶', N'2710293588594803504', N'40', N'146', N'665012912048', N'[
  {
    "name": "颜色",
    "value": "尤加利青"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'921', N'激光瞄 瞄准仪 红外瞄仪', N'2711473166513803504', N'300', N'55', N'580831124531', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'922', N'90mm磁性线路板夹 PCB夹 放大镜维修夹具 电子工具 主板维修卡具', N'2709846108390803504', N'36', N'63.75', N'609792318728', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'923', N'气缸压力表', N'2711585091554803504', N'100', N'44', N'579263942726', N'[
  {
    "name": "规格",
    "value": "气缸压力表"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'924', N'补胎工具套装真空轮胎汽车摩托车电动车应急快速修补胶条多功能', N'2710613233868803504', N'100', N'31.35', N'721896476', N'[
  {
    "name": "型号",
    "value": "53PCS"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'925', N'厂家直销多色可选伪装网迷彩网丛林迷彩伪装网防航拍装潢装饰隐蔽', N'2711095131964803504', N'1200', N'5', N'535827040483', N'[
  {
    "name": "尺寸",
    "value": "尺寸齐全"
  },
  {
    "name": "颜色",
    "value": "迷彩"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'926', N'天文望远镜辅助拍照夹配件手机夹支架单筒观鸟镜拍照夹子金属耐用', N'2696069810171803504', N'1', N'19', N'553396935512', N'[
  {
    "name": "规格",
    "value": "金属通用手机夹MF003"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'927', N'网世加厚pe自封袋透明密封袋塑料大号封口袋服装包装袋塑封袋印刷', N'2695438946429803504', N'20', N'3.04', N'545772008034', N'[
  {
    "name": "规格型号",
    "value": "【3号】7*10cm*8丝(红边100个)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'928', N'网世加厚pe自封袋透明密封袋塑料大号封口袋服装包装袋塑封袋印刷', N'2695438946429803504', N'20', N'1.5', N'545772008034', N'[
  {
    "name": "规格型号",
    "value": "【0号】4*6cm*8丝(红边100个)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'929', N'网世加厚pe自封袋透明密封袋塑料大号封口袋服装包装袋塑封袋印刷', N'2695438946429803504', N'20', N'2.05', N'545772008034', N'[
  {
    "name": "规格型号",
    "value": "【1号】5*7cm*8丝(红边100个)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'930', N'网世加厚pe自封袋透明密封袋塑料大号封口袋服装包装袋塑封袋印刷', N'2695438946429803504', N'20', N'2.49', N'545772008034', N'[
  {
    "name": "规格型号",
    "value": "【2号】6*8cm*8丝(红边100个)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'931', N'跨境热卖便携信封式睡袋酒店火车隔脏成人被套旅游单双人床单新品', N'2683824519549803504', N'30', N'16.15', N'590167065550', N'[
  {
    "name": "颜色",
    "value": "橙色"
  },
  {
    "name": "规格(长*宽)",
    "value": "75*210cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'932', N'跨境热卖便携信封式睡袋酒店火车隔脏成人被套旅游单双人床单新品', N'2683824519549803504', N'30', N'16.15', N'590167065550', N'[
  {
    "name": "颜色",
    "value": "灰色"
  },
  {
    "name": "规格(长*宽)",
    "value": "75*210cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'933', N'跨境热卖便携信封式睡袋酒店火车隔脏成人被套旅游单双人床单新品', N'2683824519549803504', N'40', N'16.15', N'590167065550', N'[
  {
    "name": "颜色",
    "value": "藏青色"
  },
  {
    "name": "规格(长*宽)",
    "value": "75*210cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'934', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边白色高筒XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'935', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边卡其高筒S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'936', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边黑色高筒2XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'937', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边白色高筒M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'989', N'雨衣雨裤套装男款全身防暴雨单人分体电动车摩托成人外卖骑手雨衣', N'2662470903430803504', N'50', N'60', N'669966566674', N'[
  {
    "name": "颜色",
    "value": "s68-2"
  },
  {
    "name": "尺寸",
    "value": "XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'990', N'雨衣雨裤套装男款全身防暴雨单人分体电动车摩托成人外卖骑手雨衣', N'2662470903430803504', N'50', N'60', N'669966566674', N'[
  {
    "name": "颜色",
    "value": "s68-2"
  },
  {
    "name": "尺寸",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'991', N'雨衣雨裤套装男款全身防暴雨单人分体电动车摩托成人外卖骑手雨衣', N'2662470903430803504', N'50', N'60', N'669966566674', N'[
  {
    "name": "颜色",
    "value": "s68-2"
  },
  {
    "name": "尺寸",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'992', N'电子勺子秤 勺子称 食物秤 500g/0.1g称重勺子称配料秤量勺秤克秤', N'2659381454697803504', N'5000', N'11.5', N'562388306040', N'[
  {
    "name": "规格",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'993', N'电子勺子秤 勺子称 食物秤 500g/0.1g称重勺子称配料秤量勺秤克秤', N'2659381454697803504', N'5000', N'11.5', N'562388306040', N'[
  {
    "name": "规格",
    "value": "白色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'994', N'升级款,红光笔5/10/18/22公里,光纤测试笔,红光源', N'2657549161603803504', N'100', N'60', N'638196821222', N'[
  {
    "name": "规格",
    "value": "1mw（3-5公里）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'995', N'气缸压力表', N'2657519173165803504', N'100', N'44', N'579263942726', N'[
  {
    "name": "规格",
    "value": "气缸压力表"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'996', N'21件套22件套刹车分泵', N'2657737226279803504', N'200', N'50', N'579342971687', N'[
  {
    "name": "规格",
    "value": "21件套刹车分泵"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'997', N'创意台夹式90/110/130mm亚克力镜片老人阅读带灯放大镜家居用品', N'2658350811734803504', N'200', N'45', N'562241239516', N'[
  {
    "name": "规格",
    "value": "110mm台夹灯"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'998', N'现货倒挂脚套倒立倒吊器倒挂鞋脚套靴护套倒立器倒立机倒立器', N'2658337671882803504', N'180', N'98', N'548771382110', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'999', N'厂家直销直流潜水泵12V24V微型水泵农用家用抽水机游艇船用舱底泵', N'2656444644345803504', N'300', N'35', N'620900191672', N'[
  {
    "name": "规格",
    "value": "12V微型舱底泵送夹子抱扣"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1000', N'足享来 XD-607夏季运动跑步鞋垫 秋冬男式舒适休闲散步鞋垫可剪裁', N'2654446683296803504', N'200', N'3.37', N'635934819008', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "45-46"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1001', N'足享来 XD-607夏季运动跑步鞋垫 秋冬男式舒适休闲散步鞋垫可剪裁', N'2654446683296803504', N'500', N'3.37', N'635934819008', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "43-44"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1002', N'足享来 XD-607夏季运动跑步鞋垫 秋冬男式舒适休闲散步鞋垫可剪裁', N'2654446683296803504', N'500', N'3.37', N'635934819008', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "41-42"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1003', N'足享来 XD-607夏季运动跑步鞋垫 秋冬男式舒适休闲散步鞋垫可剪裁', N'2654446683296803504', N'300', N'3.37', N'635934819008', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "39-40"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1004', N'激光瞄 瞄准仪 红外瞄仪', N'2650988593767803504', N'300', N'55', N'580831124531', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1005', N'厂家直供滑轮剪滑轮省力剪园林剪刀修枝剪跳段剪分段剪园林工具', N'2651009294389803504', N'50', N'17.1', N'602088910569', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1006', N'车载后备箱储物箱木盖户外野营露营整理收纳箱韩国家居储物折叠箱', N'2646671976060803504', N'120', N'4.75', N'613854232838', N'[
  {
    "name": "颜色",
    "value": "30L-小号防水袋"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1007', N'车载后备箱储物箱木盖户外野营露营整理收纳箱韩国家居储物折叠箱', N'2646671976060803504', N'30', N'13.78', N'613854232838', N'[
  {
    "name": "颜色",
    "value": "30L-小号绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1008', N'车载后备箱储物箱木盖户外野营露营整理收纳箱韩国家居储物折叠箱', N'2646671976060803504', N'30', N'13.78', N'613854232838', N'[
  {
    "name": "颜色",
    "value": "30L-小号蓝色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1009', N'车载后备箱储物箱木盖户外野营露营整理收纳箱韩国家居储物折叠箱', N'2646671976060803504', N'30', N'13.78', N'613854232838', N'[
  {
    "name": "颜色",
    "value": "30L-小号黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1010', N'车载后备箱储物箱木盖户外野营露营整理收纳箱韩国家居储物折叠箱', N'2646671976060803504', N'30', N'13.78', N'613854232838', N'[
  {
    "name": "颜色",
    "value": "30L-小号咖色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1011', N'厂家批发高帮巴拿马军靴无拉链作战靴特种兵透气沙漠靴军靴', N'2644126671141803504', N'600', N'58', N'596081548601', N'[
  {
    "name": "颜色",
    "value": "黄色"
  },
  {
    "name": "尺码",
    "value": "39"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1012', N'亚马逊房车VR防水软管收纳袋电线收纳包防尘收纳包三件套', N'2641519801588803504', N'2000', N'10.45', N'675314635725', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "单个售卖"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1013', N'小剪刀批发 u型大号弹簧小纱剪 十字绣剪刀裁缝小剪刀鱼线修线剪', N'2637227666732803504', N'100', N'0.92', N'598094950612', N'[
  {
    "name": "规格",
    "value": "12个条装（4色混）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1014', N'劳保手套浸胶线手套劳保丁青浸胶手套挂胶手套半胶手套手劳保手套', N'2637212870537803504', N'100', N'1.57', N'617657837979', N'[
  {
    "name": "规格型号",
    "value": "灰纱蓝防滑皱纹"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1040', N'工厂直销可调节弹夹包 战术装备附件包 快速抽离塑料弹匣批发', N'2621748349673803504', N'50', N'30', N'669389073530', N'[
  {
    "name": "容量",
    "value": "8.5*6*12cm"
  },
  {
    "name": "颜色",
    "value": "绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1041', N'跨境户外战术医疗盒 止血带收纳盒子 救援MOLLE 医院止血带快拨盒', N'2621748349673803504', N'50', N'28', N'671234426903', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "55*44*45cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1042', N'批发热销羽毛球翻分牌多功能实用乒乓球记分牌4位塑料记分牌', N'2618754372676803504', N'100', N'25', N'40589863805', N'[
  {
    "name": "规格",
    "value": "39.8cm*15.5cm*21cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1043', N'家装射钉 装潢直钉枪手动气钉枪 气动钉枪 木工码钉枪F50大众钉枪', N'2620300611113803504', N'300', N'142.5', N'633664001335', N'[
  {
    "name": "型号",
    "value": "F50-C"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1044', N'爆款自行车修理工具套装组合修车工具多功能拆车修理工具', N'2617743819004803504', N'60', N'96', N'41901500580', N'[
  {
    "name": "颜色",
    "value": "常规"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1045', N'自行车装车多功能组合工具/修车工具套装/拆车修理工具/礼盒装', N'2617743819004803504', N'80', N'75', N'41918084112', N'[
  {
    "name": "颜色",
    "value": "常规"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1046', N'特种兵多功能战术背心夏季透气网黑色作战马甲军迷CS野战防护装备', N'2615897340440803504', N'200', N'67.64', N'536323657156', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1047', N'源头厂家 户外多功能安全高亮反光帐篷可调长度绳拉长耐磨耐用', N'2616891985710803504', N'50000', N'0.5', N'576780516306', N'[
  {
    "name": "规格型号",
    "value": "定制联系客服"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1048', N'安全伪装 厂家直销毛丝稻草伪装服 飞鸟伪装服 吉利隐身服', N'2616881257370803504', N'80', N'85', N'535821309290', N'[
  {
    "name": "颜色",
    "value": "颜色齐全 按需定制"
  },
  {
    "name": "尺码",
    "value": "尺码齐全 按需定制"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1049', N'专业不锈钢尖头果园摘果剪 采摘水果葡萄稀果剪刀 修枝果枝树枝剪', N'2617039658544803504', N'50', N'5.4', N'561028760777', N'[
  {
    "name": "规格",
    "value": "红黑色（不带包装）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1050', N'优质多功能树枝粗枝剪 果树果枝修枝剪刀 园林剪园艺工具防滑设计', N'2617039658544803504', N'50', N'10', N'643488734403', N'[
  {
    "name": "规格",
    "value": "热销款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1051', N'热销防滑手柄园艺剪刀 果树摘果剪刀果枝树枝修枝剪 园林花园工具', N'2617039658544803504', N'50', N'5.5', N'650637660618', N'[
  {
    "name": "规格",
    "value": "红黑色款-简装"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1052', N'【月销20000＋】极地虎单人迷彩帐篷户外休闲露营野营帐礼品帐篷', N'2615807269023803504', N'2600', N'35', N'522018302741', N'[
  {
    "name": "颜色",
    "value": "大花迷彩"
  },
  {
    "name": "适用人数",
    "value": "单人"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1053', N'厂家直销直流潜水泵12V24V微型水泵农用家用抽水机游艇船用舱底泵', N'2615690089833803504', N'300', N'35', N'620900191672', N'[
  {
    "name": "规格",
    "value": "12V微型舱底泵送夹子抱扣"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1054', N'环保USB转dc3.5公头电源充电线1米2A适用加湿器台灯dc3.5充电线2A', N'2614531680661803504', N'3000', N'1.05', N'625302089051', N'[
  {
    "name": "型号",
    "value": "1米环保dc3.5充电线"
  },
  {
    "name": "颜色",
    "value": "白色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1055', N'激光瞄 瞄准仪 红外瞄仪', N'2615517793442803504', N'400', N'55', N'580831124531', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1056', N'跨境透明pet红酒架子可叠加收纳架洋酒展示架葡萄酒架冰箱收纳架', N'2614809711827803504', N'120', N'4.47', N'671086825383', N'[
  {
    "name": "颜色",
    "value": "6136"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1057', N'厂家直供滑轮剪滑轮省力剪园林剪刀修枝剪跳段剪分段剪园林工具', N'2606591628485803504', N'50', N'17.1', N'602088910569', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1058', N'专业不锈钢尖头果园摘果剪 采摘水果葡萄稀果剪刀 修枝果枝树枝剪', N'2606592996198803504', N'50', N'5.4', N'561028760777', N'[
  {
    "name": "规格",
    "value": "红黑色（不带包装）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1059', N'优质多功能树枝粗枝剪 果树果枝修枝剪刀 园林剪园艺工具防滑设计', N'2606592996198803504', N'50', N'10', N'643488734403', N'[
  {
    "name": "规格",
    "value": "热销款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1060', N'热销防滑手柄园艺剪刀 果树摘果剪刀果枝树枝修枝剪 园林花园工具', N'2606592996198803504', N'50', N'5.5', N'650637660618', N'[
  {
    "name": "规格",
    "value": "红黑色款-简装"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1061', N'厂家SAHOO自行车补胎工具套装山地车修补工具组合单车维修工具', N'2596668265244803504', N'2', N'5.89', N'565175461987', N'[
  {
    "name": "颜色",
    "value": "透明"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1062', N'J422码钉枪 家用装修气动钉枪 建筑装修射钉枪 厂家生产钉枪', N'2584612046386803504', N'200', N'120', N'30135846', N'[
  {
    "name": "型号",
    "value": "J422-1"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1063', N'TX-1001B手持式金属探测器高灵敏度车站机场考场安检仪器全国包邮', N'2582686046891803504', N'40', N'82.8', N'39474641605', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1064', N'补胎工具套装真空轮胎汽车摩托车电动车应急快速修补胶条多功能', N'2583314175086803504', N'100', N'36.86', N'721896476', N'[
  {
    "name": "型号",
    "value": "68PCS"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1065', N'补胎工具套装真空轮胎汽车摩托车电动车应急快速修补胶条多功能', N'2583314175086803504', N'100', N'31.35', N'721896476', N'[
  {
    "name": "型号",
    "value": "53PCS"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1066', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2579702544839803504', N'30', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "天蓝拼灰色270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'656', N'抖音同款赛博朋克机械姬AI女王特效变装cos洛丽塔裙哥特风Lolita', N'2816681366401411134', N'19', N'66.64', N'669272836241', N'[
  {
    "name": "颜色",
    "value": "AI女王全套【收藏送同款袜子】"
  },
  {
    "name": "尺码",
    "value": "均码【可调节】"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'682', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'4', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "红色"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'732', N'塑料洞洞板浴室厨房墙壁免打孔置物架 客厅卧室墙上收纳壁架壁挂', N'2810260189480411134', N'10', N'15.8', N'598572351335', N'[
  {
    "name": "颜色",
    "value": "A1套装"
  },
  {
    "name": "规格",
    "value": "米白色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'790', N'哈利系列领带  狮院 蛇院 拉文克劳 赫奇帕奇  复古 现货', N'2807229816921803504', N'20', N'4', N'38484069432', N'[
  {
    "name": "颜色",
    "value": "黄黑色（赫奇帕奇）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'843', N'厂家SAHOO自行车补胎工具套装山地车修补工具组合单车维修工具', N'2773825671808803504', N'500', N'4.56', N'565175461987', N'[
  {
    "name": "颜色",
    "value": "透明"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'873', N'气动加长内六角批头电钻头H1.5-H8磁性电批头内六方钻头风批头', N'2754159195807803504', N'1', N'2.38', N'630141492518', N'[
  {
    "name": "系列",
    "value": "长度：200mm"
  },
  {
    "name": "规格",
    "value": "规格：5mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'874', N'气动加长内六角批头电钻头H1.5-H8磁性电批头内六方钻头风批头', N'2754159195807803504', N'1', N'2.38', N'630141492518', N'[
  {
    "name": "系列",
    "value": "长度：200mm"
  },
  {
    "name": "规格",
    "value": "规格：4mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'875', N'气动加长内六角批头电钻头H1.5-H8磁性电批头内六方钻头风批头', N'2754159195807803504', N'1', N'2.38', N'630141492518', N'[
  {
    "name": "系列",
    "value": "长度：200mm"
  },
  {
    "name": "规格",
    "value": "规格：3mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'876', N'气动加长内六角批头电钻头H1.5-H8磁性电批头内六方钻头风批头', N'2754159195807803504', N'1', N'6.56', N'630141492518', N'[
  {
    "name": "系列",
    "value": "长度：50mm"
  },
  {
    "name": "规格",
    "value": "10件套：1.5mm-12mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'877', N'气动加长内六角批头电钻头H1.5-H8磁性电批头内六方钻头风批头', N'2754159195807803504', N'1', N'2.38', N'630141492518', N'[
  {
    "name": "系列",
    "value": "长度：200mm"
  },
  {
    "name": "规格",
    "value": "规格：6mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'878', N'气动加长内六角批头电钻头H1.5-H8磁性电批头内六方钻头风批头', N'2754159195807803504', N'1', N'10.17', N'630141492518', N'[
  {
    "name": "系列",
    "value": "长度：100mm"
  },
  {
    "name": "规格",
    "value": "10件套：1.5mm-12mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'879', N'木工开孔器硬质合金开孔器手电钻木材石膏板扩孔钻头平翼钻套装', N'2745296136274803504', N'1', N'33.25', N'630124814645', N'[
  {
    "name": "型号",
    "value": "15-50mm（10PC）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'880', N'厂家供应12件套工具木雕刻刀雕花凿 手工根雕木工凿套装 木雕工具', N'2746200025441803504', N'1', N'38', N'533279770177', N'[
  {
    "name": "规格",
    "value": "无LOGO12件套雕刻刀"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'881', N'宽6cm 肉厚2cm批发打包透明胶带 打包装封箱带胶粘带包邮', N'2742012794041803504', N'400', N'4.45', N'45243739226', N'[
  {
    "name": "型号",
    "value": "6020透明白"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'882', N'厂家直销EVA泡沫轴 45cm鱼骨纹套装按摩棒筋膜球放松滚轴现货速发', N'2740694472916803504', N'1', N'52', N'630498579388', N'[
  {
    "name": "规格",
    "value": "45cm鱼骨纹四件套橙色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'883', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.03', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*12"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'884', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.03', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*16"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'885', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.03', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*10"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'886', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.02', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*6"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'887', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.05', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M5*8"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'888', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.05', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M5*10"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'889', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.06', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M5*12"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'890', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.06', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M5*16"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'891', N'【201半圆头内六角螺丝】不锈钢半圆头内六角螺丝M4M6M8M10M12', N'2738706192441803504', N'50', N'0.04', N'622476418751', N'[
  {
    "name": "产品规格",
    "value": "M3*20"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'683', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'3', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "绿色"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'684', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'3', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "绿色"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'685', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'5', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "红色"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'686', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'5', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "绿色"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'687', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'2', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "红色"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'688', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2814982704200411134', N'5', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "绿色"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'689', N'假发网帽佩戴假发bi备发网收纳头发假发周边护理配件工具假发网帽', N'2814930072454411134', N'115', N'0.53', N'623088768251', N'[
  {
    "name": "颜色分类",
    "value": "发网（两头通）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'690', N'女仆装cos可爱女佣女装大码佬lolita连衣裙洛丽塔cosplay服黑格子', N'2816530959306411134', N'2', N'39', N'670124385164', N'[
  {
    "name": "颜色",
    "value": "黑格子六件套"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'691', N'女仆装cos可爱女佣女装大码佬lolita连衣裙洛丽塔cosplay服黑格子', N'2816530959306411134', N'2', N'39', N'670124385164', N'[
  {
    "name": "颜色",
    "value": "黑格子六件套"
  },
  {
    "name": "尺码",
    "value": "XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'692', N'女仆装cos可爱女佣女装大码佬lolita连衣裙洛丽塔cosplay服黑格子', N'2816530959306411134', N'7', N'39', N'670124385164', N'[
  {
    "name": "颜色",
    "value": "黑格子六件套"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'693', N'女仆装cos可爱女佣女装大码佬lolita连衣裙洛丽塔cosplay服黑格子', N'2816530959306411134', N'5', N'39', N'670124385164', N'[
  {
    "name": "颜色",
    "value": "黑格子六件套"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'694', N'女仆装cos可爱女佣女装大码佬lolita连衣裙洛丽塔cosplay服黑格子', N'2816530959306411134', N'4', N'39', N'670124385164', N'[
  {
    "name": "颜色",
    "value": "黑格子六件套"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'695', N'摇滚歌星假发 猫王假发 舞会假发 派对扮演表演假发猫王服装假发', N'2814876324884411134', N'15', N'18', N'534180197847', N'[
  {
    "name": "颜色",
    "value": "A款猫王假发"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'696', N'摇滚歌星假发 猫王假发 舞会假发 派对扮演表演假发猫王服装假发', N'2814876324884411134', N'15', N'15', N'534180197847', N'[
  {
    "name": "颜色",
    "value": "B款猫王假发"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'697', N'搞笑卡通人偶服装搞怪胖子玩偶气氛道具宣传活动相扑充气衣服成人', N'2816114798900411134', N'5', N'55', N'620388723182', N'[
  {
    "name": "颜色",
    "value": "相扑黑腰带"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'698', N'搞笑卡通人偶服装搞怪胖子玩偶气氛道具宣传活动相扑充气衣服成人', N'2816114798900411134', N'5', N'55', N'620388723182', N'[
  {
    "name": "颜色",
    "value": "相扑蓝腰带"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'699', N'搞笑卡通人偶服装搞怪胖子玩偶气氛道具宣传活动相扑充气衣服成人', N'2816114798900411134', N'5', N'55', N'620388723182', N'[
  {
    "name": "颜色",
    "value": "相扑红腰带"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'700', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'1', N'55', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "鬼新娘-0.42kg"
  },
  {
    "name": "尺码",
    "value": "XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'701', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'1', N'40', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "巫婆A-0.65kg"
  },
  {
    "name": "尺码",
    "value": "XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'702', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'5', N'55', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "鬼新娘-0.42kg"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'703', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'6', N'40', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "巫婆A-0.65kg"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'704', N'2022万圣节服装 鬼新娘女巫吸血鬼cosplay演出游戏服恐怖欧美跨境', N'2814621012885411134', N'2', N'40', N'621375697943', N'[
  {
    "name": "颜色",
    "value": "巫婆A-0.65kg"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'733', N'户外折叠卓便捷手提式收纳小桌子野餐露营学习卓加厚坚固塑料简易', N'2810136745058411134', N'3', N'25', N'646769515583', N'[
  {
    "name": "颜色",
    "value": "灰色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'734', N'塑料洞洞板浴室厨房墙壁免打孔置物架 客厅卧室墙上收纳壁架壁挂', N'2798550648492411134', N'1', N'25.8', N'598572351335', N'[
  {
    "name": "颜色",
    "value": "A1套装"
  },
  {
    "name": "规格",
    "value": "米白色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'735', N'户外折叠卓便捷手提式收纳小桌子野餐露营学习卓加厚坚固塑料简易', N'2795548106309411134', N'1', N'25', N'646769515583', N'[
  {
    "name": "颜色",
    "value": "灰色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'736', N'心经抄经本套装入门初学者成人临摹毛笔字帖描红粉彩宣纸小楷心经', N'2781328394268411134', N'3', N'10.8', N'661788438525', N'[
  {
    "name": "规格",
    "value": "浅仿古粉彩心经描红"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'737', N'心经抄经本套装入门初学者成人临摹毛笔字帖描红粉彩宣纸小楷心经', N'2781328394268411134', N'2', N'10.8', N'661788438525', N'[
  {
    "name": "规格",
    "value": "佛教黄粉彩心经描红"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'738', N'心经抄经本套装入门初学者成人临摹毛笔字帖描红粉彩宣纸小楷心经', N'2781328394268411134', N'5', N'10.8', N'661788438525', N'[
  {
    "name": "规格",
    "value": "深仿古粉彩心经描红"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'739', N'心经抄经本套装入门初学者成人临摹毛笔字帖描红粉彩宣纸小楷心经', N'2781328394268411134', N'5', N'10.8', N'661788438525', N'[
  {
    "name": "规格",
    "value": "万年蓝粉彩心经描红"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'740', N'狼毫小楷毛笔黑檀北尾狼毫抄经笔心经学生钢笔式毛笔厂家批发', N'2781236378565411134', N'17', N'5', N'656166944696', N'[
  {
    "name": "规格",
    "value": "黑砂单笔"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'741', N'莫兰迪色钢笔式软毛笔便携狼毫毛笔小楷抄经笔书法加墨秀丽笔批发', N'2772055836974411134', N'1', N'3.29', N'677203085661', N'[
  {
    "name": "规格",
    "value": "莫兰迪色-复古蓝[送一支墨囊]"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'742', N'户外露营帐篷配件多功能地钉锤子收纳袋野营便携式储物收纳包套装', N'2771981496284411134', N'1', N'25', N'653333333036', N'[
  {
    "name": "颜色",
    "value": "地钉收纳包"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'743', N'万年蓝手抄心经金刚经地藏经佛经抄经本抄写经书经文临摹练字帖', N'2772104257106411134', N'1', N'13.8', N'674870885230', N'[
  {
    "name": "颜色",
    "value": "心经【10张/包 可抄10遍】"
  },
  {
    "name": "规格",
    "value": "万年蓝佛经描红"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'744', N'跨境ibcccndc烫睫毛套装 电睫毛冷烫翘蛋白芭比烫 烫睫毛套装', N'2771605693920411134', N'1', N'22', N'596399229989', N'[
  {
    "name": "颜色分类",
    "value": "七件套"
  },
  {
    "name": "规格",
    "value": "烫睫毛7件套（国外版）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'745', N'除器割刀不锈钢家用手动起苗拔器园林石缝拔夹缝除工具', N'2768470884981411134', N'3', N'21.4', N'656221930930', N'[
  {
    "name": "规格",
    "value": "黄柄多用割草刀21cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'746', N'厂家供应批发大容量可折叠收纳篮收纳筐居家日用塑料桌面整理收纳', N'2760761343335411134', N'1', N'19.9', N'636672168009', N'[
  {
    "name": "颜色",
    "value": "气质灰"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'747', N'折叠锯山东临沂厂家手工园林户外快速锯家用伐木工锯子批发', N'2744794803200411134', N'20', N'5.8', N'670241608856', N'[
  {
    "name": "规格",
    "value": "大号250mm折叠锯电泳"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'748', N'意可可家居厨房台面多功能旋转调料置物架酱油瓶桌面收纳盘水果盘', N'2738818551173411134', N'16', N'19', N'635088253844', N'[
  {
    "name": "颜色",
    "value": "大号黑"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'749', N'意可可家居厨房台面多功能旋转调料置物架酱油瓶桌面收纳盘水果盘', N'2738818551173411134', N'16', N'15', N'635088253844', N'[
  {
    "name": "颜色",
    "value": "小号黑"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'750', N'意可可家居厨房台面多功能旋转调料置物架酱油瓶桌面收纳盘水果盘', N'2726141293873411134', N'1', N'15', N'635088253844', N'[
  {
    "name": "颜色",
    "value": "小号黑"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'751', N'可旋转式盘子厨房置物架调味品调料瓶收纳盘客厅水果零食收纳圆盘', N'2725106580821411134', N'1', N'16.7', N'622658621381', N'[
  {
    "name": "颜色",
    "value": "21cm单层旋转盘"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'752', N'厂家直销婴儿床母婴包 多功能双肩折叠床妈咪包充电usb遮阳布防水', N'2702483894420411134', N'1', N'60', N'651755206286', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'753', N'折叠锯山东临沂厂家手工园林户外快速锯家用伐木工锯子批发', N'2698554780065411134', N'1', N'6.5', N'670241608856', N'[
  {
    "name": "规格",
    "value": "特大号300折叠锯电泳"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'754', N'折叠锯山东临沂厂家手工园林户外快速锯家用伐木工锯子批发', N'2698554780065411134', N'1', N'5.8', N'670241608856', N'[
  {
    "name": "规格",
    "value": "大号250mm折叠锯电泳"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'755', N'热销3D立体泡泡贴 水果儿童立体贴纸奖励贴 厂家批发现货', N'2699788538326411134', N'20', N'0.18', N'613030129317', N'[
  {
    "name": "尺寸",
    "value": "水果"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'756', N'厂家批发儿童卡通动物益智早教3D优质立体贴幼儿园奖励泡泡贴现货', N'2699788538326411134', N'60', N'0.18', N'620612611401', N'[
  {
    "name": "颜色",
    "value": "7x17cm 卡通动物（20张一种图案）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'757', N'赠品3D立体泡泡贴蛋糕甜点儿童立体贴纸奖励贴泡泡贴厂家批发现货', N'2699788538326411134', N'20', N'0.18', N'637593539371', N'[
  {
    "name": "颜色",
    "value": "蛋糕拍20 的倍数"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'758', N'灭鼠先锋肩包零钱包猫咪单肩斜挎包灭鼠先锋儿童解压玩具Pop Bag', N'2699597306611411134', N'5', N'9.5', N'658910892240', N'[
  {
    "name": "颜色",
    "value": "泡泡肩带包-马卡龙色猫咪"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'759', N'Pop Shoulder Bag Fidget Toys泡泡包汉堡肩带包零钱包斜挎包', N'2699597306611411134', N'5', N'9.5', N'659715318406', N'[
  {
    "name": "颜色",
    "value": "泡泡肩带包-汉堡橙色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'791', N'哈利系列领带  狮院 蛇院 拉文克劳 赫奇帕奇  复古 现货', N'2807229816921803504', N'560', N'4', N'38484069432', N'[
  {
    "name": "颜色",
    "value": "红色（格兰芬多）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'792', N'哈利系列领带  狮院 蛇院 拉文克劳 赫奇帕奇  复古 现货', N'2807229816921803504', N'100', N'4', N'38484069432', N'[
  {
    "name": "颜色",
    "value": "蓝色（拉文克劳）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'793', N'哈利系列领带  狮院 蛇院 拉文克劳 赫奇帕奇  复古 现货', N'2807229816921803504', N'530', N'4', N'38484069432', N'[
  {
    "name": "颜色",
    "value": "绿色（斯莱特林）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'794', N'哈利波特魔法棒 万圣节魔术棒  塑料不发光厂家直销一件代发', N'2807227296244803504', N'1200', N'2.4', N'521464699361', N'[
  {
    "name": "颜色",
    "value": "裸装500支/箱"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'795', N'户外野营地钉锤多功能软胶柄铁锤露营帐篷天幕防风营钉锤拔钉器', N'2808844995910803504', N'50', N'31', N'624124574999', N'[
  {
    "name": "颜色",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'796', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'200', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "格兰芬多"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'797', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'30', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "格兰芬多"
  },
  {
    "name": "尺码",
    "value": "145码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'798', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'60', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "斯莱特林"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'799', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'30', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "格兰芬多"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'800', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'100', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "斯莱特林"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'801', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'200', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "格兰芬多"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'802', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'50', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "赫夫帕夫"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'803', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'50', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "赫夫帕夫"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'804', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'60', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "拉文克劳"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'805', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'60', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "斯莱特林"
  },
  {
    "name": "尺码",
    "value": "145码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'806', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'60', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "拉文克劳"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'807', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'200', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "格兰芬多"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'808', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'50', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "拉文克劳"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'809', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'120', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "斯莱特林"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'810', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'200', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "斯莱特林"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'811', N'【清仓】邮费补拍 万圣节cosplay服装演出斗篷', N'2808362414546803504', N'30', N'30.4', N'520303538112', N'[
  {
    "name": "颜色",
    "value": "拉文克劳"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'812', N'升级款,红光笔5/10/18/22公里,光纤测试笔,红光源', N'2807053056800803504', N'20', N'100', N'638196821222', N'[
  {
    "name": "规格",
    "value": "20mw（18-20公里）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'813', N'爆款自行车修理工具套装组合修车工具多功能拆车修理工具', N'2808268526758803504', N'80', N'96', N'41901500580', N'[
  {
    "name": "颜色",
    "value": "常规"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'814', N'自行车装车多功能组合工具/修车工具套装/拆车修理工具/礼盒装', N'2808268526758803504', N'80', N'75', N'41918084112', N'[
  {
    "name": "颜色",
    "value": "常规"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'632', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC218"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'633', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC443"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'634', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "LY502"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'635', N'瓢虫少女儿童成人服装雷迪诺尔连体紧身衣cos舞台装扮万圣节衣服', N'2826813639483411134', N'1', N'5', N'592526997318', N'[
  {
    "name": "颜色",
    "value": "瓢虫眼罩"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'636', N'瓢虫雷迪假发 黑猫诺尔假发cosplay 儿童角色扮演 跨境爆款', N'2826812631267411134', N'1', N'9', N'643371513078', N'[
  {
    "name": "颜色",
    "value": "瓢虫"
  },
  {
    "name": "尺码",
    "value": "中长发"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'637', N'原神迪卢克cos假发批发 晨曦酒庄贵公子火红分层微卷蓬松cosplay', N'2826066025762411134', N'1', N'31.36', N'679559368406', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'638', N'豆蔻 原神 霆霓快雨  美少女刻晴  cos假发 双马尾猫耳朵造型渐变', N'2825160480055411134', N'3', N'58.8', N'679471917619', N'[
  {
    "name": "颜色",
    "value": "混色渐变"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'639', N'原神 温迪 动漫假发 Venti 蓝黑渐变 辫子反翘 动漫cosplay假发', N'2826657183093411134', N'1', N'27.44', N'650833857001', N'[
  {
    "name": "颜色",
    "value": "温迪"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'640', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2825735005445411134', N'4', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'641', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2825735005445411134', N'4', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'642', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2825735005445411134', N'4', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'643', N'中世纪僧侣服巫师牧师cos服万圣节死神长袍cosplay角色扮演服装', N'2825735005445411134', N'3', N'28', N'640228047667', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'644', N'厂家批发创意遥控蜡烛led蜡烛 流泪款遥控锥形蜡烛遥控长杆蜡烛灯', N'2822734872766411134', N'2', N'27.99', N'558993562699', N'[
  {
    "name": "尺寸",
    "value": "6装2键遥控黄闪"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'645', N'间谍过家家SPY FAMILY阿尼亚福杰约尔·布莱尔劳埃德福杰coos假发', N'2820932712061411134', N'10', N'26.46', N'674855787417', N'[
  {
    "name": "颜色",
    "value": "W887劳埃德·福杰cosplay"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'646', N'万圣节服装鬼怪服装恶魔服装衣服恐怖白色幽灵服装木乃伊批发', N'2820757464311411134', N'30', N'18.5', N'672918035460', N'[
  {
    "name": "颜色",
    "value": "白色"
  },
  {
    "name": "适合身高",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'647', N'儿童手绘纸浆京剧脸谱面具白diy手工空白马勺绘画材料包', N'2822175183676411134', N'50', N'1.13', N'641280827881', N'[
  {
    "name": "造型",
    "value": "女人像"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'648', N'儿童手绘纸浆京剧脸谱面具白diy手工空白马勺绘画材料包', N'2822175183676411134', N'50', N'1.13', N'641280827881', N'[
  {
    "name": "造型",
    "value": "男人像"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'649', N'儿童手绘纸浆京剧脸谱面具白diy手工空白马勺绘画材料包', N'2822175183676411134', N'50', N'1.13', N'641280827881', N'[
  {
    "name": "造型",
    "value": "狐狸"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'650', N'橙色挂钩套装仓库收纳挂钩阳台储物钩车库挂钩 金属收纳挂钩 跨境', N'2822007315026411134', N'60', N'2.5', N'587506423017', N'[
  {
    "name": "规格",
    "value": "加固铁片（5片）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'651', N'橙色挂钩套装仓库收纳挂钩阳台储物钩车库挂钩 金属收纳挂钩 跨境', N'2822007315026411134', N'40', N'6.8', N'587506423017', N'[
  {
    "name": "规格",
    "value": "挂钩A款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'652', N'橙色挂钩套装仓库收纳挂钩阳台储物钩车库挂钩 金属收纳挂钩 跨境', N'2822007315026411134', N'10', N'5', N'587506423017', N'[
  {
    "name": "规格",
    "value": "挂钩B款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'653', N'橙色挂钩套装仓库收纳挂钩阳台储物钩车库挂钩 金属收纳挂钩 跨境', N'2822007315026411134', N'10', N'4.5', N'587506423017', N'[
  {
    "name": "规格",
    "value": "挂钩C款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'654', N'纹身贴防水疤痕针缝恶作剧贴纸 万圣节恐怖伤口逼真血迹伤疤痕', N'2815456680582411134', N'30', N'2.74', N'620442927107', N'[
  {
    "name": "颜色",
    "value": "WYF-179"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'655', N'纹身贴防水疤痕针缝恶作剧贴纸 万圣节恐怖伤口逼真血迹伤疤痕', N'2815456680582411134', N'30', N'2.74', N'620442927107', N'[
  {
    "name": "颜色",
    "value": "S-165"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'657', N'S-4XL大码女仆装 超萌大蝴蝶结洛丽塔连衣裙 女装大佬粉蓝可爱裙', N'2816550362733411134', N'5', N'33', N'668955157378', N'[
  {
    "name": "颜色",
    "value": "粉色五件套"
  },
  {
    "name": "尺码",
    "value": "S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'844', N'工厂直销手拉车铝合金购物车便携折叠行李车小拖车拉杆车推车', N'2773424234589803504', N'600', N'39', N'42285599446', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "折叠型"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'845', N'批发亚克力红酒展示架 透明可叠加红酒瓶放置酒架', N'2768310216824803504', N'160', N'4.47', N'626918910505', N'[
  {
    "name": "颜色",
    "value": "一联（32个一箱）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'846', N'帐篷固定沙袋广告展示牌600D牛津布防撕裂沙袋户外雨棚防倒坍', N'2766505824804803504', N'2000', N'9.5', N'626809412188', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'847', N'气缸压力表', N'2768134611547803504', N'200', N'44', N'579263942726', N'[
  {
    "name": "规格",
    "value": "气缸压力表"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'848', N'Intex57165 鳄鱼圆形滑梯喷水公园水池 儿童充气喷水滑梯戏水池', N'2762866658825803504', N'1', N'171', N'618776564980', N'[
  {
    "name": "规格",
    "value": "201x170x84cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'849', N'创意台夹式90/110/130mm亚克力镜片老人阅读带灯放大镜家居用品', N'2761497829622803504', N'100', N'48', N'562241239516', N'[
  {
    "name": "规格",
    "value": "130mm台夹灯"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'850', N'源头厂家 带扣安全反光野营帐篷绳 天幕拉绳防风露营帐篷风绳', N'2760560856498803504', N'32000', N'0.5', N'576780516306', N'[
  {
    "name": "规格型号",
    "value": "定制联系客服"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'851', N'潍坊风筝线轮批发蓝色手握轮放飞轮工具15cm18cm20cm手握轮风筝轮', N'2758306718932803504', N'100', N'8.6', N'42670082226', N'[
  {
    "name": "尺寸",
    "value": "老款18cm蓝轮200米线"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'852', N'家用烘焙秤电子厨房秤配料秤药材秤玻璃秤食物秤 5公斤电子秤KE-4', N'2757180747727803504', N'500', N'20', N'43620461261', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'853', N'跨境克拉秤迷你电子秤手机秤100g0.01秤高精度珠宝秤口红秤食物秤', N'2757180747727803504', N'5000', N'10.5', N'43634776364', N'[
  {
    "name": "规格",
    "value": "英文ABS按键(200g/0.01g)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'854', N'跨境外贸cs珠宝秤0.01g高精度珠宝称电子称黄金首饰口袋秤 电子秤', N'2757180747727803504', N'5000', N'11', N'541956589948', N'[
  {
    "name": "颜色",
    "value": "500g/0.1g黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'855', N'新款T型不锈钢手提电子秤 便携式手提秤 迷你秤行李电子秤 厨房秤', N'2757180747727803504', N'200', N'16', N'555204911225', N'[
  {
    "name": "规格",
    "value": "背光（白色底座）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'856', N'电子勺子秤 勺子称 食物秤 500g/0.1g称重勺子称配料秤量勺秤克秤', N'2757180747727803504', N'500', N'11.5', N'562388306040', N'[
  {
    "name": "规格",
    "value": "白色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'857', N'厂家批发200kg吊秤工业吊秤电子吊秤 迷你电子吊钩秤 手提秤 磅秤', N'2757180747727803504', N'200', N'30', N'631363172206', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'858', N'车钥匙电子称100g0.01g克称便携迷你口袋电子秤 手掌秤色粉克拉秤', N'2757180747727803504', N'500', N'16.5', N'657133668377', N'[
  {
    "name": "规格",
    "value": "100g/0.01g"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'859', N'黄金秤带防风罩500g/0.01g精准厨房秤烘焙秤高精珠宝克拉秤电子秤', N'2757180747727803504', N'50', N'50', N'669459598109', N'[
  {
    "name": "颜色",
    "value": "500g/0.01g防风罩"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'860', N'Naturehike挪客露营装备收纳箱户外旅行杂物袋大容量收纳包收纳袋', N'2755588033912803504', N'1', N'80', N'648308676507', N'[
  {
    "name": "颜色",
    "value": "大号-卡其色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'861', N'Naturehike挪客露营装备收纳箱户外旅行杂物袋大容量收纳包收纳袋', N'2755588033912803504', N'1', N'64', N'648308676507', N'[
  {
    "name": "颜色",
    "value": "小号-卡其色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'862', N'Naturehike挪客户外桌面户外露营野餐烧烤餐具配件-桌面置物架', N'2755588033912803504', N'1', N'76', N'648310828241', N'[
  {
    "name": "颜色",
    "value": "黑色。"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'863', N'Naturehike挪客户外露营帐篷配件收纳包便携式储物袋-地钉收纳袋', N'2755588033912803504', N'1', N'64', N'649075254809', N'[
  {
    "name": "颜色",
    "value": "卡其色/大码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'864', N'Naturehike挪客户外露营帐篷配件收纳包便携式储物袋-地钉收纳袋', N'2755588033912803504', N'1', N'52', N'649075254809', N'[
  {
    "name": "颜色",
    "value": "卡其色/小码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'865', N'Naturehike挪客PP折叠收纳篮便携户外旅行轻便折叠收纳篮—凌逸', N'2755588033912803504', N'1', N'58', N'674377583340', N'[
  {
    "name": "颜色",
    "value": "松霜绿 17L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'866', N'Naturehike挪客PP折叠收纳篮便携户外旅行轻便折叠收纳篮—凌逸', N'2755588033912803504', N'1', N'58', N'674377583340', N'[
  {
    "name": "颜色",
    "value": "浅米灰 17L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'867', N'Naturehike挪客户外露营牛津布折叠收纳筐多场景使用杂物包-凌仕', N'2755588033912803504', N'1', N'112', N'675333872795', N'[
  {
    "name": "颜色",
    "value": "卡其色20L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'868', N'帐篷广告固定沙包防水防风遮阳伞沙袋600D面料可印logo亚马逊', N'2754218738036803504', N'4600', N'5.14', N'613137621522', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'869', N'批发热销羽毛球翻分牌多功能实用乒乓球记分牌4位塑料记分牌', N'2752944912083803504', N'200', N'25', N'40589863805', N'[
  {
    "name": "规格",
    "value": "39.8cm*15.5cm*21cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'870', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2752929648011803504', N'100', N'16.15', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "双人吊床红条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'871', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2752929648011803504', N'200', N'16.15', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "双人吊床篮条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'965', N'厂家优惠生产户外CS隐形伪装服 迷彩网状丛林伪装服', N'2678686454426803504', N'120', N'55', N'535856664838', N'[
  {
    "name": "颜色",
    "value": "客户定制"
  },
  {
    "name": "尺码",
    "value": "尺码齐全 按需定制"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'966', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2679171663918803504', N'100', N'16.15', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "双人吊床红条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'967', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2679171663918803504', N'100', N'16.15', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "双人吊床篮条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'968', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2679171663918803504', N'100', N'19.95', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "弯棍双人红条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'969', N'吊床户外旅行装备休闲帆布室内休闲双人单人吊床加宽户外弯棍吊床', N'2679171663918803504', N'100', N'19.95', N'520597044674', N'[
  {
    "name": "规格(长*宽)",
    "value": "弯棍双人蓝条纹布料尺寸190*150厘米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'970', N'帐篷固定沙袋广告展示牌沙袋600D牛津布防撕裂沙袋户外雨棚防倒坍', N'2679138507220803504', N'2000', N'9.5', N'626809412188', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'971', N'工厂直销手拉车铝合金购物车便携折叠行李车小拖车拉杆车推车', N'2679116295429803504', N'400', N'39', N'42285599446', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "折叠型"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'972', N'厂家SAHOO自行车补胎工具套装山地车修补工具组合单车维修工具', N'2678545478376803504', N'300', N'4.56', N'565175461987', N'[
  {
    "name": "颜色",
    "value": "透明"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'973', N'厂家直销直流潜水泵12V24V微型水泵农用家用抽水机游艇船用舱底泵', N'2678476538172803504', N'400', N'35', N'620900191672', N'[
  {
    "name": "规格",
    "value": "12V微型舱底泵送夹子抱扣"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'974', N'源头厂家 户外多功能安全高亮反光帐篷可调长度绳拉长耐磨耐用', N'2669427687995803504', N'7500', N'0.5', N'576780516306', N'[
  {
    "name": "规格型号",
    "value": "定制联系客服"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'975', N'LED仿真火苗摇摆马灯 创意酒吧咖啡厅装饰灯 欧式家居茶馆煤油灯', N'2666336365689803504', N'24', N'30', N'583998664440', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'976', N'马灯复古户外照明露营灯 充电手提LED应急野营帐篷煤油灯摄影道具', N'2666336365689803504', N'24', N'30.5', N'622264182539', N'[
  {
    "name": "颜色",
    "value": "红古铜COB暖光"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'977', N'马灯复古户外照明露营灯 充电手提LED应急野营帐篷煤油灯摄影道具', N'2666336365689803504', N'24', N'30.5', N'622264182539', N'[
  {
    "name": "颜色",
    "value": "红古铜COB白光"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'978', N'定制A4A5足球纹文件袋防水牛津布拉链资料产检文具袋印刷logo厂家', N'2660585112842803504', N'700', N'1.51', N'607236753284', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "B4(39.5*28)可印刷定制"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'979', N'雨衣雨裤套装全身防暴雨服男女成人外套加厚单人防水分体雨衣雨披', N'2662470903430803504', N'100', N'45', N'640159486571', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'980', N'雨衣雨裤套装全身防暴雨服男女成人外套加厚单人防水分体雨衣雨披', N'2662470903430803504', N'50', N'45', N'640159486571', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "XXXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'981', N'雨衣雨裤套装全身防暴雨服男女成人外套加厚单人防水分体雨衣雨披', N'2662470903430803504', N'100', N'45', N'640159486571', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'982', N'雨衣雨裤套装全身防暴雨服男女成人外套加厚单人防水分体雨衣雨披', N'2662470903430803504', N'50', N'45', N'640159486571', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'983', N'雨衣雨裤套装全身防暴雨服男女成人外套加厚单人防水分体雨衣雨披', N'2662470903430803504', N'100', N'45', N'640159486571', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'984', N'精骑士雨衣长款全身防暴雨服男成人加厚加长防水连体雨披户外雨具', N'2662470903430803504', N'50', N'44', N'640226553837', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'985', N'精骑士雨衣长款全身防暴雨服男成人加厚加长防水连体雨披户外雨具', N'2662470903430803504', N'50', N'44', N'640226553837', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "XXXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'986', N'精骑士雨衣长款全身防暴雨服男成人加厚加长防水连体雨披户外雨具', N'2662470903430803504', N'100', N'44', N'640226553837', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺寸",
    "value": "XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'987', N'雨衣雨裤套装男款全身防暴雨单人分体电动车摩托成人外卖骑手雨衣', N'2662470903430803504', N'50', N'60', N'669966566674', N'[
  {
    "name": "颜色",
    "value": "s68-2"
  },
  {
    "name": "尺寸",
    "value": "XXXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'988', N'雨衣雨裤套装男款全身防暴雨单人分体电动车摩托成人外卖骑手雨衣', N'2662470903430803504', N'50', N'60', N'669966566674', N'[
  {
    "name": "颜色",
    "value": "s68-2"
  },
  {
    "name": "尺寸",
    "value": "M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'938', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边卡其高筒XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'939', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边白色高筒S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'940', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边白色高筒3XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'941', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边白色高筒L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'942', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边卡其高筒XXXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'943', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边黑色高筒L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'944', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边卡其高筒XXL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'945', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边黑色高筒S"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'946', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边白色高筒2XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'947', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边卡其高筒L"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'948', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边黑色高筒M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'949', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'10', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边黑色高筒XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'950', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边黑色高筒3XL"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'951', N'新款包边底高筒雨鞋套高位防水防泥防沙防雨鞋套户外旅游运动鞋套', N'2681890059547803504', N'5', N'10.5', N'566094444381', N'[
  {
    "name": "颜色",
    "value": "包边卡其高筒M"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'952', N'【一件代发】户外防蚊帐篷全自动免搭建防蚊防虫透气秒开网纱帐篷', N'2680982317336803504', N'1', N'66.5', N'672138345163', N'[
  {
    "name": "颜色",
    "value": "黑"
  },
  {
    "name": "适用人数",
    "value": "3-4人"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'953', N'户外骑行自行车帐篷 储物室帐篷单车棚防雨防尘便携车罩 厂家直供', N'2680982317336803504', N'2', N'97.85', N'675754100175', N'[
  {
    "name": "颜色",
    "value": "米白色"
  },
  {
    "name": "适用人数",
    "value": "200*80*165cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'954', N'儿童帐篷 现货 六角公主帐篷 薄纱游戏屋 儿童玩具', N'2681638707801803504', N'40', N'37', N'552960418424', N'[
  {
    "name": "颜色",
    "value": "蓝"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'955', N'厂家可调节泡沫水枪低压二合一家用可拆卸洗车喷壶', N'2680731973638803504', N'48', N'74.1', N'610053661689', N'[
  {
    "name": "颜色",
    "value": "黄色（透明壶身）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'956', N'厂家可调节泡沫水枪低压二合一家用可拆卸洗车喷壶', N'2680731973638803504', N'24', N'74.1', N'610053661689', N'[
  {
    "name": "颜色",
    "value": "黑色（白色壶身）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'957', N'2米软体海豚风筝   批发鲸鱼软体风筝 沙滩风筝', N'2680727617732803504', N'100', N'25', N'601060794965', N'[
  {
    "name": "尺寸",
    "value": "清新蓝色海豚风筝220*100cm 尾巴100cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'958', N'PP安全防护箱户外防水工具箱无人机电子设备手提箱热成像仪包装箱', N'2680721605250803504', N'100', N'57', N'665891148649', N'[
  {
    "name": "规格",
    "value": "350*255*107"
  },
  {
    "name": "颜色",
    "value": "黑色(可定做)"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'959', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2681533839275803504', N'50', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "黑色拼驼色270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'960', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2681533839275803504', N'50', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "宝蓝拼天蓝270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'961', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2681533839275803504', N'100', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "墨绿拼果绿270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'962', N'潍坊风筝 彩虹双线软体特技风筝 复线特技Stunt  POWER  Kite', N'2681290191535803504', N'100', N'24.8', N'539674768643', N'[
  {
    "name": "尺寸",
    "value": "1.4米"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'963', N'洗车泡沫喷壶高压龙卷风泡沫枪手提式发泡乳化清洗枪高压气动工具', N'2679241971523803504', N'100', N'45', N'560866237886', N'[
  {
    "name": "规格",
    "value": "黄头泡沫枪"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'964', N'Riding Tribe摩托车油箱后座车尾骑士包侧边摩旅超纤皮革多功能包', N'2678388409197803504', N'120', N'46', N'565107732543', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'609', N'假血浆假血袋吐血包假血包冒血血袋易清洗万圣节拍戏仿真道具', N'2829073860875411134', N'1', N'0.98', N'654199762161', N'[
  {
    "name": "颜色",
    "value": "30毫升鲜血"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'610', N'假血浆假血袋吐血包假血包冒血血袋易清洗万圣节拍戏仿真道具', N'2829073860875411134', N'1', N'0.98', N'654199762161', N'[
  {
    "name": "颜色",
    "value": "30毫升陈血"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'611', N'血疤膏万圣节化妆假血浆膏影视假血浆道具假血干血浆丧尸妆血浆膏', N'2829073860875411134', N'3', N'1.96', N'654586955907', N'[
  {
    "name": "颜色",
    "value": "英文说明书"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'612', N'化妆舞会道具 万圣节狂欢节仿真假胡须 兔毛眉毛胡子 老爷爷胡子', N'2829728450828411134', N'20', N'2', N'669702543257', N'[
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'613', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2828059381207411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC251"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'614', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2828059381207411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC322"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'615', N'跨境记账现金西式信封日韩小清新文创文具打孔预算西式创意信封', N'2828354330323411134', N'1', N'8.62', N'650404382876', N'[
  {
    "name": "尺寸",
    "value": "C款信封收纳袋"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'616', N'跨境记账现金西式信封日韩小清新文创文具打孔预算西式创意信封', N'2828354330323411134', N'1', N'8.62', N'650404382876', N'[
  {
    "name": "尺寸",
    "value": "A款信封收纳袋"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'617', N'万圣节服装忍者隐身人紧身衣舞台黑衣人隐形衣表演服演出服', N'2828701263071411134', N'5', N'27', N'613053159781', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "160CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'618', N'万圣节服装忍者隐身人紧身衣舞台黑衣人隐形衣表演服演出服', N'2828701263071411134', N'5', N'27', N'613053159781', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "170CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'619', N'万圣节服装忍者隐身人紧身衣舞台黑衣人隐形衣表演服演出服', N'2828701263071411134', N'5', N'27', N'613053159781', N'[
  {
    "name": "颜色",
    "value": "桔色"
  },
  {
    "name": "尺码",
    "value": "170CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'620', N'万圣节服装忍者隐身人紧身衣舞台黑衣人隐形衣表演服演出服', N'2828701263071411134', N'5', N'27', N'613053159781', N'[
  {
    "name": "颜色",
    "value": "蓝色"
  },
  {
    "name": "尺码",
    "value": "160CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'621', N'万圣节服装忍者隐身人紧身衣舞台黑衣人隐形衣表演服演出服', N'2828701263071411134', N'5', N'27', N'613053159781', N'[
  {
    "name": "颜色",
    "value": "蓝色"
  },
  {
    "name": "尺码",
    "value": "170CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'622', N'万圣节服装忍者隐身人紧身衣舞台黑衣人隐形衣表演服演出服', N'2828701263071411134', N'5', N'27', N'613053159781', N'[
  {
    "name": "颜色",
    "value": "桔色"
  },
  {
    "name": "尺码",
    "value": "160CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'623', N'亚马逊柴火收纳袋伐木包 便携式木柴包包 跨境多功能柴火手提袋', N'2828622207079411134', N'5', N'14.66', N'662562661713', N'[
  {
    "name": "颜色",
    "value": "卡其"
  },
  {
    "name": "规格",
    "value": "39寸*18寸"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'624', N'野餐椅折叠沙滩靠背椅带靠背坐垫折叠无腿椅体育场坐垫野营坐垫', N'2827828693860411134', N'2', N'25.48', N'673059177119', N'[
  {
    "name": "颜色",
    "value": "绿"
  },
  {
    "name": "规格(长*宽)",
    "value": "79*36"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'625', N'可移动便携置物架厨房落地收纳储物架多层带轮子浴室厕所塑料架子', N'2827733761447411134', N'1', N'17.44', N'629257585601', N'[
  {
    "name": "颜色",
    "value": "夹缝移动款3层+【送挂钩】"
  },
  {
    "name": "规格",
    "value": "默认"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'626', N'可移动便携置物架厨房落地收纳储物架多层带轮子浴室厕所塑料架子', N'2827733761447411134', N'1', N'19.11', N'629257585601', N'[
  {
    "name": "颜色",
    "value": "大号移动款3层+【送挂钩】"
  },
  {
    "name": "规格",
    "value": "默认"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'627', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC606"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'628', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC212"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'629', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC323"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'630', N'万圣节纹身贴恐怖手术伤口伤疤贴临时刀疤贴纸tattoo stickers', N'2826310212653411134', N'30', N'0.25', N'623680324980', N'[
  {
    "name": "图案",
    "value": "RC604"
  },
  {
    "name": "尺寸",
    "value": "伤疤纹身贴60*105mm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1015', N'厂家直销特种钢多功能车轮胎撬棒撬杠翘棍扒胎工具量大优先', N'2636971129478803504', N'300', N'30', N'625321753646', N'[
  {
    "name": "型号",
    "value": "多功能轮胎撬棍"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1016', N'直销多功能PU电烙铁工具包 烙铁套装 烙画套装 剪刀包皮包 工具袋', N'2635458518839803504', N'500', N'4', N'652364258026', N'[
  {
    "name": "系列",
    "value": "根据客户需求可以定制尺寸"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1017', N'大量批发青龙剑气排钉 直钉 国标气钉 木工装修钉现货供应', N'2633270041495803504', N'2', N'99', N'602042848496', N'[
  {
    "name": "规格",
    "value": "20（20盒*4000支）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1018', N'大量批发青龙剑气排钉 直钉 国标气钉 木工装修钉现货供应', N'2633270041495803504', N'2', N'84', N'602042848496', N'[
  {
    "name": "规格",
    "value": "15（20盒*4000支）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1019', N'大量批发青龙剑气排钉 直钉 国标气钉 木工装修钉现货供应', N'2633270041495803504', N'2', N'130', N'602042848496', N'[
  {
    "name": "规格",
    "value": "30（20盒*4000支）"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1020', N'亚马逊爆款广告固定沙袋 帐篷固定沙包 遮阳伞固定沙袋 防风沙袋', N'2632996801245803504', N'2000', N'5.14', N'613137621522', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1021', N'补胎工具套装真空轮胎汽车摩托车电动车应急快速修补胶条多功能', N'2631883500482803504', N'100', N'36.86', N'721896476', N'[
  {
    "name": "型号",
    "value": "68PCS"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1022', N'补胎工具套装真空轮胎汽车摩托车电动车应急快速修补胶条多功能', N'2631883500482803504', N'100', N'31.35', N'721896476', N'[
  {
    "name": "型号",
    "value": "53PCS"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1023', N'日本六边形八边形耐高温火坑垫户外烧烤隔热防火垫硅胶玻璃纤维毯', N'2621135700467803504', N'50', N'47.5', N'654306618352', N'[
  {
    "name": "规格",
    "value": "六边形"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1024', N'日本六边形八边形耐高温火坑垫户外烧烤隔热防火垫硅胶玻璃纤维毯', N'2621135700467803504', N'50', N'47.5', N'654306618352', N'[
  {
    "name": "规格",
    "value": "八边形"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1025', N'欧式亚克力可层叠红酒展示架摆件酒柜啤酒家居冰箱塑料杯架饮料架', N'2622182330717803504', N'192', N'4.75', N'620463270625', N'[
  {
    "name": "颜色",
    "value": "6136单格"
  },
  {
    "name": "层数（规格）",
    "value": "20*11*10.5cm"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1026', N'华盛 体能训练健身5.75磅负重钢板 跑步训练俯卧撑增重钢板直销', N'2621913841190803504', N'50', N'62.5', N'622454435247', N'[
  {
    "name": "规格",
    "value": "5.75磅"
  },
  {
    "name": "颜色",
    "value": "红"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1027', N'跨境新款网状多兜背心出勤户外装备作训服黑色多功能网眼战术马甲', N'2621913841190803504', N'20', N'95', N'645410982102', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1028', N'亚马逊户外钓鱼包便携垂钓用品渔具收纳包双肩手提两用路亚鱼竿包', N'2621913841190803504', N'100', N'158', N'650411346458', N'[
  {
    "name": "规格 （长*宽*高）",
    "value": "91*30*8cm"
  },
  {
    "name": "颜色",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1029', N'户外运动迷彩双肩包男徒步登山装备旅行包3p战术背包健身背包批发', N'2621913841190803504', N'50', N'85', N'651277291329', N'[
  {
    "name": "颜色",
    "value": "B-CP黑"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1030', N'男士斜挎包 批发上班通勤笔记本电脑单肩包 牛津布突击投递邮差包', N'2621913841190803504', N'50', N'159', N'652493298849', N'[
  {
    "name": "颜色",
    "value": "绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1031', N'工厂直销军迷战术枪包户外野战装备收纳工具包双肩手提钓鱼包批发', N'2621913841190803504', N'50', N'162.5', N'653652325719', N'[
  {
    "name": "容量",
    "value": "36寸"
  },
  {
    "name": "颜色",
    "value": "绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1032', N'源头工厂可调节弹夹包Molle战术装备附件包M4军迷三联弹匣袋批发', N'2621913841190803504', N'30', N'38', N'658757462120', N'[
  {
    "name": "容量",
    "value": "24.5*14.5cm"
  },
  {
    "name": "颜色",
    "value": "绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1033', N'新款军迷战术枪包CS野战装备收纳工具包双肩手提钓鱼包工厂批发', N'2621913841190803504', N'50', N'183', N'668711237516', N'[
  {
    "name": "容量",
    "value": "36寸"
  },
  {
    "name": "颜色",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1034', N'华盛 跨境投递邮差包冲锋信差包 单肩电脑包斜挎通勤大容量休闲包', N'2621748349673803504', N'20', N'140', N'562916207426', N'[
  {
    "name": "容量",
    "value": "12L"
  },
  {
    "name": "颜色",
    "value": "泥"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1035', N'红海行动作战快拆战术训练背心CrossFit户外多功能负重健身马甲', N'2621748349673803504', N'40', N'199', N'568904293682', N'[
  {
    "name": "颜色",
    "value": "CP黑"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1036', N'华盛 CS户外运动骑行用品护膝护肘套装 战术军迷变形金刚黑鹰护具', N'2621748349673803504', N'100', N'47', N'617025329588', N'[
  {
    "name": "颜色",
    "value": "黑"
  },
  {
    "name": "规格",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1037', N'跨境战术背心户外真人CS吃鸡作战服快拆防护马甲军迷训练服批发', N'2621748349673803504', N'10', N'216', N'629376009861', N'[
  {
    "name": "颜色",
    "value": "绿色"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1038', N'新款重型快拆战术背心 三联弹夹CS作训服 户外防护装备作战马甲', N'2621748349673803504', N'50', N'285', N'652353823005', N'[
  {
    "name": "颜色",
    "value": "绿色"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1039', N'工厂直销军迷战术枪包户外野战装备收纳工具包双肩手提钓鱼包批发', N'2621748349673803504', N'30', N'162.5', N'653652325719', N'[
  {
    "name": "容量",
    "value": "36寸"
  },
  {
    "name": "颜色",
    "value": "泥色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1067', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2579702544839803504', N'100', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "黑色拼驼色270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1068', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2579702544839803504', N'30', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "宝蓝拼天蓝270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1069', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2579702544839803504', N'50', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "墨绿拼果绿270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1070', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2579702544839803504', N'50', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "墨绿色270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1071', N'高配带调节绑带单双人户外吊床尼龙吊床亚马逊热卖跨境工厂现货', N'2579702544839803504', N'200', N'29.9', N'611597655654', N'[
  {
    "name": "规格(长*宽)",
    "value": "橙色270×140CM"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1072', N'车载小桌板折叠餐桌汽车后座电脑车用后排车内学习桌子笔记本支架', N'2580818906002803504', N'80', N'38', N'522933518393', N'[
  {
    "name": "颜色",
    "value": "舜威二代电脑架-升级款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1073', N'车载小桌板后排汽车餐桌折叠电脑桌小饭桌学习桌电脑架笔记本支架', N'2580818906002803504', N'320', N'48.45', N'522935569207', N'[
  {
    "name": "颜色",
    "value": "舜威三代电脑桌-升级款"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1074', N'工厂直销手拉车铝合金购物车便携折叠行李车小拖车拉杆车推车', N'2579536728332803504', N'500', N'39', N'42285599446', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "折叠型"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1075', N'定制A4A5足球纹文件袋防水牛津布拉链资料产检文具袋印刷logo厂家', N'2577843183659803504', N'500', N'1.51', N'607236753284', N'[
  {
    "name": "颜色",
    "value": "黑色"
  },
  {
    "name": "规格",
    "value": "B4(39.5*28)可印刷定制"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1076', N'军迷户外健身龙蛋背包旅行双肩包男迷彩军事训练战术背包厂家批发', N'2565622476154803504', N'10', N'165', N'548081559379', N'[
  {
    "name": "容量",
    "value": "20-35L"
  },
  {
    "name": "颜色",
    "value": "绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1077', N'华盛 跨境投递邮差包冲锋信差包 单肩电脑包斜挎通勤大容量休闲包', N'2565622476154803504', N'20', N'140', N'562916207426', N'[
  {
    "name": "容量",
    "value": "12L"
  },
  {
    "name": "颜色",
    "value": "绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1078', N'真人CS户外M4户外玩具枪包  1.2m子母包双肩手提渔具包现货批发', N'2565622476154803504', N'10', N'62', N'563090470732', N'[
  {
    "name": "颜色",
    "value": "绿色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1079', N'红海行动作战快拆战术训练背心CrossFit户外多功能负重健身马甲', N'2565622476154803504', N'50', N'199', N'568904293682', N'[
  {
    "name": "颜色",
    "value": "CP黑"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1080', N'跨境战术背心户外真人CS吃鸡作战服快拆防护马甲军迷训练服批发', N'2565622476154803504', N'10', N'216', N'629376009861', N'[
  {
    "name": "颜色",
    "value": "绿色"
  },
  {
    "name": "尺码",
    "value": "均码"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1081', N'亚马逊户外旅行登山露营双肩背包 45L军迷迷彩3P攻击战术背包批发', N'2565622476154803504', N'10', N'83', N'632334231171', N'[
  {
    "name": "容量",
    "value": "45L"
  },
  {
    "name": "颜色",
    "value": "黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1082', N'户外运动迷彩双肩包男徒步登山装备旅行包3p战术背包健身背包批发', N'2565622476154803504', N'50', N'82', N'651277291329', N'[
  {
    "name": "颜色",
    "value": "B-黑色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1083', N'多功能运动斜挎挂包 魔术贴尼龙腰包激光MOLLE系统战术休闲胸包', N'2565622476154803504', N'10', N'81.9', N'652202219114', N'[
  {
    "name": "颜色",
    "value": "泥色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1084', N'工厂直销可调节弹夹包 战术装备附件包 快速抽离塑料弹匣批发', N'2565622476154803504', N'10', N'30', N'669389073530', N'[
  {
    "name": "容量",
    "value": "8.5*6*12cm"
  },
  {
    "name": "颜色",
    "value": "泥色"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1085', N'厂家SAHOO自行车补胎工具套装山地车修补工具组合单车维修工具', N'2555004422463803504', N'200', N'4.56', N'565175461987', N'[
  {
    "name": "颜色",
    "value": "晶莹透"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1086', N'品质保证凯迪斯配套通用 美式无内胎气门嘴纯铜气门芯 气针', N'2549016361267803504', N'1000', N'0.14', N'548647523817', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1087', N'亚马逊爆款广告固定沙袋 帐篷固定沙包 遮阳伞固定沙袋 防风沙袋', N'2537596261789803504', N'4880', N'5.14', N'613137621522', N'null')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1088', N'【月销20000＋】极地虎单人迷彩帐篷户外休闲露营野营帐礼品帐篷', N'2536487352739803504', N'2000', N'35', N'522018302741', N'[
  {
    "name": "颜色",
    "value": "大花迷彩"
  },
  {
    "name": "适用人数",
    "value": "单人"
  }
]')
GO

INSERT INTO [dbo].[product] ([id], [productName], [orderId], [quantity], [price], [productID], [skuInfo]) VALUES (N'1089', N'【月销20000＋】极地虎单人迷彩帐篷户外休闲露营野营帐礼品帐篷', N'2481295106719803504', N'800', N'35', N'522018302741', N'[
  {
    "name": "颜色",
    "value": "大花迷彩"
  },
  {
    "name": "适用人数",
    "value": "单人"
  }
]')
GO

SET IDENTITY_INSERT [dbo].[product] OFF
GO


-- ----------------------------
-- Table structure for replace
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[replace]') AND type IN ('U'))
	DROP TABLE [dbo].[replace]
GO

CREATE TABLE [dbo].[replace] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [businessId] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL,
  [content] nvarchar(2000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[replace] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'replace',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'业务编号',
'SCHEMA', N'dbo',
'TABLE', N'replace',
'COLUMN', N'businessId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'替换的内容',
'SCHEMA', N'dbo',
'TABLE', N'replace',
'COLUMN', N'content'
GO

EXEC sp_addextendedproperty
'MS_Description', N'物流信息',
'SCHEMA', N'dbo',
'TABLE', N'replace'
GO


-- ----------------------------
-- Records of replace
-- ----------------------------
SET IDENTITY_INSERT [dbo].[replace] ON
GO

SET IDENTITY_INSERT [dbo].[replace] OFF
GO


-- ----------------------------
-- Table structure for token
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[token]') AND type IN ('U'))
	DROP TABLE [dbo].[token]
GO

CREATE TABLE [dbo].[token] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [refresh_token] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [username] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[token] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'令牌',
'SCHEMA', N'dbo',
'TABLE', N'token',
'COLUMN', N'refresh_token'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名称',
'SCHEMA', N'dbo',
'TABLE', N'token',
'COLUMN', N'username'
GO

EXEC sp_addextendedproperty
'MS_Description', N'令牌表',
'SCHEMA', N'dbo',
'TABLE', N'token'
GO


-- ----------------------------
-- Records of token
-- ----------------------------
SET IDENTITY_INSERT [dbo].[token] ON
GO

INSERT INTO [dbo].[token] ([id], [refresh_token], [username]) VALUES (N'2', N'fb70122b-b758-49d3-827f-fbdddca47226', N'tb9204368391')
GO

INSERT INTO [dbo].[token] ([id], [refresh_token], [username]) VALUES (N'5', N'89c43049-9821-49b4-96bb-e7c0a0828f9a', N'whyahyd1314')
GO

INSERT INTO [dbo].[token] ([id], [refresh_token], [username]) VALUES (N'6', N'a24effb7-f97d-42e4-82dd-28cefc57605c', N'hydawhy1314')
GO

SET IDENTITY_INSERT [dbo].[token] OFF
GO


-- ----------------------------
-- Table structure for trace
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[trace]') AND type IN ('U'))
	DROP TABLE [dbo].[trace]
GO

CREATE TABLE [dbo].[trace] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [acceptTime] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [orderId] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[trace] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'trace',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接收时间',
'SCHEMA', N'dbo',
'TABLE', N'trace',
'COLUMN', N'acceptTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'内容',
'SCHEMA', N'dbo',
'TABLE', N'trace',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'订单编号',
'SCHEMA', N'dbo',
'TABLE', N'trace',
'COLUMN', N'orderId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'物流信息',
'SCHEMA', N'dbo',
'TABLE', N'trace'
GO


-- ----------------------------
-- Records of trace
-- ----------------------------
SET IDENTITY_INSERT [dbo].[trace] ON
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8411', N'2022-08-18 20:23:14', N'【浙江东阳公司】的收件员【西区-黄琴】已收件', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8457', N'2022-08-18 14:29:18', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[17715515238]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8501', N'2022-08-14 04:49:20', N'快件已到达佛山中心（中转中心已对该快件做全面消杀）', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8588', N'2022-08-14 13:42:59', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8670', N'2022-08-12 17:49:43', N'金华低田的何胜飞[17758050039]已揽收', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8759', N'2022-08-10 08:39:03', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2810136745058411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8838', N'2022-07-16 21:01:47', N'快件由【浙江象山公司】发往【浙江宁波转运中心】', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8925', N'2022-06-17 04:35:23', N'快件已到达苏州中转部', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8971', N'2022-08-16 01:39:02', N'揭阳转运中心公司 已发出,下一站 苏州转运中心', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9021', N'2022-07-07 10:27:38', N'快件离开苏州中转部已发往苏州吴中九部', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9070', N'2022-08-14 07:07:29', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9121', N'2022-08-08 21:49:36', N'快件由【山东省市场部二十五部】发往【山东济南转运中心】', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9223', N'2022-07-28 20:07:40', N'【华北直客部十部】的收件员【零件城宋建民收货点】已收件', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9316', N'2022-07-20 00:20:57', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行已发车', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9409', N'2022-07-13 07:13:28', N'快件已到达【江苏苏州转运中心】扫描员是【李梦杰】', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9449', N'2022-07-01 18:45:35', N'快件离开台州温岭已发往苏州中转部', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9450', N'2022-07-01 20:42:06', N'快件已到达台州中转部', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9451', N'2022-07-01 20:45:50', N'快件离开台州中转部已发往苏州中转部', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9452', N'2022-07-02 05:37:10', N'快件已到达苏州中转部', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9453', N'2022-07-02 08:52:15', N'快件离开苏州中转部已发往苏州吴中九部', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9454', N'2022-07-02 14:17:34', N'快件已到达苏州郭巷尹东分部', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9455', N'2022-07-02 14:17:35', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[18551441704]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9456', N'2022-07-02 17:32:36', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：18551441704, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9457', N'2022-07-01 19:56:34', N'宁波宁海县的金智祥[15958836183]已揽收', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9458', N'2022-07-01 20:26:22', N'快件离开宁波宁海县已发往苏州中转部', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9459', N'2022-07-01 23:08:28', N'快件已到达台州中转部', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9460', N'2022-07-01 23:09:16', N'快件离开台州中转部已发往苏州中转部', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9461', N'2022-07-02 05:37:10', N'快件已到达苏州中转部', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9462', N'2022-07-02 08:34:11', N'快件离开苏州中转部已发往苏州吴中九部', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9463', N'2022-07-02 14:02:42', N'快件已到达苏州郭巷尹东分部', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9464', N'2022-07-02 14:02:43', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[18551441704]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9465', N'2022-07-02 17:32:36', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：18551441704, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2732478877401803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9466', N'2022-06-30 13:44:50', N'【温州市】安能快运温州仙岩已揽收', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9467', N'2022-06-30 19:07:17', N'【温州市】订单已到达温州分拨中心', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9468', N'2022-06-30 20:46:31', N'【温州市】订单已从温州分拨中心发出，准备发往苏州市区分拨中心', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9469', N'2022-07-01 08:23:09', N'【苏州市】订单已到达苏州市区分拨中心', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9470', N'2022-07-01 08:37:04', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9471', N'2022-07-01 10:18:41', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9472', N'2022-07-01 10:21:23', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9473', N'2022-07-01 22:15:32', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2730889875877803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9474', N'2022-06-30 18:03:01', N'镇江句容的王琴[13400098759]已揽收', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9475', N'2022-06-30 18:59:50', N'快件离开镇江句容已发往苏州中转部', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9476', N'2022-07-01 02:03:18', N'快件已到达南京中转部', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9477', N'2022-07-01 02:06:04', N'快件离开南京中转部已发往苏州中转部', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9478', N'2022-07-01 09:30:56', N'快件已到达苏州中转部', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9479', N'2022-07-01 09:59:39', N'快件离开苏州中转部已发往苏州吴中九部', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9480', N'2022-07-01 13:48:08', N'快件已到达苏州吴中九部', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9481', N'2022-07-01 14:26:48', N'苏州吴中九部（0512-68235125）的李朋斐[17630833906]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9224', N'2022-07-29 22:53:01', N'快件由【华北直客部十部】发往【华北邯郸转运中心】', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9225', N'2022-07-29 23:21:05', N'快件已到达【华北邯郸转运中心】扫描员是【出港到件3号】', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9226', N'2022-07-29 23:23:08', N'快件由【华北邯郸转运中心】发往【江苏江阴转运中心】，包裹已消杀', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9227', N'2022-07-30 20:56:06', N'快件已到达【江苏江阴转运中心】扫描员是【杨纪红】', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9228', N'2022-07-30 21:00:56', N'快件由【江苏江阴转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9229', N'2022-07-31 01:28:42', N'快件已到达【江苏苏州转运中心】扫描员是【贾亚亚】', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9230', N'2022-07-31 01:36:50', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9231', N'2022-07-31 07:50:20', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9232', N'2022-07-31 08:11:39', N'【江苏苏州东吴公司】的派件员【王要攀】正在为您派件，如有疑问请联系派件员，联系电话【13245067939】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9233', N'2022-07-31 16:04:04', N'已签收，签收人是【门卫代签】,如有疑问请联系:13245067939,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2783356491805803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9234', N'2022-07-28 17:43:47', N'义乌廿三里南的王梦洁[15657924767]已揽收', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9235', N'2022-07-28 19:00:07', N'快件已到达义乌中转部（中转中心已对该快件做全面消杀）', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9236', N'2022-07-28 19:02:37', N'快件离开义乌中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9237', N'2022-07-29 02:24:03', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9238', N'2022-07-29 02:31:56', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9239', N'2022-07-29 07:48:08', N'快件已到达苏州吴中九部', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9240', N'2022-07-29 07:49:54', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9241', N'2022-07-29 10:37:34', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2782748954143803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9242', N'2022-07-27 21:37:51', N'【泉州市】福建安溪县公司-扫描琼花 已揽收', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9243', N'2022-07-27 23:39:37', N'【泉州市】已到达 福建晋江分拨交付中心(分拨对该快件已全面消杀)', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9244', N'2022-07-27 23:44:24', N'【泉州市】已离开 福建晋江分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9245', N'2022-07-28 20:48:01', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9246', N'2022-07-28 20:53:22', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9247', N'2022-07-29 07:08:16', N'【苏州市】已离开 江苏苏州吴中区新郭巷服务部[0512-87807140]；发往 江苏吴中新郭巷服务部出口加工寄存', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9248', N'2022-07-29 08:05:11', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9249', N'2022-07-29 18:20:32', N'【苏州市】您的快件已签收，签收人：本人，如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2781148863785803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9250', N'2022-07-25 16:41:14', N'【温州市】浙江乐清柳市公司-洪火东（15058770836） 已揽收，快递小哥已接种疫苗，每日测体温，请放心收寄快递', N'2779793211814803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9251', N'2022-07-25 20:47:53', N'【温州市】已到达 浙江温州分拨交付中心(分拨对该快件已全面消杀)', N'2779793211814803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9252', N'2022-07-25 20:51:29', N'【温州市】已离开 浙江温州分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2779793211814803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9253', N'2022-07-26 06:04:55', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2779793211814803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9254', N'2022-07-26 06:11:32', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2779793211814803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9255', N'2022-07-26 17:48:30', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2779793211814803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9256', N'2022-07-26 18:31:14', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2779793211814803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9257', N'2022-07-24 17:51:47', N'【阜阳市】安徽界首公司已揽收', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9258', N'2022-07-25 08:19:13', N'【阜阳市】订单已从安徽界首公司发出，准备发往安徽阜阳集散中心', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9259', N'2022-07-25 10:32:03', N'【阜阳市】订单已到达安徽阜阳集散中心，0558-6654407', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9260', N'2022-07-25 14:07:58', N'【阜阳市】订单已从安徽阜阳集散中心发出，准备发往江苏苏州分拨中心', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9261', N'2022-07-26 09:07:35', N'【苏州市】订单已到达江苏苏州分拨中心', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9262', N'2022-07-27 05:31:50', N'【苏州市】江苏苏州分拨中心已发出', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9263', N'2022-07-27 21:51:19', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，0512-87807144', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9122', N'2022-08-08 22:10:16', N'快件已到达【山东济南转运中心】扫描员是【出港卸车到件3】', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9123', N'2022-08-08 22:13:14', N'快件由【山东济南转运中心】发往【江苏江阴转运中心】，包裹已消杀', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9124', N'2022-08-09 10:19:46', N'快件已到达【江苏江阴转运中心】扫描员是【张子燕】', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9125', N'2022-08-09 10:33:46', N'快件由【江苏江阴转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9126', N'2022-08-10 00:07:37', N'快件已到达【江苏苏州转运中心】扫描员是【黄满久】', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9127', N'2022-08-10 00:21:16', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9128', N'2022-08-10 08:03:23', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9129', N'2022-08-10 12:06:36', N'【江苏苏州东吴公司】的派件员【王要攀】正在为您派件，如有疑问请联系派件员，联系电话【13245067939】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9130', N'2022-08-10 14:07:08', N'已签收，签收人是【门卫代签】,如有疑问请联系:13245067939,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9131', N'2022-08-09 17:21:35', N'【宁波市】安能快运鄞州石碶汪家已揽收', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9132', N'2022-08-09 17:40:23', N'【宁波市】订单已从鄞州石碶汪家发出，准备发往宁波分拨中心', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9133', N'2022-08-09 19:25:13', N'【宁波市】订单已到达宁波分拨中心', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9134', N'2022-08-10 22:43:23', N'【宁波市】订单已从宁波分拨中心发出，准备发往苏州市区分拨中心', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9135', N'2022-08-11 07:06:53', N'【苏州市】订单已到达苏州市区分拨中心', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9136', N'2022-08-11 16:59:01', N'【苏州市】订单已到达苏州姑苏金鸡湖S,15250453166', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9137', N'2022-08-11 16:59:57', N'【苏州市】苏州姑苏金鸡湖S:洪劲松15250453166正为您运送，感谢您的耐心等待', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9138', N'2022-08-11 17:05:25', N'您的订单已被签收，如有疑问请电联：15250453166，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2808268526758803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9139', N'2022-08-09 18:01:30', N'【宁波市】安能快运余姚市肖东已揽收', N'2808677271370803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9140', N'2022-08-09 18:32:23', N'【宁波市】订单已从余姚市肖东发出，准备发往余姚分拨中心', N'2808677271370803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9141', N'2022-08-09 23:31:29', N'【宁波市】订单已到达余姚分拨中心', N'2808677271370803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9142', N'2022-08-10 02:24:05', N'【宁波市】订单已从余姚分拨中心发出，准备发往苏州市区分拨中心', N'2808677271370803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9143', N'2022-08-10 06:51:05', N'【苏州市】订单已到达苏州市区分拨中心', N'2808677271370803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9144', N'2022-08-10 06:58:01', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2808677271370803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9145', N'2022-08-08 21:58:45', N'小榄竹源揽件', N'2806927848088803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9146', N'2022-08-10 02:06:00', N'苏州分拨中心到件', N'2806927848088803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9147', N'2022-08-10 04:03:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2806927848088803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9148', N'2022-08-10 09:36:00', N'苏州吴中二部到件', N'2806927848088803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9149', N'2022-08-10 09:39:00', N'苏州吴中二部派件', N'2806927848088803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9150', N'2022-08-10 10:24:00', N'电子签名签收签收', N'2806927848088803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9151', N'2022-08-06 20:04:51', N'温州苍南县的钱库直营点[15958715875]已揽收', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9152', N'2022-08-06 20:04:56', N'快件离开温州苍南县已发往苍南分拨点', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9153', N'2022-08-06 22:59:18', N'快件已到达温州中转部（中转中心已对该快件做全面消杀）', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9154', N'2022-08-06 23:02:30', N'快件离开温州中转部已发往泰州中转部（中转中心已对该快件做全面消杀）', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9155', N'2022-08-07 09:12:46', N'快件已到达泰州中转部（中转中心已对该快件做全面消杀）', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9156', N'2022-08-07 09:15:10', N'快件离开泰州中转部已发往盐城东台（中转中心已对该快件做全面消杀）', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9157', N'2022-08-07 12:29:48', N'快件已到达盐城东台', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9158', N'2022-08-07 12:37:05', N'盐城东台（0515-66873014）的韩智慧[19802608786]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9159', N'2022-08-07 15:21:28', N'您的快件已暂存至盐城市东台碧桂园菜鸟驿站，请凭取货码及时领取。如有疑问请联系18151380849', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9160', N'2022-08-07 18:02:26', N'您已在盐城市东台碧桂园菜鸟驿站完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'2800560384918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9161', N'2022-08-05 21:41:37', N'义乌转运中心直营公司 已收入', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9162', N'2022-08-05 21:43:40', N'义乌转运中心直营公司 已发出,下一站 泰州转运中心', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9163', N'2022-08-06 08:16:13', N'泰州转运中心公司 已收入', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9164', N'2022-08-06 08:20:49', N'泰州转运中心公司 已发出,下一站 江苏省盐城市东台市', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9165', N'2022-08-06 12:44:13', N'江苏省盐城市东台市公司 已收入', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9166', N'2022-08-06 13:35:25', N'江苏省盐城市东台市 已收入', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9167', N'2022-08-06 13:35:25', N'江苏省盐城市东台市公司 派件中 派件员:荣宜强 手机号:15365707882。95161和185211号段的上海号码为圆通业务员专属号码', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9168', N'2022-08-06 19:54:17', N'盐城市东台碧桂园菜鸟驿站已向您致电，沟通代收事宜', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9169', N'2022-08-06 19:54:55', N'您的快件已暂存至盐城市东台碧桂园菜鸟驿站，请凭取货码及时领取。如有疑问请联系18151380849', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9170', N'2022-08-07 18:02:16', N'您已在盐城市东台碧桂园菜鸟驿站完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'2801749646154803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9317', N'2022-07-20 02:37:10', N'【苏州市】货物已到达【苏州平望分拨】', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9318', N'2022-07-20 03:02:17', N'【苏州市】壹米滴答【苏州平望分拨】进行卸车扫描', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9319', N'2022-07-20 07:55:42', N'【苏州市】壹米滴答【苏州平望分拨】进行装车扫描', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9320', N'2022-07-20 08:42:22', N'【苏州市】壹米滴答【苏州平望分拨】进行已发车', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9321', N'2022-07-20 13:34:54', N'【苏州市】货物已到达【吴中郭巷营业部】', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9322', N'2022-07-20 17:03:57', N'【苏州市】吴中郭巷营业部：邵镇(15050292749)正在为您派件', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9323', N'2022-07-20 17:04:57', N'快件已被签收，签收人:吴先生', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9324', N'2022-07-14 16:45:16', N'山东省潍坊市樱园公司 已揽收, 林浩光(18363637567) 快递员当前健康码无异常 新冠疫苗已接种', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9325', N'2022-07-14 20:43:45', N'山东省潍坊市樱园公司 已揽收, 郭红波(021-69777888) 快递员当前健康码无异常 新冠疫苗已接种', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9326', N'2022-07-14 20:58:53', N'潍坊转运中心公司 已收入', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9327', N'2022-07-14 21:02:24', N'潍坊转运中心公司 已发出,下一站 苏州转运中心', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9328', N'2022-07-15 10:17:04', N'苏州转运中心公司 已收入', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9329', N'2022-07-15 10:23:07', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9330', N'2022-07-15 10:23:07', N' 疫情暂缓派送', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9331', N'2022-07-15 12:43:28', N'江苏省苏州市吴中区出口加工区 已收入', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9332', N'2022-07-15 12:43:28', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:刘毅龙 手机号:13276220752 新冠疫苗已接种。 185211号段上海号码为圆通业务员专属号码', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9333', N'2022-07-15 13:26:35', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9334', N'2022-07-15 15:21:10', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：13276220752，投诉电话：18577620029。。 快件已送达，如有疑问请联系：13276220752，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥新冠疫苗已接种，每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2758306718932803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9335', N'2022-07-14 10:40:07', N'宁波高新的尹兴华[13429282825]已揽收', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9336', N'2022-07-14 10:40:12', N'快件离开宁波高新已发往宁波中转部', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9337', N'2022-07-14 21:07:50', N'快件已到达宁波中转部（中转中心已对该快件做全面消杀）', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9338', N'2022-07-14 21:09:45', N'快件离开宁波中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9339', N'2022-07-15 03:44:59', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9340', N'2022-07-15 04:38:49', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9341', N'2022-07-15 09:59:44', N'快件已到达苏州吴中九部', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9342', N'2022-07-15 17:00:26', N'快件已到达苏州郭巷尹东分部', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9343', N'2022-07-15 17:00:27', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[17715515238]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9344', N'2022-07-15 18:36:16', N'快件已在苏州郭巷尹东分部签收 签收人：本人。如有疑问请电联：17715515238, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2755588033912803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9345', N'2022-07-17 13:36:09', N'【金华市】【义乌大川二十三仓】网点已成功揽收', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9346', N'2022-07-17 13:36:11', N'【金华市】安能快运义乌大川二十三仓已揽收', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9347', N'2022-07-17 20:27:24', N'【金华市】订单已从义乌大川二十三仓发出，准备发往金华分拨中心', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9348', N'2022-07-17 20:34:02', N'【金华市】订单已到达金华分拨中心', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9349', N'2022-07-17 21:12:14', N'【金华市】订单已从金华分拨中心发出，准备发往苏州市区分拨中心', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9350', N'2022-07-18 05:42:24', N'【苏州市】订单已到达苏州市区分拨中心', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9351', N'2022-07-18 05:51:08', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9352', N'2022-07-18 11:07:27', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9353', N'2022-07-18 11:08:07', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9354', N'2022-07-18 17:45:02', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2754218738036803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9355', N'2022-07-13 20:00:00', N'浦江揽件', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9356', N'2022-07-13 21:15:00', N'浦江发件,下一网点金华分拨中心', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9357', N'2022-07-14 01:30:00', N'金华分拨中心到件', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9358', N'2022-07-14 06:30:00', N'金华分拨中心发件,下一网点苏州分拨中心', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9359', N'2022-07-15 07:48:00', N'苏州分拨中心到件', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9360', N'2022-07-15 08:24:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9361', N'2022-07-15 12:36:00', N'苏州吴中二部到件', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9362', N'2022-07-15 12:36:00', N'苏州吴中二部派件', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9363', N'2022-07-15 13:06:00', N'苏州姑苏二部到件', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9364', N'2022-07-15 17:15:00', N'电子签名签收签收', N'2752944912083803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9482', N'2022-07-01 15:27:34', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9524', N'2022-06-25 00:13:23', N'【无锡市】壹米滴答【无锡分拨】进行装车扫描', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9525', N'2022-06-25 01:41:24', N'【无锡市】壹米滴答【无锡分拨】进行已发车', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9526', N'2022-06-25 05:30:45', N'【苏州市】货物已到达【苏州平望分拨】', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9527', N'2022-06-25 06:39:18', N'【苏州市】壹米滴答【苏州平望分拨】进行卸车扫描', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9528', N'2022-06-25 09:03:53', N'【苏州市】壹米滴答【苏州平望分拨】进行装车扫描', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9529', N'2022-06-25 09:28:16', N'【苏州市】壹米滴答【苏州平望分拨】进行已发车', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9530', N'2022-06-25 09:44:37', N'【苏州市】货物已到达【娄葑营业部】', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9531', N'2022-06-26 14:56:34', N'【苏州市】娄葑营业部：王亚创(18550333269)正在为您派件', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9532', N'2022-06-26 14:57:34', N'快件已被签收，签收人:吴先生', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9533', N'2022-02-16 18:54:51', N'【绍兴市】订单已从诸暨店口发出，准备发往萧山分拨中心', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9534', N'2022-06-23 02:27:17', N'【杭州市】订单已到达萧山分拨中心', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9535', N'2022-06-23 03:55:56', N'【杭州市】订单已从萧山分拨中心发出，准备发往苏州市区分拨中心', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9536', N'2022-06-23 09:32:59', N'商品已经下单', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9537', N'2022-06-23 10:28:10', N'【苏州市】订单已到达苏州市区分拨中心', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9538', N'2022-06-23 10:35:08', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9539', N'2022-06-23 14:03:39', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9540', N'2022-06-23 14:04:26', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9541', N'2022-06-23 19:32:56', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2711585091554803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9542', N'2022-06-22 16:14:03', N'【宁波市】壹米滴答【H宁波陆埠】被揽收', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9543', N'2022-06-22 21:50:22', N'【宁波市】壹米滴答【宁波壹米优速分拨】进行卸车扫描', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9544', N'2022-06-22 22:58:58', N'【宁波市】壹米滴答【宁波壹米优速分拨】进行装车扫描', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9545', N'2022-06-22 23:22:18', N'【宁波市】壹米滴答【宁波壹米优速分拨】进行已发车', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9546', N'2022-06-23 03:11:08', N'【苏州市】货物已到达【苏州汇森汇霖分拨】', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9547', N'2022-06-23 03:24:24', N'【苏州市】壹米滴答【苏州汇森汇霖分拨】进行装车扫描', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9548', N'2022-06-23 09:10:02', N'【苏州市】壹米滴答【苏州汇森汇霖分拨】进行已发车', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9549', N'2022-06-23 10:57:23', N'【苏州市】货物已到达【H甪直一】', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9550', N'2022-06-23 15:36:36', N'【苏州市】H甪直一：H甪直一(17712478409)正在为您派件', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9551', N'2022-06-23 15:37:36', N'快件已被签收，签收人:吴生', N'2710613233868803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9552', N'2022-06-20 19:08:53', N'泰州市,顺心捷达,【SX】泰州海陵温泰店开始承运', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9553', N'2022-06-20 19:09:00', N'快件在【SX】泰州海陵温泰店,开始发往【SX】泰州中转场', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9554', N'2022-06-20 19:11:33', N'已到达【SX】泰州中转场', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9555', N'2022-06-20 22:43:37', N'快件在【SX】泰州中转场,开始发往【SX】无锡枢纽', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9556', N'2022-06-21 04:59:25', N'已到达【SX】无锡枢纽', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9557', N'2022-06-21 07:48:48', N'快件在【SX】无锡枢纽,开始发往【SX】苏州吴中郭巷店', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9558', N'2022-06-21 08:52:09', N'已到达【SX】苏州吴中郭巷店,电话:17715592252/17365359210', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9559', N'2022-06-21 15:04:56', N'送货途中,送货人姓名:施仪仿,电话号码:17365359210', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9560', N'2022-06-21 15:05:13', N'货物已正常签收，签收人:吴先生', N'2711095131964803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9561', N'2022-06-15 21:42:30', N'【金华市】浙江义乌望道公司 已揽收', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9562', N'2022-06-15 21:49:09', N'【金华市】已离开 浙江义乌望道公司城西街道仓实街服务部；发往 苏州南地区包', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9563', N'2022-06-16 00:12:17', N'【金华市】已到达 浙江义乌分拨交付中心(分拨对该快件已全面消杀)', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9564', N'2022-06-16 00:13:49', N'【金华市】已离开 浙江义乌分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9565', N'2022-06-16 07:59:05', N'【苏州市】已到达 江苏苏州分拨交付中心(分拨对该快件已全面消杀)', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9566', N'2022-06-16 08:35:01', N'【苏州市】已离开 江苏苏州分拨交付中心(分拨对该快件已全面消杀)；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9568', N'2022-06-16 16:09:36', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9569', N'2022-06-16 17:28:50', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9570', N'2022-06-14 23:23:43', N'河北省石家庄市无极县公司 已揽收, 尤京辉(15075127269)新冠疫苗已接种', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9571', N'2022-06-14 23:38:43', N'华北第二转运中心公司 已收入', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9572', N'2022-06-14 23:39:10', N'华北第二转运中心公司 已打包', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9573', N'2022-06-15 00:00:30', N'华北第二转运中心公司 已发出,下一站 苏州转运中心', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9567', N'2022-06-16 15:20:45', N'【苏州市】江苏主城区公司苏州新郭巷服务部通达路分部[18362740060] 快递员 王国永（18362740060） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2696069810171803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9574', N'2022-06-16 01:59:30', N'苏州转运中心公司 已收入', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9575', N'2022-06-16 02:26:08', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9576', N'2022-06-16 07:32:58', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9577', N'2022-06-16 07:37:56', N'江苏省苏州市吴中区出口加工区 已收入', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9578', N'2022-06-16 07:37:56', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812圆通快递小哥每天已测体温，请放心收寄快递。 185211号段上海号码为圆通业务员专属号码', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9579', N'2022-06-16 10:15:57', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18501615585。。 快件已送达，如有疑问请联系：19955492812，投诉电话：18501615585。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2695438946429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9580', N'2022-06-11 15:40:09', N'【金华市】浙江金华岭下公司已揽收', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9581', N'2022-06-11 18:18:19', N'【金华市】订单已从浙江金华岭下公司发出，准备发往浙江义乌分拨中心', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9582', N'2022-06-11 19:02:49', N'【金华市】订单已到达浙江义乌分拨中心', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9583', N'2022-06-11 21:59:15', N'【金华市】浙江义乌分拨中心已发出', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9584', N'2022-06-12 06:56:18', N'【苏州市】订单已到达江苏苏州分拨中心', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9585', N'2022-06-13 02:54:55', N'【苏州市】江苏苏州分拨中心已发出', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9586', N'2022-06-13 20:55:05', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，18751186387', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9587', N'2022-06-13 20:55:18', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：金琳琳18136054922正为您派送，感谢您的耐心等待', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9588', N'2022-06-13 20:55:27', N'已签收：【和舒】签收网点【江苏苏州吴中郭巷公司】', N'2683824519549803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9589', N'2022-06-08 19:05:45', N'【上饶市】江西玉山县公司-耿洪（18170859128） 已揽收', N'2681890059547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9590', N'2022-06-09 01:21:01', N'【南昌市】已到达 江西南昌分拨交付中心(分拨对该快件已全面消杀)', N'2681890059547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9591', N'2022-06-09 07:14:34', N'【南昌市】已离开 江西南昌分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2681890059547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9592', N'2022-06-10 21:43:33', N'【苏州市】已到达 江苏苏州分拨交付中心(分拨对该快件已全面消杀)', N'2681890059547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9593', N'2022-06-10 23:08:21', N'【苏州市】已离开 江苏苏州分拨交付中心(分拨对该快件已全面消杀)；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2681890059547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9594', N'2022-06-11 18:40:34', N'【苏州市】江苏主城区公司苏州吴中区新郭巷服务部[0512-87807140] 快递员 杨依瑞（18362660490） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2681890059547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9595', N'2022-06-11 19:02:19', N'【苏州市】您的快件已签收，签收人：门口（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：杨依瑞（18362660490），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2681890059547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9596', N'2022-06-08 18:53:34', N'池州的张金茹[18767140376]已揽收', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9597', N'2022-06-08 18:53:39', N'快件离开池州已发往安庆中转部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9598', N'2022-06-08 21:02:01', N'快件已到达安庆中转部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9599', N'2022-06-08 21:03:15', N'快件离开安庆中转部已发往无锡中转部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9600', N'2022-06-09 04:28:15', N'快件已到达无锡中转部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9601', N'2022-06-09 04:29:16', N'快件离开无锡中转部已发往苏州中转部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9602', N'2022-06-09 05:57:55', N'快件已到达苏州中转部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9603', N'2022-06-09 06:38:19', N'快件离开苏州中转部已发往苏州吴中九部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9604', N'2022-06-09 14:21:36', N'快件已到达苏州吴中九部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9605', N'2022-06-09 15:35:41', N'快件已到达苏州郭巷尹东分部', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9606', N'2022-06-09 15:35:42', N'苏州郭巷尹东分部（0512-65980354）的张福栋[13270989198]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9607', N'2022-06-09 16:51:33', N'快件已在苏州郭巷尹东分部签收 签收人：前台。如有疑问请电联：13270989198, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2680982317336803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9608', N'2022-06-10 19:14:29', N'宁波市,顺心捷达,【SX】宁波余姚姚北店开始承运', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9609', N'2022-06-10 20:01:31', N'快件在【SX】宁波余姚姚北店,开始发往【SX】宁波余姚中转场', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9610', N'2022-06-10 22:09:11', N'已到达【SX】萧山枢纽', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9611', N'2022-06-10 22:45:13', N'快件在【SX】萧山枢纽,开始发往【SX】无锡枢纽', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9612', N'2022-06-11 02:52:43', N'已到达【SX】无锡枢纽', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9613', N'2022-06-11 07:40:20', N'快件在【SX】无锡枢纽,开始发往【SX】苏州吴中郭巷店', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9614', N'2022-06-11 09:28:39', N'已到达【SX】苏州吴中郭巷店,电话:17715592252/17365359210', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9615', N'2022-06-11 15:15:02', N'送货途中,送货人姓名:戴强,电话号码:13656214501', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9668', N'2022-06-08 16:36:48', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：15962108922, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9669', N'2022-06-08 19:39:17', N'【金华市】浙江永康唐先项目客户已揽收', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9670', N'2022-06-08 19:43:47', N'【金华市】订单已从浙江永康唐先项目客户发出，准备发往浙江永康象珠公司', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9671', N'2022-06-08 19:46:27', N'【金华市】订单已到达浙江永康集散中心，0579-82947223', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9672', N'2022-06-08 22:15:28', N'【金华市】订单已从浙江永康集散中心发出，准备发往江苏苏州分拨中心', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9673', N'2022-06-09 08:05:55', N'【苏州市】订单已到达江苏苏州分拨中心', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9674', N'2022-06-09 08:32:32', N'【苏州市】江苏苏州分拨中心已发出', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9675', N'2022-06-09 17:24:31', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，18751186387', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9676', N'2022-06-09 17:25:12', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：李朝宣15062438748正为您派送，感谢您的耐心等待', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9677', N'2022-06-09 17:25:22', N'已签收：【吴先生】签收网点【江苏苏州吴中郭巷公司】', N'2679241971523803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9678', N'2022-06-06 21:08:40', N'小榄竹源揽件', N'2678388409197803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9679', N'2022-06-08 12:03:00', N'苏州分拨中心到件', N'2678388409197803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9680', N'2022-06-08 23:51:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2678388409197803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9681', N'2022-06-09 08:27:00', N'苏州姑苏二部到件', N'2678388409197803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9682', N'2022-06-09 18:15:00', N'苏州吴中二部到件', N'2678388409197803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9683', N'2022-06-09 18:15:00', N'苏州吴中二部派件', N'2678388409197803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9684', N'2022-06-09 18:15:00', N'电子签名签收签收', N'2678388409197803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9685', N'2022-06-06 18:19:35', N'泰州姜堰的吴春[18082338066]已揽收', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9686', N'2022-06-06 18:46:17', N'快件离开泰州姜堰已发往泰州中转部', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9687', N'2022-06-06 21:48:57', N'快件已到达泰州中转部', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9688', N'2022-06-06 21:50:36', N'快件离开泰州中转部已发往苏州中转部', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9689', N'2022-06-07 02:27:17', N'快件已到达苏州中转部', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9690', N'2022-06-07 02:30:56', N'快件离开苏州中转部已发往苏州吴中九部', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9691', N'2022-06-07 07:42:31', N'快件已到达苏州吴中九部', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9692', N'2022-06-07 08:39:46', N'快件已到达苏州郭巷尹东分部', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9693', N'2022-06-07 08:39:47', N'苏州郭巷尹东分部（0512-65980354）的夏滨滨[15962108922]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9694', N'2022-06-07 10:51:54', N'快件已在苏州郭巷尹东分部签收 签收人：本人。如有疑问请电联：15962108922, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2678686454426803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9695', N'2022-06-06 18:44:34', N'【阜阳市】安徽界首公司已揽收', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9696', N'2022-06-07 08:22:53', N'【阜阳市】订单已从安徽界首公司发出，准备发往安徽阜阳集散中心', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9697', N'2022-06-07 08:31:52', N'【阜阳市】订单已到达安徽阜阳集散中心，0558-6654407', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9698', N'2022-06-07 08:39:14', N'【阜阳市】订单已从安徽阜阳集散中心发出，准备发往浙江杭州分拨中心', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9699', N'2022-06-08 03:08:01', N'【绍兴市】订单已到达浙江杭州分拨中心', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9700', N'2022-06-08 06:35:16', N'【绍兴市】浙江杭州分拨中心已发出', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9701', N'2022-06-08 11:18:53', N'【绍兴市】订单已到达浙江绍兴上虞谢塘公司，0575-84130672', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9702', N'2022-06-08 11:28:48', N'【绍兴市】浙江绍兴上虞谢塘公司快递小哥：秦晶18888735122正为您派送，感谢您的耐心等待', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9703', N'2022-06-08 17:28:34', N'已签收：【丁银杰】签收网点【浙江绍兴上虞谢塘公司】', N'2679171663918803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9704', N'2022-07-03 13:08:01', N'【金华市】安能快运义乌大川二十三仓已揽收', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9705', N'2022-07-03 19:32:04', N'【金华市】订单已从义乌大川二十三仓发出，准备发往金华分拨中心', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9706', N'2022-07-03 20:35:36', N'【金华市】订单已到达金华分拨中心', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9707', N'2022-07-03 21:44:21', N'【金华市】订单已从金华分拨中心发出，准备发往苏州市区分拨中心', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9708', N'2022-07-04 06:43:50', N'【苏州市】订单已到达苏州市区分拨中心', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9709', N'2022-07-04 07:36:26', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9710', N'2022-07-04 09:51:14', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9711', N'2022-07-04 09:53:02', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9712', N'2022-07-04 18:45:07', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2679138507220803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9713', N'2022-06-09 18:35:49', N'金华市,顺心捷达,【SX】金华永康五金城店开始承运', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9714', N'2022-06-09 18:54:09', N'快件在【SX】金华永康五金城店,开始发往【SX】永康接驳点', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9715', N'2022-06-09 19:54:12', N'快件在【SX】永康接驳点,开始发往【SX】金华枢纽', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9716', N'2022-06-09 20:50:58', N'已到达【SX】永康接驳点', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9717', N'2022-06-09 22:22:38', N'已到达【SX】金华枢纽', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9718', N'2022-06-10 01:14:36', N'快件在【SX】金华枢纽,开始发往【SX】无锡枢纽', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9719', N'2022-06-10 12:51:16', N'已到达【SX】无锡枢纽', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9720', N'2022-06-11 07:40:20', N'快件在【SX】无锡枢纽,开始发往【SX】苏州吴中郭巷店', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9721', N'2022-06-11 09:28:39', N'已到达【SX】苏州吴中郭巷店,电话:17715592252/17365359210', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9722', N'2022-06-11 15:15:02', N'送货途中,送货人姓名:戴强,电话号码:13656214501', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9723', N'2022-06-11 15:21:43', N'货物已正常签收，签收人:吴先生', N'2679116295429803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9724', N'2022-06-14 17:02:28', N'快件在【温岭六部温岭来德】已揽件', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9725', N'2022-06-14 17:02:49', N'快件由【温岭六部温岭来德】发往【台州分拨】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9726', N'2022-06-14 21:34:29', N'快件已到达【台州分拨】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9727', N'2022-06-14 21:38:44', N'快件在【台州分拨】已装车,准备发往【苏州分拨】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9728', N'2022-06-15 06:53:35', N'快件已到达【苏州分拨】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9729', N'2022-06-15 06:56:30', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9730', N'2022-06-15 08:08:38', N'快件已到达【苏州吴中三部】, 站点电话【15062429392】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9731', N'2022-06-15 13:03:53', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9732', N'2022-06-15 15:57:36', N'快件在【苏州吴中三部ZX】做了派件,派件员【位振】【15150121815】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9733', N'2022-06-15 15:57:49', N'已签收(40/40)。有问题请联系派件员位振15150121815，投诉电话02566970060-76103。风雨无阻送货忙，客户服务记心上。好评激励我向上，赏个五星好不好？【请在评价派件员处帮忙点亮五颗星星哦~】', N'2678476538172803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9734', N'2022-06-06 19:57:22', N'金华江南的沈志良[0579-82251585]已揽收', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9735', N'2022-06-06 19:58:27', N'快件离开金华江南已发往义乌中转部', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9736', N'2022-06-06 22:02:00', N'快件已到达义乌中转部', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9737', N'2022-06-06 22:03:56', N'快件离开义乌中转部已发往萧山中转部', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9738', N'2022-06-07 01:53:39', N'快件已到达萧山中转部', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9739', N'2022-06-07 01:55:50', N'快件离开萧山中转部已发往临安西部', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9740', N'2022-06-07 09:01:40', N'快件已到达临安西部', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9741', N'2022-06-07 09:01:47', N'快件离开临安西部已发往临安西部昌化镇', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9742', N'2022-06-07 09:03:41', N'快件已到达临安西部昌化镇', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9743', N'2022-06-07 09:03:46', N'临安西部昌化镇（17774014928）的商思凡[15757118776]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9744', N'2022-06-07 10:32:00', N'临安西部昌化镇（17774014928）的商思凡[15757118776]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9745', N'2022-06-07 12:55:05', N'临安西部昌化镇（17774014928）的秦金龙[15721295662]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9746', N'2022-06-07 16:41:23', N'快件已在临安西部昌化镇签收 签收人：代签。如有疑问请电联：15721295662, 投诉电话：15757118776, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2669427687995803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9747', N'2022-06-03 18:26:09', N'宁波宁海县的王岷[18892650111]已揽收', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9748', N'2022-06-03 18:26:14', N'快件离开宁波宁海县已发往台州中转部', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9749', N'2022-06-03 21:34:35', N'快件已到达台州中转部', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9750', N'2022-06-03 21:39:35', N'快件离开台州中转部已发往苏州中转部', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9751', N'2022-06-04 05:00:44', N'快件已到达苏州中转部', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9752', N'2022-06-04 05:55:18', N'快件离开苏州中转部已发往苏州吴中九部', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9753', N'2022-06-04 15:31:46', N'快件已到达苏州郭巷尹东分部', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9754', N'2022-06-04 15:31:47', N'苏州郭巷尹东分部（0512-65980354）的夏滨滨[15962108922]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9755', N'2022-06-04 16:50:48', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：15962108922, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2666336365689803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9756', N'2022-05-30 19:50:28', N'汕头潮南一部揽件', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9757', N'2022-05-30 23:39:00', N'揭阳分拨中心到件', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9758', N'2022-05-31 00:45:00', N'揭阳分拨中心发件,下一网点苏州分拨中心', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9759', N'2022-06-02 16:27:00', N'苏州分拨中心到件', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9760', N'2022-06-03 00:03:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9761', N'2022-06-03 07:51:00', N'苏州姑苏二部到件', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9762', N'2022-06-03 12:30:00', N'苏州吴中二部到件', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9763', N'2022-06-03 12:30:00', N'苏州吴中二部派件', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9764', N'2022-06-03 12:30:00', N'电子签名签收签收', N'2660585112842803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9765', N'2022-05-30 18:30:32', N'【成都市】安能快运金堂城区已揽收', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9766', N'2022-05-30 18:47:29', N'【成都市】订单已从金堂城区S发出，准备发往成都分拨中心', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9767', N'2022-05-30 20:59:42', N'【成都市】订单已到达成都分拨中心', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9616', N'2022-06-11 15:20:46', N'货物已正常签收，签收人:吴先生', N'2681638707801803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9617', N'2022-06-08 18:35:52', N'【台州市】壹米滴答【楚门胡新营业部C】被揽收', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9618', N'2022-06-08 19:00:29', N'【台州市】壹米滴答【玉环港北营业部】进行装车扫描', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9619', N'2022-06-08 20:21:14', N'【台州市】壹米滴答【玉环港北营业部】进行已发车', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9620', N'2022-06-08 22:57:37', N'【台州市】货物已到达【台州分拨】', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9621', N'2022-06-08 23:45:21', N'【台州市】壹米滴答【台州分拨】进行卸车扫描', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9622', N'2022-06-09 00:12:56', N'【台州市】壹米滴答【台州分拨】进行装车扫描', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9623', N'2022-06-09 06:24:33', N'【杭州市】货物已到达【杭州壹米汇森汇霖分拨】', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9624', N'2022-06-09 07:31:55', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行卸车扫描', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9625', N'2022-06-09 23:23:10', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行装车扫描', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9626', N'2022-06-09 23:46:17', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行已发车', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9627', N'2022-06-10 10:58:20', N'【苏州市】货物已到达【苏州平望分拨】', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9628', N'2022-06-12 13:27:29', N'【苏州市】吴中郭巷营业部：王建国(15110958751)正在为您派件', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9629', N'2022-06-12 13:28:29', N'快件已被签收，签收人:吴先森', N'2680731973638803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9630', N'2022-06-08 15:11:48', N'【潍坊市】山东潍坊潍城西公司已揽收', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9631', N'2022-06-08 18:25:45', N'【潍坊市】订单已从山东潍坊潍城西公司发出，准备发往山东潍坊分拨中心', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9632', N'2022-06-08 22:06:15', N'【潍坊市】订单已到达山东潍坊分拨中心', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9633', N'2022-06-09 03:07:31', N'【潍坊市】山东潍坊分拨中心已发出', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9634', N'2022-06-10 00:38:17', N'【苏州市】订单已到达江苏苏州分拨中心', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9635', N'2022-06-10 05:49:20', N'【苏州市】江苏苏州分拨中心已发出', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9636', N'2022-06-10 17:51:58', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，18751186387', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9637', N'2022-06-10 17:52:14', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：李朝宣15062438748正为您派送，感谢您的耐心等待', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9638', N'2022-06-10 17:52:26', N'已签收：【吴先生】签收网点【江苏苏州吴中郭巷公司】', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9639', N'2022-06-10 17:53:19', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：李朝宣15062438748正为您派送，感谢您的耐心等待', N'2680727617732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9640', N'2022-06-09 21:40:36', N'【江门市】广东江门蓬江荷塘公司南华东路分部已揽收', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9641', N'2022-06-09 23:39:02', N'【江门市】订单已到达广东江门集配站，0750-3232323', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9642', N'2022-06-09 23:39:02', N'【江门市】订单已从广东江门集配站发出，准备发往广东东莞分拨中心', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9643', N'2022-06-10 02:23:41', N'【东莞市】订单已到达广东东莞分拨中心', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9644', N'2022-06-10 05:02:01', N'【东莞市】广东东莞分拨中心已发出', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9645', N'2022-06-11 13:38:17', N'【苏州市】订单已到达江苏苏州分拨中心', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9646', N'2022-06-12 03:51:10', N'【苏州市】江苏苏州分拨中心已发出', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9647', N'2022-06-12 21:34:28', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，18751186387', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9648', N'2022-06-12 21:34:39', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：金琳琳18136054922正为您派送，感谢您的耐心等待', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9649', N'2022-06-12 21:34:45', N'已签收：【吴先生】签收网点【江苏苏州吴中郭巷公司】', N'2680721605250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9650', N'2022-06-09 18:30:43', N'快件在【义乌童店RZX】已揽件', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9651', N'2022-06-09 19:31:33', N'快件由【义乌童店RZX】发往【金华分拨】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9652', N'2022-06-09 21:32:36', N'快件已到达【金华分拨】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9653', N'2022-06-09 21:43:33', N'快件在【金华分拨】已装车,准备发往【苏州分拨】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9654', N'2022-06-10 06:09:29', N'快件已到达【苏州分拨】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9655', N'2022-06-10 06:22:33', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9656', N'2022-06-10 08:37:31', N'快件已到达【苏州吴中三部】, 站点电话【15062429392】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9657', N'2022-06-10 10:01:15', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9658', N'2022-06-10 10:02:12', N'快件在【苏州吴中三部ZX】做了派件,派件员【位振】【15150121815】', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9659', N'2022-06-10 14:21:53', N'已签收(5/5)。有问题请联系派件员位振15150121815，投诉电话02566970060-76103。', N'2681533839275803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9660', N'2022-06-07 17:37:23', N'潍坊奎文区的小黄楼[13361545408]已揽收', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9661', N'2022-06-07 17:37:28', N'快件离开潍坊奎文区已发往潍坊中转部', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9662', N'2022-06-07 18:59:38', N'快件已到达潍坊中转部', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9663', N'2022-06-07 19:00:59', N'快件离开潍坊中转部已发往苏州中转部', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9664', N'2022-06-08 11:22:41', N'快件已到达苏州中转部', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9665', N'2022-06-08 12:48:22', N'快件离开苏州中转部已发往苏州吴中九部', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9666', N'2022-06-08 15:09:14', N'快件已到达苏州吴中九部', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9667', N'2022-06-08 15:25:46', N'苏州郭巷尹东分部（0512-65980354）的夏滨滨[15962108922]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2681290191535803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9768', N'2022-05-30 22:08:02', N'【成都市】订单已从成都分拨中心发出，准备发往苏州市区分拨中心', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9769', N'2022-06-01 13:41:19', N'【苏州市】订单已到达苏州市区分拨中心', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9770', N'2022-06-02 06:01:28', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9771', N'2022-06-02 12:01:41', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9772', N'2022-06-02 12:01:52', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9773', N'2022-06-02 16:45:41', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2662470903430803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9774', N'2022-05-29 17:45:06', N'【山东省市场部二十五部】已收件，扫描员【张店超超】', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9775', N'2022-05-30 00:41:20', N'快件由【山东省市场部二十五部】发往【山东济南转运中心】', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9776', N'2022-05-30 01:03:47', N'快件已到达【山东济南转运中心】扫描员是【出港卸车到件1】', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9777', N'2022-05-30 01:13:08', N'快件由【山东济南转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9778', N'2022-05-30 19:41:23', N'快件已到达【江苏苏州转运中心】扫描员是【进港大件15】', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9779', N'2022-05-30 19:50:46', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9780', N'2022-05-31 08:30:07', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9781', N'2022-05-31 10:56:40', N'【江苏苏州东吴公司】的派件员【吴兆龙】正在为您派件，如有疑问请联系派件员，联系电话【18662497735】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132为申通业务员外呼专属号码，可放心接听）', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9782', N'2022-05-31 13:14:32', N'已签收，签收人是【宝带】,如有疑问请联系:18662497735,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2657549161603803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9783', N'2022-05-29 16:55:01', N'【绍兴市】安能快运诸暨店口已揽收', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9784', N'2022-05-29 18:38:12', N'【绍兴市】订单已从诸暨店口发出，准备发往萧山分拨中心', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9785', N'2022-05-29 23:24:41', N'【杭州市】订单已到达萧山分拨中心', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9786', N'2022-05-30 02:05:15', N'【杭州市】订单已从萧山分拨中心发出，准备发往苏州市区分拨中心', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9787', N'2022-05-30 09:16:10', N'【苏州市】订单已到达苏州市区分拨中心', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9788', N'2022-05-30 09:20:21', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9789', N'2022-05-30 11:34:49', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9790', N'2022-05-30 11:35:08', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9791', N'2022-05-30 19:32:47', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2657519173165803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9792', N'2022-05-29 16:55:01', N'【绍兴市】安能快运诸暨店口已揽收', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9793', N'2022-05-29 18:38:12', N'【绍兴市】订单已从诸暨店口发出，准备发往萧山分拨中心', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9794', N'2022-05-29 23:24:41', N'【杭州市】订单已到达萧山分拨中心', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9795', N'2022-05-30 02:05:15', N'【杭州市】订单已从萧山分拨中心发出，准备发往苏州市区分拨中心', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9796', N'2022-05-30 09:16:10', N'【苏州市】订单已到达苏州市区分拨中心', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9797', N'2022-05-30 09:20:21', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9798', N'2022-05-30 11:34:49', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9799', N'2022-05-30 11:35:08', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9800', N'2022-05-30 19:32:47', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2657737226279803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9801', N'2022-05-28 17:26:52', N'如东三部丰洋分部揽件', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9802', N'2022-05-28 21:36:00', N'南通分拨中心到件', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9803', N'2022-05-28 21:48:00', N'南通分拨中心发件,下一网点苏州分拨中心', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9804', N'2022-05-29 01:21:00', N'苏州分拨中心到件', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9805', N'2022-05-29 05:00:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9806', N'2022-05-29 12:03:00', N'苏州吴中二部到件', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9807', N'2022-05-29 12:03:00', N'苏州吴中二部派件', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9808', N'2022-05-29 18:54:00', N'电子签名签收签收', N'2658337671882803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9809', N'2022-05-31 18:05:55', N'快件在【温岭六部温岭来德】已揽件', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9810', N'2022-05-31 18:07:42', N'快件由【温岭六部温岭来德】发往【台州分拨】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9811', N'2022-05-31 21:11:32', N'快件已到达【台州分拨】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9812', N'2022-05-31 21:14:11', N'快件在【台州分拨】已装车,准备发往【苏州分拨】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9813', N'2022-06-01 04:39:06', N'快件已到达【苏州分拨】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9814', N'2022-06-01 05:28:37', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9815', N'2022-06-01 07:57:50', N'快件已到达【苏州吴中三部】, 站点电话【15062429392】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9447', N'2022-07-07 10:09:45', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：15077953516，投诉电话：18577620029。。 快件已送达，如有疑问请联系：15077953516，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9483', N'2022-07-01 19:43:11', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'2729613961108803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9484', N'2022-06-22 21:15:06', N'义乌青口的周天虎[18072690726]已揽收', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9485', N'2022-06-22 21:15:38', N'快件离开义乌青口已发往义乌中转部', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9486', N'2022-06-22 22:14:01', N'快件已到达义乌中转部', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9487', N'2022-06-22 22:15:53', N'快件离开义乌中转部已发往苏州中转部', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9488', N'2022-06-23 06:26:03', N'快件已到达苏州中转部', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9489', N'2022-06-23 08:53:04', N'快件离开苏州中转部已发往苏州吴中九部', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9490', N'2022-06-23 13:45:44', N'快件已到达苏州吴中九部', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9491', N'2022-06-23 14:19:52', N'快件已到达苏州郭巷尹东分部', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9492', N'2022-06-23 14:19:53', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9493', N'2022-06-23 14:47:50', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9494', N'2022-06-23 17:19:18', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2714907529649803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9495', N'2022-06-30 20:34:58', N'【深圳市】广东深圳骏达公司古胜科技KH分部-史新平（13782789484） 已揽收，快递小哥已接种疫苗，请放心收寄快递', N'2713466054403803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9496', N'2022-07-01 01:28:51', N'【深圳市】广东深圳公司-谢昌龙（18681483831） 已揽收', N'2713466054403803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9497', N'2022-07-01 01:33:08', N'【深圳市】已离开 广东深圳公司；发往 江苏苏州分拨交付中心', N'2713466054403803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9498', N'2022-07-02 02:55:44', N'【苏州市】已到达 江苏苏州分拨交付中心(分拨对该快件已全面消杀)', N'2713466054403803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9499', N'2022-07-02 03:25:58', N'【苏州市】已离开 江苏苏州分拨交付中心(分拨对该快件已全面消杀)；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2713466054403803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9500', N'2022-07-02 13:01:25', N'【苏州市】江苏主城公司吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2713466054403803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9501', N'2022-07-02 20:15:24', N'【苏州市】您的快件已签收，签收人：已签收，如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2713466054403803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9502', N'2022-06-21 18:31:35', N'宁波高新的尹兴华[13429282825]已揽收', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9503', N'2022-06-21 18:31:40', N'快件离开宁波高新已发往宁波中转部', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9504', N'2022-06-21 21:05:44', N'快件已到达宁波中转部', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9505', N'2022-06-21 21:07:22', N'快件离开宁波中转部已发往苏州中转部', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9506', N'2022-06-22 03:48:57', N'快件已到达苏州中转部', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9507', N'2022-06-22 03:57:58', N'快件离开苏州中转部已发往苏州吴中九部', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9508', N'2022-06-22 09:15:50', N'快件已到达苏州郭巷尹东分部', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9509', N'2022-06-22 09:15:51', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9510', N'2022-06-22 11:02:31', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2710293588594803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9511', N'2022-06-21 18:25:19', N'【南通市】安能快运五接韩通路已揽收', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9512', N'2022-06-21 18:37:24', N'【南通市】订单已从五接韩通路发出，准备发往南通分拨中心', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9513', N'2022-06-21 19:22:43', N'【南通市】订单已到达南通分拨中心', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9514', N'2022-06-21 19:50:33', N'【南通市】订单已从南通分拨中心发出，准备发往苏州市区分拨中心', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9515', N'2022-06-22 03:46:18', N'【苏州市】订单已到达苏州市区分拨中心', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9516', N'2022-06-22 07:13:36', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9517', N'2022-06-22 10:27:29', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9518', N'2022-06-22 10:29:24', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9519', N'2022-06-22 20:43:02', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2711473166513803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9520', N'2022-06-23 18:05:14', N'【宁波市】壹米滴答【慈溪天元营业部E】被揽收', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9521', N'2022-06-24 18:40:12', N'【宁波市】壹米滴答【余姚分拨】进行卸车扫描', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9522', N'2022-06-24 19:51:04', N'【宁波市】壹米滴答【余姚分拨】进行装车扫描', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9523', N'2022-06-24 23:41:38', N'【无锡市】货物已到达【无锡分拨】', N'2709846108390803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8589', N'2022-08-14 16:46:16', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8590', N'2022-08-15 08:49:48', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8591', N'2022-08-12 19:17:07', N'江西省南昌市昌北经济技术开发区公司 已揽收, 任长征(18179170811) 新冠疫苗已接种', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8592', N'2022-08-12 19:17:25', N'江西省南昌市昌北经济技术开发区公司 已打包', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8593', N'2022-08-12 20:10:35', N'江西省南昌市昌北经济技术开发区公司 已发出,下一站 南昌转运中心', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8594', N'2022-08-12 21:40:01', N'南昌转运中心公司 已收入', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8595', N'2022-08-12 22:30:01', N'南昌转运中心公司 已发出', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8596', N'2022-08-13 11:28:34', N'苏州转运中心公司 已收入', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8597', N'2022-08-13 12:18:34', N'苏州转运中心公司 已发出', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8598', N'2022-08-14 06:46:56', N'江苏省苏州市吴中区出口加工区 已收入', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8599', N'2022-08-14 06:46:56', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。95161和185211号段的上海号码为圆通业务员专属号码', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8600', N'2022-08-14 07:30:09', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8601', N'2022-08-14 08:16:05', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2814930072454411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8602', N'2022-08-13 15:24:25', N'【商丘市】河南虞城县公司-李英荣（18736899886） 已揽收', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8603', N'2022-08-13 20:44:28', N'【商丘市】已到达 河南商丘分拨交付中心', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8604', N'2022-08-13 20:46:59', N'【商丘市】已离开 河南商丘分拨交付中心；发往 江苏苏州分拨交付中心', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8605', N'2022-08-14 11:29:37', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8606', N'2022-08-14 11:40:49', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8607', N'2022-08-14 13:39:59', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8608', N'2022-08-14 16:46:07', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8609', N'2022-08-15 08:50:01', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2816530959306411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8610', N'2022-08-13 20:24:40', N'【金华市】浙江浦江县公司-汇淘网络（057989387785） 已揽收', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8611', N'2022-08-13 23:58:45', N'【嘉兴市】已到达 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8612', N'2022-08-14 00:00:59', N'【嘉兴市】已离开 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8613', N'2022-08-14 02:58:20', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8614', N'2022-08-14 03:04:49', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8615', N'2022-08-14 06:38:37', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8616', N'2022-08-14 11:26:34', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8617', N'2022-08-14 16:13:35', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2814876324884411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8618', N'2022-08-12 18:46:44', N'台州玉环的玉环公司淘宝[15067648537]已揽收', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8619', N'2022-08-12 19:34:52', N'快件离开台州玉环已发往台州中转部', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8620', N'2022-08-12 21:11:58', N'快件已到达台州中转部（中转中心已对该快件做全面消杀）', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8621', N'2022-08-12 21:13:01', N'快件离开台州中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8622', N'2022-08-13 06:06:51', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8623', N'2022-08-13 06:15:53', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8624', N'2022-08-13 14:01:10', N'快件已到达苏州郭巷尹东分部', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8625', N'2022-08-13 14:01:11', N'苏州郭巷尹东分部（0512-65980354）的夏滨滨[15962108922]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8626', N'2022-08-13 16:12:06', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：15962108922, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2816114798900411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8502', N'2022-08-14 04:51:57', N'快件离开佛山中心已发往广州中心（中转中心已对该快件做全面消杀）', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8503', N'2022-08-14 06:52:03', N'快件已到达广州中心（中转中心已对该快件做全面消杀）', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8504', N'2022-08-14 06:55:13', N'快件离开广州中心已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8505', N'2022-08-15 08:18:33', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8506', N'2022-08-15 09:41:16', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8507', N'2022-08-15 14:00:01', N'快件已到达苏州郭巷尹东分部', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8508', N'2022-08-15 14:00:02', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8509', N'2022-08-15 15:10:23', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8510', N'2022-08-13 04:28:27', N'广州夏茅的黄-赖聪[19527699717]已揽收', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8511', N'2022-08-13 06:12:53', N'快件离开广州夏茅已发往广州中心', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8512', N'2022-08-13 08:23:43', N'快件已到达广州中心（中转中心已对该快件做全面消杀）', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8513', N'2022-08-13 20:51:26', N'快件离开广州中心已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8514', N'2022-08-15 02:10:17', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8515', N'2022-08-15 02:59:45', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8516', N'2022-08-15 07:58:53', N'快件已到达苏州郭巷尹东分部', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8517', N'2022-08-15 07:58:54', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8518', N'2022-08-15 10:09:39', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2816681366401411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8519', N'2022-08-16 16:52:13', N'揽货成功，【菏泽市】营业网点库存中', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8520', N'2022-08-16 19:53:22', N'运输中，离开 【菏泽市】营业网点 下一站 菏泽运营区', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8521', N'2022-08-16 20:41:17', N'运输中，到达菏泽运营区', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8522', N'2022-08-16 23:29:40', N'运输中，离开 菏泽运营区 下一站 【苏州市】运输中心', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8523', N'2022-08-17 12:11:09', N'运输中，到达【苏州市】运输中心', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8524', N'2022-08-18 04:30:33', N'运输中,离开【苏州市】运输中心 发往目的地 苏州吴中区金丝港路经营分部', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8525', N'2022-08-18 07:23:15', N'已到达目的地苏州吴中区金丝港路经营分部', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8526', N'2022-08-18 09:29:59', N'派送中，德邦已开启”安全呼叫“，保护您的电话隐私，小哥今日体温正常，将佩戴口罩为您配送，也可联系小哥将包裹放置指定地点，祝您身体健康。', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8527', N'2022-08-18 09:47:49', N'正常签收，签收人类型：其他，如有疑问请联系：18603887153。客官，您的包裹已安全送达，戳开上方快递员评价，点亮五颗小星星，可在德邦快递微信公众号或小程序上参与“收货点好评，兑换5元优惠券”活动', N'2816550362733411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8528', N'2022-08-13 18:57:29', N'【金华市】浙江金华金义都市新区公司-杨小英（14727647554） 已揽收', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8529', N'2022-08-13 22:53:22', N'【嘉兴市】已到达 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8530', N'2022-08-13 22:56:33', N'【嘉兴市】已离开 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8531', N'2022-08-14 01:39:33', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8532', N'2022-08-14 01:46:15', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8533', N'2022-08-14 07:49:29', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8534', N'2022-08-14 11:28:53', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8535', N'2022-08-14 16:12:51', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2815172424474411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8536', N'2022-08-12 19:17:07', N'江西省南昌市昌北经济技术开发区公司 已揽收, 任长征(18179170811) 新冠疫苗已接种', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8537', N'2022-08-12 19:17:25', N'江西省南昌市昌北经济技术开发区公司 已打包', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8538', N'2022-08-12 20:10:35', N'江西省南昌市昌北经济技术开发区公司 已发出,下一站 南昌转运中心', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8539', N'2022-08-12 21:40:01', N'南昌转运中心公司 已收入', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8540', N'2022-08-12 22:30:01', N'南昌转运中心公司 已发出', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8541', N'2022-08-13 11:28:34', N'苏州转运中心公司 已收入', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8542', N'2022-08-13 12:18:34', N'苏州转运中心公司 已发出', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8543', N'2022-08-14 06:46:56', N'江苏省苏州市吴中区出口加工区 已收入', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8544', N'2022-08-14 06:46:56', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。95161和185211号段的上海号码为圆通业务员专属号码', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8671', N'2022-08-12 18:32:42', N'快件离开金华低田已发往苏州中转部', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8672', N'2022-08-13 00:30:19', N'快件已到达浙江中通立通分拨（中转中心已对该快件做全面消杀）', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8673', N'2022-08-13 00:31:44', N'快件离开浙江中通立通分拨已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8674', N'2022-08-13 04:28:35', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8675', N'2022-08-13 05:40:29', N'快件离开苏州中转部已发往苏州郭巷尹东分部（中转中心已对该快件做全面消杀）', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8676', N'2022-08-13 08:15:03', N'快件已到达苏州吴中九部', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8677', N'2022-08-13 08:42:34', N'快件已到达苏州郭巷尹东分部', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8678', N'2022-08-13 08:42:35', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[17715515238]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8679', N'2022-08-13 11:55:30', N'快件已在苏州郭巷尹东分部签收 签收人：办公室/值班室。如有疑问请电联：17715515238, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2814955311619411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8680', N'2022-08-14 17:14:51', N'宁波横街镇的蒋宗国[18858069281]已揽收', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8681', N'2022-08-14 18:48:12', N'快件离开宁波横街镇已发往宁波', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8682', N'2022-08-14 19:21:07', N'快件离开宁波已发往苏州中转部', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8683', N'2022-08-14 20:24:56', N'快件已到达宁波中转部（中转中心已对该快件做全面消杀）', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8684', N'2022-08-14 20:26:49', N'快件离开宁波中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8685', N'2022-08-15 03:53:11', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8686', N'2022-08-15 03:59:44', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8687', N'2022-08-15 08:15:04', N'快件已到达苏州吴中九部', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8688', N'2022-08-15 08:49:25', N'快件已到达苏州郭巷尹东分部', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8689', N'2022-08-15 08:49:26', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8690', N'2022-08-15 10:09:39', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2813186700407411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8691', N'2022-08-11 19:19:27', N'江西省南昌市昌北经济技术开发区公司 已揽收, 任长征(18179170811) 新冠疫苗已接种', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8692', N'2022-08-11 19:19:37', N'江西省南昌市昌北经济技术开发区公司 已发出,下一站 南昌转运中心', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8693', N'2022-08-11 21:49:50', N'南昌转运中心公司 已收入', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8694', N'2022-08-11 22:39:50', N'南昌转运中心公司 已发出', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8695', N'2022-08-12 11:33:06', N'苏州转运中心公司 已收入', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8696', N'2022-08-12 11:39:33', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8697', N'2022-08-12 12:44:51', N'江苏省苏州市吴中区出口加工区 已收入', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8698', N'2022-08-12 12:44:51', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。95161和185211号段的上海号码为圆通业务员专属号码', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8699', N'2022-08-12 13:28:02', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8700', N'2022-08-12 13:53:56', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2813180256983411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8701', N'2022-08-11 17:15:07', N'【河南许昌公司】的收件员【安经理】已收件', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8702', N'2022-08-11 17:45:05', N'快件由【河南许昌公司】发往【河南漯河转运中心】', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8703', N'2022-08-11 20:48:11', N'快件已到达【河南漯河转运中心】扫描员是【三合一称重22】', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8704', N'2022-08-11 20:54:19', N'快件由【河南漯河转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8705', N'2022-08-12 23:52:05', N'快件已到达【江苏苏州转运中心】扫描员是【陈丽娟】', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8706', N'2022-08-12 23:54:31', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8707', N'2022-08-13 07:47:35', N'快件已到达【江苏苏州东吴公司】扫描员是【江苏苏州东吴公司】', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8708', N'2022-08-13 12:41:38', N'【江苏苏州东吴公司】的派件员【王要攀】正在为您派件，如有疑问请联系派件员，联系电话【13245067939】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8709', N'2022-08-13 13:49:02', N'已签收，签收人是【门卫代签】,如有疑问请联系:13245067939,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2814401666639411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8710', N'2022-08-09 19:00:58', N'【佛山市】广东佛山黄岐服务部-黎海珍（15016598684） 已揽收', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8711', N'2022-08-09 19:27:08', N'【佛山市】已离开 广东佛山黄岐服务部；发往 苏州南地区包', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8712', N'2022-08-09 21:33:52', N'【佛山市】已到达 广东佛山分拨交付中心(分拨对该快件已全面消杀)', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8713', N'2022-08-09 21:39:12', N'【佛山市】已离开 广东佛山分拨交付中心(分拨对该快件已全面消杀)；发往 华南枢纽分拨交付中心', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8714', N'2022-08-10 03:01:22', N'【广州市】已到达 华南枢纽分拨交付中心(分拨对该快件已全面消杀)', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8760', N'2022-08-10 12:18:27', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2810136745058411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8761', N'2022-08-05 19:27:51', N'【台州市】浙江台州黄岩区公司-王弈强（15858605460） 已揽收，快递小哥已接种疫苗，48小时核酸正常，每日测体温，请放心收寄快递', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8762', N'2022-08-05 19:30:41', N'【台州市】已离开 浙江台州黄岩区公司；发往 苏州南地区包', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8763', N'2022-08-05 20:59:30', N'【台州市】已到达 浙江台州分拨交付中心', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8764', N'2022-08-05 21:01:53', N'【台州市】已离开 浙江台州分拨交付中心；发往 江苏苏州分拨交付中心', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8765', N'2022-08-06 05:13:34', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8766', N'2022-08-06 05:31:25', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8767', N'2022-08-06 13:35:17', N'【苏州市】已离开 江苏苏州吴中区新郭巷服务部[0512-87807140]；发往 江苏吴中新郭巷服务部出口加工寄存', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8768', N'2022-08-07 18:44:08', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8769', N'2022-08-07 20:22:54', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2798550648492411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8770', N'2022-08-05 21:09:01', N'【杭州市】浙江杭州江干区红普路公司-吴加燕（15024316498） 已揽收', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8771', N'2022-08-05 21:47:01', N'【嘉兴市】已到达 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8772', N'2022-08-05 22:14:25', N'【嘉兴市】已离开 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8773', N'2022-08-06 01:43:43', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8774', N'2022-08-06 01:54:14', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8775', N'2022-08-06 06:21:51', N'【苏州市】已离开 江苏苏州吴中区新郭巷服务部[0512-87807140]；发往 江苏吴中新郭巷服务部出口加工寄存', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8776', N'2022-08-06 08:52:01', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8777', N'2022-08-06 13:05:00', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2795548106309411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8778', N'2022-07-29 11:34:39', N'【宣城市】安徽泾县公司-曹旺（17856511840） 已揽收，快递小哥已接种疫苗，每日测体温，请放心收寄快递', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8779', N'2022-07-29 23:19:49', N'【芜湖市】已到达 安徽芜湖分拨交付中心(分拨对该快件已全面消杀)', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8780', N'2022-07-29 23:21:27', N'【芜湖市】已离开 安徽芜湖分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8781', N'2022-07-30 04:07:34', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8782', N'2022-07-30 04:14:19', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8783', N'2022-07-30 06:53:27', N'【苏州市】已离开 江苏苏州吴中区新郭巷服务部[0512-87807140]；发往 江苏吴中新郭巷服务部出口加工寄存', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8784', N'2022-07-30 11:44:40', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8785', N'2022-07-30 18:50:12', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2781328394268411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8786', N'2022-07-22 20:50:34', N'义乌廿三里南的所文章[15198441728]已揽收', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8787', N'2022-07-22 21:02:32', N'快件离开义乌廿三里南已发往苏州中转部', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8788', N'2022-07-22 23:12:40', N'快件已到达义乌中转部（中转中心已对该快件做全面消杀）', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8789', N'2022-07-22 23:15:25', N'快件离开义乌中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8790', N'2022-07-23 06:42:36', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8791', N'2022-07-23 10:39:47', N'快件离开苏州中转部已发往苏州郭巷尹东分部（中转中心已对该快件做全面消杀）', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8792', N'2022-07-23 14:09:50', N'快件已到达苏州吴中九部', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8793', N'2022-07-23 14:40:41', N'快件已到达苏州郭巷尹东分部', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8794', N'2022-07-23 14:40:42', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[17715515238]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8795', N'2022-07-23 19:49:08', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员18551441704', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8796', N'2022-07-25 08:35:25', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2772055836974411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8839', N'2022-07-16 22:44:06', N'快件已到达【浙江宁波转运中心】扫描员是【DWS出港卸货口15号】', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8840', N'2022-07-16 22:56:52', N'快件由【浙江宁波转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8841', N'2022-07-17 05:41:37', N'快件已到达【江苏苏州转运中心】扫描员是【张康乐】', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8842', N'2022-07-17 06:01:30', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8843', N'2022-07-17 07:38:01', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8844', N'2022-07-17 16:14:06', N'【江苏苏州东吴公司】的派件员【尹山湖11】正在为您派件，如有疑问请联系派件员，联系电话【15995487904】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8845', N'2022-07-17 16:15:59', N'【江苏苏州东吴公司】的派件员【尹山湖11】正在为您派件，如有疑问请联系派件员，联系电话【15995487904】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8846', N'2022-07-17 17:30:09', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员18994388380', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8847', N'2022-07-19 08:32:12', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8848', N'2022-07-09 07:37:15', N'山东省临沂市河东区褚庄公司 已揽收, 周庆雷(15953917188) 快递员当前健康码无异常 48H内核酸阴性 新冠疫苗已接种', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8849', N'2022-07-09 15:42:48', N'山东省临沂市河东区公司 已揽收, 周庆雷(15953917188) 快递员当前健康码无异常 24H内核酸阴性 新冠疫苗已接种', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8850', N'2022-07-09 17:41:30', N'山东省临沂市河东区公司 已打包', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8851', N'2022-07-09 18:08:10', N'山东省临沂市河东区公司 已发出,下一站 临沂转运中心', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8852', N'2022-07-09 19:33:15', N'临沂转运中心公司 已收入', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8853', N'2022-07-09 19:36:33', N'临沂转运中心公司 已发出,下一站 苏州转运中心', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8854', N'2022-07-10 08:42:45', N'苏州转运中心公司 已收入', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8855', N'2022-07-10 09:32:45', N'苏州转运中心公司 已发出', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8856', N'2022-07-10 13:58:25', N'苏州转运中心公司 已打包', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8857', N'2022-07-10 15:34:10', N' 疫情暂缓派送', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8858', N'2022-07-11 06:37:27', N'江苏省苏州市吴中区出口加工区 已收入', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8859', N'2022-07-11 06:37:27', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。 185211号段上海号码为圆通业务员专属号码', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8860', N'2022-07-11 07:20:43', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8861', N'2022-07-11 08:37:22', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2744794803200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8862', N'2022-07-04 23:30:58', N'浙江省金华市义乌市江东南下朱公司 已揽收, 吴江平(18230922979) 新冠疫苗已接种', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8863', N'2022-07-04 23:31:02', N'浙江省金华市义乌市江东南下朱公司 已发出,下一站 义乌转运中心直营', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8864', N'2022-07-05 00:47:35', N'义乌转运中心直营公司 已收入', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8865', N'2022-07-05 00:50:09', N'义乌转运中心直营公司 已发出,下一站 苏州转运中心', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8866', N'2022-07-05 06:57:03', N'苏州转运中心公司 已收入', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8867', N'2022-07-05 07:02:54', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8868', N'2022-07-05 07:02:54', N' 疫情暂缓派送', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8869', N'2022-07-05 12:37:32', N'江苏省苏州市吴中区出口加工区 已收入', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8870', N'2022-07-05 12:37:32', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。 185211号段上海号码为圆通业务员专属号码', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8871', N'2022-07-05 13:41:00', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18501615585。。 快件已送达，如有疑问请联系：19955492812，投诉电话：18501615585。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2738818551173411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8872', N'2022-06-28 17:03:26', N'浙江省金华市义乌市江东南下朱公司 已揽收, 陈思宇(13585757888)新冠疫苗已接种', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8873', N'2022-06-28 17:12:26', N'浙江省金华市义乌市江东南下朱公司 已打包', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8874', N'2022-06-28 17:14:18', N'浙江省金华市义乌市江东南下朱公司 已发出,下一站 义乌转运中心直营', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8875', N'2022-06-28 19:25:55', N'义乌转运中心直营公司 已收入', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8876', N'2022-06-28 19:28:36', N'义乌转运中心直营公司 已发出,下一站 苏州转运中心', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8877', N'2022-06-29 02:19:15', N'苏州转运中心公司 已收入', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8878', N'2022-06-29 03:09:15', N'苏州转运中心公司 已发出', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8879', N'2022-06-29 03:25:43', N'苏州转运中心公司 已打包', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8880', N'2022-06-29 07:55:22', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8881', N'2022-06-29 08:26:45', N'江苏省苏州市吴中区出口加工区 已收入', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8882', N'2022-06-29 08:26:45', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516圆通快递小哥每天已测体温，请放心收寄快递。 185211号段上海号码为圆通业务员专属号码', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8926', N'2022-06-17 05:57:34', N'快件离开苏州中转部已发往苏州郭巷尹东分部', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8927', N'2022-06-17 15:19:54', N'快件已到达苏州郭巷尹东分部', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8928', N'2022-06-17 15:19:55', N'苏州郭巷尹东分部（0512-65980354）的张福栋[13270989198]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8929', N'2022-06-17 16:13:59', N'苏州郭巷尹东分部（0512-65980354）的张福栋[13270989198]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8930', N'2022-06-17 21:39:02', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员13270989198', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8931', N'2022-06-20 08:51:04', N'快件已被快递员取出，如有异议请联系快递小哥13270989198', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8932', N'2022-06-20 08:51:06', N'您的快件被快递员取出，请等待快递员与您联系，电话13270989198。', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8933', N'2022-06-20 08:51:06', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员13270989198', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8934', N'2022-06-20 08:53:38', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8935', N'2022-06-16 18:33:06', N'广东省深圳市福田区茂业公司 已揽收, 张志强(13923850604)新冠疫苗已接种', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8936', N'2022-06-17 03:58:47', N'广东省深圳市前海保税港区晴湖分部公司 已揽收, 谢彩凤(13622976707)', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8937', N'2022-06-17 04:13:48', N'深圳转运中心公司 已收入', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8938', N'2022-06-17 05:03:48', N'深圳转运中心公司 已发出', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8939', N'2022-06-18 05:45:26', N'苏州转运中心公司 已收入', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8940', N'2022-06-18 05:51:21', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8941', N'2022-06-18 12:48:02', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8942', N'2022-06-18 13:33:07', N'江苏省苏州市吴中区出口加工区 已收入', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8943', N'2022-06-18 13:33:07', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516圆通快递小哥每天已测体温，请放心收寄快递。 185211号段上海号码为圆通业务员专属号码', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8944', N'2022-06-18 16:27:16', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员15077953516', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8945', N'2022-06-20 08:52:00', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2699597306611411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8946', N'2022-06-03 18:47:55', N'浙江省金华市义乌市九联公司 已揽收, 单长锁(18258981884)', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8947', N'2022-06-03 22:18:18', N'浙江省金华市义乌市九联公司 已揽收, 李天明(13575572667)新冠疫苗已接种', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8948', N'2022-06-03 22:33:47', N'义乌转运中心直营公司 已收入', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8949', N'2022-06-03 23:23:47', N'义乌转运中心直营公司 已发出', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8950', N'2022-06-04 05:23:27', N'苏州转运中心公司 已收入', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8951', N'2022-06-04 05:29:05', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8952', N'2022-06-04 13:19:01', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8953', N'2022-06-06 14:05:23', N'江苏省苏州市吴中区出口加工区 已收入', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8954', N'2022-06-06 14:05:23', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:洪愿 手机号:17634333793圆通快递小哥新冠疫苗已接种，每天已测体温，请放心收寄快递。 185211号段上海号码为圆通业务员专属号码', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8955', N'2022-06-06 15:56:53', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：前台代收。 快件已送达，如有疑问请联系：17634333793，投诉电话：18501615585。。 快件已送达，如有疑问请联系：17634333793，投诉电话：18501615585。疫情期间圆通每天对网点多次消毒，快递小哥新冠疫苗已接种，每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2669758994780411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8956', N'2022-08-14 22:16:12', N'汕头岐山的卢月雲[13421169477]已揽收', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8957', N'2022-08-14 22:19:07', N'快件离开汕头岐山已发往苏州中转部', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8958', N'2022-08-15 01:38:17', N'快件已到达潮汕中心（中转中心已对该快件做全面消杀）', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8959', N'2022-08-15 01:40:32', N'快件离开潮汕中心已发往苏州中转部（中转中心已对该快件做全面消杀）', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8960', N'2022-08-15 23:41:59', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8961', N'2022-08-15 23:42:07', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8962', N'2022-08-16 07:32:13', N'快件已到达苏州吴中九部', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8963', N'2022-08-16 08:35:53', N'苏州吴中九部（0512-88971080）的张业林[18914019121]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8964', N'2022-08-16 10:40:05', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8965', N'2022-08-16 17:45:57', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'1643036882173607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8966', N'2022-08-15 21:45:06', N'广东省汕头市金平区月浦第三分部公司 已揽收, 杜佳(15218967297) 新冠疫苗已接种', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8967', N'2022-08-15 21:46:11', N'广东省汕头市澄海区公司 已揽收, 杜警思(13192352828)', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8968', N'2022-08-15 21:55:04', N'广东省汕头市澄海区公司 已打包', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8969', N'2022-08-15 22:30:01', N'广东省汕头市澄海区公司 已发出,下一站 揭阳转运中心', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8970', N'2022-08-16 00:56:52', N'揭阳转运中心公司 已收入', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8972', N'2022-08-16 20:52:02', N'苏州转运中心公司 已收入', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8973', N'2022-08-16 21:42:02', N'苏州转运中心公司 已发出', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8974', N'2022-08-17 07:42:07', N'江苏省苏州市吴中区郭巷公司 已收入', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8975', N'2022-08-17 09:46:30', N'江苏省苏州市吴中区郭巷 已收入', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8976', N'2022-08-17 09:46:30', N'江苏省苏州市吴中区郭巷公司 派件中 派件员:苏州保利悦玺49栋101号店 手机号:18521130353 新冠疫苗已接种。95161和185211号段的上海号码为圆通业务员专属号码', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8977', N'2022-08-17 10:32:30', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8978', N'2022-08-18 15:28:59', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'1643035370977607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8979', N'2022-08-14 21:07:48', N'汕头东海岸的东海岸扫描组[18675461333]已揽收', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8980', N'2022-08-14 21:10:43', N'快件离开汕头东海岸已发往苏州中转部', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8981', N'2022-08-15 00:47:37', N'快件已到达潮汕中心（中转中心已对该快件做全面消杀）', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8982', N'2022-08-15 00:49:52', N'快件离开潮汕中心已发往苏州中转部（中转中心已对该快件做全面消杀）', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8983', N'2022-08-15 23:19:12', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8984', N'2022-08-16 00:17:22', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8985', N'2022-08-16 07:33:25', N'快件已到达苏州吴中九部', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8986', N'2022-08-16 08:50:32', N'苏州吴中九部（0512-88971080）的张业林[18914019121]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8987', N'2022-08-16 10:50:45', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8988', N'2022-08-16 17:45:56', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'1643081235700607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8989', N'2022-08-13 17:53:35', N'【晋中祁县古城网点】的王小建（17835405311）已取件，投诉电话：0354-3914703', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8990', N'2022-08-13 18:03:35', N'快件离开【晋中祁县古城网点】已发往【太原转运中心】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8991', N'2022-08-13 23:51:30', N' 快件到达【太原转运中心】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8992', N'2022-08-13 23:59:01', N'快件离开【太原转运中心】已发往【无锡转运中心】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8993', N'2022-08-15 00:30:57', N' 快件到达【无锡转运中心】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8994', N'2022-08-15 00:32:42', N'快件离开【无锡转运中心】已发往【苏州市内集散点】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8995', N'2022-08-15 03:26:11', N' 快件到达【苏州市内集散点】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8996', N'2022-08-15 03:50:18', N'快件离开【苏州市内集散点】已发往【苏州郭巷网点】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8997', N'2022-08-15 07:59:08', N' 快件到达【苏州郭巷网点】', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8998', N'2022-08-15 10:34:41', N'【苏州郭巷网点】的兔兔快递员 蒋梦雨 13771977653 正在派件（可放心接听952300专属热线），投诉电话：0512-68528937。今天的兔兔，体温正常，口罩戴好，消毒到位，即将为您派件。', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8999', N'2022-08-15 11:38:05', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9000', N'2022-08-15 18:54:24', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'2817145370699607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9001', N'2022-07-25 16:49:25', N'广东省汕头市澄海区公司 已揽收, 姚修(15875489895)', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9002', N'2022-07-25 21:01:48', N'广东省汕头市澄海区公司 已揽收, 谢鹰群(18521183228)', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9003', N'2022-07-25 21:05:01', N'广东省汕头市澄海区公司 已打包', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9004', N'2022-07-25 21:21:19', N'广东省汕头市澄海区公司 已发出,下一站 揭阳转运中心', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9005', N'2022-07-26 00:40:43', N'揭阳转运中心公司 已收入', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9006', N'2022-07-26 00:43:03', N'揭阳转运中心公司 已发出,下一站 苏州转运中心', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9007', N'2022-07-26 22:16:34', N'苏州转运中心公司 已收入', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9008', N'2022-07-26 23:06:34', N'苏州转运中心公司 已发出', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9009', N'2022-07-27 07:34:36', N'江苏省苏州市吴中区郭巷公司 已收入', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9010', N'2022-07-27 09:17:32', N'江苏省苏州市吴中区郭巷 已收入', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9011', N'2022-07-27 09:17:32', N'江苏省苏州市吴中区郭巷公司 派件中 派件员:苏州保利悦玺49栋101号店 手机号:18521130353 新冠疫苗已接种。 185211号段上海号码为圆通业务员专属号码', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9012', N'2022-07-27 10:03:32', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9013', N'2022-07-27 13:50:27', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'1625290032301607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9014', N'2022-07-06 20:01:14', N'连云港东海县的总月结[15722476566]已揽收', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9015', N'2022-07-06 20:01:26', N'快件离开连云港东海县已发往苏州中转部', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9016', N'2022-07-06 23:28:42', N'快件已到达淮安中转', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9017', N'2022-07-06 23:32:09', N'快件离开淮安中转已发往无锡中转部', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9018', N'2022-07-07 05:31:27', N'快件已到达无锡中转部', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9019', N'2022-07-07 06:02:30', N'快件离开无锡中转部已发往苏州中转部', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9020', N'2022-07-07 08:32:06', N'快件已到达苏州中转部', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9022', N'2022-07-07 14:01:10', N'快件已到达苏州吴中九部', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9023', N'2022-07-07 14:01:11', N'苏州吴中九部（0512-68235125）的李朋斐[17630833906]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9024', N'2022-07-07 16:10:48', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9025', N'2022-07-08 10:50:14', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'1607985444342607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9026', N'2022-05-31 21:11:34', N'澄海隆都的新仓1[15218978687]已揽收', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9027', N'2022-05-31 21:14:08', N'快件离开澄海隆都已发往潮汕中心', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9028', N'2022-06-01 01:13:22', N'快件已到达潮汕中心', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9029', N'2022-06-01 01:15:22', N'快件离开潮汕中心已发往苏州中转部', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9030', N'2022-06-01 23:10:29', N'快件已到达苏州中转部', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9031', N'2022-06-01 23:17:14', N'快件离开苏州中转部已发往苏州吴中九部', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9032', N'2022-06-02 07:25:01', N'快件已到达苏州吴中九部', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9033', N'2022-06-02 07:39:16', N'苏州吴中九部（0512-68235125）的李朋斐[17630833906]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9034', N'2022-06-02 11:34:15', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9035', N'2022-06-02 18:19:27', N'您已在苏州保利悦玺49栋101号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'1576853832631607283')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9036', N'2022-08-17 19:33:32', N'【浙江永康公司】的收件员【小件收件扫描5】已收件', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9037', N'2022-08-17 19:45:05', N'快件由【浙江永康公司】发往【浙江金华转运中心】', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9038', N'2022-08-17 23:16:21', N'快件已到达【浙江金华转运中心】扫描员是【赵更全】', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9039', N'2022-08-17 23:25:41', N'快件由【浙江金华转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9040', N'2022-08-18 06:18:06', N'快件已到达【江苏苏州转运中心】扫描员是【段娟妮】', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9041', N'2022-08-18 06:24:50', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9042', N'2022-08-18 14:11:17', N'快件已到达【江苏苏州东吴公司】扫描员是【江苏苏州东吴公司】', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9043', N'2022-08-18 17:04:49', N'【江苏苏州东吴公司】的派件员【王跃】正在为您派件，如有疑问请联系派件员，联系电话【15250471157】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9044', N'2022-08-18 17:33:26', N'已签收，签收人是【988宝带门卫】,如有疑问请联系:15250471157,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2823321744941803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9045', N'2022-08-15 21:38:13', N'广东省东莞市虎门公司 已揽收, 韦景孝(13544829888) 新冠疫苗已接种', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9046', N'2022-08-15 23:45:55', N'广东省东莞市虎门公司 已打包', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9047', N'2022-08-15 23:58:19', N'广东省东莞市虎门公司 已发出,下一站 东莞转运中心', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9048', N'2022-08-16 00:35:17', N'东莞转运中心公司 已收入', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9049', N'2022-08-16 00:37:56', N'东莞转运中心公司 已发出,下一站 广东省东莞市虎门直营接驳点', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9050', N'2022-08-17 03:40:57', N'苏州转运中心公司 已收入', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9051', N'2022-08-17 03:59:06', N'苏州转运中心公司 已打包', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9052', N'2022-08-17 04:48:32', N'苏州转运中心公司 已发出', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9053', N'2022-08-17 13:16:36', N'江苏省苏州市吴中区郭巷公司 已收入', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9054', N'2022-08-17 15:14:42', N'江苏省苏州市吴中区郭巷 已收入', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9055', N'2022-08-17 15:14:42', N'江苏省苏州市吴中区郭巷公司 派件中 派件员:苏州保利悦玺49栋101号店 手机号:18521130353 新冠疫苗已接种。95161和185211号段的上海号码为圆通业务员专属号码', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9056', N'2022-08-17 16:00:42', N'您的快件已暂存至苏州保利悦玺49栋101号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系13922306018', N'2822485718643803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9057', N'2022-08-12 12:01:50', N'山东省临沂市涑河南金源分部公司 已揽收, 杨帅(18521843756) 新冠疫苗已接种', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9058', N'2022-08-12 17:38:08', N'山东省临沂市涑河南公司 已揽收, 杨帅(18521843756) 新冠疫苗已接种', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9059', N'2022-08-12 18:34:01', N'山东省临沂市涑河南公司 已打包', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9060', N'2022-08-12 19:34:49', N'山东省临沂市涑河南公司 已发出,下一站 临沂转运中心', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9061', N'2022-08-12 20:41:47', N'临沂转运中心公司 已收入', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9062', N'2022-08-12 20:45:32', N'临沂转运中心公司 已发出,下一站 苏州转运中心', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9063', N'2022-08-13 08:09:59', N'苏州转运中心公司 已收入', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9064', N'2022-08-13 08:57:41', N'苏州转运中心公司 已打包', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9065', N'2022-08-13 08:59:59', N'苏州转运中心公司 已发出', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9066', N'2022-08-13 13:27:02', N'江苏省苏州市吴中区城东公司 已收入', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9067', N'2022-08-13 18:14:25', N'江苏省苏州市吴中区城东公司 已发出,下一站 苏州转运中心', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9068', N'2022-08-14 06:24:20', N'江苏省苏州市吴中区出口加工区 已收入', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9069', N'2022-08-14 06:24:20', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。95161和185211号段的上海号码为圆通业务员专属号码', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9071', N'2022-08-14 08:15:34', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2814499946743803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9072', N'2022-08-18 16:52:08', N'江西省九江市湖口县公司 已揽收, 王东(13755235119) 新冠疫苗已接种', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9073', N'2022-08-18 18:20:48', N'江西省九江市湖口县公司 已打包', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9074', N'2022-08-18 18:27:14', N'江西省九江市湖口县公司 已发出,下一站 南昌转运中心', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9075', N'2022-08-18 21:26:56', N'南昌转运中心公司 已收入', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9076', N'2022-08-18 22:16:56', N'南昌转运中心公司 已发出', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9077', N'2022-08-19 11:33:09', N'苏州转运中心公司 已收入', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9078', N'2022-08-19 11:34:09', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9079', N'2022-08-19 12:36:50', N'江苏省苏州市吴中区出口加工区 已收入', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9080', N'2022-08-19 12:36:50', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。95161和185211号段的上海号码为圆通业务员专属号码', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9081', N'2022-08-19 13:20:04', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9082', N'2022-08-19 13:56:10', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2814501242250803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9083', N'2022-08-12 20:05:07', N'【阳江市】广东阳江江城公司业务分部已揽收', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9084', N'2022-08-12 21:22:18', N'【阳江市】订单已从广东阳江江城公司业务分部发出，准备发往广东阳江集配站', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9085', N'2022-08-12 22:03:02', N'【阳江市】订单已到达广东阳江集配站，-', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9086', N'2022-08-12 22:03:04', N'【阳江市】订单已从广东阳江集配站发出，准备发往广东中山分拨中心', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9087', N'2022-08-13 03:04:19', N'【中山市】订单已到达广东中山分拨中心', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9088', N'2022-08-13 03:19:36', N'【中山市】广东中山分拨中心已发出', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9089', N'2022-08-14 03:51:23', N'【苏州市】订单已到达江苏苏州分拨中心', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9090', N'2022-08-14 07:43:20', N'【苏州市】江苏苏州分拨中心已发出', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9091', N'2022-08-14 23:22:55', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，0512-87807144', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9092', N'2022-08-14 23:23:10', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：金琳琳，电话：18136054922正为您派送，感谢您的耐心等待', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9093', N'2022-08-14 23:23:19', N'您的订单已签收：【吴先生】签收网点【江苏苏州吴中郭巷公司】', N'2814500126207803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9094', N'2022-08-11 17:18:05', N'【临沂市】山东临沂河东伦达公司一分部已揽收', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9095', N'2022-08-11 17:27:57', N'【临沂市】订单已从山东临沂河东伦达公司一分部发出，准备发往山东临沂分拨中心', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9096', N'2022-08-11 23:02:19', N'【临沂市】订单已到达山东临沂分拨中心', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9097', N'2022-08-12 18:57:05', N'【临沂市】山东临沂分拨中心已发出', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9098', N'2022-08-13 05:05:23', N'【苏州市】订单已到达江苏苏州分拨中心', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9099', N'2022-08-13 07:00:47', N'【苏州市】江苏苏州分拨中心已发出', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9100', N'2022-08-13 08:15:29', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，0512-87807144', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9101', N'2022-08-13 08:15:33', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：李朝宣，电话：15062438748正为您派送，感谢您的耐心等待', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9102', N'2022-08-13 21:16:46', N'您的订单已签收：【吴生】签收网点【江苏苏州吴中郭巷公司】', N'2814886623202803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9103', N'2022-08-13 23:00:19', N'【温州市】安能快运温州仙岩已揽收', N'2812880016015803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9104', N'2022-08-08 19:57:00', N'东里快运揽件', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9105', N'2022-08-09 04:33:00', N'揭阳分拨中心到件', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9106', N'2022-08-11 01:54:00', N'苏州分拨中心到件', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9107', N'2022-08-11 02:51:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9108', N'2022-08-11 08:15:00', N'苏州姑苏二部到件', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9109', N'2022-08-11 09:09:00', N'苏州吴中二部到件', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9110', N'2022-08-11 09:09:00', N'苏州吴中二部派件', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9111', N'2022-08-11 09:09:00', N'电子签名签收签收', N'2807227296244803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9112', N'2022-08-15 19:02:06', N'华北金韵腾飞公司京郊KH分部-蒋雪冬（15333248547） 已揽收', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9113', N'2022-08-15 22:08:03', N'已到达 华北转运交付中心(分拨对该快件已全面消杀)', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9114', N'2022-08-15 22:13:17', N'已离开 华北转运交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9115', N'2022-08-16 20:14:54', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9116', N'2022-08-16 20:20:06', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9117', N'2022-08-17 07:57:35', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9119', N'2022-08-17 15:15:30', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9120', N'2022-08-08 18:09:28', N'【山东省市场部二十五部】已收件，扫描员【张店超超】', N'2807053056800803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9118', N'2022-08-17 11:54:39', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2808362414546803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9171', N'2022-08-05 16:51:00', N'乐清白石揽件', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9264', N'2022-07-27 21:51:49', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：李朝宣，电话：15062438748正为您派送，感谢您的耐心等待', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9365', N'2022-07-14 16:29:37', N'快件在【阜阳新界首ZX】已揽件', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9410', N'2022-07-13 07:23:02', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9411', N'2022-07-13 14:22:18', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9412', N'2022-07-13 16:49:08', N'【江苏苏州东吴公司】的派件员【尹山湖11】正在为您派件，如有疑问请联系派件员，联系电话【15995487904】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9413', N'2022-07-13 17:02:24', N'【江苏苏州东吴公司】的派件员【尹山湖11】正在为您派件，如有疑问请联系派件员，联系电话【15995487904】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9414', N'2022-07-13 20:10:36', N'已签收，签收人是【前台代签】,如有疑问请联系:15995487904,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9415', N'2022-07-06 18:04:58', N'【常州市】苏州区常州分拨营销市场部-李闫（18362238006） 已揽收', N'2740694472916803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9416', N'2022-07-06 19:28:37', N'【常州市】已到达 江苏常州分拨交付中心(分拨对该快件已全面消杀)', N'2740694472916803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9417', N'2022-07-06 19:31:00', N'【常州市】已离开 江苏常州分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2740694472916803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9418', N'2022-07-07 01:16:12', N'【苏州市】已到达 江苏苏州分拨交付中心(分拨对该快件已全面消杀)', N'2740694472916803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9419', N'2022-07-07 01:23:04', N'【苏州市】已离开 江苏苏州分拨交付中心(分拨对该快件已全面消杀)；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2740694472916803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9420', N'2022-07-07 09:10:55', N'【苏州市】江苏主城公司吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18362660490） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2740694472916803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9421', N'2022-07-07 19:43:30', N'【苏州市】您的快件已签收，签收人：本人，如有疑问请电联快递员：张佩华（18362660490），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2740694472916803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9422', N'2022-07-06 08:33:02', N'揽货成功，【扬州市】营业网点库存中', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9423', N'2022-07-06 17:17:49', N'揽货成功，【泰州市】营业网点库存中', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9424', N'2022-07-06 18:53:57', N'运输中，离开 【泰州市】营业网点 下一站 【扬州市】运输中心', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9425', N'2022-07-06 20:56:55', N'运输中，到达【扬州市】运输中心', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9426', N'2022-07-06 23:58:27', N'运输中，离开 【扬州市】运输中心 下一站 【苏州市】运输中心', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9427', N'2022-07-07 03:16:44', N'运输中，到达【苏州市】运输中心', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9428', N'2022-07-07 04:31:10', N'运输中,离开【苏州市】运输中心 发往目的地 苏州吴中区金丝港路经营分部', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9429', N'2022-07-07 07:05:45', N'已到达目的地苏州吴中区金丝港路经营分部', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9430', N'2022-07-07 15:55:22', N'派送中，德邦已开启”安全呼叫“，保护您的电话隐私，小哥今日体温正常，将佩戴口罩为您配送，也可联系小哥将包裹放置指定地点，祝您身体健康。', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9431', N'2022-07-07 16:13:20', N'【送前电联】快递员已电话联系您并确认了派送方式，如有问题，请联系快递员，感谢您的接听！', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9432', N'2022-07-07 16:14:13', N'正常签收，签收人类型：本人，如有疑问请联系：18603887153。客官，您的包裹已安全送达，戳开上方快递员评价，点亮五颗小星星，可在德邦快递微信公众号或小程序上参与“收货点好评，兑换5元优惠券”活动', N'2738706192441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9433', N'2022-07-05 20:28:36', N'山东省聊城市临清市公司 已揽收, 杨登科(13563000086) 新冠疫苗已接种', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9434', N'2022-07-05 20:41:31', N'山东省聊城市临清市公司 已打包', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9435', N'2022-07-05 21:26:36', N'山东省聊城市临清市公司 已发出,下一站 济南转运中心', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9436', N'2022-07-06 00:12:58', N'济南转运中心公司 已收入', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9437', N'2022-07-06 01:02:58', N'济南转运中心公司 已发出', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9438', N'2022-07-06 20:46:13', N'无锡转运中心公司 已收入', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9439', N'2022-07-06 20:48:39', N'无锡转运中心公司 已发出,下一站 苏州转运中心', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9440', N'2022-07-07 00:04:12', N'苏州转运中心公司 已收入', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9441', N'2022-07-07 00:47:37', N'苏州转运中心公司 已打包', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9442', N'2022-07-07 00:54:12', N'苏州转运中心公司 已发出', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9443', N'2022-07-07 02:25:37', N' 疫情暂缓派送', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9444', N'2022-07-07 07:09:25', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9445', N'2022-07-07 07:37:09', N'江苏省苏州市吴中区出口加工区 已收入', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9446', N'2022-07-07 07:37:09', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516。 185211号段上海号码为圆通业务员专属号码', N'2736322239322803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9448', N'2022-07-01 18:42:42', N'台州温岭的王清发件泽国[17306599972]已揽收', N'2731530996303803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8362', N'2022-08-19 18:38:09', N'河北省沧州市东光县公司 已揽收, 朱新颖(18521188190) 新冠疫苗已接种', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8363', N'2022-08-19 19:17:52', N'河北省沧州市东光县公司 已打包', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8364', N'2022-08-19 19:27:19', N'河北省沧州市东光县公司 已发出,下一站 肃宁转运中心', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8365', N'2022-08-20 00:29:17', N'肃宁转运中心公司 已收入', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8366', N'2022-08-20 01:19:17', N'肃宁转运中心公司 已发出', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8367', N'2022-08-20 20:56:59', N'苏州转运中心公司 已收入', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8368', N'2022-08-20 21:43:43', N'苏州转运中心公司 已打包', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8369', N'2022-08-20 21:46:59', N'苏州转运中心公司 已发出', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8370', N'2022-08-21 07:20:55', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8371', N'2022-08-21 07:33:16', N'江苏省苏州市吴中区出口加工区 已收入', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8372', N'2022-08-21 07:33:16', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:朱敏 手机号:18915538651。95161和185211号段的上海号码为圆通业务员专属号码', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8373', N'2022-08-21 10:32:59', N'延迟-不可抗力', N'2829073860875411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8374', N'2022-08-20 21:11:16', N'【金华市】浙江浦江县公司 已揽收', N'2829728450828411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8375', N'2022-08-20 22:16:13', N'【金华市】已离开 浙江浦江县公司；发往 苏州南地区包', N'2829728450828411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8376', N'2022-08-19 20:57:04', N'【广东深圳龙胜公司】的收件员【龙胜十八部5182】已收件', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8377', N'2022-08-19 23:13:34', N'快件由【广东深圳龙胜公司】发往【广东深圳宝安转运中心】', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8378', N'2022-08-20 06:19:20', N'快件已到达【广东深圳宝安转运中心】扫描员是【DWS扫描3】', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8379', N'2022-08-20 06:21:11', N'快件由【广东深圳宝安转运中心】发往【江苏苏州转运中心】', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8380', N'2022-08-21 02:52:57', N'快件已到达【江苏苏州转运中心】扫描员是【段娟妮】', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8381', N'2022-08-21 03:13:43', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8382', N'2022-08-21 08:08:54', N'快件已到达【江苏苏州东吴公司】扫描员是【江苏苏州东吴公司】', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8383', N'2022-08-21 08:55:15', N'【江苏苏州东吴公司】的派件员【王要攀】正在为您派件，如有疑问请联系派件员，联系电话【13245067939】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8384', N'2022-08-21 10:35:43', N'已签收，签收人是【门卫代签】,如有疑问请联系:13245067939,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2828059381207411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8385', N'2022-08-18 21:09:13', N'浙江省温州市苍南县宜山望里公司 已打包', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8386', N'2022-08-18 21:33:46', N'浙江省温州市苍南县宜山望里公司 已发出,下一站 温州转运中心', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8387', N'2022-08-19 00:14:47', N'温州转运中心公司 已收入', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8388', N'2022-08-19 00:16:08', N'温州转运中心公司 已发出,下一站 无锡转运中心', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8389', N'2022-08-19 09:17:47', N'无锡转运中心公司 已收入', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8390', N'2022-08-19 09:20:23', N'无锡转运中心公司 已发出,下一站 苏州转运中心', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8391', N'2022-08-19 10:56:44', N'苏州转运中心公司 已收入', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8392', N'2022-08-19 11:33:10', N'苏州转运中心公司 已打包', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8393', N'2022-08-19 11:46:44', N'苏州转运中心公司 已发出', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8394', N'2022-08-20 07:30:19', N'江苏省苏州市吴中区出口加工区 已收入', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8395', N'2022-08-20 07:30:19', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:朱敏 手机号:18915538651。95161和185211号段的上海号码为圆通业务员专属号码', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8396', N'2022-08-20 07:40:38', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8397', N'2022-08-20 10:51:12', N'延迟-不可抗力', N'2828354330323411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8398', N'2022-08-18 17:58:57', N'义乌青岩刘的直营客户（范浩浩）[15325958069]已揽收', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8399', N'2022-08-18 19:58:07', N'快件离开义乌青岩刘已发往', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8400', N'2022-08-18 23:03:51', N'快件已到达义乌中转部（中转中心已对该快件做全面消杀）', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8401', N'2022-08-18 23:07:47', N'快件离开义乌中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8402', N'2022-08-19 08:20:01', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8403', N'2022-08-19 08:50:46', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8404', N'2022-08-19 13:53:14', N'快件已到达苏州郭巷尹东分部', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8405', N'2022-08-19 13:53:15', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8406', N'2022-08-19 16:01:47', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2828701263071411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8407', N'2022-08-21 00:41:19', N'新花都狮岭的刘秋余承包区[18676660046]已揽收', N'2828622207079411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8408', N'2022-08-21 00:42:59', N'快件离开新花都狮岭已发往苏州中转部', N'2828622207079411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8409', N'2022-08-21 02:54:45', N'快件已到达广州中心（中转中心已对该快件做全面消杀）', N'2828622207079411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8410', N'2022-08-21 02:56:57', N'快件离开广州中心已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2828622207079411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9172', N'2022-08-05 21:18:00', N'温州分拨中心到件', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9173', N'2022-08-05 21:21:00', N'温州分拨中心发件,下一网点苏州分拨中心', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9174', N'2022-08-06 09:48:00', N'苏州分拨中心到件', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9175', N'2022-08-06 10:57:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9176', N'2022-08-06 12:09:00', N'苏州吴中二部到件', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9177', N'2022-08-06 12:09:00', N'苏州吴中二部派件', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9178', N'2022-08-06 12:51:00', N'苏州姑苏二部到件', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9179', N'2022-08-06 14:45:00', N'电子签名签收签收', N'2800232568913803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9180', N'2022-08-07 17:31:28', N'泰州市,顺心捷达,【SX】泰州姜堰名诚链条店开始承运', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9181', N'2022-08-07 18:14:25', N'快件在【SX】泰州姜堰名诚链条店,开始发往【SX】泰州集配站', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9182', N'2022-08-07 18:17:45', N'已到达【SX】泰州集配站', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9183', N'2022-08-08 23:01:52', N'快件在【SX】泰州集配站,开始发往【SX】无锡枢纽', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9184', N'2022-08-09 01:49:23', N'已到达【SX】无锡枢纽', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9185', N'2022-08-09 07:57:29', N'快件在【SX】无锡枢纽,开始发往【SX】苏州吴中郭巷店', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9186', N'2022-08-09 09:43:57', N'已到达【SX】苏州吴中郭巷店,电话:17715592252', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9187', N'2022-08-09 09:44:56', N'送货途中,送货人姓名:戴强,电话号码:17715592252', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9188', N'2022-08-09 15:20:19', N'货物已正常签收，签收人:吴先生', N'2801863371632803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9189', N'2022-08-05 19:09:07', N'【金华市】安能快运义乌佛堂镇已揽收', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9190', N'2022-08-05 20:41:52', N'【金华市】订单已从义乌佛堂镇发出，准备发往金华分拨中心', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9191', N'2022-08-05 21:43:40', N'【金华市】订单已到达金华分拨中心', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9192', N'2022-08-05 22:29:56', N'【金华市】订单已从金华分拨中心发出，准备发往苏州市区分拨中心', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9193', N'2022-08-06 07:35:23', N'【苏州市】订单已到达苏州市区分拨中心', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9194', N'2022-08-08 06:46:05', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9195', N'2022-08-10 23:25:02', N'【苏州市】订单已到达苏州姑苏金鸡湖S,15250453166', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9196', N'2022-08-10 23:26:02', N'【苏州市】苏州姑苏金鸡湖S:洪劲松15250453166正为您运送，感谢您的耐心等待', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9197', N'2022-08-10 23:30:05', N'您的订单已被签收，如有疑问请电联：15250453166，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2801858439338803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9198', N'2022-08-11 20:24:00', N'顺丰速运 已收取快件', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9199', N'2022-08-11 20:26:00', N'顺丰速运 已收取快件', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9200', N'2022-08-11 20:51:00', N'快件在【金华永康普狮工贸营业点】完成分拣,准备发往 【金华金东中转场】', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9201', N'2022-08-11 21:24:00', N'快件已发车', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9202', N'2022-08-11 23:30:00', N'快件到达 【金华金东中转场】', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9203', N'2022-08-12 00:34:00', N'快件在【金华金东中转场】完成分拣,准备发往 【苏州甪直中转场】', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9204', N'2022-08-12 06:16:00', N'快件到达 【苏州甪直中转场】', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9205', N'2022-08-12 06:53:00', N'快件在【苏州甪直中转场】完成分拣,准备发往 【苏州吴中双湾锦园营业点】', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9206', N'2022-08-12 07:33:00', N'快件已发车', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9207', N'2022-08-12 08:37:00', N'快件到达 【苏州吴中双湾锦园营业点】', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9208', N'2022-08-12 10:13:00', N'快件交给孙令森，正在派送途中（联系电话：15862397042，顺丰已开启“安全呼叫”保护您的电话隐私,请放心接听！）（主单总件数：1件）', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9209', N'2022-08-12 11:06:00', N'您的快件已签收，如有疑问请电联快递员【孙令森，电话：15862397042】。疫情期间顺丰每日对网点消毒、快递员每日测温、配戴口罩，感谢您使用顺丰，期待再次为您服务。（主单总件数：1件）', N'2799770294469803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9210', N'2022-07-30 19:10:16', N'浙江省金华市义乌市童店建包仓公司 已揽收, 凌盟(18868580890) 新冠疫苗已接种', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9211', N'2022-07-30 19:10:19', N'浙江省金华市义乌市童店建包仓公司 已打包', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9212', N'2022-07-30 19:42:07', N'浙江省金华市义乌市福田公司 已揽收, 凌盟(18868580890) 新冠疫苗已接种', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9213', N'2022-07-30 19:56:57', N'浙江省金华市义乌市童店建包仓公司 已发出,下一站 义乌转运中心直营', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9214', N'2022-07-30 21:12:30', N'义乌转运中心直营公司 已收入', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9215', N'2022-07-30 21:14:54', N'义乌转运中心直营公司 已发出,下一站 上虞转运中心', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9216', N'2022-07-31 02:48:32', N'上虞转运中心公司 已收入', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9217', N'2022-07-31 03:02:47', N'上虞转运中心公司 已打包', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9218', N'2022-07-31 03:15:48', N'上虞转运中心公司 已发出,下一站 浙江省宁波市余姚市', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9219', N'2022-07-31 09:44:51', N'浙江省宁波市余姚市 已收入', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9220', N'2022-07-31 09:44:51', N'浙江省宁波市余姚市公司 派件中 派件员:韩金金 手机号:18521863686。 185211号段上海号码为圆通业务员专属号码', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9221', N'2022-07-31 11:19:24', N'您的快件已暂存至宁波余姚马渚黄泥堰路197号店菜鸟驿站，请凭取货码及时领取。如有疑问请联系19957861164', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9222', N'2022-08-02 18:04:06', N'您已在宁波余姚马渚黄泥堰路197号店完成取件，感谢使用菜鸟驿站，期待再次为您服务。', N'2784955286551803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9265', N'2022-07-27 21:52:15', N'您的订单已签收：【吴先生】签收网点【江苏苏州吴中郭巷公司】', N'2773368865663803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9266', N'2022-07-24 19:01:52', N'【镇江市】江苏丹阳东部公司已揽收', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9267', N'2022-07-24 19:03:33', N'【镇江市】订单已从江苏丹阳东部公司发出，准备发往江苏常州分拨中心', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9268', N'2022-07-24 22:17:53', N'【常州市】订单已到达江苏常州分拨中心', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9269', N'2022-07-24 23:45:53', N'【常州市】江苏常州分拨中心已发出', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9270', N'2022-07-25 05:25:10', N'【苏州市】订单已到达江苏苏州分拨中心', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9271', N'2022-07-25 05:49:42', N'【苏州市】江苏苏州分拨中心已发出', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9272', N'2022-07-25 20:20:24', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，0512-87807144', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9273', N'2022-07-25 20:21:48', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：李朝宣，电话：15062438748正为您派送，感谢您的耐心等待', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9274', N'2022-07-25 20:21:55', N'您的订单已签收：【吴先生】签收网点【江苏苏州吴中郭巷公司】', N'2773189909529803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9275', N'2022-07-31 18:18:47', N'快件在【温岭六部温岭来德】已揽件', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9276', N'2022-07-31 20:29:38', N'快件已到达【台州分拨】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9277', N'2022-07-31 21:22:39', N'快件在【台州分拨】已装车, 准备发往【苏州分拨】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9278', N'2022-08-01 05:47:18', N'快件已到达【苏州分拨】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9279', N'2022-08-01 06:09:25', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9280', N'2022-08-01 08:05:23', N'快件已到达【苏州吴中三部】, 站点电话【15062429392】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9281', N'2022-08-01 09:37:33', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9282', N'2022-08-01 09:39:11', N'快件在【苏州吴中三部ZX】做了派件,派件员【位振】【15150121815】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9283', N'2022-08-01 14:43:23', N'已签收(40/40)。有问题请联系派件员位振15150121815，投诉电话02566970060-76103。风雨无阻送货忙，客户服务记心上。好评激励我向上，赏个五星好不好？【请在评价派件员处帮忙点亮五颗星星哦~】', N'2773837947412803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9284', N'2022-07-23 21:32:24', N'【金华市】壹米滴答【兰江西营业部E】被揽收', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9285', N'2022-07-23 22:54:37', N'【金华市】壹米滴答【金华壹米优速分拨】进行卸车扫描', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9286', N'2022-07-23 23:38:37', N'【金华市】壹米滴答【金华壹米优速分拨】进行装车扫描', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9287', N'2022-07-24 00:06:50', N'【金华市】壹米滴答【金华壹米优速分拨】进行已发车', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9288', N'2022-07-24 04:08:01', N'【杭州市】货物已到达【杭州壹米汇森汇霖分拨】', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9289', N'2022-07-24 04:36:38', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行卸车扫描', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9290', N'2022-07-24 23:37:44', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行装车扫描', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9291', N'2022-07-25 00:30:53', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行已发车', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9292', N'2022-07-25 05:07:21', N'【苏州市】货物已到达【苏州平望分拨】', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9293', N'2022-07-25 07:14:16', N'【苏州市】货物已到达【苏州平望分拨】', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9294', N'2022-07-25 07:43:38', N'【苏州市】壹米滴答【苏州平望分拨】进行装车扫描', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9295', N'2022-07-25 08:34:12', N'【苏州市】壹米滴答【苏州平望分拨】进行已发车', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9296', N'2022-07-25 09:08:38', N'【苏州市】货物已到达【吴中郭巷营业部】', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9297', N'2022-07-25 16:42:03', N'【苏州市】吴中郭巷营业部：邵镇(15050292749)正在为您派件', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9298', N'2022-07-25 16:43:03', N'快件已被签收，签收人:吴先森', N'2768310216824803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9299', N'2022-07-23 16:15:16', N'绍兴市,顺心捷达,【SX】绍兴诸暨店口弘毅店开始承运', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9300', N'2022-07-23 20:29:37', N'快件在【SX】绍兴诸暨店口弘毅店,开始发往【SX】萧山枢纽', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9301', N'2022-07-23 22:42:57', N'已到达【SX】萧山枢纽', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9302', N'2022-07-24 00:19:05', N'快件在【SX】萧山枢纽,开始发往【SX】无锡枢纽', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9303', N'2022-07-24 05:06:42', N'已到达【SX】无锡枢纽', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9304', N'2022-07-24 07:43:37', N'快件在【SX】无锡枢纽,开始发往【SX】苏州吴中郭巷店', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9305', N'2022-07-24 09:57:36', N'已到达【SX】苏州吴中郭巷店,电话:17715592252', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9306', N'2022-07-24 09:58:11', N'送货途中,送货人姓名:戴强,电话号码:13656214501', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9307', N'2022-07-25 13:24:32', N'送货途中,送货人姓名:戴强,电话号码:13656214501', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9308', N'2022-07-25 13:24:49', N'货物已正常签收，签收人:吴先生', N'2768134611547803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9309', N'2022-07-18 20:27:24', N'【金华市】壹米滴答【廿三里北营业部E】被揽收', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9310', N'2022-07-18 22:29:35', N'【金华市】壹米滴答【金华壹米优速分拨】进行卸车扫描', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9311', N'2022-07-18 23:35:01', N'【金华市】壹米滴答【金华壹米优速分拨】进行装车扫描', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9312', N'2022-07-19 00:09:38', N'【金华市】壹米滴答【金华壹米优速分拨】进行已发车', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9313', N'2022-07-19 03:07:42', N'【杭州市】货物已到达【杭州壹米汇森汇霖分拨】', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9314', N'2022-07-19 04:47:02', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行卸车扫描', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9315', N'2022-07-19 23:06:43', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行装车扫描', N'2761497829622803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9366', N'2022-07-14 16:30:00', N'快件由【阜阳新界首】发往【蚌埠分拨】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9367', N'2022-07-14 19:54:57', N'快件已到达【蚌埠分拨】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9368', N'2022-07-14 19:59:23', N'快件在【蚌埠分拨】已装车,准备发往【苏州分拨】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9369', N'2022-07-15 10:00:49', N'快件已到达【苏州分拨】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9370', N'2022-07-15 10:09:48', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9371', N'2022-07-16 08:28:11', N'快件已到达【苏州吴中三部】, 站点电话【15062429392】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9372', N'2022-07-16 13:12:08', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9373', N'2022-07-16 13:12:11', N'快件在【苏州吴中三部ZX】做了派件,派件员【小孙】【17600252324】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9374', N'2022-07-16 13:12:21', N'已签收(6/6)。有问题请联系派件员小孙17600252324，投诉电话02566970060-76103。风雨无阻送货忙，客户服务记心上。好评激励我向上，赏个五星好不好？【请在评价派件员处帮忙点亮五颗星星哦~】', N'2752929648011803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9375', N'2022-07-12 17:24:57', N'【申通国际温州市场二部】的收件员【林文乒】已收件', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9376', N'2022-07-12 22:14:43', N'快件由【浙江苍南公司】发往【浙江杭州转运中心】', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9377', N'2022-07-13 03:55:00', N'快件已到达【浙江杭州转运中心】扫描员是【出港卸货12号】', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9378', N'2022-07-13 03:57:29', N'快件由【浙江杭州转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9379', N'2022-07-13 08:18:09', N'快件已到达【江苏苏州转运中心】扫描员是【段娟妮】', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9380', N'2022-07-13 08:39:04', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9381', N'2022-07-13 14:28:02', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9382', N'2022-07-13 15:02:46', N'【江苏苏州东吴公司】的派件员【王跃】正在为您派件，如有疑问请联系派件员，联系电话【15250471157】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9383', N'2022-07-13 16:18:38', N'已签收，签收人是【门卫代签】,如有疑问请联系:15036897750,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2754117362923803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9384', N'2022-07-12 20:21:53', N'浙江省温州市乐清市乐成镇公司 已打包', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9385', N'2022-07-12 20:43:50', N'浙江省温州市乐清市乐成镇公司 已发出,下一站 温州转运中心', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9386', N'2022-07-12 22:22:53', N'温州转运中心公司 已收入', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9387', N'2022-07-12 22:24:17', N'温州转运中心公司 已发出,下一站 苏州转运中心', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9388', N'2022-07-13 09:02:17', N'苏州转运中心公司 已收入', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9389', N'2022-07-13 09:52:17', N'苏州转运中心公司 已发出', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9390', N'2022-07-13 10:18:06', N'苏州转运中心公司 已打包', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9391', N'2022-07-13 10:45:59', N' 疫情暂缓派送', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9392', N'2022-07-13 13:02:32', N'江苏省苏州市吴中区出口加工区 已收入', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9393', N'2022-07-13 13:02:32', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516。 185211号段上海号码为圆通业务员专属号码', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9394', N'2022-07-13 15:19:54', N'延迟-不可抗力', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9395', N'2022-07-13 23:13:36', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：15077953516，投诉电话：18577620029。。 快件已送达，如有疑问请联系：15077953516，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9396', N'2022-07-14 08:01:29', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516。 185211号段上海号码为圆通业务员专属号码', N'2754159195807803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9397', N'2022-07-14 19:14:02', N'【温州市】浙江乐清市虹桥公司-郑微珠（18958993363） 已揽收，快递小哥已接种疫苗，请放心收寄快递', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9398', N'2022-07-14 19:47:34', N'【温州市】已离开 浙江乐清市虹桥公司；发往 苏州南地区包', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9399', N'2022-07-14 23:42:53', N'【台州市】已到达 浙江台州分拨交付中心(分拨对该快件已全面消杀)', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9400', N'2022-07-14 23:45:16', N'【台州市】已离开 浙江台州分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9401', N'2022-07-15 07:42:48', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9402', N'2022-07-15 08:05:36', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9403', N'2022-07-17 17:33:34', N'【苏州市】江苏主城公司吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9404', N'2022-07-17 19:27:42', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2745296136274803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9405', N'2022-07-12 21:56:22', N'【浙江永康公司】的收件员【小件收件扫描14】已收件', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9406', N'2022-07-12 22:16:22', N'快件由【浙江永康公司】发往【浙江金华转运中心】', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9407', N'2022-07-12 23:49:59', N'快件已到达【浙江金华转运中心】扫描员是【李伟】', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9408', N'2022-07-13 00:27:47', N'快件由【浙江金华转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2746200025441803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8412', N'2022-08-18 22:05:22', N'快件由【浙江东阳公司】发往【浙江金华转运中心】', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8413', N'2022-08-19 02:11:11', N'快件已到达【浙江金华转运中心】扫描员是【占长康】', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8414', N'2022-08-19 02:14:16', N'快件由【浙江金华转运中心】发往【江苏江阴转运中心】，包裹已消杀', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8415', N'2022-08-19 07:48:09', N'快件已到达【江苏江阴转运中心】扫描员是【史如礼】', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8416', N'2022-08-19 07:52:07', N'快件由【江苏江阴转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8417', N'2022-08-19 23:54:02', N'快件已到达【江苏苏州转运中心】扫描员是【贾贝贝】', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8418', N'2022-08-20 00:00:34', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8419', N'2022-08-20 07:44:15', N'快件已到达【江苏苏州东吴公司】扫描员是【江苏苏州东吴公司】', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8420', N'2022-08-20 17:02:34', N'【江苏苏州东吴公司】的派件员【尹山湖11】正在为您派件，如有疑问请联系派件员，联系电话【15995487904】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8421', N'2022-08-20 17:31:58', N'【江苏苏州东吴公司】的派件员【江苏苏州东吴公司】正在为您派件，如有疑问请联系派件员，联系电话【18994388380】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8422', N'2022-08-20 21:46:05', N'【江苏苏州东吴公司】已进行【疑难件】扫描，疑难件原因【消费者原因】，扫描员【江苏苏州东吴公司】', N'2827828693860411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8423', N'2022-08-19 20:25:11', N'河北省廊坊市文安县公司,已揽收', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8424', N'2022-08-19 20:40:28', N'华北转运中心公司,已收入', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8425', N'2022-08-19 20:44:39', N'华北转运中心公司,已发出', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8426', N'2022-08-20 23:49:43', N'苏州转运中心公司,已收入', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8427', N'2022-08-20 23:58:39', N'苏州转运中心公司,已发出', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8428', N'2022-08-21 07:13:29', N'江苏省苏州市吴中区出口加工区公司,已收入', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8429', N'2022-08-21 07:31:11', N'江苏省苏州市吴中区出口加工区公司,派件中', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8430', N'2022-08-21 10:33:39', N'江苏省苏州市吴中区出口加工区公司,', N'2827733761447411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8431', N'2022-08-18 21:40:42', N'【广东深圳龙胜公司】的收件员【龙胜十八部5182】已收件', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8432', N'2022-08-18 23:29:50', N'快件由【广东深圳龙胜公司】发往【广东深圳宝安转运中心】', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8433', N'2022-08-19 05:56:56', N'快件已到达【广东深圳宝安转运中心】扫描员是【DWS扫描13】', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8434', N'2022-08-19 05:59:44', N'快件由【广东深圳宝安转运中心】发往【江苏苏州转运中心】', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8435', N'2022-08-20 04:38:58', N'快件已到达【江苏苏州转运中心】扫描员是【李红】', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8436', N'2022-08-20 04:52:24', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8437', N'2022-08-20 09:53:24', N'快件已到达【江苏苏州东吴公司】扫描员是【王要攀】', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8438', N'2022-08-20 10:03:04', N'【江苏苏州东吴公司】的派件员【王要攀】正在为您派件，如有疑问请联系派件员，联系电话【13245067939】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8439', N'2022-08-20 11:29:08', N'已签收，签收人是【门卫代签】,如有疑问请联系:13245067939,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2826310212653411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8440', N'2022-08-18 22:00:49', N'【金华市】浙江金华金义都市新区公司 已揽收', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8441', N'2022-08-18 22:28:26', N'【金华市】已离开 浙江金华金义都市新区公司；发往 苏州南地区包', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8442', N'2022-08-19 02:10:31', N'【金华市】已到达 浙江义乌分拨交付中心', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8443', N'2022-08-19 02:11:39', N'【金华市】已离开 浙江义乌分拨交付中心；发往 江苏苏州分拨交付中心', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8444', N'2022-08-19 13:35:22', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8445', N'2022-08-19 15:00:29', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8446', N'2022-08-20 06:42:52', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8447', N'2022-08-20 08:40:59', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8448', N'2022-08-20 14:05:48', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2826813639483411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8449', N'2022-08-17 20:47:57', N'浦江黄宅的李兴淼[15188076150]已揽收', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8450', N'2022-08-17 21:09:14', N'快件离开浦江黄宅已发往苏州中转部', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8451', N'2022-08-18 04:18:34', N'快件已到达萧山中转部（中转中心已对该快件做全面消杀）', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8452', N'2022-08-18 04:20:46', N'快件离开萧山中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8453', N'2022-08-18 09:24:01', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8454', N'2022-08-18 09:32:04', N'快件离开苏州中转部已发往苏州郭巷尹东分部（中转中心已对该快件做全面消杀）', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8455', N'2022-08-18 13:51:16', N'快件已到达苏州吴中九部', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8456', N'2022-08-18 14:29:17', N'快件已到达苏州郭巷尹东分部', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8497', N'2022-08-17 11:54:08', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8545', N'2022-08-14 07:30:09', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8627', N'2022-08-12 21:05:37', N'广东省佛山市南海桂城分部公司 已揽收, 乔晓红(18521190867)', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8715', N'2022-08-10 03:03:48', N'【广州市】已离开 华南枢纽分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8797', N'2022-07-22 18:47:50', N'【宁波市】浙江主城区公司宁波鄞州区首南服务部-刘玉霞（18906616688） 已揽收，快递小哥已接种疫苗，请放心收寄快递', N'2771981496284411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8883', N'2022-06-29 10:31:06', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员15077953516', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8884', N'2022-06-29 12:05:56', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2726141293873411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8885', N'2022-06-28 20:45:02', N'广东省汕头市金平区高新区公司 已打包', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8886', N'2022-06-28 20:57:18', N'广东省汕头市金平区高新区公司 已发出,下一站 揭阳转运中心', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8887', N'2022-06-29 00:55:52', N'揭阳转运中心公司 已收入', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8888', N'2022-06-29 00:57:35', N'揭阳转运中心公司 已发出,下一站 苏州转运中心', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8889', N'2022-06-30 00:15:57', N'苏州转运中心公司 已收入', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8890', N'2022-06-30 01:05:57', N'苏州转运中心公司 已发出', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8891', N'2022-06-30 04:13:53', N'苏州转运中心公司 已打包', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8892', N'2022-06-30 07:19:33', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8893', N'2022-06-30 07:48:41', N'江苏省苏州市吴中区出口加工区 已收入', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8894', N'2022-06-30 07:48:41', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516圆通快递小哥每天已测体温，请放心收寄快递。 185211号段上海号码为圆通业务员专属号码', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8895', N'2022-06-30 10:25:27', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员15077953516', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8896', N'2022-06-30 12:04:15', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2725106580821411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8897', N'2022-06-18 00:20:48', N'河北省保定市高碑店市白沟镇公司 已揽收, 冯亚杰(13488888303)新冠疫苗已接种', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8898', N'2022-06-18 00:21:48', N'河北省保定市高碑店市白沟镇公司 已打包', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8899', N'2022-06-18 00:42:41', N'河北省保定市高碑店市白沟镇公司 已发出,下一站 华北转运中心', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8900', N'2022-06-18 03:13:12', N'华北转运中心公司 已收入', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8901', N'2022-06-18 03:19:35', N'华北转运中心公司 已发出,下一站 苏州转运中心', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8902', N'2022-06-19 02:03:50', N'苏州转运中心公司 已收入', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8903', N'2022-06-19 02:53:50', N'苏州转运中心公司 已发出', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8904', N'2022-06-19 07:11:18', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8905', N'2022-06-19 07:41:01', N'江苏省苏州市吴中区出口加工区 已收入', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8906', N'2022-06-19 07:41:01', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516圆通快递小哥每天已测体温，请放心收寄快递。 185211号段上海号码为圆通业务员专属号码', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8907', N'2022-06-19 10:53:47', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员15077953516', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8908', N'2022-06-20 08:52:43', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2702483894420411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8909', N'2022-06-17 17:04:14', N'山东省临沂市河东区公司 已揽收, 周庆雷(13791575380)新冠疫苗已接种', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8910', N'2022-06-17 17:27:47', N'山东省临沂市河东区公司 已打包', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8911', N'2022-06-17 17:58:31', N'山东省临沂市河东区公司 已发出,下一站 临沂转运中心', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8912', N'2022-06-17 19:33:41', N'临沂转运中心公司 已收入', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8913', N'2022-06-17 19:37:23', N'临沂转运中心公司 已发出,下一站 苏州转运中心', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8914', N'2022-06-18 09:21:41', N'苏州转运中心公司 已收入', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8915', N'2022-06-18 10:11:41', N'苏州转运中心公司 已发出', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8916', N'2022-06-19 07:29:57', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8917', N'2022-06-19 07:41:04', N'江苏省苏州市吴中区出口加工区 已收入', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8918', N'2022-06-19 07:41:04', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:方国宝 手机号:15077953516圆通快递小哥每天已测体温，请放心收寄快递。 185211号段上海号码为圆通业务员专属号码', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8919', N'2022-06-19 10:53:59', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员15077953516', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8920', N'2022-06-20 08:53:21', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2698554780065411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8921', N'2022-06-16 21:09:07', N'义乌鹏城的陈学超[18058960115]已揽收', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8922', N'2022-06-16 21:17:12', N'快件离开义乌鹏城已发往苏州中转部', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8923', N'2022-06-16 23:14:05', N'快件已到达义乌中转部', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8924', N'2022-06-16 23:16:52', N'快件离开义乌中转部已发往苏州中转部', N'2699788538326411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8458', N'2022-08-18 16:31:27', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：17715515238, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2825160480055411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8459', N'2022-08-17 22:47:54', N'浙江省金华市金东区低田公司 已揽收, 叶丽娟(15397550630) 新冠疫苗已接种', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8460', N'2022-08-17 22:48:25', N'浙江省金华市金东区低田公司 已打包', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8461', N'2022-08-17 23:41:47', N'浙江省金华市金东区低田公司 已发出,下一站 金华转运中心', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8462', N'2022-08-18 02:46:34', N'金华转运中心公司 已收入', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8463', N'2022-08-18 02:48:41', N'金华转运中心公司 已发出,下一站 深圳转运中心', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8464', N'2022-08-19 03:57:41', N'深圳转运中心公司 已收入', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8465', N'2022-08-19 04:02:31', N'深圳转运中心公司 已发出,下一站 东莞转运中心', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8466', N'2022-08-19 08:03:10', N'东莞转运中心公司 已收入', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8467', N'2022-08-19 08:53:10', N'东莞转运中心公司 已发出', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8468', N'2022-08-19 09:53:23', N'东莞转运中心公司 已打包', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8469', N'2022-08-19 13:58:57', N'广东省东莞市常平 已收入', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8470', N'2022-08-19 13:58:57', N'广东省东莞市常平公司 派件中 派件员:刘掷福 手机号:13143213454 新冠疫苗已接种。95161和185211号段的上海号码为圆通业务员专属号码', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8471', N'2022-08-19 14:36:41', N'广东省东莞市常平公司 已收入', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8472', N'2022-08-19 16:03:23', N'广东省东莞市常平公司 已签收 签收人：26。 快件已送达，如有疑问请联系：13143213454，投诉电话：0769-39013300。疫情期间圆通每天对网点多次消毒，快递小哥新冠疫苗已接种，每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2826657183093411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8473', N'2022-08-18 19:29:13', N'【连云港市】江苏灌云县公司-黄继欢（13775396379） 已揽收', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8474', N'2022-08-18 22:44:31', N'已到达 江苏宝应分拨交付中心(分拨对该快件已全面消杀)', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8475', N'2022-08-18 22:47:46', N'已离开 江苏宝应分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8476', N'2022-08-19 06:54:40', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8477', N'2022-08-19 07:01:22', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8478', N'2022-08-19 13:44:59', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8479', N'2022-08-19 14:53:46', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8480', N'2022-08-19 20:20:49', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2825735005445411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8481', N'2022-08-16 22:55:02', N'【福建泉州公司】的收件员【王振平】已收件', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8482', N'2022-08-16 22:55:12', N'快件由【福建泉州公司】发往【福建泉州转运中心】', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8483', N'2022-08-17 01:12:52', N'快件已到达【福建泉州转运中心】扫描员是【于晓雪】', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8484', N'2022-08-17 01:16:12', N'快件由【福建泉州转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8485', N'2022-08-17 23:59:56', N'快件已到达【江苏苏州转运中心】扫描员是【李红】', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8486', N'2022-08-18 00:11:40', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8487', N'2022-08-18 07:32:13', N'快件已到达【江苏苏州东吴公司】扫描员是【江苏苏州东吴公司】', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8488', N'2022-08-18 12:46:04', N'【江苏苏州东吴公司】的派件员【尹山湖11】正在为您派件，如有疑问请联系派件员，联系电话【15995487904】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8489', N'2022-08-18 13:05:44', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员18994388380', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8490', N'2022-08-19 16:52:20', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2822734872766411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8491', N'2022-08-15 18:49:38', N'【佛山市】广东佛山黄岐服务部-公司账号 已揽收', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8492', N'2022-08-15 22:39:03', N'【佛山市】已到达 广东佛山分拨交付中心(分拨对该快件已全面消杀)', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8493', N'2022-08-15 22:47:36', N'【佛山市】已离开 广东佛山分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8494', N'2022-08-17 01:04:39', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8495', N'2022-08-17 01:10:01', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8496', N'2022-08-17 07:59:25', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8498', N'2022-08-17 15:15:44', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2822007315026411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8499', N'2022-08-13 11:54:38', N'佛山南庄的南海客户庞允院[15875321697]已揽收', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8500', N'2022-08-14 03:41:39', N'快件离开佛山南庄已发往苏州中转部', N'2815456680582411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8546', N'2022-08-14 08:16:05', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2816390198513411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8547', N'2022-08-13 04:29:01', N'广州夏茅的黄-赖聪[19527699717]已揽收', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8548', N'2022-08-13 06:12:17', N'快件离开广州夏茅已发往广州中心', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8549', N'2022-08-13 08:22:33', N'快件已到达广州中心（中转中心已对该快件做全面消杀）', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8550', N'2022-08-13 20:53:15', N'快件离开广州中心已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8551', N'2022-08-15 02:10:17', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8552', N'2022-08-15 02:54:47', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8553', N'2022-08-15 07:31:00', N'快件已到达苏州吴中九部', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8554', N'2022-08-15 07:36:38', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[17715515238]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8555', N'2022-08-15 11:24:39', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员18551441704', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8556', N'2022-08-15 13:14:56', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2815955569448411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8557', N'2022-08-18 17:11:47', N'义乌义亭的芮俊朋[15225578485]已揽收', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8558', N'2022-08-18 17:11:52', N'快件离开义乌义亭已发往义乌中转部', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8559', N'2022-08-18 20:37:33', N'快件已到达义乌中转部（中转中心已对该快件做全面消杀）', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8560', N'2022-08-18 20:40:33', N'快件离开义乌中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8561', N'2022-08-19 04:55:22', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8562', N'2022-08-19 08:16:08', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8563', N'2022-08-19 13:54:38', N'快件已到达苏州郭巷尹东分部', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8564', N'2022-08-19 13:54:39', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8565', N'2022-08-19 16:01:47', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2815921009631411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8566', N'2022-08-12 20:19:56', N'汕头岐山的操作工卢月亮[17817089147]已揽收', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8567', N'2022-08-12 20:21:54', N'快件离开汕头岐山已发往潮汕中心', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8568', N'2022-08-12 22:55:15', N'快件已到达潮汕中心（中转中心已对该快件做全面消杀）', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8569', N'2022-08-12 22:57:20', N'快件离开潮汕中心已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8570', N'2022-08-14 00:41:10', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8571', N'2022-08-14 02:19:06', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8572', N'2022-08-14 07:29:59', N'快件已到达苏州吴中九部', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8573', N'2022-08-14 07:35:53', N'苏州郭巷尹东分部（0512-65980354）的夏滨滨[15962108922]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8574', N'2022-08-14 10:39:24', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：15962108922, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2815030944109411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8575', N'2022-08-18 21:29:20', N'【金华市】浙江义乌新光公司 已揽收', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8576', N'2022-08-19 15:52:22', N'【金华市】已到达 浙江义乌分拨交付中心(分拨对该快件已全面消杀)', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8577', N'2022-08-19 15:55:35', N'【金华市】已离开 浙江义乌分拨交付中心(分拨对该快件已全面消杀)；发往 义乌分拨中心（回皮）', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8578', N'2022-08-20 03:26:32', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8579', N'2022-08-20 03:32:17', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8580', N'2022-08-20 06:44:49', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8581', N'2022-08-20 11:08:45', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8582', N'2022-08-20 21:01:10', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2815843465035411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8583', N'2022-08-13 19:45:33', N'【连云港市】江苏灌云县公司-黄继欢（13775396379） 已揽收', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8584', N'2022-08-13 22:38:10', N'已到达 江苏宝应分拨交付中心(分拨对该快件已全面消杀)', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8585', N'2022-08-13 22:42:10', N'已离开 江苏宝应分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8586', N'2022-08-14 07:30:16', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8587', N'2022-08-14 07:40:25', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2814982704200411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8628', N'2022-08-12 21:20:53', N'广东省佛山市桂城区平洲公司 已收入', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8629', N'2022-08-12 23:42:54', N'佛山转运中心公司 已收入', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8630', N'2022-08-12 23:44:49', N'佛山转运中心公司 已发出,下一站 无锡转运中心', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8631', N'2022-08-14 04:59:45', N'苏州转运中心公司 已收入', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8632', N'2022-08-14 05:46:21', N'苏州转运中心公司 已发出,下一站 江苏省苏州市吴中区出口加工区', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8633', N'2022-08-14 12:36:28', N'江苏省苏州市吴中区出口加工区 已收入', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8634', N'2022-08-14 12:36:28', N'江苏省苏州市吴中区出口加工区公司 派件中 派件员:李传祺 手机号:19955492812。95161和185211号段的上海号码为圆通业务员专属号码', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8635', N'2022-08-14 13:19:43', N'江苏省苏州市吴中区出口加工区公司 已收入', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8636', N'2022-08-14 13:40:01', N'江苏省苏州市吴中区出口加工区公司 已签收 签收人：门卫。 快件已送达，如有疑问请联系：19955492812，投诉电话：18577620029。疫情期间圆通每天对网点多次消毒，快递小哥每天测量体温，佩戴口罩。举手之劳勿忘送件人，请在【评价快递员】处赐予我们五星好评~', N'2814621012885411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8637', N'2022-08-12 17:59:13', N'【金华市】浙江金华金义都市新区公司 已揽收', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8638', N'2022-08-12 18:01:00', N'【金华市】已离开 浙江金华金义都市新区公司；发往 苏州南地区包', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8639', N'2022-08-12 23:49:13', N'【嘉兴市】已到达 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8640', N'2022-08-12 23:51:23', N'【嘉兴市】已离开 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8641', N'2022-08-13 04:02:58', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8642', N'2022-08-13 09:50:56', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏吴中新郭巷服务部出口加工寄存', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8643', N'2022-08-16 01:26:47', N'【乌鲁木齐市】已到达 新疆乌鲁木齐分拨交付中心', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8644', N'2022-08-16 03:33:02', N'【乌鲁木齐市】已离开 新疆乌鲁木齐分拨交付中心；发往 陕西西安分拨交付中心', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8645', N'2022-08-18 00:44:32', N'【西安市】已到达 陕西西安分拨交付中心(分拨对该快件已全面消杀)', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8646', N'2022-08-18 02:47:09', N'【西安市】已离开 陕西西安分拨交付中心(分拨对该快件已全面消杀)；发往 苏州南地区包', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8647', N'2022-08-19 07:52:24', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8648', N'2022-08-19 10:47:46', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8649', N'2022-08-19 23:04:25', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2816048775480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8650', N'2022-08-12 21:45:07', N'【金华市】浙江浦江县公司 已揽收', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8651', N'2022-08-12 21:46:50', N'【金华市】已离开 浙江浦江县公司；发往 苏州南地区包', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8652', N'2022-08-13 02:59:27', N'【嘉兴市】已到达 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8653', N'2022-08-13 03:01:48', N'【嘉兴市】已离开 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8654', N'2022-08-13 10:31:30', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8655', N'2022-08-13 11:02:12', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8656', N'2022-08-13 13:50:49', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8657', N'2022-08-13 15:04:38', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张古坤（17858848927） 正在为您派送。疫情期间快递各环节已消杀，快递小哥今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8658', N'2022-08-13 19:53:08', N'【苏州市】您的快件已签收，签收人：保安室（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张古坤（17858848927），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2814351516435411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8659', N'2022-08-18 22:42:21', N'义乌城西的傅秀其[18906798136]已揽收', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8660', N'2022-08-18 22:44:42', N'快件离开义乌城西已发往苏州中转部', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8661', N'2022-08-19 02:31:00', N'快件已到达义乌中转部（中转中心已对该快件做全面消杀）', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8662', N'2022-08-19 02:33:43', N'快件离开义乌中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8663', N'2022-08-19 09:42:06', N'快件已到达无锡中转部（中转中心已对该快件做全面消杀）', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8664', N'2022-08-19 10:20:39', N'快件离开无锡中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8665', N'2022-08-19 11:48:17', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8666', N'2022-08-19 11:56:03', N'快件离开苏州中转部已发往苏州吴中九部（中转中心已对该快件做全面消杀）', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8667', N'2022-08-19 14:27:51', N'快件已到达苏州吴中九部', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8668', N'2022-08-19 14:31:30', N'苏州郭巷尹东分部（0512-65980354）的魏征[13283087870]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8669', N'2022-08-19 16:01:47', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：13283087870, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2815551722553411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8716', N'2022-08-11 03:21:09', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8717', N'2022-08-11 03:39:33', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8718', N'2022-08-11 08:21:28', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8719', N'2022-08-11 12:11:44', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2810124612737411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8720', N'2022-08-10 19:35:06', N'义乌廿三里南的吴青松[17826949260]已揽收', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8721', N'2022-08-10 19:53:50', N'快件离开义乌廿三里南已发往苏州中转部', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8722', N'2022-08-10 21:09:13', N'快件已到达义乌中转部（中转中心已对该快件做全面消杀）', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8723', N'2022-08-10 21:11:43', N'快件离开义乌中转部已发往苏州中转部（中转中心已对该快件做全面消杀）', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8724', N'2022-08-11 05:45:15', N'快件已到达苏州中转部（中转中心已对该快件做全面消杀）', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8725', N'2022-08-11 09:51:41', N'快件离开苏州中转部已发往苏州郭巷尹东分部（中转中心已对该快件做全面消杀）', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8726', N'2022-08-11 13:38:55', N'快件已到达苏州吴中九部', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8727', N'2022-08-11 14:48:01', N'快件已到达苏州郭巷尹东分部', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8728', N'2022-08-11 14:48:02', N'苏州郭巷尹东分部（0512-65980354）的伏胜冉[17715515238]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8729', N'2022-08-11 19:59:35', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：17715515238, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2811631755017411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8730', N'2022-08-11 17:13:00', N'丰网速运 已收取快件', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8731', N'2022-08-11 23:00:00', N'丰网速运 已收取快件', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8732', N'2022-08-11 23:04:00', N'快件在【丰网速运杭州萧山三部】完成分拣,准备发往 【嘉兴丰网分拨】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8733', N'2022-08-12 00:29:00', N'快件已发车', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8734', N'2022-08-12 01:54:00', N'快件到达 【嘉兴丰网分拨】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8735', N'2022-08-12 02:13:00', N'快件在【嘉兴丰网分拨】完成分拣,准备发往 【苏南陆运枢纽（无锡）】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8736', N'2022-08-12 03:55:00', N'快件已发车', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8737', N'2022-08-12 07:49:00', N'快件到达 【苏南陆运枢纽（无锡）】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8738', N'2022-08-12 08:31:00', N'快件在【苏南陆运枢纽（无锡）】完成分拣,准备发往 【苏州甪直中转场】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8739', N'2022-08-12 09:53:00', N'快件已发车', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8740', N'2022-08-12 13:26:00', N'快件到达 【苏州甪直中转场】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8741', N'2022-08-12 13:26:00', N'快件在【苏州甪直中转场】完成分拣,准备发往 【苏州吴中双湾锦园营业点】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8742', N'2022-08-12 13:55:00', N'快件已发车', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8743', N'2022-08-12 14:25:00', N'快件到达 【苏州吴中双湾锦园营业点】', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8744', N'2022-08-12 15:20:00', N'快件交给孙令森，正在派送途中（联系电话：15862397042，丰网已开启“安全呼叫”保护您的电话隐私,请放心接听！）（主单总件数：1件）', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8745', N'2022-08-12 15:29:00', N'您的快件已签收，如有疑问请电联快递员【孙令森，电话：15862397042】。疫情期间丰网每日对网点消毒、快递员每日测温、配戴口罩，感谢您使用丰网，期待再次为您服务。（主单总件数：1件）', N'2811618471798411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8746', N'2022-08-09 19:21:03', N'【台州市】浙江台州黄岩区公司-王弈强（15858605460） 已揽收，快递小哥已接种疫苗，48小时核酸正常，每日测体温，请放心收寄快递', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8747', N'2022-08-09 22:32:51', N'【台州市】已到达 浙江台州分拨交付中心', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8748', N'2022-08-09 22:34:15', N'【台州市】已离开 浙江台州分拨交付中心；发往 江苏苏州分拨交付中心', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8749', N'2022-08-10 05:40:15', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8750', N'2022-08-10 05:45:27', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8751', N'2022-08-10 13:59:00', N'【苏州市】已到达 江苏苏州吴中区新郭巷服务部[0512-87807140]', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8752', N'2022-08-10 15:05:44', N'【苏州市】江苏吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8753', N'2022-08-10 18:34:20', N'【苏州市】您的快件已签收，签收人：公司（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2810260189480411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8754', N'2022-08-09 17:56:24', N'【杭州市】浙江杭州江干区红普路公司-吴加燕（15024316498） 已揽收', N'2810136745058411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8755', N'2022-08-09 22:40:51', N'【嘉兴市】已到达 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)', N'2810136745058411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8756', N'2022-08-09 22:43:48', N'【嘉兴市】已离开 浙江杭州韵达创海分拨(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2810136745058411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8757', N'2022-08-10 02:12:05', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2810136745058411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8758', N'2022-08-10 02:17:00', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏苏州吴中区新郭巷服务部', N'2810136745058411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8798', N'2022-07-22 22:01:47', N'【宁波市】已到达 浙江宁波分拨交付中心(分拨对该快件已全面消杀)', N'2771981496284411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8799', N'2022-07-22 23:07:57', N'【宁波市】已离开 浙江宁波分拨交付中心(分拨对该快件已全面消杀)；发往 苏州南地区包', N'2771981496284411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8800', N'2022-07-23 04:16:48', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2771981496284411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8801', N'2022-07-23 04:40:47', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2771981496284411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8802', N'2022-07-23 08:17:42', N'【苏州市】江苏主城公司吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2771981496284411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8803', N'2022-07-23 17:18:46', N'【苏州市】您的快件已签收，签收人：门口（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2771981496284411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8804', N'2022-07-22 15:29:51', N'【泾县电商客户揽投部】已收寄,揽投员:一体机二号', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8805', N'2022-07-22 17:20:06', N'到达【泾县中心揽投部】', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8806', N'2022-07-22 17:22:04', N'离开【泾县电商客户揽投部】,下一站【泾县中心揽投部】', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8807', N'2022-07-22 19:17:33', N'离开【泾县中心揽投部】,下一站【芜湖市邮区中心邮件处理中心】', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8808', N'2022-07-22 21:34:43', N'到达【芜湖市邮区中心邮件处理中心】（经转）', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8809', N'2022-07-23 02:33:56', N'离开【芜湖市邮区中心邮件处理中心】,下一站【苏州市普服车间】（经转）', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8810', N'2022-07-23 08:13:15', N'到达【苏州市普服车间】', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8811', N'2022-07-23 10:07:55', N'离开【苏州市普服车间】,下一站【苏州市郭巷邮政支局】', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8812', N'2022-07-23 18:31:42', N'【苏州市郭巷邮政支局】安排投递,投递员:吴伟,电话:18012607302,揽投部电话:0512-65961910', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8813', N'2022-07-23 18:32:32', N'【苏州市郭巷邮政支局】投递结果反馈-未妥投,备注(其他 再投),投递员:吴伟,电话:18012607302', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8814', N'2022-07-24 08:03:54', N'【苏州市郭巷邮政支局】安排投递,投递员:吴伟,电话:18012607302,揽投部电话:0512-65961910', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8815', N'2022-07-24 18:04:27', N'【苏州市郭巷邮政支局】投递结果反馈-未妥投,备注(其他 再投),投递员:吴伟,电话:18012607302', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8816', N'2022-07-25 08:00:01', N'【苏州市郭巷邮政支局】安排投递,投递员:吴伟,电话:18012607302,揽投部电话:0512-65961910', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8817', N'2022-07-25 10:36:11', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员18012607302', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8818', N'2022-07-27 13:01:54', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2772104257106411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8819', N'2022-07-21 23:35:51', N'【广州市】广东主城区公司广州白云区皇岗服务部 已揽收', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8820', N'2022-07-21 23:50:15', N'【广州市】已离开 广东主城区公司广州白云区皇岗服务部；发往 苏州南地区包', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8821', N'2022-07-22 03:28:18', N'【广州市】已到达 华南枢纽分拨交付中心(分拨对该快件已全面消杀)', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8822', N'2022-07-22 03:30:14', N'【广州市】已离开 华南枢纽分拨交付中心(分拨对该快件已全面消杀)；发往 江苏苏州分拨交付中心', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8823', N'2022-07-23 02:51:15', N'【苏州市】已到达 江苏苏州分拨交付中心', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8824', N'2022-07-23 03:12:33', N'【苏州市】已离开 江苏苏州分拨交付中心；发往 江苏主城区公司苏州吴中区新郭巷服务部', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8825', N'2022-07-23 07:58:53', N'【苏州市】江苏主城公司吴中新郭巷服务部出口加工寄存[18362660490] 快递员 张佩华（18013591605） 正在为您派送。疫情期间快递各环节已消杀，快递小哥48小时核酸正常，今日测温正常，将佩戴口罩为您派送，您也可联系小哥将快件放置指定代收点或快递柜（温馨提示您：戴口罩取快递，个人防护要牢记），【95121为韵达快递员外呼专属号码，请放心接听】', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8826', N'2022-07-23 17:18:53', N'【苏州市】您的快件已签收，签收人：门口（温馨提示您：戴口罩取快递，个人防护要牢记），如有疑问请电联快递员：张佩华（18013591605），投诉电话：025-66970762。起早摸黑不停忙，如有不妥您见谅，好评激励我向上，求个五星暖心房。', N'2771605693920411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8827', N'2022-07-20 21:18:42', N'【浙江苍南公司】的收件员【菜鸟面单】已收件', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8828', N'2022-07-20 21:59:16', N'快件由【浙江苍南公司】发往【浙江杭州转运中心】', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8829', N'2022-07-21 03:56:32', N'快件已到达【浙江杭州转运中心】扫描员是【出港卸货11号】', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8830', N'2022-07-21 03:59:10', N'快件由【浙江杭州转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8831', N'2022-07-21 09:21:31', N'快件已到达【江苏苏州转运中心】扫描员是【李红】', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8832', N'2022-07-21 09:26:43', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8833', N'2022-07-21 12:40:23', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8834', N'2022-07-21 14:28:27', N'【江苏苏州东吴公司】的派件员【尹山湖11】正在为您派件，如有疑问请联系派件员，联系电话【15995487904】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132，95089为申通业务员外呼专属号码，可放心接听）', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8835', N'2022-07-21 14:47:33', N'您的快件已存放至JS天运广场丰巢【自提柜】，请及时取件。有问题请联系派件员18994388380', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8836', N'2022-07-22 14:42:09', N'已签收，签收人凭取货码签收。感谢使用JS天运广场丰巢【自提柜】，期待再次为您服务。', N'2768470884981411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'8837', N'2022-07-16 15:02:12', N'【浙江象山公司】已收件，扫描员【小件扫描】', N'2760761343335411134')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9816', N'2022-06-01 11:40:48', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9817', N'2022-06-01 11:42:21', N'快件在【苏州吴中三部ZX】做了派件,派件员【位振】【15150121815】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9818', N'2022-06-01 12:27:52', N'已签收(30/30)。有问题请联系派件员位振15150121815，投诉电话02566970060-76103。风雨无阻送货忙，客户服务记心上。好评激励我向上，赏个五星好不好？【请在评价派件员处帮忙点亮五颗星星哦~】', N'2656444644345803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9819', N'2022-06-05 20:12:47', N'晋江三固揽件', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9820', N'2022-06-05 23:03:00', N'泉州分拨中心发件,下一网点苏州分拨中心', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9821', N'2022-06-07 06:57:00', N'苏州分拨中心到件', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9822', N'2022-06-07 09:48:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9823', N'2022-06-07 13:09:00', N'苏州姑苏二部到件', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9824', N'2022-06-07 17:51:00', N'苏州吴中二部到件', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9825', N'2022-06-07 17:51:00', N'苏州吴中二部派件', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9826', N'2022-06-07 17:51:00', N'电子签名签收签收', N'2654446683296803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9827', N'2022-06-14 17:25:37', N'【南通市】安能快运五接韩通路已揽收', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9828', N'2022-06-14 18:06:13', N'【南通市】订单已从五接韩通路发出，准备发往南通分拨中心', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9829', N'2022-06-14 19:02:27', N'【南通市】订单已到达南通分拨中心', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9830', N'2022-06-14 19:44:47', N'【南通市】订单已从南通分拨中心发出，准备发往苏州市区分拨中心', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9831', N'2022-06-15 03:47:56', N'【苏州市】订单已到达苏州市区分拨中心', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9832', N'2022-06-15 06:09:37', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9833', N'2022-06-15 11:25:17', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9834', N'2022-06-15 11:27:22', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9835', N'2022-06-15 21:50:55', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2650988593767803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9836', N'2022-05-25 16:06:10', N'【临沂市】壹米滴答【H临沂河东区】被揽收', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9837', N'2022-05-25 16:08:34', N'【临沂市】壹米滴答【H临沂河东区】进行装车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9838', N'2022-05-25 19:29:29', N'【临沂市】壹米滴答【临沂分拨】进行卸车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9839', N'2022-05-25 19:57:41', N'【临沂市】壹米滴答【临沂分拨】进行装车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9840', N'2022-05-25 20:30:16', N'【临沂市】壹米滴答【临沂分拨】进行已发车', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9841', N'2022-05-26 01:51:54', N'【潍坊市】货物已到达【潍坊分拨】', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9842', N'2022-05-26 22:47:13', N'【潍坊市】壹米滴答【潍坊分拨】进行装车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9843', N'2022-05-27 05:40:29', N'【潍坊市】壹米滴答【潍坊分拨】进行已发车', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9844', N'2022-05-27 21:24:37', N'【杭州市】货物已到达【杭州壹米汇森汇霖分拨】', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9845', N'2022-05-28 00:27:44', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行卸车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9846', N'2022-05-28 10:24:02', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行装车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9847', N'2022-05-28 11:03:06', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行已发车', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9848', N'2022-05-28 15:55:00', N'【苏州市】货物已到达【苏州汇森汇霖分拨】', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9849', N'2022-05-28 16:29:26', N'【苏州市】壹米滴答【苏州汇森汇霖分拨】进行卸车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9850', N'2022-05-29 00:35:50', N'【苏州市】壹米滴答【苏州汇森汇霖分拨】进行装车扫描', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9851', N'2022-05-29 08:08:54', N'【苏州市】壹米滴答【苏州汇森汇霖分拨】进行已发车', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9852', N'2022-05-29 11:19:12', N'【苏州市】货物已到达【H甪直一】', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9853', N'2022-05-30 15:59:55', N'【苏州市】H甪直一：陈涛峰(15194278919)正在为您派件', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9854', N'2022-05-30 16:00:55', N'快件已被签收，签收人:吴先', N'2651009294389803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9855', N'2022-06-03 13:52:40', N'【金华市】安能快运义乌大川二十三仓已揽收', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9856', N'2022-06-03 19:01:01', N'【金华市】订单已从义乌大川二十三仓发出，准备发往金华分拨中心', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9857', N'2022-06-03 21:20:30', N'【金华市】订单已到达金华分拨中心', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9858', N'2022-06-04 00:39:15', N'【金华市】订单已从金华分拨中心发出，准备发往苏州市区分拨中心', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9859', N'2022-06-06 08:40:23', N'【苏州市】订单已到达苏州市区分拨中心', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9860', N'2022-06-06 08:50:22', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9861', N'2022-06-06 20:02:08', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9862', N'2022-06-06 20:03:08', N'【苏州市】吴中郭巷官浦S:杨建国18115566736正为您运送，感谢您的耐心等待', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9863', N'2022-06-06 20:04:53', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2641519801588803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9864', N'2022-05-18 20:23:18', N'【浙江义乌公司】的收件员【杨小浪1】已收件', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9865', N'2022-05-18 21:09:47', N'快件由【浙江义乌公司】发往【浙江金华转运中心】', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9866', N'2022-05-19 02:11:11', N'快件已到达【浙江金华转运中心】扫描员是【进港自动化】', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9867', N'2022-05-19 07:11:11', N'快件由【浙江金华转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9868', N'2022-05-19 10:29:21', N'快件已到达【江苏苏州转运中心】扫描员是【祥龙进港交叉带】', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9869', N'2022-05-19 10:36:59', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9870', N'2022-05-19 13:00:01', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9871', N'2022-05-19 14:46:36', N'【江苏苏州东吴公司】的派件员【张维岐】正在为您派件，如有疑问请联系派件员，联系电话【18051098850】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132为申通业务员外呼专属号码，可放心接听）', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9872', N'2022-05-19 17:46:41', N'已签收，签收人是【门卫代签】,如有疑问请联系:18051098850,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2637227666732803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9873', N'2022-05-18 16:27:58', N'临沂兰山澳龙的李玉飞[15318591182]已揽收', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9874', N'2022-05-18 21:28:19', N'快件离开临沂兰山澳龙已发往苏州中转部', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9875', N'2022-05-18 22:29:20', N'快件已到达临沂中转部', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9876', N'2022-05-18 22:30:53', N'快件离开临沂中转部已发往苏州中转部', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9877', N'2022-05-19 09:20:15', N'快件已到达苏州中转部', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9878', N'2022-05-19 10:25:07', N'快件离开苏州中转部已发往苏州吴中九部', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9879', N'2022-05-19 13:58:09', N'快件已到达苏州吴中九部', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9880', N'2022-05-19 21:19:59', N'快件已到达苏州郭巷尹东分部', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9881', N'2022-05-19 21:20:00', N'苏州郭巷尹东分部（0512-65980354）的夏滨滨[15962108922]正在派件（95720为中通快递员外呼专属号码，请放心接听）', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9882', N'2022-05-19 21:59:24', N'受疫情及交通管控影响，您的包裹可能会延迟派送，我们会根据疫情防控政策的变化，随时进行调整，特殊时期，感谢您对中通快递的支持与理解！', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9883', N'2022-05-20 11:02:19', N'快件已在苏州郭巷尹东分部签收 签收人：门卫。如有疑问请电联：15962108922, 投诉电话：15295693368, 您的快递已经妥投。风里来雨里去, 只为客官您满意。上有老下有小, 赏个好评好不好？【请在评价快递员处帮忙点亮五颗星星哦~】', N'2637212870537803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9884', N'2022-05-26 19:25:07', N'【镇江市】江苏丹阳东部公司已揽收', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9885', N'2022-05-26 19:27:54', N'【镇江市】订单已从江苏丹阳东部公司发出，准备发往江苏常州分拨中心', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9886', N'2022-05-26 23:28:28', N'【常州市】订单已到达江苏常州分拨中心', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9887', N'2022-05-27 00:25:55', N'【常州市】江苏常州分拨中心已发出', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9888', N'2022-05-27 09:24:16', N'【苏州市】订单已到达江苏苏州分拨中心', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9889', N'2022-05-28 03:35:14', N'【苏州市】江苏苏州分拨中心已发出', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9890', N'2022-05-28 23:09:56', N'【苏州市】订单已到达江苏苏州吴中郭巷公司，18751186387', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9891', N'2022-05-28 23:10:26', N'【苏州市】江苏苏州吴中郭巷公司快递小哥：陈敏18751186387正为您派送，感谢您的耐心等待', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9892', N'2022-05-28 23:10:33', N'已签收：【吴先生】签收网点【江苏苏州吴中郭巷公司】', N'2636971129478803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9893', N'2022-05-16 17:54:00', N'永年城南揽件', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9894', N'2022-05-16 19:12:00', N'永年城南发件,下一网点邢邯集配站', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9895', N'2022-05-16 20:09:00', N'邢邯集配站到件', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9896', N'2022-05-16 20:09:00', N'邢邯集配站发件,下一网点郑州分拨中心', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9897', N'2022-05-17 02:30:00', N'郑州分拨中心到件', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9898', N'2022-05-17 02:39:00', N'郑州分拨中心发件,下一网点苏州分拨中心', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9899', N'2022-05-19 04:45:00', N'苏州分拨中心到件', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9900', N'2022-05-19 06:09:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9901', N'2022-05-19 19:39:00', N'苏州吴中二部到件', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9902', N'2022-05-19 19:42:00', N'苏州吴中二部派件', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9903', N'2022-05-19 19:42:00', N'电子签名签收签收', N'2633270041495803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9904', N'2022-05-16 18:30:12', N'义乌六部揽件', N'2632996801245803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9905', N'2022-05-18 04:57:00', N'苏州分拨中心到件', N'2632996801245803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9906', N'2022-05-18 09:03:00', N'苏州分拨中心发件,下一网点苏州姑苏二部', N'2632996801245803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9907', N'2022-05-18 12:09:00', N'苏州吴中二部到件', N'2632996801245803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9908', N'2022-05-18 12:12:00', N'苏州吴中二部派件', N'2632996801245803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9909', N'2022-05-18 13:18:00', N'苏州姑苏二部到件', N'2632996801245803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9910', N'2022-05-18 19:27:00', N'拍照签收签收', N'2632996801245803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9911', N'2022-05-20 16:19:45', N'【宁波市】壹米滴答【H宁波陆埠】被揽收', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9912', N'2022-05-20 21:12:11', N'【宁波市】壹米滴答【宁波壹米优速分拨】进行卸车扫描', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9913', N'2022-05-20 22:58:41', N'【宁波市】壹米滴答【宁波壹米优速分拨】进行装车扫描', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9914', N'2022-05-21 03:58:59', N'【苏州市】货物已到达【苏州汇森汇霖分拨】', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9915', N'2022-05-21 04:16:30', N'【苏州市】壹米滴答【苏州汇森汇霖分拨】进行装车扫描', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9916', N'2022-05-21 09:02:28', N'【苏州市】壹米滴答【苏州汇森汇霖分拨】进行已发车', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9917', N'2022-05-21 10:24:48', N'【苏州市】货物已到达【H甪直一】', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9918', N'2022-05-21 14:44:16', N'【苏州市】H甪直一：陈涛峰(15194278919)正在为您派件', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9919', N'2022-05-21 14:45:16', N'快件已被签收，签收人:吴生', N'2631883500482803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9920', N'2022-05-20 17:05:37', N'快件在【宣城宁国一部ZX】已揽件', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9921', N'2022-05-20 17:08:40', N'快件由【宣城宁国一部】发往【南京分拨】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9922', N'2022-05-20 19:28:43', N'快件由【宣城宁国一部ZX】发往【宣城宁国一部】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9923', N'2022-05-21 02:29:21', N'快件已到达【南京分拨】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9924', N'2022-05-21 03:02:48', N'快件在【南京分拨】已装车,准备发往【苏州分拨】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9925', N'2022-05-21 08:57:52', N'快件已到达【苏州分拨】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9926', N'2022-05-21 09:10:58', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9927', N'2022-05-21 12:22:46', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9928', N'2022-05-21 12:24:50', N'快件在【苏州吴中三部ZX】做了派件,派件员【位振】【15150121815】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9929', N'2022-05-21 16:06:16', N'已签收(2/2)。有问题请联系派件员位振15150121815，投诉电话02566970060-76103。风雨无阻送货忙，客户服务记心上。好评激励我向上，赏个五星好不好？【请在评价派件员处帮忙点亮五颗星星哦~】', N'2621135700467803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9930', N'2022-05-13 18:25:02', N'【金华市】安能快运义乌市东塘十二区已揽收', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9931', N'2022-05-13 19:20:55', N'【金华市】订单已从义乌市东塘十二区发出，准备发往金华分拨中心', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9932', N'2022-05-13 20:06:13', N'【金华市】订单已到达金华分拨中心', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9933', N'2022-05-14 01:11:03', N'【金华市】订单已从金华分拨中心发出，准备发往南通分拨中心', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9934', N'2022-05-14 08:35:41', N'【南通市】订单已到达南通分拨中心', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9935', N'2022-05-14 11:11:31', N'【南通市】订单已从南通分拨中心发出，准备发往苏州市区分拨中心', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9936', N'2022-05-15 08:09:15', N'【苏州市】订单已到达苏州市区分拨中心', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9937', N'2022-05-15 08:16:53', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9938', N'2022-05-18 11:41:24', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9939', N'2022-05-18 11:43:03', N'【苏州市】吴中郭巷官浦S:吴中郭巷官浦S18115566736正为您运送，感谢您的耐心等待', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9940', N'2022-05-18 11:48:35', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2622182330717803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9941', N'2022-05-21 10:04:39', N'快件在【唐山滦州一部ZX】已揽件', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9942', N'2022-05-21 10:09:10', N'快件由【唐山滦州一部】发往【唐山集配站】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9943', N'2022-05-21 13:33:19', N'快件已到达【唐山集配站】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9944', N'2022-05-21 13:37:09', N'快件由【唐山集配站】发往【天津分拨】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9945', N'2022-05-21 18:12:50', N'快件已到达【天津分拨】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9946', N'2022-05-21 21:54:13', N'快件在【天津分拨】已装车,准备发往【苏州分拨】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9947', N'2022-05-23 05:28:02', N'快件已到达【苏州分拨】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9948', N'2022-05-23 05:47:55', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9949', N'2022-05-23 08:44:25', N'快件已到达【苏州吴中三部】, 站点电话【15062429392】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9950', N'2022-05-23 12:21:54', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9951', N'2022-05-23 12:22:39', N'快件在【苏州吴中三部ZX】做了派件,派件员【位振】【15150121815】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9952', N'2022-05-23 12:47:33', N'已签收(5/5)。有问题请联系派件员位振15150121815，投诉电话02566970060-76103。风雨无阻送货忙，客户服务记心上。好评激励我向上，赏个五星好不好？【请在评价派件员处帮忙点亮五颗星星哦~】', N'2615897340440803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9953', N'2022-05-27 20:04:55', N'【金华市】壹米滴答【市区北营业部C】被揽收', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9954', N'2022-05-27 23:31:17', N'【金华市】壹米滴答【金华壹米优速分拨】进行卸车扫描', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9955', N'2022-05-28 10:18:42', N'【金华市】壹米滴答【金华壹米优速分拨】进行装车扫描', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9956', N'2022-05-28 19:47:57', N'【金华市】壹米滴答【金华壹米优速分拨】进行已发车', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9957', N'2022-05-29 00:57:02', N'【杭州市】货物已到达【杭州壹米汇森汇霖分拨】', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9958', N'2022-05-29 02:54:53', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行卸车扫描', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9959', N'2022-05-30 00:05:14', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行装车扫描', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9960', N'2022-05-30 06:54:28', N'【杭州市】壹米滴答【杭州壹米汇森汇霖分拨】进行已发车', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9961', N'2022-05-30 08:58:15', N'【绍兴市】货物已到达【上虞营业部】', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9962', N'2022-05-31 14:26:31', N'【绍兴市】上虞营业部：方华泉(13645856828)正在为您派件', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9963', N'2022-05-31 14:27:31', N'快件已被签收，签收人:邵一囡', N'2616891985710803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9964', N'2022-05-15 03:33:03', N'快件已到达【广东增城转运中心】扫描员是【保艳飞】', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9965', N'2022-05-15 03:39:03', N'快件由【广东增城转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9966', N'2022-05-18 02:04:33', N'快件已到达【广东增城转运中心】扫描员是【保艳飞】', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9967', N'2022-05-18 02:11:33', N'快件由【广东增城转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9968', N'2022-05-19 11:09:47', N'快件已到达【江苏苏州转运中心】扫描员是【严青海】', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9969', N'2022-05-19 11:16:45', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9970', N'2022-05-19 13:25:11', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9971', N'2022-05-19 14:50:17', N'【江苏苏州东吴公司】的派件员【张维岐】正在为您派件，如有疑问请联系派件员，联系电话【18051098850】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132为申通业务员外呼专属号码，可放心接听）', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9972', N'2022-05-19 17:36:00', N'已签收，签收人是【门卫代签】,如有疑问请联系:18051098850,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2617039658544803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9973', N'2022-05-17 13:06:29', N'快件在【温岭六部温岭来德】已揽件', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9974', N'2022-05-17 21:42:54', N'快件已到达【台州分拨】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9975', N'2022-05-17 21:46:19', N'快件在【台州分拨】已装车,准备发往【苏州分拨】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9976', N'2022-05-18 05:31:37', N'快件已到达【苏州分拨】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9977', N'2022-05-18 05:52:42', N'快件由【苏州分拨】发往【苏州吴中三部】,站点客服电话【15062429392】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9978', N'2022-05-18 08:39:48', N'快件已到达【苏州吴中三部】, 站点电话【15062429392】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9979', N'2022-05-18 16:51:42', N'快件已到达【苏州吴中三部ZX】, 站点电话【15062429392，13651436334】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9980', N'2022-05-18 16:52:20', N'快件在【苏州吴中三部ZX】做了派件,派件员【位振】【15150121815】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9981', N'2022-05-18 16:52:31', N'已签收(30/30)。有问题请联系派件员位振15150121815，投诉电话02566970060-76103。风雨无阻送货忙，客户服务记心上。好评激励我向上，赏个五星好不好？【请在评价派件员处帮忙点亮五颗星星哦~】', N'2615690089833803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9982', N'2022-05-14 17:56:45', N'【南通市】安能快运五接韩通路已揽收', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9983', N'2022-05-14 18:34:05', N'【南通市】订单已从五接韩通路发出，准备发往南通分拨中心', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9984', N'2022-05-14 19:42:15', N'【南通市】订单已到达南通分拨中心', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9985', N'2022-05-14 20:13:45', N'【南通市】订单已从南通分拨中心发出，准备发往苏州市区分拨中心', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9986', N'2022-05-16 00:34:23', N'【苏州市】订单已到达苏州市区分拨中心', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9987', N'2022-05-16 07:18:27', N'【苏州市】订单已从苏州市区分拨中心发出，准备发往吴中郭巷官浦S18115566736', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9988', N'2022-05-18 11:41:26', N'【苏州市】订单已到达吴中郭巷官浦S,18115566736', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9989', N'2022-05-18 11:44:49', N'【苏州市】吴中郭巷官浦S:吴中郭巷官浦S18115566736正为您运送，感谢您的耐心等待', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9990', N'2022-05-18 11:49:26', N'您的订单已被签收，如有疑问请电联：18115566736，咨询电话：0571-22917938，您的快件已经妥投。风里来雨里去，派送师傅送货不易，请给个五星好评哦，【请在评价快递员处帮忙点亮五颗星星哦～】', N'2615517793442803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9991', N'2022-05-18 01:41:31', N'快件已到达【广东增城转运中心】扫描员是【金碧玉】', N'2606592996198803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9992', N'2022-05-18 01:54:53', N'快件由【广东增城转运中心】发往【江苏苏州转运中心】，包裹已消杀', N'2606592996198803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9993', N'2022-05-19 08:34:38', N'快件已到达【江苏苏州转运中心】扫描员是【田西科】', N'2606592996198803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9994', N'2022-05-19 08:48:52', N'快件由【江苏苏州转运中心】发往【江苏苏州东吴公司】，包裹已消杀', N'2606592996198803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9995', N'2022-05-19 13:18:45', N'快件已到达【江苏苏州东吴公司】扫描员是【网点负责人】', N'2606592996198803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9996', N'2022-05-19 14:32:53', N'【江苏苏州东吴公司】的派件员【张维岐】正在为您派件，如有疑问请联系派件员，联系电话【18051098850】，快件已消毒，申通小哥已测体温，请放心收寄快递（95132为申通业务员外呼专属号码，可放心接听）', N'2606592996198803504')
GO

INSERT INTO [dbo].[trace] ([id], [acceptTime], [remark], [orderId]) VALUES (N'9997', N'2022-05-19 17:35:51', N'已签收，签收人是【门卫代签】,如有疑问请联系:18051098850,风里来，雨里去，汗也撒泪也流，申通小哥一刻不停留。不求服务惊天下，但求好评动我心，给个好评呗！！', N'2606592996198803504')
GO

SET IDENTITY_INSERT [dbo].[trace] OFF
GO


-- ----------------------------
-- Table structure for user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type IN ('U'))
	DROP TABLE [dbo].[user]
GO

CREATE TABLE [dbo].[user] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [name] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [loginname] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [address] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [sex] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [pwd] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [phone] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [type] int  NULL,
  [age] int  NULL,
  [dept] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [idNum] nvarchar(22) COLLATE Chinese_PRC_CI_AS  NULL,
  [job] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [time] nvarchar(20) COLLATE Chinese_PRC_CI_AS  NULL,
  [leaveTime] datetime2(7)  NULL,
  [addTime] datetime2(7)  NULL,
  [serial] varchar(20) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'姓名',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户名',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'loginname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'address'
GO

EXEC sp_addextendedproperty
'MS_Description', N'性别',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'sex'
GO

EXEC sp_addextendedproperty
'MS_Description', N'密码',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'pwd'
GO

EXEC sp_addextendedproperty
'MS_Description', N'联系方式',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'phone'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户类型[0管理员1操作员]',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'年龄',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'age'
GO

EXEC sp_addextendedproperty
'MS_Description', N'部门',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'dept'
GO

EXEC sp_addextendedproperty
'MS_Description', N'身份证号',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'idNum'
GO

EXEC sp_addextendedproperty
'MS_Description', N'职位',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'job'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工作年限',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'离职日期',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'leaveTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'入职日期',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'addTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'工号',
'SCHEMA', N'dbo',
'TABLE', N'user',
'COLUMN', N'serial'
GO

EXEC sp_addextendedproperty
'MS_Description', N'用户表',
'SCHEMA', N'dbo',
'TABLE', N'user'
GO


-- ----------------------------
-- Records of user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[user] ON
GO

INSERT INTO [dbo].[user] ([id], [name], [loginname], [address], [sex], [pwd], [phone], [type], [age], [dept], [idNum], [job], [time], [leaveTime], [addTime], [serial]) VALUES (N'1', N'超级管理员', N'system', N'系统深处的男人', N'男', N'1', NULL, N'0', NULL, NULL, N'123121233221', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[user] ([id], [name], [loginname], [address], [sex], [pwd], [phone], [type], [age], [dept], [idNum], [job], [time], [leaveTime], [addTime], [serial]) VALUES (N'11', N'白毛女', N'111', N'1111', N'女', N'111', N'111', N'1', N'50', N'13', N'1111', N'对对对', NULL, NULL, NULL, N'111')
GO

INSERT INTO [dbo].[user] ([id], [name], [loginname], [address], [sex], [pwd], [phone], [type], [age], [dept], [idNum], [job], [time], [leaveTime], [addTime], [serial]) VALUES (N'13', N'11', N'1111111', N'11', N'男', N'1', N'11', N'1', N'11', N'1', NULL, N'11', NULL, NULL, NULL, N'11')
GO

INSERT INTO [dbo].[user] ([id], [name], [loginname], [address], [sex], [pwd], [phone], [type], [age], [dept], [idNum], [job], [time], [leaveTime], [addTime], [serial]) VALUES (N'16', N'华安', N'huaan', N'2232二房东', N'男', N'1', N'1111', N'1', N'30', N'13', NULL, N'主管', NULL, NULL, NULL, N'9527')
GO

SET IDENTITY_INSERT [dbo].[user] OFF
GO


-- ----------------------------
-- View structure for order_view
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[order_view]') AND type IN ('V'))
	DROP VIEW [dbo].[order_view]
GO

CREATE VIEW [dbo].[order_view] AS select o.*,p.productName,p.productID,p.quantity,p.price,p.skuInfo,(select top 1 acceptTime from trace WHERE orderId= o.orderID order by id desc) acceptTime,(select top 1 remark from trace WHERE orderId= o.orderID order by id desc) remark,(select content from replace WHERE businessId=o.receiverInfo) replaceReceive,(select content from replace WHERE businessId=p.productID) replaceProduct from product p,[order] o WHERE o.orderID=p.orderId
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for order
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[order]', RESEED, 281)
GO


-- ----------------------------
-- Auto increment value for product
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[product]', RESEED, 1089)
GO


-- ----------------------------
-- Auto increment value for replace
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[replace]', RESEED, 10019)
GO


-- ----------------------------
-- Auto increment value for token
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[token]', RESEED, 6)
GO


-- ----------------------------
-- Auto increment value for trace
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[trace]', RESEED, 9997)
GO


-- ----------------------------
-- Auto increment value for user
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[user]', RESEED, 16)
GO

