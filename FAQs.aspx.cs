using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FAQs : System.Web.UI.Page
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
}