-- 创建一个数据库MyProject
create database MyProject;
-- 如果存在数据库MyProject，则删除数据库MyProject
drop database if exists MyProject;
use MyProject; -- 应用MyProject数据库
-- 创建一个采购入库主表
-- 如果存在采购入库主表caigouruku_Main，则删除采购入库主表caigouruku_Main
drop table if exists caigouruku_Main;
use MyProject;
create table caigouruku_Main(
CustID	        nvarchar(50)	   primary key,   -- 供应商
AddrID	        nvarchar(50)       not null ,	-- 供应商地址
BillNo	        nvarchar(50)       not null ,   -- 单据号码
BillDate        Datetime	   not null ,	-- 单据日期
SaleClassID     nvarchar(50)       not null ,	-- 采购入库类型
CurrID	        nvarchar(50)       not null ,	-- 币别
PriceofTax      nvarchar(50)	   not null ,	-- 单价是否含税
ExchRate        nvarchar(50)	   not null ,	-- 汇率
WareID	        nvarchar(50)	   not null ,	-- 仓库
HasForeignTrade	nvarchar(50)	   not null ,	-- 国外贸易(是否)
ProofNumber	Int		   not null ,	-- 凭证编号
AddField1	nvarchar(50)	   not null ,	-- 自定义栏一
AddField2	nvarchar(50)	   not null ,	-- 自定义栏二
Remark		nvarchar(200)	   not null ,	-- 备注
SalesID		nvarchar(50)       not null ,	-- 采购人员
Maker		nvarchar(50)	   not null ,	-- 制单人员
Permitter	nvarchar(50)	   not null ,	-- 复核人员
DepartID	nvarchar(50)	   not null ,	-- 所属部门
ProjectID	nvarchar(50)       not null	-- 所属项目
)comment = "采购入库主表";


-- 创建一个采购入库详表
-- 如果存在采购入库详表caigouruku_ Details，则删除采购入库详表caigouruku_ Details
drop table if exists caigouruku_Details;
create table caigouruku_Details(
SerNo		nvarchar(50)	not null ,	-- 栏号
ProdID		nvarchar(50)	primary key ,	-- 物料编号
ProdName	nvarchar(50)	not null ,	-- 物料名称
ProdSize	nvarchar(50)	not null ,	-- 规格型号
Sunit		nvarchar(50)	not null ,	-- 单位名称
SQuantity	Int		not null ,	-- 数量
OldPrice	Decimal		not null ,	-- 折扣前单价
Discount	Int		not null ,	-- 折数
SPrice		Decimal		not null ,	-- 单价
Amount		Decimal		not null ,	-- 金额
TaxRate		Decimal		not null ,	-- 税率
TaxAmt		Decimal		not null ,	-- 税额
AmountATax	Decimal		not null ,	-- 含税金额
HaveBatch	nvarchar(50)	not null ,	-- 批号
IsGift		nvarchar(50)	not null ,	-- 赠品
HasInv		nvarchar(50)	not null ,	-- 发票明细
NotInvCount	Int		not null ,	-- 未开票数量
ItemRemark	nvarchar(50)	not null ,	-- 分录备注
TranType	nvarchar(50)	not null ,	-- 来源单别
PromNO		nvarchar(50)	not null ,	-- 来源单号
MLAppFare	Decimal		not null 	-- 分摊费用
)comment = "采购入库详表";

-- 创建一个采购分摊作业主表
-- 如果存在采购分摊作业主表caigoufentan_Main，则删除采购分摊作业主表caigoufentan_Main
drop table if exists caigoufentan_Main;
create table caigoufentan_Main(
BillNo		nvarchar(50)    primary key,	-- 单据号码
BillDate	Datetime	not null,	-- 单据日期
AssignStyle	nvarchar(50)	not null,	-- 分摊方式
ProofNumber	nvarchar(50)	not null,	-- 凭证编号
WaitAmount	nvarchar(50)	not null,	-- 待摊金额本位币
Maker		nvarchar(50)	not null,	-- 制单人员
Permitter	nvarchar(50)	not null	-- 复核人员
)comment = "采购分摊作业主表";

