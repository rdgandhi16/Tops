using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for businesslayer
/// </summary>
public class businesslayer
{
    Databaselayer db = new Databaselayer();
    public int ID { get; set; }
    public string FirstName { get; set; }
    public string lastName { get; set; }
	public businesslayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataSet bs_bind()
    {
        return db.db_bind();
    }
}