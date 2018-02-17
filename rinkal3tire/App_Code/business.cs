using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for business
/// </summary>
public class business
{
    database db = new database();

    public int id { get; set; }
    public string fname { get; set; }
    public string lname { get; set; }

	public business()
	{
    }

    public int bs_insert(business bs)
    {

        return db.db_insert(bs);

    }

}