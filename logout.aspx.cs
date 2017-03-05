using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["currentUser"] = null;
        string url = "Default.aspx";
        ClientScript.RegisterStartupScript(this.GetType(), "callfunction", "alert(' You are now logged out');window.location.href = '" + url + "';", true);
       
    }
}