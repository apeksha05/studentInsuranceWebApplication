<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

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
        .required {
            color:red;
        }
        .question:hover span{
            display:block;
            background-color:lightgray;
            color:darkblue;
        }
        .question span {
            display:none;
        }
        #ssntext {
            margin-left: 105px;
        }
        #reqinfo{
            color:red;
        }
        #confirmssn{
            margin-left: 60px;
        }
        #fulltext{
            margin-left:200px;
        }
        #monthlist{
            margin-left:182px;
        }
        #address {
            margin-left:212px;
        }
        #username{
            margin-left:199px;
        }
        #password {
             margin-left:202px;
        }
        #confirmpsw{
             margin-left:145px;
        }
        #email{
             margin-left:170px; 
        }
        #confirmemail{
             margin-left:112px;
        }
        #securityquestions{
            margin-left:138px;
        }
        #answer{
            margin-left:210px;
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
                <td class="auto-style3"> | Registration </td>
                <td class="auto-style4"><asp:LinkButton ID="linkbuttonlogin" Text="Login" OnClick="linkbuttonlogin_Click" runat="server"> Login </asp:LinkButton></td>
            </tr>
        </table>

     <div>
         <asp:CheckBox ID="checkbox" Text="By providing this information, I certify that I am the person identified by this item, and that i agree to the site terms of use." runat="server" /> <br /> <br />
         <p> Social Security Number <span class="required">*</span> <asp:TextBox ID="ssntext" runat="server" ValidationGroup="group1"></asp:TextBox><mark class="question">? 
             <span>Once you set up a User Name to access your account, you will no longer need
                to provide your complete social security number/account number, birthdate
                or zip code to log in. For security, you will need to provide your full
                social security number or account number if your forget your User Name or
                Password.
             </span></mark>   <asp:RequiredFieldValidator runat="server" ID="Req_ssn" ControlToValidate="ssntext" ErrorMessage="Please Enter Your SSN!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ID="Reg_ssn" ControlToValidate="ssntext" ErrorMessage="Please Enter SSN In Format 999-99-9999" ValidationGroup="group1" validationExpression="^\d{3}-?\d{2}-?\d{4}$" Display="Dynamic" style="color: red"/> </p>
         <p>Full Name <span class="required">*</span> <asp:TextBox ID="fulltext" runat="server" ValidationGroup="group1"></asp:TextBox><mark class="question">? 
             <span>Once you set up a User Name to access your account, you will no longer need
                to provide your complete social security number/account number, birthdate
                or zip code to log in. For security, you will need to provide your full
                social security number or account number if your forget your User Name or
                Password.
             </span></mark> <asp:RequiredFieldValidator runat="server" ID="full_text_req" ControlToValidate="fulltext" ErrorMessage="Please Enter Your FullName!" Style="color: red" ValidationGroup="group1" Display="Dynamic" /></p>
         <p>Confirm Social Security Number<span class="required">*</span> <asp:TextBox ID="confirmssn" runat="server" ValidationGroup="group1" AutoPostBack="true" OnTextChanged="confirmssn_TextChanged"></asp:TextBox>  
             <asp:RequiredFieldValidator runat="server" ID="Req_con_ssn" ControlToValidate="confirmssn" ErrorMessage="Please Enter Your SSN!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
             <asp:CompareValidator runat="server" ID="Comp_ssn" ControlToCompare="ssnText" ControlToValidate="confirmssn" ErrorMessage="SSN Does Not Match" ValidationGroup="group1" Display="Dynamic" style="color: red" /> </p>
         <p>Date of Birth <span class="required">*</span> 
         <asp:DropDownList ID="monthlist" runat="server"></asp:DropDownList>
         <asp:DropDownList ID="datelist" runat="server"></asp:DropDownList>
         <asp:DropDownList ID="yearlist" runat="server"></asp:DropDownList>
         </p>
             
          <p> Address <span class="required">*</span> <asp:TextBox ID="address" runat="server" ValidationGroup="group1"></asp:TextBox><mark class="question">? 
             <span>Many foreign countries do not have a zip code. If you are foreign, you can
                skip the zip code in the address.
            </span></mark> <asp:RequiredFieldValidator runat="server" ID="Req_address" ControlToValidate="address" ErrorMessage="Please Enter Your Address!" Style="color: red" ValidationGroup="group1" Display="Dynamic" /></p>
         <p> Username <span class="required">*</span> <asp:TextBox ID="username" runat="server" ValidationGroup="group1"></asp:TextBox><mark class="question">6 to 64 Characters 
             </mark> <asp:RequiredFieldValidator runat="server" ID="Req_username" ControlToValidate="username" ErrorMessage="Please Enter Your UserName!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ID="Reg_username" ControlToValidate="username" ErrorMessage="Please Enter Email In Format someone@xyz.com" ValidationGroup="group1" validationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" style="color: red"/></p>
         <p> Password <span class="required">*</span> <asp:TextBox ID="password" TextMode="Password" runat="server" ValidationGroup="group1"></asp:TextBox><mark class="question">Password Rules 
             <span>Password must be between 8 and 10 characters, contain at least one digit
                and one alphabetic character, and must not contain special characters

            </span></mark>
             <asp:RequiredFieldValidator runat="server" ID="Req_pass" ControlToValidate="password" ErrorMessage="Please Enter Your Password!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ID="Reg_pass" ControlToValidate="password" ErrorMessage="Please Enter Valid Password" ValidationGroup="group1" validationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" Display="Dynamic" style="color: red"/>
         </p>
         <p>Confirm Password<span class="required">*</span> <asp:TextBox ID="confirmpsw" TextMode="Password" runat="server" ValidationGroup="group1"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ID="Req_con_pass" ControlToValidate="confirmpsw" ErrorMessage="Please Enter Your Password!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ID="Reg_con_pass" ControlToValidate="confirmpsw" ErrorMessage="Please Enter Valid Password" ValidationGroup="group1" validationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" Display="Dynamic" style="color: red"/>
                    <asp:CompareValidator runat="server" ID="Compare_con_pass" ControlToCompare="password" ControlToValidate="confirmpsw" ErrorMessage="Password Does Not Match" ValidationGroup="group1" Display="Dynamic" style="color: red" />
         </p>
          <p>Email Address<span class="required">*</span> <asp:TextBox ID="email" runat="server" ValidationGroup="group1"></asp:TextBox>
               <asp:RequiredFieldValidator runat="server" ID="Req_email" ControlToValidate="email" ErrorMessage="Please Enter Your Email!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ID="reg_email" ControlToValidate="email" ErrorMessage="Please Enter Email In Format someone@xyz.com" ValidationGroup="group1" validationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" style="color: red"/>
          </p>
          <p>Confirm Email Address<span class="required">*</span> <asp:TextBox ID="confirmemail" runat="server" ValidationGroup="group1"></asp:TextBox> 
               <asp:RequiredFieldValidator runat="server" ID="Req_con_email" ControlToValidate="confirmemail" ErrorMessage="Please enter your Email!" Style="color: red" ValidationGroup="group1" Display="Dynamic" />
                    <asp:RegularExpressionValidator runat="server" ID="Reg_con_email" ControlToValidate="confirmemail" ErrorMessage="Please Enter Email In Format someone@xyz.com" ValidationGroup="group1" validationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" style="color: red"/>
                     <asp:CompareValidator runat="server" ID="Compare_email" ControlToCompare="email" ControlToValidate="confirmemail" ErrorMessage="Email Does Not Match" ValidationGroup="group1" Display="Dynamic" style="color: red" />
          </p>
          <p> Security Questions <span class="required">*</span>
             <asp:DropDownList ID="securityquestions" runat="server">
                 <asp:ListItem Text="What is your mother's maiden name?" Value="1"></asp:ListItem>
                 <asp:ListItem Text="What was your childhood nickname?" Value="2"></asp:ListItem>
                 <asp:ListItem Text="What is the name of your favorite childhood friend?" Value="3"></asp:ListItem>
                 <asp:ListItem Text="What is your favorite sport team?" Value="4"></asp:ListItem>
                 <asp:ListItem Text="What was the make and model of your first car?" Value="5"></asp:ListItem>
                 <asp:ListItem Text="What school did you attend for sixth grade?" Value="6"></asp:ListItem>
                 <asp:ListItem Text="What was the last name of your third grade teacher?" Value="7"></asp:ListItem>
                 <asp:ListItem Text="In what town was your first job?" Value="8"></asp:ListItem>
                 <asp:ListItem Text="What is your favorite movie?" Value="9"></asp:ListItem>
                 <asp:ListItem Text="Who is your childhood sports hero?" Value="10"></asp:ListItem>
                 <asp:ListItem Text="In what year was your father born?" Value="11"></asp:ListItem>
                
              </asp:DropDownList>
              <mark class="question">? 
             <span>Single word answers are best. John, red, green, drum, for example.
            </span></mark></p>
         <p>Answer<span class="required">*</span> <asp:TextBox ID="answer" runat="server"  ValidationGroup="group1"></asp:TextBox><asp:RequiredFieldValidator runat="server" ID="Req_answer" ControlToValidate="answer" ErrorMessage="Please Enter Your Answer!" Style="color: red" ValidationGroup="group1" Display="Dynamic" /> </p>
         <h2 id="reqinfo">* DENOTES REQUIRED ITEMS </h2><br />
         <asp:Button runat="server" ID="submitbutton" OnClick="submitbutton_Click" Text="SUBMIT"  ValidationGroup="group1" />
     </div>



      
    </div>
    </form>
</body>
</html>
