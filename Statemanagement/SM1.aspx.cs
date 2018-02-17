using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SM1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["data"]!=null)
        {
            Label_fname.Text = Session["data"].ToString();
        }
        else
        {
            Label_fname.Text = "Nothing";

        }
    }
}