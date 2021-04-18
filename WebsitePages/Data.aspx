<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Data.aspx.vb" Inherits="WebsitePages_Data" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <link rel="stylesheet" type="text/css" href="../Test/Catagory.css"/>
    <title>Shocker Solutions</title>
    <style type="text/css">
table{border-collapse:collapse}*,::after,::before{text-shadow:none!important;box-shadow:none!important}*,::after,::before{box-sizing:border-box}
        .auto-style1 {
            width: 50%;
            rig: 50%;
           
        }
        .auto-style2 {
            width: 105px;
            text-align: center;
        }
        .auto-style3 {
            width: 117px;
        }
        .auto-style4 {
            width: 157px;
            text-align: center;
        }
        .backbody{
           background-color:whitesmoke;
           position: relative;
           /*left: 100px;*/
       }
       .btn {
  background-color: black;
  border: none;
  color: white;
  padding: 7px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.6;
  transition: 0.3s;
}

.btn:hover {opacity: 1}

.divborder {
  border: 2px red;
  border-color: black;
  border-radius: 5px;
}

.auto-style3 ul li{
           display: inline-block;
           padding: 12px 10px;
        }

        ul{
            display: flex;
            justify-content: center;
        }

        .box1 {
            width: 100%;
            height: 50px;
        }

        .auto-style7 {
            width: 117px;
            text-align: center;
        }
        .auto-style8 {
            border: 2px none black;
            border-radius: 5px;
            text-align: center;
        }
        .divmargin {
    margin:auto;
    width: 70%;
}
        .auto-style10 {
            width: 131px;
            text-align: center;
        }
        .auto-style11 {
            margin-left: 0px;
        }
        .categorycenter{
             margin: auto;
            width: 70%;
           padding-left: 420px;
        }
        </style>
</head>
<body class="backbody">
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
    <div style='font-family:"Microsoft JhengHei Light",Microsoft JhengHei UI;font-size:150%'" class="text-center">
       <b>Data Analytics</b> 
    </div>
    <form id="form1" runat="server">
        <div class="text-center">
        <br />
        </div>
        <div style='font-family:"Microsoft JhengHei Light",Microsoft JhengHei UI;font-size:90%'" class="text-center" >  Select an employee:</div>    
         <div class="text-center">
         <asp:DropDownList ID="DropDownList3" runat="server" class="dropbtn" DataSourceID="AccessDataSource5" DataTextField="EmployeeName" DataValueField="EmployeeID">
        </asp:DropDownList>
         <br />
        <asp:CheckBox ID="chkOverall" runat="server"  AutoPostBack="True" Text="All Employees" />
         <asp:Button ID="btnSearch" runat="server" class="btn" Text="Pull Report" BackColor="#F0E2E7" ForeColor="Black" /> 
        <br />
        <br />
         </div>
         <asp:AccessDataSource ID="AccessDataSource5" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT [EmployeeID], [EmployeeName] FROM [Employee]
WHERE EmployeeIsActive = '1' ORDER BY [EmployeeID]" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource6" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT COUNT(OrderID) AS Expr1 FROM [Order] WHERE (EmployeeID = ?)" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList3" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource7" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT SUM(Total) AS TotalSpent FROM [Order] WHERE (EmployeeID = ?)" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList3" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource8" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT AVG(Total) AS Expr1 FROM [Order] WHERE (EmployeeID = ?)" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList3" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource9" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT Product.CategoryName, SUM(Product.ProductPrice) AS Expr1 FROM (Product INNER JOIN OrderDetails ON Product.ProductID = OrderDetails.ProductID) WHERE (OrderDetails.EmployeeID = ?) GROUP BY Product.CategoryName" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList3" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource10" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT DISTINCT COUNT(OrderID) AS Expr1 FROM OrderDetails
WHERE EmployeeID = ?" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList3" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
       
         <asp:AccessDataSource ID="AccessDataSource11" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT DISTINCT OrderStatus FROM [Order]
WHERE EmployeeID = ?" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList3" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
       
         <asp:AccessDataSource ID="AccessDataSource12" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT DISTINCT COUNT(OrderStatus) AS Expr1, OrderStatus FROM [Order] WHERE (EmployeeID = ?) GROUP BY OrderStatus" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList3" Name="?" PropertyName="SelectedValue" />
             </SelectParameters>
            </asp:AccessDataSource>
       
         <asp:AccessDataSource ID="AccessDataSource13" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT COUNT([OrderID]) AS Expr1 FROM [Order]" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
       
         <asp:AccessDataSource ID="AccessDataSource14" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT SUM(Total) AS Expr1 FROM [Order]" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
       
         <asp:AccessDataSource ID="AccessDataSource15" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT AVG(Total) AS Expr1 FROM [Order]" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource16" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT Product.CategoryName, SUM(Product.ProductPrice) AS Expr1 FROM (Product INNER JOIN OrderDetails ON Product.ProductID = OrderDetails.ProductID) GROUP BY Product.CategoryName" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource17" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT DISTINCT OrderStatus FROM [Order]
