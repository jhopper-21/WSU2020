<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Wizard2.aspx.vb" Inherits="Test_FinalWizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <link href="Wizard.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Shocker Solutions</title>

     <style type="text/css">
         .auto-style3 ul li{
           display: inline-block;
           padding: 6px 10px;
           
        }

        ul{
           display: flex;
           justify-content: left; 
        }

        .box1 {
            width: 100%;
            height: 35px; 
            background-color: rgba(0, 0, 0, 0.2);
        }
        
      .btn {
  background-color: black;
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
}

.btn:hover {opacity: 1}
    </style>
</head>
<body>
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

        <div class="coverImageHolder">
        </div>

        <div class="userOptionBar">
            <div class="container">
                <div class="row">
                     <div class="box">
                         
  <div class="single-box">
      
<div class="nav-area"> 
    
        <ul>
         <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/Test/Home.aspx"><span class="material-icons">home</span> HomePage</a></li>
       <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Catalog.aspx"><span class="material-icons">menu_book</span> Catalog</a></li>
      <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/NewCart.aspx"><span class="material-icons">shopping_cart</span> Cart</a></li>
      <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Account.aspx"><span class="material-icons">face</span> Account</a></li>
        <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Logout.aspx"><span class="material-icons">clear</span> Log Out</a></li>
    </ul>  
    </div>
</div>
</div>
                    </div>
                    </div>
                    </div>

       <div class="spacer"></div>
        <div class="spacer"></div>

             <div class="wrapper">
        <div class="wizard">             
              <%--<div class="sidebar">
                <h1>Products</h1>
  <a href="#">Workstations</a>
  <a href="#">Software</a>
  <a href="#">Components</a>
  <a href="#">Peripherals</a>
  <a href="#">Monitors</a>--%>
  </div>
                    <div class="wiz">
                                                            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                                    <br />
            <br />
                                    <br />
                    <p style='font-family:"Microsoft JhengHei Light",Microsoft JhengHei UI;font-size:150%'">
            Welcome to the workstation wizard!</p>
        <p style='font-family:"Microsoft JhengHei Light",Microsoft JhengHei UI;font-size:150%'">
            Usually, I do most of my work at:</p>
                        <p>
            <asp:Button ID="btnOffice" runat="server" class="btn" Text="In the office" ForeColor="White" />
            <asp:Button ID="btnMobile" runat="server" class="btn" Text="Work from home" ForeColor="White" />
                            <br />
                            &nbsp;&nbsp;
            </p>
        <p>
            &nbsp;</p>
        
            
        <p>
            &nbsp;</p>
        <br />
        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" />
                <asp:BoundField DataField="ProductModel" HeaderText="ProductModel" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" />
                <asp:ImageField DataImageUrlField="Images" HeaderText="Images">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="ProductID,ProductModel,CategoryName,ProductPrice" DataNavigateUrlFormatString="newcart.aspx?ProductID={0}&amp;ProductModel={1}&amp;CategoryName={2}&amp;ProductPrice={3}" HeaderText="Add to cart" Text="Add to cart" />
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
   
           </div>
                      </div>
                 </div>
               
               
               

        
        

               
             

    </form>
</body>
</html>
