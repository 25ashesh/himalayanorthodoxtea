<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smtadminlogin.aspx.cs" Inherits="himalayanorthodoxtea.smtadminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <title>[adminlogin]</title>
    <link rel="Shortcut Icon" href="images/favicon.ico" type="image/x-icon"/>
    <script type="text/javascript">
        function HideLabel() {
            document.getElementById('<%=lblReport.ClientID %>').style.display = "none";
            document.getElementById('<%=lblLoginCheck1.ClientID %>').style.display = "none";
            document.getElementById('<%=lblLoginCheck2.ClientID %>').style.display = "none";
        }
        setTimeout("HideLabel();", 8000);
    </script>
    <style type="text/css">
        body {
	    font-size: 82.5%;
	    font-family: "Trebuchet MS", "Arial", "Helvetica", "Verdana", "sans-serif";
        }

    table {
	    font-size: 2em;
    }
    .adminlogin
    {
        width:245px;
        height:300px;
        background-color:#996699;
        border: 2px solid blue;
        margin:150px 500px;
        padding:20px;
        }
        
        .textstyle
        {
            height:35px;
            width:175px;
            
            }
         h1
         {
             font-family:Calisto MT;
             color:Blue;
             }
            
    </style>
</head>
<body>
		<form runat="server">	
        
       <div class="adminlogin"> 
          <h1><strong>Administrator Login</strong></h1><br/>
                <asp:Label ID="lblLoginCheck1" style="font-size:large; font-family:Calisto MT;background:White;" runat="server"></asp:Label>
                <asp:Label ID="lblLoginCheck2" style="font-size:large; font-family:Calisto MT;background:White;" runat="server"></asp:Label>
                  <asp:Label ID="lblReport" style="font-size:large; font-family:Calisto MT;background:White;" runat="server"/>
             <br/> 
                <br/>
                <asp:TextBox ID="txtAdmin" class="textstyle" placeholder="  admin username" runat="server" required="required"></asp:TextBox>
                                    
                <br/> 
                <br/> 
                 <br/>
                    <asp:TextBox ID="txtPassword" class="textstyle" placeholder="  admin password" runat="server" required="required" type="password"></asp:TextBox>

                <br/>
                
                 
                <br/>
                   <asp:Button ID="AdminLogin" 
               style="width:100px;height:45px;float:right; font-size:15px;font-family:Arial;" 
               runat="server" Text="Admin Login" onclick="AdminLogin_Click"/>
                
                
                  
         </div>
         </form>
</body>
</html>
