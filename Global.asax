<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        Application["AllUsersList"] = new List< StudentInfo>();
         List<StudentInfo> list2 = Application["AllUsersList"] as List<StudentInfo>;
        //List<StudentInfo> allUsersList = Application["AllUserList"] as List<StudentInfo>;
        //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDbConn"].ToString());
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["mehtaa_database"].ToString());
        String query = "SELECT * from MehtaA_WADfl16_StudentInfo";
        SqlCommand cmd = new SqlCommand(query, cn);
        try
        {
            cn.Open();
            SqlDataReader sqlReader =cmd.ExecuteReader();
           
            while (sqlReader.Read())
            {
                StudentInfo obj = new StudentInfo();
                obj.UserName = (string)sqlReader["userName"];
                obj.Password = (string)sqlReader["password"];
                obj.CertifiedChecked = true;
                obj.SocialSecurityNumber = (string)sqlReader["socialSecurityNumber"];
                obj.FullName = (string)sqlReader["fullName"];
                obj.DateOfBirth = (string)sqlReader["dateOfBirth"];
                obj.Address = (string)sqlReader["address"];
                obj.EmailAddress = (string)sqlReader["emailAddress"];
                obj.SecurityQuestion = (string)sqlReader["securityQuestion"];
                obj.SecurityQuestionAnswer = (string)sqlReader["securityQuestionAnswer"];
                obj.AccountNumber = (int)sqlReader["accountNumber"];
                obj.LastUpdatedDate = (string)sqlReader["lastUpdatedDate"];
                obj.CurrentBalance = (float)sqlReader.GetDouble(12);
                obj.RegularMonthlyPaymentAmount = (float)sqlReader.GetDouble(13);
                obj.AmountSatisfiedByExtraPayment = (float)sqlReader.GetDouble(14);
                obj.PastDueAmount = (float)sqlReader.GetDouble(15);
                obj.CurrentAmountDue = (float)sqlReader.GetDouble(16);
                obj.CurrentStatementDueDate = sqlReader.GetString(17);
                list2.Add(obj);

            }

        }
        finally
        {
            cn.Close();
        }
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Session.Abandon();

    }
       
</script>
