<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ChangePassword.aspx.vb" Inherits="WebsitePages_UserAcc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Styles/Login.css" rel="stylesheet" />
   <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <title>Shocker Solutions</title>
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 189px;
        }
        .auto-style3 {
            width: 189px;
            color: #FFFFFF;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <h1>Enter New Password</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Old password :</td>
                    <td>
            <asp:TextBox ID="txtOldPW" CssClass="oldPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">New password:</td>
                    <td>
            
            <asp:TextBox ID="txtNew" CssClass="newPassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm password:</td>
                    <td>
      
            <asp:TextBox ID="txtConfirm" runat="server" CssClass="conPassword" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
            
                        <asp:Button ID="Button1" runat="server" CssClass="Submit" Text="Confirm" />
                        
                    </td>
                    <td><asp:Button ID="Button2"  runat="server" Text="Cancel" CssClass="Cancel" /></td>
                </tr>
            </table>
            <br />
            
            <br />
      
            <br />
            <br />
        </div>
    </form>
</body>
</html>
