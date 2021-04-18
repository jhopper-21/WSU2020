<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DeleteUser.aspx.vb" Inherits="WebsitePages_DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Styles/AccountNew.css" rel="stylesheet" />
        <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>

         <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

    <title>Shocker Solutions</title>
    <style type="text/css">
        .btn {
  background-color: #A20A02;
  border: none;
  color: white;
  padding: 6px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.8;
  transition: 0.3s;
  border-radius: 15px;
}
  .auto-style3 ul li{
           display: inline-block;
           padding:4px 10px;
           
        }
.btn:hover {opacity: 1}
  .auto-style4 {
            font-family: 'Material Icons';
            font-weight: normal;
            font-style: normal;
            font-size: large;
            line-height: 1;
            letter-spacing: normal;
            text-transform: none;
            display: inline-block;
            white-space: nowrap;
            word-wrap: normal;
            direction: ltr;
        }
table{border-collapse:collapse}*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .dropdown{border-radius: 15px;
                  width: 200px;
                  text-align:center;
                  font-family:'Microsoft JhengHei';
                  
                  
        }
        .auto-style3{
            font-size:larger;
        }
        .header1{
            border-radius:15px;
           width: 100%;
    padding: 0px;
    height: 400px;
            background-image: url(https://www.wichita.edu/services/strategic_communications/brand_standards/_images/WSU_ZoomBackground_1920x1080_05.jpg);
            background-position-y: 100%;
        }
         .box1 {
            width: 100%;
            height: 35px; 
            background-color: rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body style="background-color:whitesmoke">
    <form id="form1" runat="server">
        <div class="box1">
  <div class="auto-style3">
       
        <ul>
                <li><a href="https://www.facebook.com/wichita.state/"<i class="fab fa-facebook"></i></a></li>
            <li><a href="https://twitter.com/WichitaState?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"<i class="fab fa-twitter-square"></i></a></li>
            <li><a href="https://www.instagram.com/wichitastateu/?hl=en"<i class="fab fa-instagram-square"></i></a></li>
             <li><a href="https://www.youtube.com/channel/UCzLkoHQTEMpWnCnG2Vvphuw"<i class="fab fa-youtube"></i></a></li>
           
    </ul> 
    
    </div>
</div>
        <h1 class="header1">
        </h1>
          <div class="col-md-9">
                            <div class="nav-area"> 
    
        <ul>
            <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/Test/Home.aspx"><span class="material-icons">home</span> Home</a></li>
            <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Wizard1.aspx"><span class="material-icons">menu_book</span> wizard</a></li>
            <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Catalog.aspx"><span class="material-icons">menu_book</span> Catalog</a></li>
            <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/NewCart.aspx"><span class="material-icons">shopping_cart</span> Cart</a></li>
                  <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Account.aspx"><span class="material-icons">face</span> Account</a></li>
             <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Logout.aspx"><span class="material-icons">clear</span> Log Out</a></li>
    </ul>  
    </div>
                             
                        </div>

        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <b> Select a user to deactivate!</b></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" class="dropdown" DataSourceID="AccessDataSource5" DataTextField="EmployeeName" DataValueField="EmployeeID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnDeleteUser" class="btn" runat="server" Text="Deactivate User" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Microsoft JhengHei UI" ForeColor="Red" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
         <asp:AccessDataSource ID="AccessDataSource5" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT [EmployeeID], [EmployeeName] FROM [Employee]
WHERE EmployeeISActive = '1'" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
