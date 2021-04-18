Imports System.Data.OleDb
Imports System.Data
Partial Class WebsitePages_Availability
    Inherits System.Web.UI.Page
    Dim con As New OleDb.OleDbConnection
    Dim dbprovider, dbsource, stmt As String
    Dim ds As New DataSet
    Dim da As New OleDb.OleDbDataAdapter
    Dim cmd As New OleDbCommand
    Dim k, dataid As Integer
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("Account.aspx")
    End Sub


    'Standard users will not be able to access this page. Button will be hidden.
    'Private Sub WebsitePages_Availability_Load(sender As Object, e As EventArgs) Handles Me.Load
    '    con = New OleDb.OleDbConnection
    '    con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
    '    If Session("sesSupervisor") = "No" Then
    '        Response.Redirect("Availability2.aspx")
    '    End If
    'End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New OleDb.OleDbConnection
        con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
        Try
                    con.Open()
                    'Change status
                    cmd.Connection = con
            cmd.CommandText = "UPDATE Employee SET EmployeeStatus = '" & DropDownList1.SelectedValue.ToString & "' where Username = '" & Session("SesUser") & "'"
            cmd.ExecuteNonQuery()

            Label1.Text = "Availability changed to " & DropDownList1.SelectedValue.ToString

            con.Close()
                Catch ex As Exception
                    Label1.Text = ex.ToString
                End Try



    End Sub


End Class
