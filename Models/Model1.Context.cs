﻿//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class erpEntities : DbContext
    {
        public erpEntities()
            : base("name=erpEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<caigou> caigou { get; set; }
        public DbSet<caigoufentan_main> caigoufentan_main { get; set; }
        public DbSet<caigouruku_main> caigouruku_main { get; set; }
        public DbSet<caigoutuihuo_main> caigoutuihuo_main { get; set; }
        public DbSet<cangkubiao> cangkubiao { get; set; }
        public DbSet<cangkubiao2> cangkubiao2 { get; set; }
        public DbSet<chuku> chuku { get; set; }
        public DbSet<custbill> custbill { get; set; }
        public DbSet<lbkxiangbiao> lbkxiangbiao { get; set; }
        public DbSet<mxotherdepots> mxotherdepots { get; set; }
        public DbSet<mxotherwarehousing> mxotherwarehousing { get; set; }
        public DbSet<mxsalesorder> mxsalesorder { get; set; }
        public DbSet<mxsalesquotations> mxsalesquotations { get; set; }
        public DbSet<otherdepots> otherdepots { get; set; }
        public DbSet<otherwarehousing> otherwarehousing { get; set; }
        public DbSet<salesorder> salesorder { get; set; }
        public DbSet<salesquotations> salesquotations { get; set; }
        public DbSet<t_store_io> t_store_io { get; set; }
        public DbSet<t_stores> t_stores { get; set; }
        public DbSet<tb_xiaoshoufapiaod> tb_xiaoshoufapiaod { get; set; }
        public DbSet<tb_xiaoshoufapiaonrd> tb_xiaoshoufapiaonrd { get; set; }
        public DbSet<tb_yingshouchogkuand> tb_yingshouchogkuand { get; set; }
        public DbSet<tb_yingshouchogkuandnr> tb_yingshouchogkuandnr { get; set; }
        public DbSet<tb_yushoukuand> tb_yushoukuand { get; set; }
        public DbSet<tuihuo> tuihuo { get; set; }
        public DbSet<xbiao> xbiao { get; set; }
        public DbSet<xiangbiao> xiangbiao { get; set; }
        public DbSet<xunjia> xunjia { get; set; }
        public DbSet<xunjiadan> xunjiadan { get; set; }
    }
}