using System;
using System.Web;

/// <summary>
/// Base page that all pages of Wrox website should inherit
/// </summary>
public class BasePage : System.Web.UI.Page
{
    private void Page_PreRender(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(this.Title) || this.Title.Equals("Untitled Page",
            StringComparison.CurrentCulture))
            {
            throw new Exception("Page title cannot be \"Untitled Page\" or an empty string");
            }
    }

    private void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = this.Request.Cookies.Get("PreferredTheme");
        if(preferredTheme != null)
        {
            string folder = this.Server.MapPath("~/App_Themes/" + preferredTheme.Value);
            if (System.IO.Directory.Exists(folder))
            {
                this.Page.Theme = preferredTheme.Value;
            }
        }
    }
}