Imports System.Data
Imports System.Data.OleDb
Imports System.Net.Mail
Partial Class WebsitePages_Account
    Inherits System.Web.UI.Page

    'Logging in
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load, form1.Load

        Label1.Text = "Welcome, " & Session("SesName")
        If Session("sesRole") = "CFO" Or Session("sesRole") = "IT Manager" Or Session("sesRole") = "Accounting Supervisor" Then
            btnData.Visible = True
            btnCreateAccount.Visible = True
            GridView1.Visible = True
            GridView2.Visible = False
            GridView3.Visible = False
            GridView4.Visible = True
            DropDownList1.Visible = True
            Label2.Visible = False
            Label3.Visible = True
            lblComments.Visible = True
            lblDecision.Visible = True
            ddlDecision.Visible = True
            txtComments.Visible = True
            btnSubmit.Visible = True
            btnDelete.Visible = True
            GridView5.Visible = True
            DropDownList2.Visible = True
            Label4.Visible = True
        Else
            GridView1.Visible = False
            GridView2.Visible = True
            btnData.Visible = False
        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim con = New OleDb.OleDbConnection
        con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))

        Dim cmd As New OleDbCommand
        Dim Query As String = "UPDATE Employee SET EmployeeStatus = '" & DropDownList1.SelectedValue.ToString & "' where Username = '" & Session("SesUser") & "'"
        cmd = New OleDbCommand(Query, con)
        Try
            con.Open()
            cmd.Connection = con
            cmd.ExecuteNonQuery()
            Label2.Visible = True
            con.Close()
        Catch ex As Exception
            Response.Write(ex.ToString)
        End Try


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim con = New OleDb.OleDbConnection
        con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
        Dim ad As New OleDbDataAdapter
        Dim UPDATE As String = "UPDATE [Order] SET OrderStatus= '" & ddlDecision.SelectedValue.ToString & "', DecisionDate = '" & Now().ToString & "', AddComment = '" & txtComments.Text & "', OldOrderID = '" & GridView1.SelectedRow.Cells(1).Text & "' WHERE OrderID = " & GridView1.SelectedRow.Cells(1).Text
        Dim command As New OleDbCommand
        command = New OleDbCommand(UPDATE, con)
        Try

            GridView1.SelectedRow.Cells(3).Text = ddlDecision.SelectedValue.ToString
            'If DropDownList2.SelectedValue = "APPROVED" Then
            ' Send approval e-mail
            Try
                con.Open()
                command.ExecuteNonQuery()
                Dim Smtp_Server As New SmtpClient
                Dim e_mail As New MailMessage()
                Smtp_Server.UseDefaultCredentials = False
                Smtp_Server.Credentials = New Net.NetworkCredential("sstudios12345@gmail.com", "GoShox123")
                Smtp_Server.Port = 587
                Smtp_Server.EnableSsl = True
                Smtp_Server.Host = "smtp.gmail.com"

                e_mail = New MailMessage()
                e_mail.From = New MailAddress("sstudios12345@gmail.com")
                e_mail.To.Add(Session("SesEmail"))
                e_mail.Subject = "Order has been approved"
                e_mail.IsBodyHtml = False
                e_mail.Body = "Hello " & Session("sesName") & "," & vbCrLf & vbCrLf & "Your order (Invoice #" & Session("OrderID") & ") has been approved by " & Session("SesName") & "." & vbCrLf & "Expect contact from the IT Support team soon." & vbCrLf & vbCrLf & "Thank you for choosing Shocker Solutions," & vbCrLf & "Shocker Soltuions IT Department"
                Smtp_Server.Send(e_mail)
            Catch error_t As Exception
                Response.Write(error_t.ToString)
            End Try
            'ElseIf DropDownList2.SelectedValue = "DENIED" Then
            'Send denied e-mail
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
                e_mail.To.Add(Session("SesEmail"))
                e_mail.Subject = "Order has been denied"
                e_mail.IsBodyHtml = False
                e_mail.Body = "Hello " & Session("sesName") & "," & vbCrLf & vbCrLf & "Your order (Invoice #" & Session("OrderID") & ") has been denied by " & Session("SesName") & "." & vbCrLf & "Below are instructions on changes needed:" & vbCrLf & vbCrLf & txtComments.Text & vbCrLf & "Thank you for choosing Shocker Solutions," & vbCrLf & "Shocker Soltuions IT Department"
                Smtp_Server.Send(e_mail)
            Catch error_t As Exception
                Response.Write(error_t.ToString)
            End Try
            'End If
            con.Close()

        Catch ex As Exception
            Response.Write(ex.ToString)

            con.Close()
        End Try
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim con = New OleDb.OleDbConnection
        con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
        Dim ad As New OleDbDataAdapter

        Dim ds As New DataSet
        ad = New OleDbDataAdapter("SELECT OrderID, ProductID, OrderDate, Quantity, Price From OrderDetails Where OrderID = " & GridView1.SelectedRow.Cells(1).Text, con)

        Try
            con.Open()

            ad.Fill(ds)
            GridView4.Visible = True
            GridView4.DataSource = ds
            GridView4.DataBind()

            con.Close()
        Catch ex As Exception
            Response.Write(ex.ToString)
            con.Close()
        End Try

    End Sub
    'Redirects
    Protected Sub btnData_Click(sender As Object, e As EventArgs) Handles btnData.Click
        Response.Redirect("Data.aspx?")
    End Sub
    Protected Sub btnChangePass_Click(sender As Object, e As EventArgs) Handles btnChangePass.Click
        Response.Redirect("ChangePassword.aspx?")
    End Sub

    Protected Sub btnCreateAccount_Click(sender As Object, e As EventArgs) Handles btnCreateAccount.Click
        Response.Redirect("Register.aspx?")
    End Sub
    Protected Sub btnDeleteAccount_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Response.Redirect("DeleteUser.aspx?")
    End Sub

    Protected Sub GridView6_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView6.SelectedIndexChanged

    End Sub
    Protected Sub GridView5_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView5.SelectedIndexChanged

    End Sub
    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged

    End Sub
End Class
