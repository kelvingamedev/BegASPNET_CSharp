using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Frontend : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.IsPostBack)
        {
            String selectedTheme = this.Page.Theme;
            HttpCookie preferredTheme = this.Request.Cookies.Get("PreferredTheme");
            if(preferredTheme != null)
            {
                selectedTheme = preferredTheme.Value;
            }
            if (!String.IsNullOrEmpty(selectedTheme))
            {
                ListItem item = ThemeList.Items.FindByValue(selectedTheme);
                if(item != null)
                {
                    item.Selected = true;
                }
            }

            switch (Page.Theme.ToLower())
            {
                case "darkgrey":
                    Menu1.Visible = false;
                    TreeView1.Visible = true;
                    break;
                default:
                    Menu1.Visible = true;
                    TreeView1.Visible = false;
                    break;
            }
        }
    }


    protected void ThemeList_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = new HttpCookie("PreferredTheme");
        preferredTheme.Expires = DateTime.Now.AddMonths(3);
        preferredTheme.Value = ThemeList.SelectedValue;
        this.Response.Cookies.Add(preferredTheme);
        this.Response.Redirect(this.Request.Url.ToString());
    }
}
