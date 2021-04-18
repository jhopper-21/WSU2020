<%@ Page Language="VB" AutoEventWireup="false" CodeFile="WizardResults.aspx.vb" Inherits="WebsitePages_Wizard" %>

<!DOCTYPE html>
<%--<link href="../Styles/HomePage.css" rel="stylesheet" />--%>
<link href="../Test/Sidebar.css" rel="stylesheet" />
<script src="../Java/HomePage.js"></script>
<link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
<title>Shocker Solutions</title>
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <link href="../Test/Cart.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <style>
        .background {
            background-color: whitesmoke;
        }        
        .contentcenter{
            background-color: whitesmoke;
             position: relative;
  left: 100px;        }
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

.divmargin {
    margin:auto;
    width: 70%;
}
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


        </style>
    </head> 
<body class="background">
 <form id="form1" class="background" runat="server">
    <div class="box1">
  <div class="auto-style3">
        <ul>
           <li></li>
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
         
      <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/Test/Home.aspx"><span class="material-icons">home</span> Home</a></li>
            <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Wizard1.aspx"><span class="material-icons">menu_book</span> Wizard</a></li>
      <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Catalog.aspx"><span class="material-icons">menu_book</span> Catalog</a></li>
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
   
    <div class="divmargin">
        <div class="divmargin">
              <asp:Label ID="lblResults" runat="server"  Font-Names="Microsoft JhengHei Light" Font-Size="25pt" ></asp:Label> <br />
             <asp:Label ID="LblParameters" runat="server"  Font-Names="Microsoft JhengHei Light" Font-Size="20pt" ></asp:Label>

    
     <br />
        <asp:GridView ID="GridView1" runat="server" class="gridview" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" BorderStyle="Solid" CellSpacing="2" Width="734px" CaptionAlign="Top">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="Product No." />
                <asp:BoundField DataField="ProductModel" HeaderText="Model" >
                <ControlStyle Width="400px" />
                <ItemStyle HorizontalAlign="Center" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="ProductPrice" HeaderText="Price" DataFormatString="{0:c}" />
                <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                <asp:ImageField DataImageUrlField="Images" HeaderText="Image">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="ProductID,ProductModel,CategoryName,ProductPrice" DataNavigateUrlFormatString="newcart.aspx?ProductID={0}&amp;ProductModel={1}&amp;CategoryName={2}&amp;ProductPrice={3}" HeaderText="Add to cart" Text="Add to cart" >
                <ControlStyle Width="100px" />
                </asp:HyperLinkField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            <asp:Button ID="btnStart" class="btn"  runat ="server" Text="Start Over" />
            </div>
        <br />
        
        </div> 
    </form>
</body>
</html>
