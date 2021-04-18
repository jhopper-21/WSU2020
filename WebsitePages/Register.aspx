<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="WebsitePages_Register" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="../Styles/Registration.css" rel="stylesheet" />
<head runat="server">
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <title>Shocker Solutions</title>
    <script type="text/javascript">
function ValidNumbers() {    
    
    var code = (event.which) ? event.which : event.keyCode;    
    
    if ((code >= 48 && code <= 57) ||     (code == 32))
    { return true; }    
    else    
    { return false; }    
} 
    </script>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
         
        <h1> Register Form</h1>
        <table class="auto-style1">

            <tr>
                <td class="auto-style2">Full Name:</td>
                <td>
                    <asp:TextBox ID="txtName" CssClass="Username" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">Username:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUsername" CssClass="Username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="txtPassword" CssClass="Password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                 
            </tr>
              <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="txtConfirmPW" CssClass="Password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                 
            </tr>
            <tr>
                <td class="auto-style2">Role:</td>
                <td>
                   
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Accountant</asp:ListItem>
                        <asp:ListItem>Data Analyst</asp:ListItem>
                        <asp:ListItem>Internal Auditor</asp:ListItem>
                        <asp:ListItem>Financial Analyst</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Department:</td>
                <td>
                    <asp:TextBox ID="txtDepartment"  CssClass="Department" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
              
                <td class="auto-style2">Email:</td>
                <td>
                    <asp:TextBox ID="txtSEmail" CssClass="Username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Location:</td>
                <td>
                    <asp:TextBox ID="txtLocation" CssClass="Location" runat="server"></asp:TextBox>
                </td>
            </tr>
                         <tr>
                <td class="auto-style2">Employee DOB (mmddyyyy):</td>
                <td>
                    <asp:TextBox ID="txtDOB" CssClass="Username" runat="server"  onkeypress="return ValidNumbers()"></asp:TextBox>
                </td>
            </tr>
            <%--<tr>
                <td class="auto-style2">I am a Supervisor:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>    
                    &nbsp;    
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                    </tr>--%>            <%--<tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Supervisor Name:" Visible="True"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox7"  CssClass="Supervisor" runat="server" Visible="True"></asp:TextBox>
                </td>
            </tr>--%>
            
            
            
        </table>
           
           
            <asp:Label ID="lblRegistration" runat="server" Text="Registration completed!" Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <asp:Label ID="lblTaken" runat="server" Text="Username is already taken! Please choose another one." Visible="False" Font-Bold="True"></asp:Label>
            <asp:Label ID="lblPW" runat="server" Text="Password does not match!" Visible="False" Font-Bold="True"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Sign up!" Width="200px" Font-Size="24px" CssClass="Finish" />
            <br />
            <p><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Already have an account.</span>&nbsp;&nbsp; </span> <a href="http://ch-323-server.dyn.wichita.edu/unicorn_riders/WebsitePages/Login.aspx"><span class="auto-style1">Sign in</span></a></p>
            </div>
    </form>
</body>

</html>
