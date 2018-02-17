using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StateMgmt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewState["firstname"] = Text_fname.Text;
        ViewState["Lastname"] = Text_Lname.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ViewState["firstname"]==null)
        {
            Label_view.Text = "nothing";
        }
        else
        {
            Label_view.Text = ViewState["firstname"].ToString();
        }
        if (ViewState["Lastname"] == null)
        {
            Label_view1.Text = "nothing";
        }
        else
        {
            Label_view1.Text = ViewState["Lastname"].ToString();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("display.aspx?f1=" + Text_F.Text + "&L1=" + Text_L.Text);
    }
}