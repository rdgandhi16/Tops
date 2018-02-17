using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sesion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["emname"] = Text_Ename.Text;
        Session["emsurname"] = Text_Esurname.Text;
        Response.Redirect("S.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Clear();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Remove("emname");
        Session.Remove("emsurname");
    }
}