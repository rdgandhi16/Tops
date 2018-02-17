using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Businesslayer
/// </summary>
public class Businesslayer
{
    Databaselayer db = new Databaselayer();
    public int id { get; set; }
    public string firstName { get; set; }
    public string LastName { get; set; }
	
    public Businesslayer()
    {
		//
		// TODO: Add constructor logic here
		//
	}

    public int bs_insert(Businesslayer bs)
    {
        return db.db_insert(bs);
    }
}