using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Configuration;

public partial class password_recover : System.Web.UI.Page
{
    string password;
    int email_valid;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void button_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Thank you! An email has been sent to address you provided')</script>");
        
        try
        {
            using (System.Data.SqlClient.SqlConnection sql = new System.Data.SqlClient.SqlConnection("Data Source=dcm.uhcl.edu;Initial Catalog=c432016fa02mehtaa;User ID=mehtaa;Password=1464436"))
            {
                sql.Open();

                String selectquery = "SELECT * FROM MehtaA_WADfl16_StudentInfo";
                System.Data.SqlClient.SqlCommand sp = new System.Data.SqlClient.SqlCommand(selectquery, sql);

                System.Data.SqlClient.SqlDataReader reader = sp.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {

                        StudentInfo student = new StudentInfo();
                        student.EmailAddress = reader.GetString(7);
                        if (student.EmailAddress == email_text.Text)
                        {
                            student.Password = reader.GetString(2);
                            password = student.Password;
                            email_valid = 1;

                        }
                       

                    }
                }
                reader.Close();
                sql.Close();
            }

            if (email_valid == 1)
            {


                /* Body of the email is:*/
                string body_part1 = "Dear Valued Student, <br /> You are receiving this email beause you requested to recover your password.";
                string body_part2 = "<br /><br />Your current password is:" + "<mark>" + password + "</mark>";
                string body_part3 = "<br /><mark>IHelp Education Student Loan</mark>";
                //string body_part4 = "<br /> You can now access your loan account at" + "<a href=" + "login.aspx\"" + ">" + "</a>";

                string body = body_part1 + body_part2 + body_part3;
                using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], email_text.Text))
                {
                    mail.Subject = "We have recovered your password!";
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
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Thank You. An email has been sent to the address you have provided');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('You are not in my database');", true);
            }
        }
        catch (Exception)
        {

        }
    }

    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}