﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.17929
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="db_28dec")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Inserttbl_reg(tbl_reg instance);
  partial void Updatetbl_reg(tbl_reg instance);
  partial void Deletetbl_reg(tbl_reg instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["db_28decConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<tbl_reg> tbl_regs
	{
		get
		{
			return this.GetTable<tbl_reg>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.tbl_reg")]
public partial class tbl_reg : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private string _fname;
	
	private string _lname;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnfnameChanging(string value);
    partial void OnfnameChanged();
    partial void OnlnameChanging(string value);
    partial void OnlnameChanged();
    #endregion
	
	public tbl_reg()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_fname", DbType="VarChar(50)")]
	public string fname
	{
		get
		{
			return this._fname;
		}
		set
		{
			if ((this._fname != value))
			{
				this.OnfnameChanging(value);
				this.SendPropertyChanging();
				this._fname = value;
				this.SendPropertyChanged("fname");
				this.OnfnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lname", DbType="VarChar(50)")]
	public string lname
	{
		get
		{
			return this._lname;
		}
		set
		{
			if ((this._lname != value))
			{
				this.OnlnameChanging(value);
				this.SendPropertyChanging();
				this._lname = value;
				this.SendPropertyChanged("lname");
				this.OnlnameChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