-- 创建一个采购分摊作业详表
-- 如果存在采购分摊作业详表caigoufentan_Details，则删除采购分摊作业主表caigoufentan_Details
drop table if exists caigoufentan_Details;
create table caigoufentan_Details(
SerNo		nvarchar(50)	not null ,	-- 栏号
CostID		nvarchar(50)	primary key,	-- 费用编号
CostName	nvarchar(50)	not null ,	-- 费用名称
CurrID		nvarchar(50)	not null ,	-- 币别
ExchRate	nvarchar(50)	not null ,	-- 汇率
Amount		Decimal		not null ,	-- 金额
LocalAmount	nvarchar(50)	not null ,	-- 金额本位币
SaleClassNO	nvarchar(50)	not null ,	-- 采购入库单号
ProdID		nvarchar(50)	not null ,	-- 物料编号
ProdName	nvarchar(50)	not null ,	-- 物料名称
ProdSize	nvarchar(50)	not null ,	-- 规格型号
SaleAmount	Decimal		not null ,	-- 采购金额
Quantity	Int		not null ,	-- 数量
Sunit	        nvarchar(50)	not null ,	-- 单位
Weight		nvarchar(50)	not null ,	-- 重量
Volume		nvarchar(50)	not null ,	-- 材积
MLAmount	Decimal		not null	-- 分摊金额
)comment = "采购分摊作业详表";


-- 创建一个采购退货主表
-- 如果存在采购退货主表caigoutuihuo_Main，则删除采购退货主表caigoutuihuo_Main
drop table if exists caigoutuihuo_Main;
create table caigoutuihuo_Main(
CustID		nvarchar(50)	primary key,	-- 供应商
AddrID		nvarchar(50)	not null ,	-- 供应商地址
BillNo		nvarchar(50)	not null ,	-- 单据号码
BillDate	Datetime	not null ,	-- 单据日期
SaleClassID	nvarchar(50)	not null ,	-- 采购入库类型
CurrID		nvarchar(50)	not null ,	-- 币别
PriceofTax	nvarchar(50)	not null ,	-- 单价是否含税
ExchRate	nvarchar(50)	not null ,	-- 汇率
WareID		nvarchar(50)	not null ,	-- 仓库
HasForeignTrade	nvarchar(50)	not null ,	-- 国外贸易(是否)
IsDeduct	nvarchar(50)	not null ,	-- 重新入库
ProofNumber	Int		not null ,	-- 凭证编号
AddField1	nvarchar(50)	not null ,	-- 自定义栏一
AddField2	nvarchar(50)	not null ,	-- 自定义栏二
Remark		nvarchar(200)	not null ,	-- 备注
SalesID		nvarchar(50)	not null ,	-- 采购人员
Maker		nvarchar(50)	not null ,	-- 制单人员
Permitter	nvarchar(50)	not null ,	-- 复核人员
DepartID	nvarchar(50)	not null ,	-- 所属部门
ProjectID	nvarchar(50)	not null 	-- 所属项目
)comment = "采购退货主表";

-- 创建一个采购退货详表
-- 如果存在采购退货详表caigoutuihuo_ Details，则删除采购分摊作业主表caigoutuihuo_ Details
drop table if exists caigoutuihuo_Details;
create table caigoutuihuo_Details(
SerNo		nvarchar(50)	not null ,	-- 栏号
ProdID		nvarchar(50)	primary key ,	-- 物料编号
ProdName	nvarchar(50)	not null ,	-- 物料名称
ProdSize	nvarchar(50)	not null ,	-- 规格型号
Sunit		nvarchar(50)	not null ,	-- 单位名称
SQuantity	Int		not null ,	-- 数量
OldPrice	Decimal		not null ,	-- 折扣前单价
Discount	Int		not null ,	-- 折数
SPrice		Decimal		not null ,	-- 单价
Amount		Decimal		not null ,	-- 金额
TaxRate		Decimal		not null ,	-- 税率
TaxAmt		Decimal		not null ,	-- 税额
AmountATax	Decimal		not null ,	-- 含税金额
HaveBatch	nvarchar(50)	not null ,	-- 批号
IsGift		nvarchar(50)	not null ,	-- 赠品
HasInv		nvarchar(50)	not null ,	-- 发票明细
NotInvCount	Int		not null ,	-- 未开票数量
ItemRemark	nvarchar(50)	not null ,	-- 分录备注
TranType	nvarchar(50)	not null ,	-- 来源单别
PromNO		nvarchar(50)	not null 	-- 来源单号
)comment = "采购退货详表";



-- 最后插入测试数据
insert into caigouruku_Main(CustID,AddrID,BillNo,BillDate,SaleClassID,CurrID,
PriceofTax,ExchRate,WareID,HasForeignTrade,ProofNumber,AddField1,AddField2,
Remark,SalesID,Maker,Permitter,DepartID,ProjectID)values('神州数码','株洲','2019092701','2019-09-27','手动','人民币',
'含税','1.0000','原料仓库','否','201909270001','神州电脑','神州科技','神州电脑真的强呀！！！','朱采购',
'Admin','采购部','李向阳','神州电脑采购入库项目');


-- 查询数据
select * from caigouruku_Main;
