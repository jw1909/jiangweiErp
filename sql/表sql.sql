create  database test
use test

drop table if exists SalesQuotations; -- 销售报价表
create table  SalesQuotations(
BillNO varchar(20) primary key ,-- 单据号码
BillDate date  not null , -- 单据日期
FormalCust varchar(50) not null, -- 正式客户
CurCurrencyName varchar(50) not null,-- 币别名称
ExchRate varchar(50) not null,     -- 汇率
OutAddress  varchar(50) not null, -- 送货地址
PriceOfTax varchar(50) not null, -- 单价是否含税
ValiDAte date  not null,          -- 有效日期
HeaderName varchar(50) not null,  -- 表头条纹
FooterName varchar(50) not null, -- 表尾条纹
PsnUerDef1 varchar(50) not null, -- 自定义栏一
PsnUerDef2 varchar(50) not null, -- 自定义栏二
CustMemo varchar(50) not null, -- 备注
MakerName varchar(50) not null, -- 制单人员名称
PermitterName varchar(50) not null, -- 复核人员名称
DepartName varchar(50) not null, -- 所属部门名称
SalesName varchar(50) not null, -- 业务人员名称
SerNO int not null -- 栏号
);

drop table if exists mxSalesQuotations; -- 销售报价明细表
create table  mxSalesQuotations(
SerNO int primary key auto_increment,-- 栏号
ProdID	Varchar(20) not null,        -- 物料编号
ProdBusiTaxRate Varchar(20) not null,-- 税率
ProdName Varchar(20) not null,       -- 物料名称
ItemRemark Varchar(20) not null,     -- 分录备注
IsGift Varchar(20) not null,         -- 赠品
Discount Varchar(20) not null,       -- 折数
TaxAmt Varchar(20) not null,         -- 税额
UniName Varchar(20) not null,        -- 单位
Price Varchar(20) not null,          -- 基本单位
OldPrice Varchar(20) not null,       -- 折扣前单位
Amount Varchar(20) not null,         -- 金额
SQuantity Varchar(20) not null,      -- 数量
sPrice Varchar(20) not null,         -- 单价
VFTotal Varchar(20) not null,        -- 含税金额
SumBTaxAmt Varchar(20) not null,     -- 金额合计
SumTax Varchar(20) not null,        -- 税额合计
SumAmtATax Varchar(20) not null,    -- 含税金额合计
ProdSize Varchar(20) not null     -- 规格型号
);


drop table if exists SalesOrder; -- 销售订单表
create table SalesOrder(
BillNO varchar(20) primary key ,-- 单据号码
BillDate date  not null , -- 单据日期
CustBillNo  Varchar(20) not null,   -- 客户订单
BillStyleName  Varchar(20) not null,  -- 销售订单类型名称
CustCurrencyName  Varchar(20) not null,  -- 币别名称
CustMemo  Varchar(20) not null,          -- 备注
CustAddress  Varchar(20) not null,       -- 送货地址
SalesName  Varchar(20) not null,         -- 业务人员名称
DepartName  Varchar(20) not null,         -- 所属部门名称
ProjectName  Varchar(20) not null,       -- 所属项目名称
ExchRate  Varchar(20) not null,          -- 汇率
Permitter  Varchar(20) not null,         -- 复核人员
Maker  Varchar(20) not null,             -- 制单人员
HeaderName  Varchar(20) not null,        -- 表头条纹名称
FooterName  Varchar(20) not null,        -- 表尾条纹名称
UserDef1  Varchar(20) not null,           -- 自定义栏一
UserDef2  Varchar(20) not null,          -- 自定义栏二
BillStatus  Varchar(20) not null,        -- 单况
PriceOfTax  Varchar(20) not null,         -- 单价是否含税
DueToFullName  Varchar(20) not null,      -- 账款归属全称
PrepayDay date not null,                  -- 收款日期
GatherStyle  Varchar(20) not null,         -- 收款条件
AccMoth  Varchar(20) not null,             -- 账款月份
GatherDelay int not null  ,         -- 收款天数
SerNO int not null -- 栏号
);

