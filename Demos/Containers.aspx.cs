﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CssDemos_Containers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void checkShowPanel_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = !Panel1.Visible;
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        Result.Text = "Your name is: " + YourName.Text + "<br/>" +
            "Your favorite language is " + favoriteLanguage.Text;
    }


}