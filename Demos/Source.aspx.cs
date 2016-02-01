using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// Copyright A Wrox website
public partial class Demos_Source : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Server.Transfer("Target.aspx?Test=SomeValue");
        //this.Response.Redirect("Target?Test=SomeValue");
    }
}