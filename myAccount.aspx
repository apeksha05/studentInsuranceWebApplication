<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myAccount.aspx.cs" Inherits="myAccount" %>

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
        #titleofpage {
            color:red;
            text-align:center;
        }
         .auto-style5 {
             width: 25%;
             height: 150px;
         }
         .col1{
             font-size:large;
             color:blue;
         }
         .col2 {
             text-align:right;
             color:darkmagenta;
             font-size:large;
         }
         .auto-style6 {
             width: 100%;
             border: 1px solid #0000FF;
             border-collapse:collapse;
             font-size:large;
             
         }
         .auto-style7 {
             width: 1056px;
             color:blue;
              border: 1px solid #0000FF;
              border-collapse:collapse;
         }
         .auto-style8 {
            color:darkmagenta;
            text-align:right;
              border: 1px solid #0000FF;
              border-collapse:collapse;
         }
         #row6col1{
             font-weight:700;
              color:blue;
         }
         tr.row:nth-child(even) {
             background-color:darkgray ;
         }
       
        tr.row:nth-child(odd) {
             background-color:lightgray;
         }
        #lastline {
            color:navy;
            float:left;
            display:inline-block;
            margin-top:10px;
            font-size:x-large;
            
        }
        #lastvalue {
            color:magenta;
            float:left;
            display:inline-block;
            position:absolute;
            margin-left:5px;
            font-size:x-large;
            margin-top:2px;
           
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
                <td class="auto-style3"> | MyAccount </td>
                <td class="auto-style4"><asp:LinkButton ID="linkbuttonlogout" Text="Logout" OnClick="linkbuttonlogout_Click" runat="server"> Logout </asp:LinkButton></td>
             </tr>
        </table>
        <h1 id="titleofpage"> Your Loan Account Details </h1>
        <hr />
         <table class="auto-style5">
        <tr>
            <td class="col1">Account Number:</td>
            <td class="col2"><asp:Label runat="server" ID ="ac">N/A</asp:Label></td>
        </tr>
        <tr>
            <td class="col1">Full Name:</td>
            <td class="col2"><asp:Label runat="server" ID ="fullName">N/A</asp:Label></td>
        </tr>
        <tr>
            <td class="col1">Last Updated Date:</td>
            <td class="col2"><asp:Label runat="server" ID ="lastUpdateDate">N/A</asp:Label></td>
        </tr>
    </table>
        <hr />

        <table class="auto-style6">
        <tr class="row">
            <td class="auto-style7">Current Balance</td>
            <td class="auto-style8"><asp:Label runat="server" ID ="currentBalance">0.0</asp:Label></td>
        </tr>
        <tr class="row">
            <td class="auto-style7">Last Updated Date</td>
            <td class="auto-style8"><asp:Label runat="server" ID ="LastUpdateD">0.0</asp:Label></td>
        </tr>
        <tr class="row">
            <td class="auto-style7">Regular Monthly Payment Amount</td>
            <td class="auto-style8"><asp:Label runat="server" ID ="monthlyAmount">0.0</asp:Label></td>
        </tr>
        <tr class="row">
            <td class="auto-style7">Amount Satisfied by Extra Payment</td>
            <td class="auto-style8"><asp:Label runat="server" ID ="extraPayment">0.0</asp:Label></td>
        </tr>
        <tr class="row">
            <td class="auto-style7">Past Due Amount(if applicable)</td>
            <td class="auto-style8"><asp:Label runat="server" ID ="pastdueAmount">0.0</asp:Label></td>
        </tr>
        <tr class="row">
            <td id="row6col1">Current Amount Due</td>
            <td class="auto-style8"><asp:Label runat="server" ID ="currentAmountDue">0.0</asp:Label></td>
        </tr>
    </table>

        <p id="lastline">Current statement Due Date:  <asp:Label runat="server" ID ="currentDueDate">N/A</asp:Label></p>

         
    </div>
    </form>
   
    
   
</body>
</html>
