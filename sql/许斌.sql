drop database if exists sjk;
create database sjk;
use sjk; -- 应用test数据库

-- =====================================================================
-- 创建
drop table if exists Custbill;
create table Custbill(
CustID 	 	NVARCHAR(50)    primary key,   		-- 供应商
BillDate 	varchar(20) 	not null,      		-- 单据日期
Billno  	NVARCHAR(50) 	not null,     		--   单据类型   
FundBillNo  	NVARCHAR(50)	not null,		-- 单据号码   
PriceOftax  	NVARCHAR(50) 	not null, 		 --  单价是否含税   
InvoiceNo   	NVARCHAR(50)	not null,     		-- 单价是否含税 
AffirmState  	NVARCHAR(50) 	not null,    -- 发票号码   
InvotypeId  	NVARCHAR(50) 	not null,     -- 采购核对状态 
VoucherNo   	NVARCHAR(50)	not null,       -- 发票类型   
CurrID   	NVARCHAR(50) 	not null,         -- 凭证编号  
CVoucherNO  	NVARCHAR(50)	not null,      -- 币别   
ExchRate   	NVARCHAR(50) 	not null,       --   差价凭证编号   
Salesman   	NVARCHAR(50) 	not null,       -- 汇率   
Maker   	NVARCHAR(50) 	not null,          -- 采购人员   
DeptID   	NVARCHAR(50)	not null,         -- 制单人员   
ProjectID  	NVARCHAR(50)	not null,     -- 所属部门   
UDef1   	NVARCHAR(50),                 -- 自定义栏
UDef2   	NVARCHAR(50),                    -- 自定义栏二 
Remark  	NVARCHAR(50)                    -- 备注

)comment = "采购发票主表";



drop  table  if exists xbiao;
create  table xbiao(
SerNo     	NVARCHAR(50) primary key not null,  -- 栏号
ProsID    	varchar(20)	not null,        -- 物料编号
ProdName  	NVARCHAR(50)	not null,    --   单据类型   
ProdSize   	NVARCHAR(50)	not null,     -- 物料名称   
PriceOftax   	NVARCHAR(50)	not null,   --  规格型号   
Sunit        	NVARCHAR(50)	not null,        --  单位名称 
SQuantity    	NVARCHAR(50)	not null,     --  数量   
SPrice      	NVARCHAR(50)	not null,        --  单价 
Amount       	NVARCHAR(50)	not null,       --   金额   
TaxRate      	NVARCHAR(50)	not null,        --  税率  
TaxAmt       	NVARCHAR(50)	not null,     -- 税额   
RateBalanceAmt  NVARCHAR(50)	not null,  --   汇差   
BalanceAmt   	NVARCHAR(50)	not null,      -- 汇率   
LocalBalanceAmt NVARCHAR(50)	not null,      -- 价差   
TotaBalanceAmt  NVARCHAR(50)	not null,       -- 价差本位币   
ProjectID   	NVARCHAR(50) 	not null,       -- 差额合计   
SourceType   	NVARCHAR(50)	not null,     -- 来源单别
SourceBillNo  	NVARCHAR(50) 	not null,         -- 来源单号 
AmountithTax  	NVARCHAR(50) 	not null,        -- 备注
LQty   		NVARCHAR(50)	not null,              --  含税金额
FromNo  	NVARCHAR(50)	not null,               --  未进数量
IsGift   	NVARCHAR(50) 	not null,              --  采购订单  
Remark		NVARCHAR(50) 	not null,      --  赠品   
rema NVARCHAR(50)  -- 备注
) comment = "采购发票详表";
insert into Custbill( CustID,BillDate,Billno,FundBillNo,PriceOftax,InvoiceNo,AffirmState,InvotypeId,VoucherNo ,CurrID , CVoucherNO ,ExchRate,Salesman,Maker,DeptID,ProjectID,UDef1,UDef2,Remark)
   	
values("长沙新浪","2019-5-25");
    	 	        
    
     