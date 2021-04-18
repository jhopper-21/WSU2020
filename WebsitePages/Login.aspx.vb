Imports System.Data.OleDb
Imports System.Data
Partial Class WebsitePages_Login
    Inherits System.Web.UI.Page

    Dim con As String = "Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb")

    Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim strUsername As String = txtUsername.Text
        Dim strPassword As String = txtPassword.Text

        Dim LoginQuery As String = "Select EmployeeID, EmployeeName, Username, Password, Role, Department, SupervisorEmail, Location, EmployeeDOB From Employee Where Username = '" & strUsername & "' AND Password = '" & strPassword & "' AND EmployeeIsActive = '1'"
        Dim con1 As New OleDbConnection(con)
        Dim Command As New OleDbCommand(LoginQuery, con1)
        Dim reader As OleDbDataReader
        Dim ad As New OleDbDataAdapter("Select EmployeeID, EmployeeName, Username, Password, Role, Department, SupervisorEmail, Location, EmployeeDOB From Employee Where Username = '" & strUsername & "' AND Password = '" & strPassword & "' AND EmployeeIsActive = '1'", con)
        Dim ds As New DataSet

        ad.Fill(ds)
        If ds.Tables(0).Rows.Count = 1 Then
            Try
                con1.Open()
                reader = Command.ExecuteReader
                While reader.Read
                    Session("EmpID") = reader.Item("EmployeeID")
                    Session("sesUser") = reader.Item("Username")
                    Session("sesPass") = reader.Item("Password")
                    Session("sesName") = reader.Item("EmployeeName")
                    Session("sesDep") = reader.Item("Department")
                    Session("sesRole") = reader.Item("Role")
                    Session("sesEmail") = reader.Item("SupervisorEmail")
                    Session("sesLocation") = reader.Item("Location")

                    Response.Redirect("Account.aspx?User=" & Session("EmpID"))
                End While
                reader.Close()
            Catch ex As Exception
                Response.Write(ex.ToString)
            End Try
        Else
            lblIncorrect.Visible = True
        End If





    End Sub
End Class
