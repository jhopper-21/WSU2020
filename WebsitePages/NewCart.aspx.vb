
Partial Class WebsitePages_NewCart
    Inherits System.Web.UI.Page

    Private Sub WebsitePages_NewCart_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim ProductID, Price, ProductModel As String
        Dim intcounter As Integer
        Dim arrCart(,) As String
        Dim CartSize As Integer

        Const CartID = 0
        Const CartPrice = 1
        Const CartDescription = 2
        Const CartQuantity = 3

        ProductID = Request.QueryString("ProductID")
        Price = Request.QueryString("ProductPrice")
        ProductModel = Request.QueryString("ProductModel")

        If Not IsArray(Session("sesCart")) Then
            Dim intBeginningSize As Integer = 0
            ReDim Preserve arrCart(3, intBeginningSize)
        Else
            arrCart = Session("sesCart")
        End If

        If ProductID <> "" Or ProductID <> String.Empty Then
            Dim FoundIt As Boolean = False
            For intcounter = 0 To UBound(arrCart, 2)
                If arrCart(CartID, intcounter) = ProductID Then
                    arrCart(CartQuantity, intcounter) = arrCart(CartQuantity, intcounter) + 1
                    FoundIt = True
                    Exit For
                End If
            Next

            If Not FoundIt Then
                If arrCart(CartID, CartSize) <> "" Then
                    CartSize = UBound(arrCart, 2) + 1

                End If
                ReDim Preserve arrCart(3, CartSize)
                arrCart(CartID, CartSize) = ProductID
                arrCart(CartPrice, CartSize) = Price
                arrCart(CartDescription, CartSize) = ProductModel
                arrCart(CartQuantity, CartSize) = 1
            End If
        End If

        CartSize = UBound(arrCart, 2)
        If Request.QueryString("updateQ") <> "" Then
            For intcounter = 0 To UBound(arrCart, 2)
                arrCart(CartQuantity, intcounter) = Trim(Request.QueryString("pq" & arrCart(CartID, intcounter)))
            Next
            Dim deleteItem As Integer = 0
            For intcounter = 0 To UBound(arrCart, 2)
                If arrCart(CartQuantity, intcounter) - 0 = 0 Then
                    deleteItem = deleteItem + 1
                    For intCounter2 As Integer = intcounter To UBound(arrCart, 2) - 1
                        arrCart(CartID, intCounter2) = arrCart(CartID, intCounter2 + 1)
                        arrCart(CartPrice, intCounter2) = arrCart(CartPrice, intCounter2 + 1)
                        arrCart(CartDescription, intCounter2) = arrCart(CartDescription, intCounter2 + 1)
                        arrCart(CartQuantity, intCounter2) = arrCart(CartQuantity, intCounter2 + 1)
                    Next
                End If
            Next
            ReDim Preserve arrCart(3, CartSize - deleteItem)
        End If
        Session("sescart") = arrCart
    End Sub
End Class
