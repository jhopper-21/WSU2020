<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Catalog.aspx.vb" Inherits="WebsitePages_NewCategories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <title>Shocker Solutions</title>
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="../Test/Catagory.css" rel="stylesheet" />
           <style>     

.btn {
  background-color:whitesmoke;
  border: none;
  color: white;
  padding: 7px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.8;
  transition: 0.3s;
}

.btn:hover {opacity: 1}
               .auto-style3 {
                   
                   position:relative;
                   top: 0px;
               }
               .auto-style5 {
                   width: 15px;
                   
                   
               }
               .auto-style7 {
                   width: 90px;
               }

               .auto-style3 ul li{
           display: inline-block;
           padding: 6px 10px;
           
        }

        ul{
           display: flex;
           justify-content: left; 
        }

        .box1{
            width: 100%;
            height: 35px; 
            background-color: rgba(0, 0, 0, 0.2);
        }

         .Keyword{
            border: 3px #818181 solid;
            width:102%;
            background-color: rgba(0, 0, 0, 0.2);
         }
         .textbox{
             border: none;
             
         }
         .dropdown{
             border: none;
         }

         .radcat{
              color: #818181;
            font-size: 12px;
            font-weight: 500;
            text-decoration: none;
            font-family: poppins;
            transition: 0.3s;
            text-transform: uppercase;
         }

         .radkey{
              color: #818181;
            font-size: 14px;
            font-weight: 500;
            text-decoration: none;
            font-family: poppins;
            transition: 0.3s;
            text-transform: uppercase;
         }
         .userOptionBar{
             background-color: rgba(0, 0, 0, 0.02);
         }
           </style>
            </head>
    
<body >

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
         
      <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/Test/Home.aspx"><span class="material-icons">home</span> Home</a></li>
            <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Wizard1.aspx"><span class="material-icons">menu_book</span> Wizard</a></li>
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



        
         <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT [CategoryName] FROM [Category]"></asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT ProductID, ProductModel, ProductPrice, CategoryName, Images FROM Product WHERE ProductModel LIKE '%' + ? + '%'">
             <SelectParameters>
                 
                 <asp:ControlParameter ControlID="txtKeyword" Name="?" PropertyName="Text" />
             </SelectParameters>
            </asp:AccessDataSource>
            <br />
         <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT ProductID, ProductModel, ProductPrice, CategoryName, Images FROM Product WHERE (CategoryName = ?)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="ddlCategory" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
           <br />
         
           <div class="Keyword">
                        <table class="auto-style3" align="center">
                            <tr>
                                <td class="auto-style7">
                       
                                    <strong>
                       
                                   <asp:RadioButton ID="radCategory" runat="server" Text="  Category" cssclass="radcat" GroupName="a" AutoPostBack="True" Checked="True" /> </strong>&nbsp;
                                </td>
                                <td class="auto-style5">
                       
                                                <asp:DropDownList ID="ddlCategory" cssclass="ddl" runat="server" AutoPostBack="True" alignment="middlecenter"  DataSourceID="AccessDataSource1" DataTextField="CategoryName" DataValueField="CategoryName" Height="25px" Width="123px">
            </asp:DropDownList>

                                </td>
                                <td class="auto-style7">
                        <asp:RadioButton ID="radKeyword" runat="server" cssclass="radkey" Text="Keyword" groupname="a" AutoPostBack="True"/>
                                </td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="txtKeyword" CssClass="textbox" runat="server" AutoPostBack="false" alignment="middlecenter"  style="height: 20px" Width="123px" ></asp:TextBox>
                                    <br />
                                </td>
                                <td>

                        <asp:Button ID="btnSearch" runat="server" class="btn" Text="Search" ForeColor="Black" />

                                </td>
                            </tr>
                        </table>
               </div>
         <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" class="contentcenter" AutoGenerateColumns="False"  DataKeyNames="ProductID" DataSourceID="AccessDataSource2" AllowPaging="True" PageSize="3" BackColor="#CCCCCC" BorderColor="#999999"  CellPadding="4" ForeColor="Black" alignment="middle-center" Align="Center" AlternatingRowStyle-HorizontalAlign="Center" AllowSorting="True" BorderStyle="Solid" CellSpacing="2">
                <AlternatingRowStyle />
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="Product Code" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductModel" HeaderText="Model" SortExpression="ProductModel" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="Price" SortExpression="ProductPrice" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryName" />
                    <asp:ImageField DataImageUrlField="Images" HeaderText="Picture">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID,ProductModel,CategoryName,ProductPrice" DataNavigateUrlFormatString="newcart.aspx?ProductID={0}&amp;ProductModel={1}&amp;CategoryName={2}&amp;ProductPrice={3}" HeaderText="Add to cart" Text="Add to Cart" />
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
             <asp:GridView ID="GridView2" runat="server" CssClass="contentcenter" AlternatingRowStyle-CssClass="contentcenter" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="AccessDataSource3" AllowPaging="True" PageSize="3" BackColor="#CCCCCC" BorderColor="#999999" BorderWidth="3px" CellPadding="4" ForeColor="Black" alignment="middle-center" Align="Center" AllowSorting="True" BorderStyle="Solid" CellSpacing="2">
                 <AlternatingRowStyle CssClass="contentcenter" />
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="Product Code" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductModel" HeaderText="Model" SortExpression="ProductModel" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="Price" SortExpression="ProductPrice" DataFormatString="{0:c}" />
                    <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryName" />
                    <asp:ImageField DataImageUrlField="Images" HeaderText="Picture">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="ProductID,ProductModel,CategoryName,ProductPrice" DataNavigateUrlFormatString="newcart.aspx?ProductID={0}&amp;ProductModel={1}&amp;CategoryName={2}&amp;ProductPrice={3}" HeaderText="Add to cart" Text="Add to Cart" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" CssClass="pager" />
                 <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
