/*
SQLyog 企业版 - MySQL GUI v7.14 
MySQL - 5.5.28-enterprise-commercial-advanced-log : Database - erp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`erp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `erp`;

/*Table structure for table `caigou` */

DROP TABLE IF EXISTS `caigou`;

CREATE TABLE `caigou` (
  `Qinggou` varchar(20) NOT NULL,
  `Danjutime` varchar(20) DEFAULT NULL,
  `Danjuhaoma` int(11) DEFAULT NULL,
  `Dankuang` varchar(20) DEFAULT NULL,
  `Qingg` varchar(20) DEFAULT NULL,
  `Zhidan` varchar(20) DEFAULT NULL,
  `Fuhe` varchar(20) DEFAULT NULL,
  `Bumen` varchar(20) DEFAULT NULL,
  `Biaotou` varchar(20) DEFAULT NULL,
  `Biaowei` varchar(20) DEFAULT NULL,
  `Zidinyi` varchar(20) DEFAULT NULL,
  `Zidiner` varchar(20) DEFAULT NULL,
  `Beuzhu` varchar(20) DEFAULT NULL,
  `Jdsa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Qinggou`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `caigou` */

/*Table structure for table `caigoufentan_main` */

DROP TABLE IF EXISTS `caigoufentan_main`;

CREATE TABLE `caigoufentan_main` (
  `BillNo` varchar(50) NOT NULL,
  `BillDate` datetime NOT NULL,
  `AssignStyle` varchar(50) NOT NULL,
  `ProofNumber` varchar(50) NOT NULL,
  `WaitAmount` varchar(50) NOT NULL,
  `Maker` varchar(50) NOT NULL,
  `Permitter` varchar(50) NOT NULL,
  PRIMARY KEY (`BillNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购分摊作业主表';

/*Data for the table `caigoufentan_main` */

/*Table structure for table `caigouruku_main` */

DROP TABLE IF EXISTS `caigouruku_main`;

CREATE TABLE `caigouruku_main` (
  `CustID` varchar(50) NOT NULL,
  `AddrID` varchar(50) NOT NULL,
  `BillNo` varchar(50) NOT NULL,
  `BillDate` datetime NOT NULL,
  `SaleClassID` varchar(50) NOT NULL,
  `CurrID` varchar(50) NOT NULL,
  `PriceofTax` varchar(50) NOT NULL,
  `ExchRate` varchar(50) NOT NULL,
  `WareID` varchar(50) NOT NULL,
  `HasForeignTrade` varchar(50) NOT NULL,
  `ProofNumber` int(11) NOT NULL,
  `AddField1` varchar(50) NOT NULL,
  `AddField2` varchar(50) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `SalesID` varchar(50) NOT NULL,
  `Maker` varchar(50) NOT NULL,
  `Permitter` varchar(50) NOT NULL,
  `DepartID` varchar(50) NOT NULL,
  `ProjectID` varchar(50) NOT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购入库主表';

/*Data for the table `caigouruku_main` */

/*Table structure for table `caigoutuihuo_main` */

DROP TABLE IF EXISTS `caigoutuihuo_main`;

CREATE TABLE `caigoutuihuo_main` (
  `CustID` varchar(50) NOT NULL,
  `AddrID` varchar(50) NOT NULL,
  `BillNo` varchar(50) NOT NULL,
  `BillDate` datetime NOT NULL,
  `SaleClassID` varchar(50) NOT NULL,
  `CurrID` varchar(50) NOT NULL,
  `PriceofTax` varchar(50) NOT NULL,
  `ExchRate` varchar(50) NOT NULL,
  `WareID` varchar(50) NOT NULL,
  `HasForeignTrade` varchar(50) NOT NULL,
  `IsDeduct` varchar(50) NOT NULL,
  `ProofNumber` int(11) NOT NULL,
  `AddField1` varchar(50) NOT NULL,
  `AddField2` varchar(50) NOT NULL,
  `Remark` varchar(200) NOT NULL,
  `SalesID` varchar(50) NOT NULL,
  `Maker` varchar(50) NOT NULL,
  `Permitter` varchar(50) NOT NULL,
  `DepartID` varchar(50) NOT NULL,
  `ProjectID` varchar(50) NOT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购退货主表';

/*Data for the table `caigoutuihuo_main` */

/*Table structure for table `cangkubiao` */

DROP TABLE IF EXISTS `cangkubiao`;

CREATE TABLE `cangkubiao` (
  `CKBHao` int(11) NOT NULL,
  `CKMCheng` varchar(50) DEFAULT NULL,
  `LXRYuan` varchar(50) DEFAULT NULL,
  `LXDHua` varchar(50) DEFAULT NULL,
  `CKDZhi` varchar(50) DEFAULT NULL,
  `BZu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CKBHao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cangkubiao` */

/*Table structure for table `cangkubiao2` */

DROP TABLE IF EXISTS `cangkubiao2`;

CREATE TABLE `cangkubiao2` (
  `CKBHao` int(11) NOT NULL,
  `WLBHao` int(11) DEFAULT NULL,
  `WLSLiang` int(11) DEFAULT NULL,
  `BYZD1` varchar(50) DEFAULT NULL,
  `BYZD2` varchar(50) DEFAULT NULL,
  `BYZD3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CKBHao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cangkubiao2` */

/*Table structure for table `chuku` */

DROP TABLE IF EXISTS `chuku`;

CREATE TABLE `chuku` (
  `id` int(11) NOT NULL,
  `CustName` varchar(50) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `AddrName` varchar(50) DEFAULT NULL,
  `BillNO` varchar(50) DEFAULT NULL,
  `SaleClassName` varchar(50) DEFAULT NULL,
  `currname` varchar(50) DEFAULT NULL,
  `PriceofTax` bit(1) DEFAULT NULL,
  `ExchRate` float DEFAULT NULL,
  `WareName` varchar(50) DEFAULT NULL,
  `HasForeignTeade` varchar(50) DEFAULT NULL,
  `VoucherNO` varchar(50) DEFAULT NULL,
  `HasAutoTnv` bit(1) DEFAULT NULL,
  `SalesName` varchar(50) DEFAULT NULL,
  `Maker` varchar(50) DEFAULT NULL,
  `Depayid` varchar(50) DEFAULT NULL,
  `Permitter` varchar(50) DEFAULT NULL,
  `ProectName` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `AddField1` varchar(50) DEFAULT NULL,
  `AddField2` varchar(50) DEFAULT NULL,
  `ABC` varchar(50) DEFAULT NULL,
  `BCD` varchar(50) DEFAULT NULL,
  `CDE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chuku` */

/*Table structure for table `custbill` */

DROP TABLE IF EXISTS `custbill`;

CREATE TABLE `custbill` (
  `CustID` varchar(50) NOT NULL,
  `BillDate` varchar(20) NOT NULL,
  `Billno` varchar(50) NOT NULL,
  `FundBillNo` varchar(50) NOT NULL,
  `PriceOftax` varchar(50) NOT NULL,
  `InvoiceNo` varchar(50) NOT NULL,
  `AffirmState` varchar(50) NOT NULL,
  `InvotypeId` varchar(50) NOT NULL,
  `VoucherNo` varchar(50) NOT NULL,
  `CurrID` varchar(50) NOT NULL,
  `CVoucherNO` varchar(50) NOT NULL,
  `ExchRate` varchar(50) NOT NULL,
  `Salesman` varchar(50) NOT NULL,
  `Maker` varchar(50) NOT NULL,
  `DeptID` varchar(50) NOT NULL,
  `ProjectID` varchar(50) NOT NULL,
  `UDef1` varchar(50) DEFAULT NULL,
  `UDef2` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购发票主表';

/*Data for the table `custbill` */

/*Table structure for table `lbkxiangbiao` */

DROP TABLE IF EXISTS `lbkxiangbiao`;

CREATE TABLE `lbkxiangbiao` (
  `Number` int(11) NOT NULL,
  `ProdID` varchar(50) DEFAULT NULL,
  `ProdName` varchar(50) DEFAULT NULL,
  `prodsize` varchar(50) DEFAULT NULL,
  `StdUnitName` varchar(50) DEFAULT NULL,
  `SumNum` int(11) DEFAULT NULL,
  `discountunitprice` float DEFAULT NULL,
  `RateOfDiscount` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `moeny` float DEFAULT NULL,
  `BusiTaxRate` float DEFAULT NULL,
  `Tax` float DEFAULT NULL,
  `taxprice` float DEFAULT NULL,
  `batchUsed` int(11) DEFAULT NULL,
  `gift` varchar(50) DEFAULT NULL,
  `Invoicedetails` varchar(50) DEFAULT NULL,
  `weikaipiao` int(11) DEFAULT NULL,
  `brmack` varchar(50) DEFAULT NULL,
  `laiyuandanbie` varchar(50) DEFAULT NULL,
  `laiyuandanhao` varchar(50) DEFAULT NULL,
  `ABC` varchar(50) DEFAULT NULL,
  `BCD` varchar(50) DEFAULT NULL,
  `CDE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lbkxiangbiao` */

/*Table structure for table `mxotherdepots` */

DROP TABLE IF EXISTS `mxotherdepots`;

CREATE TABLE `mxotherdepots` (
  `SerNO` int(11) NOT NULL AUTO_INCREMENT,
  `ProdID` varchar(20) NOT NULL,
  `ProdSize` varchar(20) NOT NULL,
  `ProdName` varchar(20) NOT NULL,
  `SUnit` varchar(20) NOT NULL,
  `sQuantity` int(11) NOT NULL,
  `HaveBatch` varchar(20) NOT NULL,
  `ItemRemark` varchar(20) NOT NULL,
  PRIMARY KEY (`SerNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mxotherdepots` */

/*Table structure for table `mxotherwarehousing` */

DROP TABLE IF EXISTS `mxotherwarehousing`;

CREATE TABLE `mxotherwarehousing` (
  `SerNO` int(11) NOT NULL AUTO_INCREMENT,
  `ProdID` varchar(20) NOT NULL,
  `ProdSize` varchar(20) NOT NULL,
  `ProdName` varchar(20) NOT NULL,
  `SUnit` varchar(20) NOT NULL,
  `sQuantity` int(11) NOT NULL,
  `HaveBatch` varchar(20) NOT NULL,
  `ItemRemark` varchar(20) NOT NULL,
  PRIMARY KEY (`SerNO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `mxotherwarehousing` */

insert  into `mxotherwarehousing`(`SerNO`,`ProdID`,`ProdSize`,`ProdName`,`SUnit`,`sQuantity`,`HaveBatch`,`ItemRemark`) values (1,'1324','sa','sd','sds',0,'sds','dsds');

/*Table structure for table `mxsalesorder` */

DROP TABLE IF EXISTS `mxsalesorder`;

CREATE TABLE `mxsalesorder` (
  `SerNO` int(11) NOT NULL AUTO_INCREMENT,
  `ProdID` varchar(20) NOT NULL,
  `ProdSize` varchar(20) NOT NULL,
  `SUnit` varchar(20) NOT NULL,
  `sQuantity` int(11) NOT NULL,
  `OldPrice` varchar(20) NOT NULL,
  `Discount` varchar(20) NOT NULL,
  `sPrice` varchar(20) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `VFTotal` varchar(20) NOT NULL,
  `PreInDate` date NOT NULL,
  `QtyRemain` int(11) NOT NULL,
  `IsGift` varchar(20) NOT NULL,
  `ItemRemark` varchar(20) NOT NULL,
  `HasCombine` varchar(20) NOT NULL,
  `TranType` varchar(20) NOT NULL,
  `FromNO` varchar(20) NOT NULL,
  `ManuQty` int(11) NOT NULL,
  PRIMARY KEY (`SerNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mxsalesorder` */

/*Table structure for table `mxsalesquotations` */

DROP TABLE IF EXISTS `mxsalesquotations`;

CREATE TABLE `mxsalesquotations` (
  `SerNO` int(11) NOT NULL AUTO_INCREMENT,
  `ProdID` varchar(20) NOT NULL,
  `ProdBusiTaxRate` varchar(20) NOT NULL,
  `ProdName` varchar(20) NOT NULL,
  `ItemRemark` varchar(20) NOT NULL,
  `IsGift` varchar(20) NOT NULL,
  `Discount` varchar(20) NOT NULL,
  `TaxAmt` varchar(20) NOT NULL,
  `UniName` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `OldPrice` varchar(20) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `SQuantity` varchar(20) NOT NULL,
  `sPrice` varchar(20) NOT NULL,
  `VFTotal` varchar(20) NOT NULL,
  `SumBTaxAmt` varchar(20) NOT NULL,
  `SumTax` varchar(20) NOT NULL,
  `SumAmtATax` varchar(20) NOT NULL,
  `ProdSize` varchar(20) NOT NULL,
  PRIMARY KEY (`SerNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mxsalesquotations` */

/*Table structure for table `otherdepots` */

DROP TABLE IF EXISTS `otherdepots`;

CREATE TABLE `otherdepots` (
  `BillNO` varchar(20) NOT NULL,
  `AdjustDate` date NOT NULL,
  `WareName` varchar(20) NOT NULL,
  `VoucherNO` varchar(20) NOT NULL,
  `SalesName` varchar(20) NOT NULL,
  `Permitter` varchar(20) NOT NULL,
  `BillStyleName` varchar(20) NOT NULL,
  `SumQty` int(11) NOT NULL,
  `DepartName` varchar(20) NOT NULL,
  `Remark` varchar(20) NOT NULL,
  `Udef1` varchar(20) NOT NULL,
  `Udef2` varchar(20) NOT NULL,
  `SerNO` int(11) NOT NULL,
  PRIMARY KEY (`BillNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `otherdepots` */

/*Table structure for table `otherwarehousing` */

DROP TABLE IF EXISTS `otherwarehousing`;

CREATE TABLE `otherwarehousing` (
  `BillNO` varchar(20) NOT NULL,
  `AdjustDate` date NOT NULL,
  `WareName` varchar(20) NOT NULL,
  `VoucherNO` varchar(20) NOT NULL,
  `SalesName` varchar(20) NOT NULL,
  `Permitter` varchar(20) NOT NULL,
  `BillStyleName` varchar(20) NOT NULL,
  `SumQty` int(11) NOT NULL,
  `DepartName` varchar(20) NOT NULL,
  `Remark` varchar(20) NOT NULL,
  `Udef1` varchar(20) NOT NULL,
  `Udef2` varchar(20) NOT NULL,
  `SerNO` int(11) NOT NULL,
  PRIMARY KEY (`BillNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `otherwarehousing` */

insert  into `otherwarehousing`(`BillNO`,`AdjustDate`,`WareName`,`VoucherNO`,`SalesName`,`Permitter`,`BillStyleName`,`SumQty`,`DepartName`,`Remark`,`Udef1`,`Udef2`,`SerNO`) values ('s1234','1998-02-20','ss','ss','ss','ss','ss',0,'ss','ss','ss','ss',1);

/*Table structure for table `salesorder` */

DROP TABLE IF EXISTS `salesorder`;

CREATE TABLE `salesorder` (
  `BillNO` varchar(20) NOT NULL,
  `BillDate` date NOT NULL,
  `CustBillNo` varchar(20) NOT NULL,
  `BillStyleName` varchar(20) NOT NULL,
  `CustCurrencyName` varchar(20) NOT NULL,
  `CustMemo` varchar(20) NOT NULL,
  `CustAddress` varchar(20) NOT NULL,
  `SalesName` varchar(20) NOT NULL,
  `DepartName` varchar(20) NOT NULL,
  `ProjectName` varchar(20) NOT NULL,
  `ExchRate` varchar(20) NOT NULL,
  `Permitter` varchar(20) NOT NULL,
  `Maker` varchar(20) NOT NULL,
  `HeaderName` varchar(20) NOT NULL,
  `FooterName` varchar(20) NOT NULL,
  `UserDef1` varchar(20) NOT NULL,
  `UserDef2` varchar(20) NOT NULL,
  `BillStatus` varchar(20) NOT NULL,
  `PriceOfTax` varchar(20) NOT NULL,
  `DueToFullName` varchar(20) NOT NULL,
  `PrepayDay` date NOT NULL,
  `GatherStyle` varchar(20) NOT NULL,
  `AccMoth` varchar(20) NOT NULL,
  `GatherDelay` int(11) NOT NULL,
  `SerNO` int(11) NOT NULL,
  PRIMARY KEY (`BillNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salesorder` */

/*Table structure for table `salesquotations` */

DROP TABLE IF EXISTS `salesquotations`;

CREATE TABLE `salesquotations` (
  `BillNO` varchar(20) NOT NULL,
  `BillDate` date NOT NULL,
  `FormalCust` varchar(50) NOT NULL,
  `CurCurrencyName` varchar(50) NOT NULL,
  `ExchRate` varchar(50) NOT NULL,
  `OutAddress` varchar(50) NOT NULL,
  `PriceOfTax` varchar(50) NOT NULL,
  `ValiDAte` date NOT NULL,
  `HeaderName` varchar(50) NOT NULL,
  `FooterName` varchar(50) NOT NULL,
  `PsnUerDef1` varchar(50) NOT NULL,
  `PsnUerDef2` varchar(50) NOT NULL,
  `CustMemo` varchar(50) NOT NULL,
  `MakerName` varchar(50) NOT NULL,
  `PermitterName` varchar(50) NOT NULL,
  `DepartName` varchar(50) NOT NULL,
  `SalesName` varchar(50) NOT NULL,
  `SerNO` int(11) NOT NULL,
  PRIMARY KEY (`BillNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salesquotations` */

/*Table structure for table `t_store_io` */

DROP TABLE IF EXISTS `t_store_io`;

CREATE TABLE `t_store_io` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Bianhao` varchar(20) DEFAULT NULL,
  `Wuliaomc` varchar(20) DEFAULT NULL,
  `Xinhao` varchar(20) DEFAULT NULL,
  `Mc` varchar(20) DEFAULT NULL,
  `Shul` int(11) DEFAULT NULL,
  `Danjia` int(11) DEFAULT NULL,
  `Zheshu` int(11) DEFAULT NULL,
  `Danj` int(11) DEFAULT NULL,
  `Money` int(11) DEFAULT NULL,
  `Shuil` varchar(20) DEFAULT NULL,
  `Shuie` varchar(20) DEFAULT NULL,
  `Hanshuimonet` varchar(20) DEFAULT NULL,
  `Yuru` varchar(20) DEFAULT NULL,
  `Weiruk` int(11) DEFAULT NULL,
  `Zengpin` varchar(20) DEFAULT NULL,
  `Fenlu` varchar(20) DEFAULT NULL,
  `Laiyuan` varchar(20) DEFAULT NULL,
  `Danhao` varchar(20) DEFAULT NULL,
  `Sj` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_store_io` */

/*Table structure for table `t_stores` */

DROP TABLE IF EXISTS `t_stores`;

CREATE TABLE `t_stores` (
  `gongyings` int(11) NOT NULL AUTO_INCREMENT,
  `Danjutime` varchar(20) DEFAULT NULL,
  `Gongyingsdizhi` varchar(20) DEFAULT NULL,
  `Danjuhaoma` int(11) DEFAULT NULL,
  `Dindanleix` varchar(20) DEFAULT NULL,
  `Bibie` varchar(20) DEFAULT NULL,
  `Shui` varchar(20) DEFAULT NULL,
  `Huilv` varchar(20) DEFAULT NULL,
  `Dankuang` varchar(20) DEFAULT NULL,
  `Dizhi` varchar(20) DEFAULT NULL,
  `Caigou` varchar(20) DEFAULT NULL,
  `Zhidan` varchar(20) DEFAULT NULL,
  `Bumen` varchar(20) DEFAULT NULL,
  `Fuhe` varchar(20) DEFAULT NULL,
  `Suoshu` varchar(20) DEFAULT NULL,
  `Biaotou` varchar(20) DEFAULT NULL,
  `Biaowei` varchar(20) DEFAULT NULL,
  `Zidinyi` varchar(20) DEFAULT NULL,
  `Zidiner` varchar(20) DEFAULT NULL,
  `Beuzhu` varchar(20) DEFAULT NULL,
  `Ks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gongyings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_stores` */

/*Table structure for table `tb_xiaoshoufapiaod` */

DROP TABLE IF EXISTS `tb_xiaoshoufapiaod`;

CREATE TABLE `tb_xiaoshoufapiaod` (
  `Kehu` varchar(50) NOT NULL,
  `Danjuriqi` varchar(50) DEFAULT NULL,
  `Danjuleixing` varchar(20) DEFAULT NULL,
  `Danjuhaoma` varchar(20) DEFAULT NULL,
  `Shifouhanshui` varchar(50) DEFAULT NULL,
  `Fapiaohaoma` varchar(50) DEFAULT NULL,
  `Fapiaodizhi` varchar(50) DEFAULT NULL,
  `Fapiaoleixing` varchar(50) DEFAULT NULL,
  `Heduizhuangtai` varchar(50) DEFAULT NULL,
  `Bibie` varchar(50) DEFAULT NULL,
  `SRngzhengbianhao` varchar(50) DEFAULT NULL,
  `Huilv` double DEFAULT NULL,
  `CBpingzhengbianhao` varchar(50) DEFAULT NULL,
  `Lanyi` varchar(50) DEFAULT NULL,
  `Laner` varchar(50) DEFAULT NULL,
  `Daochuriqi` varchar(50) DEFAULT NULL,
  `Daochurenyuan` varchar(50) DEFAULT NULL,
  `Beizhu` varchar(200) DEFAULT NULL,
  `Yewurenyuan` varchar(50) DEFAULT NULL,
  `Zhidanrenyuan` varchar(50) DEFAULT NULL,
  `Suoshubumen` varchar(50) DEFAULT NULL,
  `Fuherenyuan` varchar(50) DEFAULT NULL,
  `Suoshuxiangmu` varchar(50) DEFAULT NULL,
  `aaa` varchar(50) DEFAULT NULL,
  `bbb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Kehu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_xiaoshoufapiaod` */

/*Table structure for table `tb_xiaoshoufapiaonrd` */

DROP TABLE IF EXISTS `tb_xiaoshoufapiaonrd`;

CREATE TABLE `tb_xiaoshoufapiaonrd` (
  `Lanhao` varchar(50) NOT NULL,
  `Wuliaobianhao` varchar(50) DEFAULT NULL,
  `Wuliaomingcheng` varchar(20) DEFAULT NULL,
  `Guigexinghao` varchar(20) DEFAULT NULL,
  `Danweimingcheng` varchar(50) DEFAULT NULL,
  `Shuliang` varchar(50) DEFAULT NULL,
  `Danjia` varchar(50) DEFAULT NULL,
  `Jine` varchar(50) DEFAULT NULL,
  `Shuilv` varchar(50) DEFAULT NULL,
  `Shuie` varchar(50) DEFAULT NULL,
  `Hanshuijine` varchar(50) DEFAULT NULL,
  `Weichushuliang` double DEFAULT NULL,
  `Dingdanhao` varchar(50) DEFAULT NULL,
  `Zengpin` varchar(50) DEFAULT NULL,
  `Beizhu` varchar(50) DEFAULT NULL,
  `aaa` varchar(50) DEFAULT NULL,
  `bbb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Lanhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_xiaoshoufapiaonrd` */

/*Table structure for table `tb_yingshouchogkuand` */

DROP TABLE IF EXISTS `tb_yingshouchogkuand`;

CREATE TABLE `tb_yingshouchogkuand` (
  `Kehu` varchar(50) NOT NULL,
  `Danjuriqi` varchar(50) DEFAULT NULL,
  `Jiesuanyi` varchar(20) DEFAULT NULL,
  `Jiesuaner` varchar(20) DEFAULT NULL,
  `Jiesuansan` varchar(20) DEFAULT NULL,
  `Jineyi` double DEFAULT NULL,
  `Jineer` double DEFAULT NULL,
  `Jinesan` double DEFAULT NULL,
  `Danjuhao` int(11) DEFAULT NULL,
  `Bibie` varchar(20) DEFAULT NULL,
  `Huilv` double DEFAULT NULL,
  `Zhekoulv` double DEFAULT NULL,
  `YSCKleixing` varchar(20) DEFAULT NULL,
  `Zhongzhizhangyue` varchar(20) DEFAULT NULL,
  `Pingzhengbianhao` int(11) DEFAULT NULL,
  `Suoshubumen` varchar(20) DEFAULT NULL,
  `Zhidanrenyuan` varchar(20) DEFAULT NULL,
  `Suoshuxiangmu` varchar(20) DEFAULT NULL,
  `Fuherenyuan` varchar(20) DEFAULT NULL,
  `Zidinlanone` varchar(20) DEFAULT NULL,
  `Zidinlantwo` varchar(20) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  `aaa` varchar(20) DEFAULT NULL,
  `bbb` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Kehu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_yingshouchogkuand` */

/*Table structure for table `tb_yingshouchogkuandnr` */

DROP TABLE IF EXISTS `tb_yingshouchogkuandnr`;

CREATE TABLE `tb_yingshouchogkuandnr` (
  `Lanhao` varchar(50) NOT NULL,
  `Danbie` varchar(20) DEFAULT NULL,
  `Yuandanriqi` varchar(20) DEFAULT NULL,
  `Yuandandanhao` varchar(20) DEFAULT NULL,
  `Fapiaohaoma` varchar(20) DEFAULT NULL,
  `Jiaoyiduixiang` varchar(50) DEFAULT NULL,
  `JiaoyiduixiangName` varchar(50) DEFAULT NULL,
  `Bumenbianhao` int(11) DEFAULT NULL,
  `Bumenmingcheng` varchar(50) DEFAULT NULL,
  `Yewurenyuan` varchar(50) DEFAULT NULL,
  `Xiangmumingchen` varchar(50) DEFAULT NULL,
  `Bibie` varchar(20) DEFAULT NULL,
  `Huilv` double DEFAULT NULL,
  `Yuandanjine` double DEFAULT NULL,
  `Xianxingyue` double DEFAULT NULL,
  `Zherangjine` double DEFAULT NULL,
  `Chongkuanjine` double DEFAULT NULL,
  `Chongdijine` double DEFAULT NULL,
  `qqq` varchar(50) DEFAULT NULL,
  `aaa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Lanhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_yingshouchogkuandnr` */

/*Table structure for table `tb_yushoukuand` */

DROP TABLE IF EXISTS `tb_yushoukuand`;

CREATE TABLE `tb_yushoukuand` (
  `Yushoujine` double DEFAULT NULL,
  `Laiyuanbie` varchar(50) DEFAULT NULL,
  `Laiyuandanhao` varchar(20) NOT NULL,
  `Zhaiyao` varchar(20) DEFAULT NULL,
  `aaa` varchar(50) DEFAULT NULL,
  `bbb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Laiyuandanhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_yushoukuand` */

/*Table structure for table `tuihuo` */

DROP TABLE IF EXISTS `tuihuo`;

CREATE TABLE `tuihuo` (
  `id` int(11) NOT NULL,
  `CustName` varchar(50) DEFAULT NULL,
  `BillDate` date DEFAULT NULL,
  `AddrName` varchar(50) DEFAULT NULL,
  `BillNO` varchar(50) DEFAULT NULL,
  `SaleClassName` varchar(50) DEFAULT NULL,
  `currname` varchar(50) DEFAULT NULL,
  `PriceofTax` bit(1) DEFAULT NULL,
  `ExchRate` float DEFAULT NULL,
  `WareName` varchar(50) DEFAULT NULL,
  `HasForeignTeade` varchar(50) DEFAULT NULL,
  `VoucherNO` varchar(50) DEFAULT NULL,
  `IsDeduct` bit(1) DEFAULT NULL,
  `SalesName` varchar(50) DEFAULT NULL,
  `Maker` varchar(50) DEFAULT NULL,
  `Depayid` varchar(50) DEFAULT NULL,
  `Permitter` varchar(50) DEFAULT NULL,
  `ProectName` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `AddField1` varchar(50) DEFAULT NULL,
  `AddField2` varchar(50) DEFAULT NULL,
  `ABC` varchar(50) DEFAULT NULL,
  `BCD` varchar(50) DEFAULT NULL,
  `CDE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tuihuo` */

/*Table structure for table `xbiao` */

DROP TABLE IF EXISTS `xbiao`;

CREATE TABLE `xbiao` (
  `SerNo` varchar(50) NOT NULL,
  `ProsID` varchar(20) NOT NULL,
  `ProdName` varchar(50) NOT NULL,
  `ProdSize` varchar(50) NOT NULL,
  `PriceOftax` varchar(50) NOT NULL,
  `Sunit` varchar(50) NOT NULL,
  `SQuantity` varchar(50) NOT NULL,
  `SPrice` varchar(50) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `TaxRate` varchar(50) NOT NULL,
  `TaxAmt` varchar(50) NOT NULL,
  `RateBalanceAmt` varchar(50) NOT NULL,
  `BalanceAmt` varchar(50) NOT NULL,
  `LocalBalanceAmt` varchar(50) NOT NULL,
  `TotaBalanceAmt` varchar(50) NOT NULL,
  `ProjectID` varchar(50) NOT NULL,
  `SourceType` varchar(50) NOT NULL,
  `SourceBillNo` varchar(50) NOT NULL,
  `AmountithTax` varchar(50) NOT NULL,
  `LQty` varchar(50) NOT NULL,
  `FromNo` varchar(50) NOT NULL,
  `IsGift` varchar(50) NOT NULL,
  `Remark` varchar(50) NOT NULL,
  `rema` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='采购发票详表';

/*Data for the table `xbiao` */

/*Table structure for table `xiangbiao` */

DROP TABLE IF EXISTS `xiangbiao`;

CREATE TABLE `xiangbiao` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Bianhao` varchar(20) DEFAULT NULL,
  `Wuliaomc` varchar(20) DEFAULT NULL,
  `Xinhao` varchar(20) DEFAULT NULL,
  `Mc` varchar(20) DEFAULT NULL,
  `Shul` int(11) DEFAULT NULL,
  `Bibie` int(11) DEFAULT NULL,
  `Jinjia` int(11) DEFAULT NULL,
  `Money` int(11) DEFAULT NULL,
  `Danjia` varchar(20) DEFAULT NULL,
  `Jiner` varchar(20) DEFAULT NULL,
  `Xuqiu` varchar(20) DEFAULT NULL,
  `Jiany` varchar(20) DEFAULT NULL,
  `Caigoul` int(11) DEFAULT NULL,
  `Fenlu` varchar(20) DEFAULT NULL,
  `Laiyuan` varchar(20) DEFAULT NULL,
  `Danhao` varchar(20) DEFAULT NULL,
  `Js` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xiangbiao` */

/*Table structure for table `xunjia` */

DROP TABLE IF EXISTS `xunjia`;

CREATE TABLE `xunjia` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Bianhao` varchar(20) DEFAULT NULL,
  `Wuliaomc` varchar(20) DEFAULT NULL,
  `Xinhao` varchar(20) DEFAULT NULL,
  `Mc` varchar(20) DEFAULT NULL,
  `Shul` int(11) DEFAULT NULL,
  `Zhekou` int(11) DEFAULT NULL,
  `Danjia` varchar(20) DEFAULT NULL,
  `Jine` varchar(20) DEFAULT NULL,
  `Zhehsu` varchar(20) DEFAULT NULL,
  `Shuil` varchar(20) DEFAULT NULL,
  `Shuier` int(11) DEFAULT NULL,
  `Fenlu` varchar(20) DEFAULT NULL,
  `Hanshui` varchar(20) DEFAULT NULL,
  `Zengp` varchar(20) DEFAULT NULL,
  `Js` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xunjia` */

/*Table structure for table `xunjiadan` */

DROP TABLE IF EXISTS `xunjiadan`;

CREATE TABLE `xunjiadan` (
  `gongyings` varchar(20) NOT NULL,
  `Danjutime` varchar(20) DEFAULT NULL,
  `Gongyingsdizhi` varchar(20) DEFAULT NULL,
  `Danjuhaoma` int(11) DEFAULT NULL,
  `Times` varchar(20) DEFAULT NULL,
  `Bibie` varchar(20) DEFAULT NULL,
  `Shui` varchar(20) DEFAULT NULL,
  `Huilv` varchar(20) DEFAULT NULL,
  `Dankuang` varchar(20) DEFAULT NULL,
  `Dizhi` varchar(20) DEFAULT NULL,
  `Caigou` varchar(20) DEFAULT NULL,
  `Zhidan` varchar(20) DEFAULT NULL,
  `Bumen` varchar(20) DEFAULT NULL,
  `Fuhe` varchar(20) DEFAULT NULL,
  `Suoshu` varchar(20) DEFAULT NULL,
  `Biaotou` varchar(20) DEFAULT NULL,
  `Biaowei` varchar(20) DEFAULT NULL,
  `Zidinyi` varchar(20) DEFAULT NULL,
  `Zidiner` varchar(20) DEFAULT NULL,
  `Beuzhu` varchar(20) DEFAULT NULL,
  `Nsn` varchar(20) DEFAULT NULL,
  `Jsjs` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gongyings`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xunjiadan` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
