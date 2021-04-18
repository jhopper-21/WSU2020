<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewCart.aspx.vb" Inherits="WebsitePages_NewCart" 
    EnableEventValidation="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% 

    %>

<html>
<head runat="server">
    <link rel="shortcut icon" type="image/jpg" href="../Images/SS.ico"/>
    <link href="../Test/Cart.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css" integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <title>Shocker Solutions</title>
    <style>
            .btn {
  
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  opacity: 0.8;
  transition: 0.3s;
}

.btn:hover {opacity: 1;
          
}

.auto-style3 ul li{
           display: inline-block;
           padding: 9px 10px;
        }

        .ul{
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
<body>
      
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

       
    <div class="text-center">
        <div class="text-center">
        <font face="Microsoft JhengHei Light" size="3" color="black"><b>Your current items:</b> </font>
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


                    Const CartID = 0
                    Const CartPrice = 1
                    Const CartDescription = 2
                    Const CartQuantity = 3
                    Dim intBeginningSize As Integer = 0
                    Dim arrcart(,) As String
                    arrcart = Session("sesCart")
                    If Not IsArray(Session("sesCart")) Then
                        ReDim Preserve arrcart(3, intBeginningSize)
                    Else
                        arrcart = Session("sesCart")
                    End If
                    For intcounter As Integer = 0 To UBound(arrcart, 2)
                        If arrcart(CartID, intcounter) <> "" Then
                            orderTotal = orderTotal + (arrcart(CartPrice, intcounter) * arrcart(CartQuantity, intcounter))
                   %>
        
       

                    

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
                        <table border="0">
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
                        <input id="Ct" type="submit" class="btn" style="background-color:#3f784c" value="Checkout" />
            </td>
               </form>
    

                        <%--        </tr> </table> </td> </tr> </table>--%>
                     
        
            &nbsp;</div>

                    
            

  </body>
</html>
