Imports System.Data.OleDb
Imports System.Data
Partial Class WebsitePages_UserAcc
    Inherits System.Web.UI.Page
    Dim con As New OleDb.OleDbConnection
    Dim dbprovider, dbsource, stmt As String
    Dim ds As New DataSet
    Dim cmd As New OleDbCommand
    Dim k, dataid As Integer

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Account.aspx")
    End Sub

    Private Sub ClearAll()
        txtOldPW.Text = String.Empty
        txtNew.Text = String.Empty
        txtConfirm.Text = String.Empty
    End Sub

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        con = New OleDb.OleDbConnection
        con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New OleDb.OleDbConnection
        con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))

        If txtOldPW.Text = Session("SesPass") Then
            Try
                con.Open()
                'Change password
                cmd.Connection = con
                cmd.CommandText = "update Employee set [Password]= @Password where Username = @U"
                cmd.Parameters.Add("@Password", OleDbType.Char, 255).Value = txtNew.Text
                cmd.Parameters.Add("@U", OleDbType.Char, 255).Value = Session("sesuser")
                k = cmd.ExecuteNonQuery()
                If k = 1 Then
                    Response.Write("Success!")
                    ClearAll()
                End If
                con.Close()
            Catch ex As Exception
                Response.Write(ex.ToString)
            End Try
        Else
            Response.Write("Password is incorrect.")
            ClearAll()
            con.Close()
        End If

    End Sub

End Class
