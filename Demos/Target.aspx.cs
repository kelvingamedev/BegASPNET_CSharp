using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// Copyright A Wrox website
public partial class Demos_Target : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = this.Request.QueryString.ToString();

    }
}