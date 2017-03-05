using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentUser"] != null)
        {
            linkbuttonlogin.Text = "Logout";
            messagetext.ReadOnly = false;
            sendmsg.Enabled = true;
        }
        else
        {
            linkbuttonlogin.Text = "Login";
            
        }
    }

    protected void linkbuttonhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void linkbuttonlogin_Click(object sender, EventArgs e)
    {
        if (Session["currentUser"] != null)
        {
            Response.Redirect("logout.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void sendmsg_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Thank You. An email notification has been sent to your email address.')</script>");

        
        try
        {
            string email_id;
            StudentInfo obj = Session["currentUser"] as StudentInfo;
            email_id = obj.EmailAddress.ToString();

            /* Body of the email is:*/
            string body = "Dear Valued Student, <br /> You are receiving this email because you contacted us with a question and/or a concern. <br /> Our support staff will repond wthin the next 48 hours. <br /><br /> Thank You <br/> <mark> IHelp Education Student Loan </mark>";

            using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], email_id))
            {
                mail.Subject = "We have received your message!";
                mail.Body = body;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]); ;
                NetworkCredential NetworkCred = new NetworkCredential(ConfigurationManager.AppSettings["SMTPuser"], ConfigurationManager.AppSettings["SMTPpassword"]);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]); ;
                smtp.Send(mail);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Thank You.An email notification has also been sent to the address we have in out file.');", true);
            }
        }
        catch(Exception)
        {
            
        }

    }
}