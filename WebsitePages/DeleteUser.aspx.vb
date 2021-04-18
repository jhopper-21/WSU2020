Imports System.Data
Imports System.Data.OleDb
Partial Class WebsitePages_DeleteUser
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnDeleteUser.Click
        Dim con As New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
        Dim command As New OleDbCommand
        Dim query As String = "UPDATE Employee SET EmployeeIsActive = '0' WHERE (EmployeeID = @E)"

        command = New OleDbCommand(query, con)
        command.Parameters.Add("@E", OleDbType.Char, 255).Value = DropDownList1.SelectedValue
        Try
            con.Open()
            command.ExecuteNonQuery()
            Label1.Text = (DropDownList1.SelectedItem.ToString & " is now inactive.")
            Label1.Visible = True
            con.Close()
        Catch ex As Exception
            Response.Write(ex.ToString)
            con.Close()
        End Try

    End Sub

End Class