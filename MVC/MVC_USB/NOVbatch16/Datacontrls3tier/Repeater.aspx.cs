﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Repeater : System.Web.UI.Page
{
    businesslayer bs = new businesslayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }

    }

    public void bind()
    {
        Repeater1.DataSource = bs.bs_bind();
        Repeater1.DataBind();
    }
}