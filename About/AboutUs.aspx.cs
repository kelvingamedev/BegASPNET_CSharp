using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// Copyright A Wrox website
public partial class About_AboutUs : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            Banner2.DisplayDirection = Direction.Vertical;
            Banner2.NavigateUrl = "http://imar.spaanjaars.com";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }


}
    
