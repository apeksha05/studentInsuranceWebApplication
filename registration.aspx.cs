using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentUser"] != null)
        {
            linkbuttonlogin.Text = "Logout";
        }
        else
        {
            linkbuttonlogin.Text = "Login";
        }
        myMonth();
        myDate();
        myYear();
    }

    public void myDate()
    {
        for (int i = 1; i <= 31; i++)
        {
            datelist.Items.Add(i.ToString());
        }
    }

    private void myMonth()
    {
        System.Globalization.DateTimeFormatInfo info = System.Globalization.DateTimeFormatInfo.GetInstance(null);
        for (int i = 1; i < 13; i++)
        {
            monthlist.Items.Add(new ListItem(info.GetMonthName(i), i.ToString()));
        }
    }

    protected void myYear()
    {

        for (int i = 1950; i <= 2001; i++)
        {
            yearlist.Items.Add(i.ToString());
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

    protected void submitbutton_Click(object sender, EventArgs e)
    {
        bool value = checkbox.Checked;
        //string script = "alert('Thank you for submitting the registration, you can now login by clicking the login link at the top right hand side of the page')";
        //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        List<StudentInfo> allUsersList = Application["AllUsersList"] as List<StudentInfo>;
        String fullame = fulltext.Text;
        String ssn = ssntext.Text;
        String con_ssn = confirmssn.Text;
        String dob = monthlist.SelectedValue + "/" + datelist.SelectedValue + "/" + yearlist.SelectedValue;
        String addr = address.Text;
        String uname = username.Text;
        String pwd = password.Text;
        String con_pwd = confirmpsw.Text;
        String emailId = email.Text;
        String con_emailId = confirmemail.Text;
        String sec_que = securityquestions.Text;
        String sec_ans = answer.Text;
        Random r = new Random();
        int rand = r.Next(100000, 999999);

    

        if (value)
        {
            StudentInfo s = new StudentInfo(uname, pwd, ssn, fullame, dob, addr, emailId, sec_que, sec_ans, rand);
            allUsersList.Add(s);
            //Session["currentUser"] = s;
            //try
            //{


            //    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["mehtaa_database"].ToString());
            //    cn.Open();
            //      String query = "INSERT INTO MehtaA_WADfl16_StudentInfo (socialSecurityNumber,userName,password,certifiedchecked,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber) VALUES (" + ssn + "," + uname + "," + pwd + ",-," + fullame + "," + dob + "," + addr + "," + emailId + "," + sec_que + "," + sec_ans + "," + rand.ToString() + ")";
            //    SqlCommand cmd = new SqlCommand(query, cn);
            //    cmd.ExecuteNonQuery();
            //    cn.Close();
            //}
            //catch
            //{
            //    Response.Write("");
            //}
            int number_defalut_int = 1;
            float number_default = (float)number_defalut_int;

            //date
            string date_default = "1/1/1950";

            SqlConnection con = new SqlConnection("Data Source = dcm.uhcl.edu; Initial Catalog = c432016fa02mehtaa; Persist Security Info = True; User ID = mehtaa; Password = 1464436");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO MehtaA_WADfl16_StudentInfo (socialSecurityNumber,userName,password,certifiedchecked,fullName,dateOfBirth,address,emailAddress,securityQuestion,securityQuestionAnswer,accountNumber,lastUpdatedDate,currentBalance,regularMonthlyPaymentAmount,amountSatisfiedByExtraPayment,pastDueAmount,currentAmountDue,currentStatementDueDate) VALUES (@socialSecurityNumber,@userName,@password,@certifiedchecked,@fullName,@dateOfBirth,@address,@emailAddress,@securityQuestion,@securityQuestionAnswer,@accountNumber,@lastUpdatedDate,@currentBalance,@regularMonthlyPaymentAmount,@amountSatisfiedByExtraPayment,@pastDueAmount,@currentAmountDue,@currentStatementDueDate)", con);
            cmd.Parameters.AddWithValue("@socialSecurityNumber", ssn);
            cmd.Parameters.AddWithValue("@userName", uname);
            cmd.Parameters.AddWithValue("@password", pwd);
            cmd.Parameters.AddWithValue("@certifiedchecked", value);
            cmd.Parameters.AddWithValue("@fullName", fullame);
            cmd.Parameters.AddWithValue("@dateOfBirth", dob);
            cmd.Parameters.AddWithValue("@address", addr);
            cmd.Parameters.AddWithValue("@emailAddress", emailId);
            cmd.Parameters.AddWithValue("@securityQuestion", sec_que);
            cmd.Parameters.AddWithValue("@securityQuestionAnswer", sec_ans);
            cmd.Parameters.AddWithValue("@accountNumber", rand);
            cmd.Parameters.AddWithValue("@lastUpdatedDate",date_default);
            cmd.Parameters.AddWithValue("@currentBalance", number_defalut_int);
            cmd.Parameters.AddWithValue("@regularMonthlyPaymentAmount", number_defalut_int);
            cmd.Parameters.AddWithValue("@amountSatisfiedByExtraPayment", number_defalut_int);
            cmd.Parameters.AddWithValue("@pastDueAmount", number_defalut_int);
            cmd.Parameters.AddWithValue("@currentAmountDue", number_defalut_int);
            cmd.Parameters.AddWithValue("@currentStatementDueDate", date_default);
            cmd.ExecuteNonQuery();

            //Close the database connection
            con.Close();
            Response.Write("<script>alert('Thank you for submitting the registration. An email notification is also sent to the the email address you provided during registation')</script>");


            fulltext.Text = "";
            ssntext.Text = "";
            confirmssn.Text = "";
            monthlist.SelectedIndex = 0;
            datelist.SelectedIndex = 0;
            yearlist.SelectedIndex = 0;
            address.Text = "";
            username.Text = "";
            confirmemail.Text = "";
            password.Text = "";
            confirmpsw.Text = "";
            email.Text = "";
            securityquestions.SelectedIndex = 0;
            answer.Text = "";

        }
        else
        {
            Response.Write("<script>alert('Please accept certifying statement by checking the box above!')</script>");
        }

        Response.Write("<script>alert('Thank you! An email has been sent to address you provided')</script>");
        string body_part1 = "Dear" + "" + "<mark>" + uname + ",</mark>";
        string body_part2 = "<br /> Thank you for registering with us. ";
        string body_part3 = "You can now access your loan account at <a href=\"http://dcm.uhcl.edu/c432016fa02mehtaa/login.aspx\">login</a>";
        string body_part4 = "<br /><br />In the meantime, please share the word about <mark>IHelp Education Student Loan</mark> with your friends and neighbours!.<mark>IHelp Education Student Loan</mark> is open to all eligible college applications thoughout the United States";
        string body_part5 = "<br />Thank you again for your registration.If you have any questions, please contact us at <a href=\"http://dcm.uhcl.edu/c432016fa02mehtaa/ContactUs.aspx\">here</a>";
        string body_part6 = "<br /><br />With Best Wishes,";
        string body_part7 = "<br /><mark>IHelp Education Student Loan</mark>";
        string body = body_part1 + body_part2 + body_part3 + body_part4 + body_part5 + body_part6 + body_part7;
        try
        {
            using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], uname))
            {
                mail.Subject = "New Registration Notification";
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

            }
        }
        catch (Exception ex)
        {
            string str2;
            str2 = "Error --> " + ex.Message;
            string str3 = "Sorry! Some error occured during registration!";

            Response.Write("<script language=javascript>alert('" + str3 + "ERROR:" + str2 + "');</script>");
        }
    }

    protected void confirmssn_TextChanged(object sender, EventArgs e)
    {
        List<StudentInfo> list2 = Application["AllUsersList"] as List<StudentInfo>;
        string checkSocial = confirmssn.Text;
        if (list2 != null)
        {
            foreach (StudentInfo soc in list2)
            {
                if (soc.SocialSecurityNumber == checkSocial)
                {
                    //Response.Write("<script>alert('{0} already exists, checkSocial')</script>");
                    //checkSocial = checkSocial.ToString() + "already Exists. Please go to login page";
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(" + checkSocial.ToString() + ");", true);

                    Response.Write("<script>alert(' " + checkSocial + " already exists. Please go to Login Page. ')</script>");
                    break;
                }
            }
        }
    }
}