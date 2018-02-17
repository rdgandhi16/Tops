using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{       
    business bs=new business();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bs.fname = Text_fname.Text;
        bs.lname = Text_lname.Text;

        int a = bs.bs_insert(bs);
        if (a>0)
        {
            Response.Write("succesfully");
        }
        else
        {
            Response.Write("Try Again");
        }
    }
}