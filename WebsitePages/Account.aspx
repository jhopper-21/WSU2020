<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Account.aspx.vb" Inherits="WebsitePages_Account" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <link href="../Styles/AccountNew.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Shocker Solutions</title> 
    </head>
    <style>
    .btn {
  background-color: black;
  border: none;
  color: white;
  padding: 6px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.8;
  transition: 0.3s;
}

.btn:hover {opacity: 1}

         .auto-style3 ul li{
           display: inline-block;
           padding:4px 10px;
           
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

        .auto-style3 {
            font-size: larger;
        }
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
        .auto-style5 {
            font-size: large;
        }

        .userOptionBar{
             height: 60px;
    background: #fff;
    width: 100%;
    padding: 10px;
    border-top: 3px #818181 solid;
    border-bottom: 3px #818181 solid;
    background-color: rgba(0, 0, 0, 0.02);
        }

        .card{


   
    border: 3px #818181 solid;
    background-color: rgba(0, 0, 0, 0.02);
        }

        </style>
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
                    <div class="col-md-3">
                        <div class ="userImage" style= "background-image: url('../Images/Misc/iconfinder_user_male2_172626.png');">
                            
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="nav-area"> 
    
        <ul>
             <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/Test/Home.aspx"><span class="auto-style4">home</span></a><span class="auto-style3"><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/Test/Home.aspx" class="auto-style5">Home</a></span></li>
             <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Wizard1.aspx"><span class="auto-style4">menu_book</span></a><span class="auto-style3"><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Wizard1.aspx" class="auto-style5">Wizard</a></span></li>
       <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Catalog.aspx"><span class="auto-style4">menu_book</span></a><span class="auto-style3"><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Catalog.aspx" class="auto-style5">Catalog</a></span></li>
      <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/NewCart.aspx"><span class="auto-style4">shopping_cart</span></a><span class="auto-style3"><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/NewCart.aspx" class="auto-style5">Cart</a></span></li>
        <li><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Logout.aspx"><span class="auto-style4">clear</span></a><span class="auto-style3"><a href="http://ec2-3-21-135-95.us-east-2.compute.amazonaws.com/unicorn_riders/WebsitePages/Logout.aspx" class="auto-style5">Log Out</a></span></li>
    </ul>  
    </div>
                             
                        </div>
                   
                        <div class="col-md-2"></div>
                        </div>
                    </div>
                </div>
       

        <div class="spacer"></div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                   <div class="card">
                       <div class="card-body">
                           <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Microsoft JhengHei Light" Font-Size="X-Large"></asp:Label>
                           <hr />
                           <b>About:</b><br />
                           <asp:Label ID="Label3" runat="server" Text="Status:" Visible="False"></asp:Label>
                           <asp:Label ID="Label2" runat="server" Text="Status changed!" Visible="False"></asp:Label>
                           <br />
                           <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Visible="False">
                               <asp:ListItem Value="Available">Available</asp:ListItem>
                               <asp:ListItem>Not Available</asp:ListItem>
                           </asp:DropDownList>
                           <br />
                           <asp:Button ID="btnChangePass" runat="server" CssClass="btn" BackColor="#c17817" Text="Change Password" Width="205px" />
                           <br />
                            <asp:Button ID="btnData" runat="server" CssClass="btn" BackColor="#3f84e5" Text="Data Analytics" Visible="False" ForeColor="White" style="width: 208px" Width="205px" />
                           <br />
                                                       <asp:Button ID="btnCreateAccount" runat="server" CssClass="btn" BackColor="#729B79" Text="Create User Account" Visible="False" ForeColor="White" style="width: 208px" Width="205px" />

                           <br />
                                                       <asp:Button ID="btnDelete" runat="server" CssClass="btn" BackColor="#A20A02" Text="Deactivate User" Visible="False" ForeColor="White" style="width: 208px" Width="205px" />

                           <br />

                           </div>
                           <br />
                           <br />
                           <br />
                       </div>
                   
                </div>
                <div class="col-md-8">
                    <div class="card">
                        <h4 style='font-family:"Microsoft JhengHei Light",Microsoft JhengHei UI;font-size:150%'" class="text-center"> <b>  Order History</b> </h4>
                      
                        <h6><asp:Label ID="lblDecision" runat="server" Text="Decision:" Visible="False"></asp:Label>
                            <asp:DropDownList ID="ddlDecision" runat="server" Visible="False">
                                <asp:ListItem>APPROVED</asp:ListItem>
                                <asp:ListItem>DENIED</asp:ListItem>
                            </asp:DropDownList>
<asp:Label ID="lblComments" runat="server" Text="Comments:" Visible="False"></asp:Label>
                            <asp:TextBox ID="txtComments" runat="server" Visible="False"></asp:TextBox>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Visible="False" />
                        </h6>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="AccessDataSource3" Visible="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AllowPaging="True" PageSize="5">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="OrderID" HeaderText="Order No." InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                <asp:BoundField DataField="DatePlaced" HeaderText="Date Placed" SortExpression="DatePlaced" ReadOnly="True" />
                                <asp:BoundField DataField="OrderStatus" HeaderText="Status" SortExpression="OrderStatus" />
                                <asp:BoundField DataField="EmployeeID" HeaderText="Employee" SortExpression="EmployeeID" ReadOnly="True" />
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" DataFormatString="{0:c}" ReadOnly="True" />
                                <asp:BoundField DataField="AddComment" HeaderText="Comments" SortExpression="AddComment" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="OrderID" DataSourceID="AccessDataSource4" ForeColor="Black" AllowPaging="True" PageSize="5" Visible="False">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" />
                                    <asp:BoundField DataField="OrderID" HeaderText="Order No." InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                    <asp:BoundField DataField="DatePlaced" HeaderText="Order Date" SortExpression="DatePlaced" >
                                    <ItemStyle Wrap="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="OrderStatus" HeaderText="Status" SortExpression="OrderStatus" />
                                    <asp:BoundField DataField="DecisionBy" HeaderText="Decision By" SortExpression="DecisionBy" Visible="False" />
                                    <asp:BoundField DataField="DecisionDate" HeaderText="Decision Date" SortExpression="DecisionDate" Visible="False" >
                                    <ItemStyle Wrap="True" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" DataFormatString="{0:c}" >
                                    <ItemStyle Wrap="False" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="AddComment" HeaderText="Comments" SortExpression="AddComment" >
                                    <ItemStyle Wrap="True" />
                                    </asp:BoundField>
                                    <asp:CommandField DeleteText="Delete Order" ShowDeleteButton="True">
                                    <ItemStyle Wrap="False" />
                                    </asp:CommandField>
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="OrderDetailsID" DataSourceID="AccessDataSource5">
                                <Columns>
                                    <asp:BoundField DataField="OrderDetailsID" HeaderText="Order Item" InsertVisible="False" ReadOnly="True" SortExpression="OrderDetailsID" />
                                    <asp:BoundField DataField="OrderID" HeaderText="Order No." SortExpression="OrderID" Visible="False" />
                                    <asp:BoundField DataField="ProductID" HeaderText="Product No." SortExpression="ProductID" />
                                    <asp:BoundField DataField="OrderDate" HeaderText="Date Ordered" SortExpression="OrderDate" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                    <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" SortExpression="Price" />
                                    <asp:BoundField DataField="EmployeeID" HeaderText="Employee No." SortExpression="EmployeeID" Visible="False" />
                                    <asp:BoundField DataField="SupervisorID" HeaderText="Approver No." SortExpression="SupervisorID" Visible="False" />
                                    <asp:CommandField ShowDeleteButton="True" DeleteText="Remove Product">
                                    <ItemStyle Font-Bold="True" Font-Underline="True" />
                                    </asp:CommandField>
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                       
                        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="OrderID" HeaderText="Order No." />
                                <asp:BoundField DataField="ProductID" HeaderText="Product No." />
                                <asp:BoundField DataField="OrderDate" HeaderText="Date Ordered" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <br />
                         <br />
                         <h5  style='font-family:"Microsoft JhengHei Light",Microsoft JhengHei UI;font-size:150%'" class="text-center">
                             <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Microsoft JhengHei Light" ForeColor="Black" Text="Direct Report Order History" Visible="False"></asp:Label>
                        </h5>
                       
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="AccessDataSource6" DataTextField="EmployeeName" DataValueField="EmployeeID" Visible="False">
                        </asp:DropDownList>
                        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="OrderID" DataSourceID="AccessDataSource7" ForeColor="Black">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="OrderID" HeaderText="Order No." InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                                <asp:BoundField DataField="DatePlaced" HeaderText="Date Placed" SortExpression="DatePlaced" />
                                <asp:BoundField DataField="OrderStatus" HeaderText="Status" SortExpression="OrderStatus" />
                                <asp:BoundField DataField="DecisionBy" HeaderText="Decision By" SortExpression="DecisionBy" />
                                <asp:BoundField DataField="DecisionDate" HeaderText="Decision Date" SortExpression="DecisionDate" />
                                <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" DataFormatString="{0:c}" />
                                <asp:BoundField DataField="AddComment" HeaderText="Comment" SortExpression="AddComment" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="OrderDetailsID" DataSourceID="AccessDataSource8" ForeColor="Black">
                            <Columns>
                                <asp:BoundField DataField="OrderDetailsID" HeaderText="Order Item" SortExpression="OrderDetailsID" InsertVisible="False" ReadOnly="True" />
                                <asp:BoundField DataField="OrderID" HeaderText="OrderID" SortExpression="OrderID" Visible="False" />
                                <asp:BoundField DataField="ProductID" HeaderText="Product No." SortExpression="ProductID" />
                                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" SortExpression="OrderDate" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                                <asp:BoundField DataField="Price" DataFormatString="{0:c}" HeaderText="Price" SortExpression="Price" />
                                <asp:CommandField DeleteText="Remove Product" ShowDeleteButton="True">
                                <ItemStyle Font-Bold="True" ForeColor="Black" />
                                </asp:CommandField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="Gray" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <br />
         <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT [OrderID], [DatePlaced], [OrderStatus], [DecisionDate], [EmployeeID], [Total], [AddComment], [DecisionBy], [OldOrderID] FROM [Order] WHERE (([OrderStatus] = ?) AND ([DecisionBy] = ?)) ORDER BY [OrderID] DESC" DeleteCommand="DELETE FROM [Order] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [Order] ([OrderID], [DatePlaced], [OrderStatus], [DecisionDate], [EmployeeID], [Total], [AddComment], [DecisionBy], [OldOrderID]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Order] SET [DatePlaced] = ?, [OrderStatus] = ?, [DecisionDate] = ?, [EmployeeID] = ?, [Total] = ?, [AddComment] = ?, [DecisionBy] = ?, [OldOrderID] = ? WHERE [OrderID] = ?" OldValuesParameterFormatString="original_{0}">
             <DeleteParameters>
                 <asp:Parameter Name="original_OrderID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="OrderID" Type="Int32" />
                 <asp:Parameter Name="DatePlaced" Type="DateTime" />
                 <asp:Parameter Name="OrderStatus" Type="String" />
                 <asp:Parameter Name="DecisionDate" Type="DateTime" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="Total" Type="Int32" />
                 <asp:Parameter Name="AddComment" Type="String" />
                 <asp:Parameter Name="DecisionBy" Type="String" />
                 <asp:Parameter Name="OldOrderID" Type="Int32" />
             </InsertParameters>
             <SelectParameters>
                 <asp:Parameter DefaultValue="PENDING" Name="OrderStatus" Type="String" />
                 <asp:SessionParameter Name="DecisionBy" SessionField="EmpID" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="DatePlaced" Type="DateTime" />
                 <asp:Parameter Name="OrderStatus" Type="String" />
                 <asp:Parameter Name="DecisionDate" Type="DateTime" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="Total" Type="Int32" />
                 <asp:Parameter Name="AddComment" Type="String" />
                 <asp:Parameter Name="DecisionBy" Type="String" />
                 <asp:Parameter Name="OldOrderID" Type="Int32" />
                 <asp:Parameter Name="original_OrderID" Type="Int32" />
             </UpdateParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT OrderID, DatePlaced, OrderStatus, DecisionBy, DecisionDate, Total, AddComment FROM [Order] WHERE (EmployeeID = ?)" DeleteCommand="DELETE * FROM [Order] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [Order] ([OrderID], [OrderStatus], [DecisionBy], [DecisionDate], [Total], [DatePlaced], [EmployeeID], [OldOrderID], [AddComment]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Order] SET [OrderStatus] = ?, [DecisionBy] = ?, [DecisionDate] = ?, [Total] = ?, [DatePlaced] = ?, [EmployeeID] = ?, [OldOrderID] = ?, [AddComment] = ? WHERE [OrderID] = ?" OldValuesParameterFormatString="original_{0}">
             <DeleteParameters>
                 <asp:Parameter Name="original_OrderID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="OrderID" Type="Int32" />
                 <asp:Parameter Name="OrderStatus" Type="String" />
                 <asp:Parameter Name="DecisionBy" Type="String" />
                 <asp:Parameter Name="DecisionDate" Type="DateTime" />
                 <asp:Parameter Name="Total" Type="Int32" />
                 <asp:Parameter Name="DatePlaced" Type="DateTime" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="OldOrderID" Type="Int32" />
                 <asp:Parameter Name="AddComment" Type="String" />
             </InsertParameters>
             <SelectParameters>
                 <asp:SessionParameter Name="OrderID" SessionField="EmpID" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="OrderStatus" Type="String" />
                 <asp:Parameter Name="DecisionBy" Type="String" />
                 <asp:Parameter Name="DecisionDate" Type="DateTime" />
                 <asp:Parameter Name="Total" Type="Int32" />
                 <asp:Parameter Name="DatePlaced" Type="DateTime" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="OldOrderID" Type="Int32" />
                 <asp:Parameter Name="AddComment" Type="String" />
                 <asp:Parameter Name="original_OrderID" Type="Int32" />
             </UpdateParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource8" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT [OrderDetailsID], [OrderID],[ProductID], [OrderDate], [Quantity], [Price] FROM [OrderDetails] WHERE ([OrderID] = ?)" DeleteCommand="DELETE FROM OrderDetails WHERE (OrderDetailsID = ?)" OldValuesParameterFormatString="original_{0}">
             <SelectParameters>
                 <asp:ControlParameter ControlID="GridView5" Name="OrderID" PropertyName="SelectedRow.Cells(1).text" Type="Int32" />
             </SelectParameters>
            </asp:AccessDataSource>
                        <br />
         <asp:AccessDataSource ID="AccessDataSource6" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT EmployeeID, EmployeeName FROM Employee WHERE (Department = ?) AND (NOT (Role = 'Accounting Supervisor'))" DeleteCommand="DELETE * FROM [Order] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [OrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [OrderDate], [Quantity], [Price], [EmployeeID], [SupervisorID]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [OrderDetails] SET [OrderID] = ?, [ProductID] = ?, [OrderDate] = ?, [Quantity] = ?, [Price] = ?, [EmployeeID] = ?, [SupervisorID] = ? WHERE [OrderDetailsID] = ?" OldValuesParameterFormatString="original_{0}">
             <DeleteParameters>
                 <asp:Parameter Name="original_OrderDetailsID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="OrderDetailsID" Type="Int32" />
                 <asp:Parameter Name="OrderID" Type="Int32" />
                 <asp:Parameter Name="ProductID" Type="String" />
                 <asp:Parameter Name="OrderDate" Type="DateTime" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="Price" Type="Decimal" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="SupervisorID" Type="Int32" />
             </InsertParameters>
             <SelectParameters>
                 <asp:SessionParameter DefaultValue="0" Name="Department" SessionField="sesDep" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="OrderID" Type="Int32" />
                 <asp:Parameter Name="ProductID" Type="String" />
                 <asp:Parameter Name="OrderDate" Type="DateTime" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="Price" Type="Decimal" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="SupervisorID" Type="Int32" />
                 <asp:Parameter Name="original_OrderDetailsID" Type="Int32" />
             </UpdateParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource7" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT OrderID, DatePlaced, OrderStatus, DecisionBy, DecisionDate, Total, AddComment FROM [Order] WHERE (EmployeeID = ?)" DeleteCommand="DELETE * FROM [Order] WHERE [OrderID] = ?" InsertCommand="INSERT INTO [Order] ([OrderID], [OrderStatus], [DecisionBy], [DecisionDate], [Total], [DatePlaced], [EmployeeID], [OldOrderID], [AddComment]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Order] SET [OrderStatus] = ?, [DecisionBy] = ?, [DecisionDate] = ?, [Total] = ?, [DatePlaced] = ?, [EmployeeID] = ?, [OldOrderID] = ?, [AddComment] = ? WHERE [OrderID] = ?" OldValuesParameterFormatString="original_{0}">
             <DeleteParameters>
                 <asp:Parameter Name="original_OrderID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="OrderID" Type="Int32" />
                 <asp:Parameter Name="OrderStatus" Type="String" />
                 <asp:Parameter Name="DecisionBy" Type="String" />
                 <asp:Parameter Name="DecisionDate" Type="DateTime" />
                 <asp:Parameter Name="Total" Type="Int32" />
                 <asp:Parameter Name="DatePlaced" Type="DateTime" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="OldOrderID" Type="Int32" />
                 <asp:Parameter Name="AddComment" Type="String" />
             </InsertParameters>
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList2" Name="OrderID" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="OrderStatus" Type="String" />
                 <asp:Parameter Name="DecisionBy" Type="String" />
                 <asp:Parameter Name="DecisionDate" Type="DateTime" />
                 <asp:Parameter Name="Total" Type="Int32" />
                 <asp:Parameter Name="DatePlaced" Type="DateTime" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="OldOrderID" Type="Int32" />
                 <asp:Parameter Name="AddComment" Type="String" />
                 <asp:Parameter Name="original_OrderID" Type="Int32" />
             </UpdateParameters>
            </asp:AccessDataSource>
         <asp:AccessDataSource ID="AccessDataSource5" runat="server" DataFile="../App_Data/ProjectDatabase42.mdb" SelectCommand="SELECT [OrderDetailsID], [OrderID], [ProductID], [OrderDate], [Quantity], [Price], [EmployeeID], [SupervisorID] FROM [OrderDetails] WHERE ([OrderID] = ?)" DeleteCommand="DELETE * FROM [OrderDetails] WHERE [OrderDetailsID] = ?" InsertCommand="INSERT INTO [OrderDetails] ([OrderDetailsID], [OrderID], [ProductID], [OrderDate], [Quantity], [Price], [EmployeeID], [SupervisorID]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [OrderDetails] SET [OrderID] = ?, [ProductID] = ?, [OrderDate] = ?, [Quantity] = ?, [Price] = ?, [EmployeeID] = ?, [SupervisorID] = ? WHERE [OrderDetailsID] = ?" OldValuesParameterFormatString="original_{0}">
             <DeleteParameters>
                 <asp:Parameter Name="original_OrderDetailsID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="OrderDetailsID" Type="Int32" />
                 <asp:Parameter Name="OrderID" Type="Int32" />
                 <asp:Parameter Name="ProductID" Type="String" />
                 <asp:Parameter Name="OrderDate" Type="DateTime" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="Price" Type="Decimal" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="SupervisorID" Type="Int32" />
             </InsertParameters>
             <SelectParameters>
                 <asp:ControlParameter ControlID="GridView2" DefaultValue="0" Name="OrderID" PropertyName="SelectedRow.Cells(1).text" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="OrderID" Type="Int32" />
                 <asp:Parameter Name="ProductID" Type="String" />
                 <asp:Parameter Name="OrderDate" Type="DateTime" />
                 <asp:Parameter Name="Quantity" Type="Int32" />
                 <asp:Parameter Name="Price" Type="Decimal" />
                 <asp:Parameter Name="EmployeeID" Type="Int32" />
                 <asp:Parameter Name="SupervisorID" Type="Int32" />
                 <asp:Parameter Name="original_OrderDetailsID" Type="Int32" />
             </UpdateParameters>
            </asp:AccessDataSource>
                           <hr />
                           <b></b><br />
                           <a></a>
                    </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
