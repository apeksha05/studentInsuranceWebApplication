using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class myAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        StudentInfo obj = Session["currentUser"] as StudentInfo;
        if (obj != null)
        {
            ac.Text = obj.AccountNumber.ToString();
            fullName.Text = obj.FullName.ToString();
            lastUpdateDate.Text = obj.LastUpdatedDate.ToString();
            currentBalance.Text = obj.CurrentBalance.ToString();
            LastUpdateD.Text = obj.LastUpdatedDate.ToString();
            monthlyAmount.Text = obj.RegularMonthlyPaymentAmount.ToString();
            extraPayment.Text = obj.AmountSatisfiedByExtraPayment.ToString();
            pastdueAmount.Text = obj.PastDueAmount.ToString();
            currentAmountDue.Text = obj.CurrentAmountDue.ToString();
            currentDueDate.Text = obj.CurrentStatementDueDate.ToString();
        }
    }

    protected void linkbuttonhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void linkbuttonlogin_Click(object sender, EventArgs e)
    {
      
    }

    protected void linkbuttonlogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
}