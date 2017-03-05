<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forms.aspx.cs" Inherits="Forms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-color: #FFFFFF;
            background-color: #FF6600;
            color:darkblue;
            height: 35px;
            font-size:x-large;
        }
        .auto-style2 {
            width: 99px;
             color: blue;
            
        }
        .auto-style3 {
            width: 134px;
             color: blue;
        }
        .auto-style4 {
            text-align:right;
             color: blue;
        }
         .auto-style5 {
             width: 100%;
             height: 290px;
             border: 2px solid #CC0000;
              border-collapse: collapse;
         }
         .auto-style6 {
             width: 1357px;
             border: 1px solid #CC0000;
              border-collapse: collapse;

         }
        .auto-style7 {
            text-align:center;
             border: 1px solid #CC0000;
              border-collapse: collapse;
         }
        .pdfimage {
            width:50px;
            height:50px;
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div style="float:left;width:20%;height:180px;"> 
            <img src="ihelpbanner.jpg" style="width:100%;height:100%;"/>
        </div>
        <div style="float:right;width:80%;background-color:darkslategrey;height:180px;"> 
            <h1 style="text-align:center;color:forestgreen"> <b style="color:greenyellow">I</b>Help <b style="color:greenyellow">E</b>ducation <b style="color:greenyellow">L</b>oan <b style="color:greenyellow">S</b>ervice </h1>
            <h4 style="text-align:center;color:greenyellow"> we work hard to get you the loan you deserve </h4>
        </div>
     
     



        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><asp:LinkButton ID="linkbuttonhome" Text="Home" OnClick="linkbuttonhome_Click" runat="server" > Home </asp:LinkButton></td>
                <td class="auto-style3"> | Forms </td>
                <td class="auto-style4"><asp:LinkButton ID="linkbuttonlogin" Text="Login" OnClick="linkbuttonlogin_Click" runat="server"> Login </asp:LinkButton></td>
            </tr>
        </table>

         <table class="auto-style5">
        <tr>
            <td class="auto-style6">IHelp Account Creation Authorization</td>
            <td class="auto-style7"><a href="formsihelp.pdf"><img src="pdficon.png" class="pdfimage"/></a></td>
        </tr>
        <tr>
            <td class="auto-style6">Federal Direct Consolidation Loan Application and Promissory Note </td>
            <td class="auto-style7"><a href="https://static.studentloans.gov/images/ApplicationAndPromissoryNote.pdf"><img src="pdficon.png" class="pdfimage"/></a></td>
        </tr>
        <tr>
            <td class="auto-style6">Direct Consolidation Loan Applications</td>
            <td class="auto-style7"><a href="https://studentloans.gov/myDirectLoan/consolidationPaper.action"><img src="pdficon.png" class="pdfimage"/></a></td>
        </tr>
        <tr>
            <td class="auto-style6">PUBLIC SERVICE LOAN FORGIVENESS (PSLF):</td>
            <td class="auto-style7"><a href="https://studentaid.ed.gov/sa/sites/default/files/public-service-employment-certification-form.pdf"><img src="pdficon.png" class="pdfimage"/></a></td>
        </tr>
    </table>


    </div>
    </form>
   
</body>
</html>
