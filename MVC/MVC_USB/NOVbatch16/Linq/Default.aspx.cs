﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataClassesDataContext dc = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        tbl_reg tr = new tbl_reg();
        tr.fname = fname.Text;
        tr.lname = lname.Text;

        dc.tbl_regs.InsertOnSubmit(tr);
        dc.SubmitChanges();
    }
}