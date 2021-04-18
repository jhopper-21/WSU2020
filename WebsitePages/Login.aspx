<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="WebsitePages_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="../Styles/Login.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <title>Shocker Solutions</title>
    
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            width: 80px;
            height: 80px;
            border-radius: 50%;
            overflow: hidden;
            top: 69px;
            left: 33px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: large;
            
        }
        .Username {
            width: 100%;
            margin-bottom: 20px;
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 35px;
            color: #fff;
            font-size: 15px;
        }
        .Password{
            width: 100%;
    margin-bottom: 20px;
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 35px;
    color: #fff;
    font-size: 15px;
        }
        
             


    </style>
    
</head>

<body>

<form id="form1" runat="server">

<div class="wrapper"> 

<img src="../Images/Misc/WSU_vertical_color_web.jpg" alt="" class="auto-style1" />"

<h1>Sign in</h1>          
    <br />

                   
    

                   
<asp:TextBox ID="txtUsername"  CssClass="Username" type="Username"  placeholder="Username" runat="server"></asp:TextBox> <br /> <br />
                
   
                
<asp:TextBox ID="txtPassword" CssClass="Password" type="Password"  placeholder="Password" runat="server"></asp:TextBox> <br />
  
               
<asp:Button ID="btnLogin" CssClass="Submit" runat="server" type="Submit" Text="Login"/>


           
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username cannot be blank."></asp:RequiredFieldValidator>
                    
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" controltovalidate="txtPassword" ErrorMessage="Password cannot be blank."></asp:RequiredFieldValidator>         
           
    <asp:Label ID="lblIncorrect" runat="server" ForeColor="Red" Text="Username or password is incorrect." Visible="False"></asp:Label>
    <br />
    <br />
    

           <p class="auto-style3"><span class="auto-style2">Need to create an account?&nbsp;&nbsp; </span> <a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Register.aspx">Register Here</a></p>
            </div>

</form>

<footer> 
       <%--       Disclaimer Text at Bottom of Page--%>
      
       <!-- #include file ="Disclaimer.inc"-->
</footer>
    
</body>
   
</html>
