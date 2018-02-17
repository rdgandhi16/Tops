using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["First"].Value= Text_First.Text;
        Response.Cookies["Last"].Value = Text_Last.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["First"].Value==null)
        {
            Label_first.Text = "Empty";
        }
        else
        {
            Label_first.Text = Request.Cookies["First"].Value;
        }
        if (Request.Cookies["Last"].Value==null)
        {
            Label_Last.Text = "Empty";
        }
        else
        {
            Label_Last.Text = Request.Cookies["Last"].Value;

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Request.Cookies["First"].Expires = DateTime.Now.AddDays(-1);
        Request.Cookies["Last"].Expires = DateTime.Now.AddDays(-1);
    }

}