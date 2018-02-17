using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _3tier : System.Web.UI.Page
{
    string str = ConfigurationManager.ConnectionStrings["str"].ToString();

    business1 bs = new business1();


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
       
    }
    public void bind()
    {
        GridView1.DataSource = bs.bs_bind();
        GridView1.DataBind();
    }
}