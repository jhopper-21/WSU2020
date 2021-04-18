Imports System.Net.Mail
Partial Class WebsitePages_OrderSuccess
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        'Response.Write("Order successfully placed! <br> Taking you back to the login page.")
        Dim intcounter As Integer
        Dim arrCart(,) As String
        Dim input As String

        Const CartID = 0
        Const CartPrice = 1
        Const CartDescription = 2
        Const CartQuantity = 3

        If Not IsArray(Session("sesCart")) Then
            Dim intBeginningSize As Integer = 0
            ReDim Preserve arrCart(3, intBeginningSize)
        Else
            arrCart = Session("sesCart")
        End If



        For intcounter = 0 To UBound(arrCart, 2)
            input = input & "Product:  " & arrCart(CartID, intcounter) & vbCrLf &
                "Description:  " & arrCart(CartDescription, intcounter) & vbCrLf &
                "Quantity:  " & arrCart(CartQuantity, intcounter) & vbCrLf &
                "Price:  " & FormatCurrency(arrCart(CartPrice, intcounter) * arrCart(CartQuantity, intcounter)) & vbCrLf & vbCrLf
        Next
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("sstudios12345@gmail.com", "GoShox123")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("sstudios12345@gmail.com")
            'If working with this, you set To.Add to your own e-mail.
            e_mail.To.Add(Session("sesEmail").ToString)
            e_mail.Subject = "Order has been placed"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Hello " & Session("sesName") & "," & vbCrLf & vbCrLf & "Your order (Invoice #" & Session("OrderID") & ")" & " has been placed." _
                & vbCrLf & vbCrLf & "Order summary:" & vbCrLf _
                & vbCrLf & input & "Order Total: " & FormatCurrency(Session("OrderTotal")) _
                & vbCrLf & "Purchase Date and Time:  " & DateAndTime.Now & vbCrLf _
                & vbCrLf & Session("sesApprover") & " will review your request in 2-5 business days." _
                & vbCrLf & vbCrLf & vbCrLf & "Thank you for choosing Shocker Solutions," & vbCrLf & "Shocker Soltuions IT Department"

            Smtp_Server.Send(e_mail)
        Catch error_t As Exception
            Response.Write(error_t.ToString)
        End Try
        Session("sesCart") = ""
        Response.Redirect("~/Unicorn_Riders/Test/Home.aspx")

    End Sub
End Class
