using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for Databaselayer
/// </summary>
public class Databaselayer
{
    string str = ConfigurationManager.ConnectionStrings["str"].ToString();
 
	public Databaselayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int db_insert(Businesslayer bs)
    {
        SqlConnection con=new SqlConnection(str);
        SqlCommand cmd=new SqlCommand();
        cmd.CommandText = "sp_insert";
        cmd.CommandType=CommandType.StoredProcedure;
        cmd.Connection=con;

        cmd.Parameters.AddWithValue("@fn", bs.firstName);
        cmd.Parameters.AddWithValue("@ln",bs.LastName);

        con.Open();
        int p=cmd.ExecuteNonQuery();
        con.Close();
        return p;
    }
}