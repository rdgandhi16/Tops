using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewState["firstName"] = Text_fname.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (ViewState["firstName"]==null)
        {
            Label_fname.Text = "nothing";
        }
        else
        {
            Label_fname.Text=ViewState["firstName"].ToString();
        }

        if (ViewState["LastName"] == null)
        {
           Label_lname.Text = "nothing";
        }
        else
        {
            Label_lname.Text = ViewState["lastName"].ToString();
        }
    }
}