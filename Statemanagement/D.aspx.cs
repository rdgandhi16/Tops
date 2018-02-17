using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class D : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Name"]==null)
        {
            Label_name.Text = "Empty";   
        }
        else
        {
            Label_surname.Text = Request.QueryString["Name"];
        }
        if (Request.QueryString["Surname"]==null)
        {
            Label_surname.Text = "Empty";

        }
        else
        {
            Label_surname.Text = Request.QueryString["Surname"];
        }
    }
}