using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;


// Copyright A Wrox website
public partial class Demos_Email : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Test Message";
        myMessage.Body = "Hello world, from Planet Wrox";
        myMessage.From = new MailAddress("kelvin.gamedeveloper@gmail.com", "Kelvin - Wrox Developer");
        myMessage.To.Add(new MailAddress("kelvin.gamedeveloper@gmail.com", "Client"));
        
        SmtpClient mySmtpClient = new SmtpClient();
        //mySmtpClient.UseDefaultCredentials = false;
        mySmtpClient.DeliveryMethod = SmtpDeliveryMethod.SpecifiedPickupDirectory;
       // mySmtpClient.Credentials = new NetworkCredential("kelvin.oliveira_159@hotmail.com", "N4V!D4T0D0PaSSa");
        mySmtpClient.Send(myMessage);
    }
}