using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["f1"]==null)
        {
            Label1.Text = "Nothing";
        }
        else
        {
            Label1.Text = Request.QueryString["f1"];
        }

        if (Request.QueryString["L1"]==null)
        {
            Label2.Text = "Empty";
        }
        else
        {
            Label2.Text = Request.QueryString["l1"];
        }
    }

}