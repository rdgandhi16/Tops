﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVC_ALL_Cntrl_DB
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class db_mvc_vishEntities : DbContext
    {
        public db_mvc_vishEntities()
            : base("name=db_mvc_vishEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<tbl_gender> tbl_gender { get; set; }
        public DbSet<tbl_hobby> tbl_hobby { get; set; }
        public DbSet<tbl_state> tbl_state { get; set; }
        public DbSet<tbl_subject> tbl_subject { get; set; }
    }
}
