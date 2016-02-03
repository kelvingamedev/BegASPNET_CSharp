﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if(!String.IsNullOrEmpty(textBoxBusinessPhone.Text) || !String.IsNullOrEmpty(textBoxPersonalPhone.Text))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}