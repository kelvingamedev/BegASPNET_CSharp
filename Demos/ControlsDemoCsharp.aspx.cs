using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_ControlsDemoCsharp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex != 0)
        {
            labelResult.Text = "Your favourite language is " + DropDownList1.SelectedValue
                + "<br/> Other languages are: <br/>";

            foreach(ListItem item in DropDownList1.Items)
            {
                if (item.Value != DropDownList1.SelectedValue)
                {
                    labelResult.Text += item.Value + "<br/>";
                }
            }
        }

        else {
            labelResult.Text = "";
        }
    }
}