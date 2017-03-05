using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void linkbuttonhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void reglinkbutton_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }

    protected void button_Click(object sender, EventArgs e)
    {
        List<StudentInfo> allUsersList = Application["AllUsersList"] as List<StudentInfo>;
        //Console.WriteLine(allUsersList);
        //string script = "alert('You Are Now Logged In')";
        //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script, true);
        String username = usertext.Text;
        String pass = passwordtext.Text;
        bool val = false;
        bool notFound = false;
        int count = 0;
        if (allUsersList != null)
        {
            foreach (var u in allUsersList)
            {
                if (u.UserName == username && u.Password == pass)
                {
                    val = true;
                    Response.Write("<script>alert('Suceessfully logged In')</script>");
                    Session["currentUser"] = u;
                    Response.Redirect("myAccount.aspx");
                }

            }

            if (!val)
            {
                Response.Write("<script>alert('Credentials Do not Match!!!!')</script>");
                notFound = true;
            }
        }
        else
        {
            Response.Write("<script>alert('This site says that user is not registered with our database. Please register first with our system.')</script>");
            notFound = true;

        }
    }

    protected void forget_Click(object sender, EventArgs e)
    {
        Response.Redirect("password_recover.aspx");
    }
}
