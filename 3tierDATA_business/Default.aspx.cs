using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Businesslayer bs = new Businesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        bs.firstName =Text_fname.Text;
        bs.LastName = Text_lname.Text;
        
        int p=bs.bs_insert(bs);
        if (p>0)
	    {
		 Response.Write("succesfully");
	    }   
        else
	    {
            Response.Write("Try Again");
	    }
    }

}