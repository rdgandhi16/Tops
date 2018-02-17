using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class S_MGMT : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
    //    Label_Hidden.Text = HiddenField1.Value;
    //}
    //protected void Button2_Click(object sender, EventArgs e)
    //{
    //    Session["data"] = Text_fname.Text;
    //    Response.Redirect("SM1.aspx");
    //}
    //protected void Button3_Click(object sender, EventArgs e)
    //{
    //    Session.Abandon();
    //}
    //protected void Button4_Click(object sender, EventArgs e)
    //{
    //    Session.Clear();

    //}
    //protected void Button5_Click(object sender, EventArgs e)
    //{
    //    Session.Remove("data");
    //}



    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Cookies["cookies"].Value = Text_cookies.Text;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["cookies"]==null)
        {
            Label_cookies.Text = "Not Available";
        }
        else
        {
            Label_cookies.Text = Request.Cookies["cookies"].Value;
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Request.Cookies["cookies"].Expires = DateTime.Now.AddDays(-1);
    }
}