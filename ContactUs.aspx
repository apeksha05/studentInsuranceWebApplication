<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

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
             border-collapse: collapse;
             border: 2px solid #CC0000;
             height: 167px;
         }
         .auto-style6 {
             width: 301px;
             border: 2px solid #CC0000;
         }
          .auto-style7 {
             width: 610px;
             text-align:center;
              border: 2px solid #CC0000;
         }
          #guideline1 {
              text-align:center;
              color:red;
          }
          #guideline2 {
              text-align:center;
              color:blue;
          }
          #messagetext {
              background-color:white;
              width:100%;
             
          }
          #sendmsg {
              height:40px;
              width:auto;
              text-align:center;
              margin:auto;
              display:block;
              font-size:large;
          }
         </style>
    <script type="text/javascript">
            var xmlDoc;
            var xmlhttp;

            function loadDoc() {
                xmlhttp = new XMLHttpRequest();
                 xmlhttp.onreadystatechange = loadData;

                xmlhttp.open("GET", "contactinfor.xml", true);
                xmlhttp.send();
            }
            function loadData() {
                if (xmlhttp.readyState == 4) {
                    xmlDoc = xmlhttp.responseXML;
                    var item = xmlDoc.getElementsByTagName("info");
                    var tollFreePhone1 = item[0].getAttribute("toll-free-phone");
                    document.getElementById("tollfreephone").innerHTML = tollFreePhone1;
                    var directPhone = item[0].getAttribute("direct-phone");
                    document.getElementById("directphone").innerHTML = directPhone;
                    var mailingAddress = item[0].getAttribute("mailing-address");
                    document.getElementById("mailAdreess").innerHTML = mailingAddress;
                    var Email = item[0].getAttribute("email");
                    document.getElementById("email").innerHTML = Email;
                    var Website = item[0].getAttribute("website");
                    document.getElementById("website").innerHTML = Website;
                }
            }
        </script>
</head>
<body onload="loadDoc()">
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
                <td class="auto-style3"> | Contact Us </td>
                <td class="auto-style4"><asp:LinkButton ID="linkbuttonlogin" Text="Login" OnClick="linkbuttonlogin_Click" runat="server"> Login </asp:LinkButton></td>
            </tr>
        </table>


         <table class="auto-style5">
        <tr>
            <td class="auto-style6">Mailing Address</td>
            <td id="mailAdreess" class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style6">Toll Free Phone Number</td>
            <td id="tollfreephone" class="auto-style7" style="color:#337AFF;text-decoration:underline;"></td>
        </tr>
        <tr>
            <td class="auto-style6">Direct Phone Number</td>
            <td id="directphone" class="auto-style7" style="color:#337AFF;text-decoration:underline;"></td>
        </tr>
        <tr>
            <td class="auto-style6">Email Address</td>
            <td id="email" class="auto-style7"></td>
        </tr>
        <tr>
            <td class="auto-style6">Website</td>
            <td id="website" class="auto-style7"></td>
        </tr>
    </table>

       <h2 id="guideline1"> You must be logged in to send us a message</h2>
        <h2 id="guideline2">Please type your message below and click the Send Message button</h2>
        <asp:TextBox ID="messagetext" Rows="30" TextMode="MultiLine" ReadOnly="true" runat="server"></asp:TextBox>
        <asp:Button ID="sendmsg" Text="Send Message" runat="server" Enabled="false" OnClick="sendmsg_Click"/>
    
    </div>
    </form>
   
</body>
</html>
