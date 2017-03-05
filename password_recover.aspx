<%@ Page Language="C#" AutoEventWireup="true" CodeFile="password_recover.aspx.cs" Inherits="password_recover" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #button {
            margin-left: 20px;
        }
        #home {
            
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
        <h1 id="title">Password Recovery</h1>
        <asp:Label runat="server" ID="label1">Email Address: <asp:TextBox runat="server" ID="email_text" ReadOnly="false" ValidationGroup="group1"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="req_email" ControlToValidate="email_text" ErrorMessage="Please enter your Email!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ID="Reg_email" ControlToValidate="email_text" ErrorMessage="Please Enter Email In Format someone@xyz.com" ValidationGroup="group1" validationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" style="color: red"/>
            <asp:Button runat="server" ID="button" OnClick="button_Click" Text="Recover Password" ValidationGroup="group1" /> </asp:Label>  
        <asp:LinkButton runat="server" ID="home" OnClick="home_Click">Go Back To Home Page</asp:LinkButton>
    </div>
    </form>
</body>
</html>
