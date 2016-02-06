using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// Copyright A Wrox website
public partial class Demos_UpdatePanel : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString();

    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        refreshPage();
    }


    private void refreshPage()
    {
        Response.Redirect(Request.Url.ToString());
    }
}