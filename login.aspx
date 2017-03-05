<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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

        .title {
            text-align:center;
            color: darkgreen;

        }

        #reg {
            color:darkblue;
        }

        #notreg {
            color:darksalmon;
        }

        #usertext {
            margin-left: 4px;
        }
        #passwordtext {
            margin-left: 90px;
            
        }
        #button {
            margin-left:210px;
        }
        .required {
            color:red;
        }
        #reqinfo{
            color:red;
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
                <td class="auto-style3"> | Login </td>
                <td class="auto-style4"><a href="#" >  </a></td>
            </tr>
        </table>

        <h1 class="title"> User Login </h1>

        <h3 id="reg"> If you are not a registered user, please click here : <asp:LinkButton ID="reglinkbutton" Text="Register Here" OnClick="reglinkbutton_Click" runat="server" > Register Here </asp:LinkButton> </h3>

        <h3 id="notreg"> If you are a registered user, please enter your login credential below</h3>
         <h3 style="color: green">If you forget your password, Please click here
                    <asp:LinkButton ID="forget" runat="server" OnClick="forget_Click">Recover my password</asp:LinkButton></h3>
        <div>
            User Id(Email Address): <span class="required">*</span>  <asp:TextBox ID="usertext" ReadOnly="false" Rows="1" TextMode="SingleLine" runat="server" ValidationGroup="group1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requser" runat="server" ErrorMessage="Please Enter Your User ID" ControlToValidate="usertext" ValidationGroup="group1"  Display="Dynamic" style="color: red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator runat="server" ID="reguser" ControlToValidate="usertext" ErrorMessage="Please Enter User Id In Format someone@xyz.com" ValidationGroup="group1" validationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" style="color: red"/> <br /> <br />
            Password : <span class="required">*</span> <asp:TextBox ID="passwordtext" ReadOnly="false" Rows="1" TextMode="Password" runat="server" ValidationGroup="group1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="password" runat="server" ErrorMessage="Please Enter Your Password" ControlToValidate="passwordtext" ValidationGroup="group1"  Display="Dynamic" style="color: red"></asp:RequiredFieldValidator> <br /> <br />
            <h2 id="reqinfo">* DENOTES REQUIRED ITEMS </h2> <asp:Button ID="button" Text="Login" runat="server" OnClick="button_Click" ValidationGroup="group1" />
        </div>
        


    </div>
    </form>
</body>
</html>
