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
    string str=@"Data Source=DESKTOP-BGNC3KS\MYSQL;Initial Catalog=db_laddu;Integrated Security=True";
	public Databaselayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet db_bind()
    {
        SqlConnection con = new SqlConnection(str);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "sp_display";
        cmd.CommandType=CommandType.StoredProcedure;
        cmd.Connection = con;

        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        ad.Fill(dt);

        
        return (dt);

    }
}