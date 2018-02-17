using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class S : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["emname"]==null)
        {
            Label_Emname.Text = "Not Availabel";
        }
        else
        {
            Label_Emname.Text = Session["emname"].ToString();
        }


        if (Session["emsurname"]==null)
        {
            Label_Emsurname.Text = "not Available";

        }
        else
        {
            Label_Emsurname.Text = Session["emsurname"].ToString();
        }
    }
}