drop table if exists mxSalesOrder; -- 销售订单明细表
create table mxSalesOrder(
SerNO int primary key auto_increment,-- 栏号
ProdID	Varchar(20) not null,        -- 物料编号
ProdSize Varchar(20) not null,     -- 规格型号
SUnit Varchar(20) not null,     -- 单位名称
sQuantity int not null, -- 数量
OldPrice Varchar(20) not null,     -- 折扣前单价
Discount Varchar(20) not null,     -- 折数
sPrice Varchar(20) not null,     -- 单价
Amount Varchar(20) not null,     -- 金额
VFTotal Varchar(20) not null,     -- 税率
PreInDate date not null,     -- 预出库日
QtyRemain int not null, -- 未出库数量
IsGift Varchar(20) not null,     -- 赠品
ItemRemark Varchar(20) not null,     -- 分录备注
HasCombine Varchar(20) not null,     -- 物料组合
TranType Varchar(20) not null,     -- 来源单别
FromNO Varchar(20) not null,     -- 来源单号
ManuQty int not null -- 已生产数量
);



drop table if exists OtherDepots; -- 其他出库表
create table OtherDepots(
BillNO varchar(20) primary key ,-- 单据号码
AdjustDate date not null,     -- 单据日期
WareName Varchar(20) not null,     -- 仓库名称
VoucherNO Varchar(20) not null,     -- 凭证编号
SalesName Varchar(20) not null,     -- 制单人员
Permitter Varchar(20) not null,     -- 复核人员
BillStyleName Varchar(20) not null,     -- 出库类型
SumQty int not null , -- 数量合计
DepartName Varchar(20) not null,     -- 所属部门名称
Remark Varchar(20) not null,     -- 备注
Udef1 Varchar(20) not null,     -- 自定义栏一
Udef2 Varchar(20) not null,     -- 自定义栏二
SerNO int not null -- 栏号
);

drop table if exists mxOtherDepots; -- 其他出库明细表
create table mxOtherDepots(
SerNO int primary key auto_increment,-- 栏号
ProdID Varchar(20) not null, -- 物料编号
ProdSize Varchar(20) not null, -- 规格型号
ProdName Varchar(20) not null, -- 物料名称
SUnit Varchar(20) not null, -- 单位名称
sQuantity int not null , -- 数量
HaveBatch  Varchar(20) not null, -- 批号
ItemRemark  Varchar(20) not null -- 分录备注
)



drop table if exists OtherWarehousing; -- 其他入库表
create table OtherWarehousing(
BillNO varchar(20) primary key ,-- 单据号码
AdjustDate date not null,     -- 单据日期
WareName Varchar(20) not null,     -- 仓库名称
VoucherNO Varchar(20) not null,     -- 凭证编号
SalesName Varchar(20) not null,     -- 制单人员
Permitter Varchar(20) not null,     -- 复核人员
BillStyleName Varchar(20) not null,     -- 入库类型
SumQty int not null , -- 数量合计
DepartName Varchar(20) not null,     -- 所属部门名称
Remark Varchar(20) not null,     -- 备注
Udef1 Varchar(20) not null,     -- 自定义栏一
Udef2 Varchar(20) not null,     -- 自定义栏二
SerNO int not null -- 栏号
);

drop table if exists mxOtherWarehousing; -- 其他入库明细表
create table mxOtherWarehousing(
SerNO int primary key auto_increment,-- 栏号
ProdID Varchar(20) not null, -- 物料编号
ProdSize Varchar(20) not null, -- 规格型号
ProdName Varchar(20) not null, -- 物料名称
SUnit Varchar(20) not null, -- 单位名称
sQuantity int not null , -- 数量
HaveBatch  Varchar(20) not null, -- 批号
ItemRemark  Varchar(20) not null -- 分录备注
)


