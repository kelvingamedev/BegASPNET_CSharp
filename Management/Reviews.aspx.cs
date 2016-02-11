using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_Reviews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// Ask for a object that can be explictly convert to a boolean and returns a string "Yes" or "No"
    /// based in him
    /// </summary>
    /// <param name="booleanValue"></param>
    /// <returns></returns>
    protected string GetBooleanText(object booleanValue)
    {
        bool authorized = (bool)booleanValue;
        if(authorized)
        {
            return "Yes";
        }
        else
        {
            return "No";
        }
    }
}