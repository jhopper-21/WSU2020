<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Order.aspx.vb" Inherits="WebsitePages_Order" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <link href="Wizard.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
            <title>Shocker Solutions</title>
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
        .auto-style1 {
            display: inline-block;
            font-weight: 400;
            color: white;
            text-align: center;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            font-size: 16px;
            line-height: 1.5;
            border-radius: .25rem;
            transition: 0.3s;
            opacity: 0.8;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 4px 2px;
            padding: 6px 32px;
            background-color: black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="spacer"></div>
        <div class="spacer"></div>

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
            
                      
              
                      
  </div>

             <div class="text-center">
        <div Class="text-center">
        <font face = "Microsoft JhengHei Light" size="3" color="black"><b>Your current items:</b> </font>
        <%
            Dim orderTotal As Decimal = 0
            %>

             </div>

             <form method="get" action="NewCart.aspx">
            <input name="updateQ" type="hidden" value="1" />
            <table  bgcolor="white" border="1" style='font-family:"Microsoft JhengHei Light",Microsoft JhengHei UI;font-size:125%'" cellpadding="4" cellspacing="0" width="1080px" align="center">
                <tr bgcolor="darkgray">
                    <th >
                        Product
                    </th>
                    <th>
                        Price
                    </th>
                    <th>
                        Quantity
                    </th>
                </tr>
                <%

                Dim arrcart(,) As String
                arrcart = Session("sesCart")

                Const CartID = 0
                Const CartPrice = 1
                Const CartDescription = 2
                Const CartQuantity = 3
         %>
              <%   For intcounter As Integer = 0 To UBound(arrcart, 2)
                    If arrcart(CartID, intcounter) <> "" Then
                        orderTotal = orderTotal + (arrcart(CartPrice, intcounter) * arrcart(CartQuantity, intcounter)) %>
                   
        
       

                    

                <tr>
                    <td align="center">
                        <%=arrcart(CartDescription, intcounter) %>&nbsp
                        </td>
                    <td align="center" class="auto-style2">
                        <%=FormatCurrency(arrcart(CartPrice, intcounter)) %>&nbsp
                    </td>

                    <td align="center">
                        <input name="pq<%=arrcart(CartID, intcounter)%>" type="text" size="4" value="<%=arrcart(CartQuantity, intcounter)%>" />

                        </td>
                    </tr>
                <%
                    End If
                Next
                    %>
                <tr bgcolor="darkgray">
                    <td colspan="2" align="right">
                        <b>Order Total:</b>
                    </td>
                    <td>
                        <%=FormatCurrency(orderTotal) %>&nbsp;
                        </td>
                    <%Session("OrderTotal") = orderTotal %>                    <%
                Dim TotalQuantity As Integer
                TotalQuantity = 0
                For intcounter As Integer = 0 To UBound(Session("sesCart"), 2)
                    TotalQuantity = TotalQuantity + Session("sesCart")(3, intcounter)
                Next
                If TotalQuantity = 0 Then
                    Session.Abandon()
                End If%>

                    </tr>
                <tr>
                    <td colspan="3" align="center">
                       <strong> <%="Send approval to: " %> </strong>
                        <asp:DropDownList ID="ddlSupervisor" runat="server">
            </asp:DropDownList><br />

                         <asp:Button ID="btnBack" runat="server" CssClass="auto-style1" Text="Go Back" Width="165px" />
                                                          <asp:Button ID="btnSubmit" runat="server" CssClass="auto-style1" Text="Place Order" Width="165px" />
                       <%-- <table border="0">
                            <tr>
                                <td align="right">
                                    <input type="submit" class="btn" style="background-color:#c17817" value="Update Cart" />
                         
            </td>
                                </form>
        <form action="Catalog.aspx">
                    <td>
                        <input id="CtnShopping" type="submit" class="btn" style="background-color:#3f84e5" value="Continue Shopping" />
            </td>
               </form>
         <form action="Order.aspx">
                    <td>
                        <input id="Ct" type="submit" class="btn" style="background-color:#3f784c" value="Checkout" />--%>
            </td>
                       </tr> </table> 
                 <%--</td> </tr> </table>--%>
               </form>
    

                             
                     
        
            &nbsp;</div>
          
            
            <br />
           

        </div>
    </form>
                </body>
</html>