ORDER by OrderStatus DESC" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource18" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT DISTINCT COUNT(OrderStatus) AS Expr1, OrderStatus FROM [Order] GROUP BY OrderStatus" OldValuesParameterFormatString="original_{0}">
            </asp:AccessDataSource>
        <div class="auto-style8">
            <div class="text-center">
        <asp:Label ID="lblOrderByUser" runat="server" Visible="False" Font-Names="Microsoft JhengHei Light"></asp:Label>
        <br />
            </div>
            <div style="align-content:center">
        <table class="text-center" align="center">
            <tr>
                <td class="auto-style10">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource6" ForeColor="#333333" GridLines="None" Visible="False" Width="152px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Expr1" HeaderText="Total Orders" SortExpression="Expr1" >
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                </td>
                <td class="auto-style7">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource7" ForeColor="#333333" GridLines="None" Visible="False" Width="196px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="TotalSpent" HeaderText="Total Spent" SortExpression="TotalSpent" DataFormatString="{0:c}" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                </td>
                <td class="auto-style4">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource8" ForeColor="#333333" Width="247px" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Expr1" HeaderText="Average Order Cost" ReadOnly="True" SortExpression="Expr1" DataFormatString="{0:c}" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                </td>
             
            </tr>
        </table>
                </div>
            
        
            <div class="text-center">
            
        
        <asp:Label ID="lblOverallOrder" runat="server" Text="Showing overall order statistics: " Visible="False" Font-Names="Microsoft JhengHei Light"></asp:Label>
        <br />
            </div>
        <table class="auto-style1" align="center" >
            <tr>
                <td class="auto-style2">
        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource13" ForeColor="#333333" GridLines="None" Visible="False" Width="211px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Expr1" HeaderText="Total Orders" SortExpression="Expr1" >
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                </td>
                <td class="auto-style7">
        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource14" ForeColor="#333333" GridLines="None" Visible="False" Width="209px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Expr1" HeaderText="Total Spent" SortExpression="Expr1" DataFormatString="{0:c}" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                </td>
                <td class="auto-style4">
        <asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource15" ForeColor="#333333" Width="171px" GridLines="None" Visible="False" CssClass="auto-style11">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Expr1" HeaderText="Average Order Cost" ReadOnly="True" SortExpression="Expr1" DataFormatString="{0:c}" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
                </td>
               
            </tr>
        </table>
            </div>
        <div class="text-center">
        <br />
        </div>
        <div class="text-center">
            <div class="text-center">
        <asp:Label ID="lblCategoryByUser" runat="server" Visible="False" Font-Names="Microsoft JhengHei Light"></asp:Label>
        
        
            </div>
        
        
            <div class="categorycenter" >
        <table align="center" class="text-center">
        
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource9" ForeColor="#333333" GridLines="None" Visible="False" Width="500px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" SortExpression="CategoryName" />
                <asp:BoundField DataField="Expr1" DataFormatString="{0:c}" HeaderText="Total Spent ($)" SortExpression="Expr1" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            </table>
            </div>
            <div class="text-center">
        <asp:Label ID="lblOverallCat" runat="server" Text="Showing overall cash breakdown per category:" Font-Names="Microsoft JhengHei Light" Visible="False"></asp:Label>
        <br />
        
            </div>
        
         
        
            <div class="categorycenter">
        <table style="align-content:center" align="center" class="text-center" >
        <asp:GridView ID="GridView11" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource16" ForeColor="#333333" GridLines="None" Visible="False" Width="500px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" SortExpression="CategoryName" />
                <asp:BoundField DataField="Expr1" DataFormatString="{0:c}" HeaderText="Total Spent ($)" SortExpression="Expr1" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
            </table>
            </div>
            
            </div>
           
     
        <div class="text-center">
            <div class="text-center">
        <asp:Label ID="lblDecisionsByUser" runat="server" Font-Names="Microsoft JhengHei Light" Visible="False"></asp:Label>
        <br />
            </div>
            
        <table style="align-items:center" align="center">
            <tr>
               
                <td class="text-center">
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource12" ForeColor="#333333" GridLines="None" Visible="False" Width="500px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="OrderStatus" HeaderText="Order Status" SortExpression="OrderStatus" />
                <asp:BoundField DataField="Expr1" HeaderText="Number of Orders" SortExpression="Expr1">
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                </td>
            </tr>
        </table>
            <div class="divmargin">
        <asp:Label ID="lblOverallDecision" runat="server" Text="Showing overall order decisions:" Font-Names="Microsoft JhengHei Light" Visible="False"></asp:Label>
        <br />
            </div>
            <div style="align-content:center">
         <table style="align-items:center" align="center">
            <tr>
               
                <td>
        <asp:GridView ID="GridView13" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="AccessDataSource18" ForeColor="#333333" GridLines="None" Visible="False" Width="500px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="OrderStatus" HeaderText="Order Status" SortExpression="OrderStatus" />
                <asp:BoundField DataField="Expr1" HeaderText="Number of Orders" SortExpression="Expr1">
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                </td>
            </tr>
        </table>
            </div>
        <br />
    </form>
</body>
</html>
