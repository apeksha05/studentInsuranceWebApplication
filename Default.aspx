<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    #menu ul {
     list-style:none;
    }
    #menu li ul {
    display:none;
    position:absolute;
    }
    #menu li:hover ul{
    display:block;
    background-color:gray;
    color:black;
    height:auto; width:8em; 
    }
    .menu {
        color:blue;
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
        <div id="menu" style="float:left;width:10%;height:150px;background-color:rosybrown"> 
            <br />
           <ul>
           <li><asp:LinkButton ID="linkbuttonlogin" Text="Login" OnClick="linkbuttonlogin_Click" runat="server"> Login </asp:LinkButton> <br /> </li>
             <li><a href="#" class="menu" > Infor Center &#10148; </a> <br /> 
                 <ul>
                     <li> <a href="glossary.aspx" style="color:black;"> Glossary </a></li>
                      <li> <a href="FAQs.aspx" style="color:black;"> FAQs </a></li>
                 </ul>
             </li> 
             <li><a href="myAccount.aspx" class="menu"> My Account </a> <br /> </li>
             <li><a href="Forms.aspx" class="menu"> Forms </a> <br />  </li>
           <li> <a href="ContactUs.aspx" class="menu"> Contact Us </a><br />  </li>

           </ul>
           
               
        </div>
     
        <div style="float:right;width:90%;height:150px;background-color:wheat">
            <h2 style="color:#4E5910"> Who We Are..... </h2>
            <p> Acer Education Loan Service provides loan services for the one who look for financial help 
                to get his/her education goals completed. We provide servuces for Campus Based Loans,Private 
                Education Loans and federal Family education Loans. We work hard with you to get the Loan You Deserve,
                Maintain Loan Activities,Send Payment Reminders and Process payments.
            </p>
        </div>
        <div style="float:left;width:10%;background-color:floralwhite;">
            <br />
            <a href="https://ssl.comodo.com"> <img src="https://ssl.comodo.com/images/comodo_secure_seal_113x59_transp.png" style="border: 0px;" /></a> <br/>
        </div>
        <div style="float:right;width:45%;height:400px;">
            <img src="gradstudents.jpg" style="width:100%;height:100%;" />
        </div>
        <div style="float:right;width:45%;height:400px;">

            <img src="moneyhelp.jpg" style="width:100%;height:100%;"/>
        </div>
    </div>
    <div>
        <asp:AdRotator  id="AdRotator1" runat="server" AdvertisementFile="XMLFile.xml" Target="_blank" KeywordFilter="ad1" />
        <asp:AdRotator  id="AdRotator2" runat="server" AdvertisementFile="XMLFile.xml" Target="_blank" KeywordFilter="ad2" />
        <asp:AdRotator  id="AdRotator3" runat="server" AdvertisementFile="XMLFile.xml" Target="_blank" KeywordFilter="ad3" />
        <asp:AdRotator  id="AdRotator4" runat="server" AdvertisementFile="XMLFile.xml" Target="_blank" KeywordFilter="ad4" />
        <asp:AdRotator  id="AdRotator5" runat="server" AdvertisementFile="XMLFile.xml" Target="_blank" KeywordFilter="ad5" />
    </div>
    <hr style="float:left;width:100%;clear:left" />
        
    <div style="float:left;width:100%">
        <p style="text-align:center;color:green"> @IHelp Education Loan Service,Inc. All right reserved. 2012-2016 </p>
    </div>
    </form>
</body>
</html>
