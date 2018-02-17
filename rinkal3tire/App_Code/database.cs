using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for database
/// </summary>
public class database
{
    string str = ConfigurationManager.ConnectionStrings["str"].ToString();
	public database()
	{
		
	}
    public int db_insert(business bs)
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;

        cmd.Parameters.AddWithValue("@fname", bs.fname);
        cmd.Parameters.AddWithValue("@lname", bs.lname);

        con.Open();
        int p=cmd.ExecuteNonQuery();
        con.Close();
        return p;
    }
    
}