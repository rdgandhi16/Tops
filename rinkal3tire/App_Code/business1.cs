using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for business1
/// </summary>
public class business1
{
    database1 db=new database1();
	public business1()
	{
    
	}
    public DataSet bs_bind()
    {

        return db.db_bind();
   
    }
}