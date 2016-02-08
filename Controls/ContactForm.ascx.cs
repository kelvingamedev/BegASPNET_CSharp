using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; // Provides access to the File class for reading the file
using System.Net.Mail; // Provides acess to the various mail classes

public partial class Controls_ContactForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!String.IsNullOrEmpty(textBoxBusinessPhone.Text) || !String.IsNullOrEmpty(textBoxPersonalPhone.Text))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    protected void textBoxComments_TextChanged(object sender, EventArgs e)
    {

    }

    protected void sendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            sendButton.Enabled = false;
            string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
            string mailBody = File.ReadAllText(fileName);

            mailBody = mailBody.Replace("##Name##", textBoxName.Text);
            mailBody = mailBody.Replace("##Email##", textBoxEmail.Text);
            mailBody = mailBody.Replace("##HomePhone##", textBoxPersonalPhone.Text);
            mailBody = mailBody.Replace("##BusinessPhone##", textBoxBusinessPhone.Text);
            mailBody = mailBody.Replace("##Comments##", textBoxComments.Text);

            MailMessage myMessage = new MailMessage();
            myMessage.Subject = "Response for Website";
            myMessage.Body = mailBody;

            myMessage.From = new MailAddress("sender@example.com", "Sender Name");
            myMessage.To.Add(new MailAddress("planetwrox@wrox.com", "Planet Wrox"));
            myMessage.ReplyToList.Add(new MailAddress(textBoxEmail.Text));

            SmtpClient mySmtp = new SmtpClient();
            mySmtp.Send(myMessage);


            Message.Visible = true;
            MessageSentPara.Visible = true;
            FormTable.Visible = false;
            System.Threading.Thread.Sleep(5000);
        }
    }
}