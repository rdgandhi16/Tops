using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for database1
/// </summary>
public class database1
{
    string str = ConfigurationManager.ConnectionStrings["str"].ToString();
	public database1()
	{
		
	}
    public DataSet db_bind()
    {
        SqlConnection con = new SqlConnection(str);
        SqlDataAdapter ad = new SqlDataAdapter("sp_3view", con);
        DataSet dt=new DataSet();
        ad.Fill(dt);

        return(dt);


    }

}