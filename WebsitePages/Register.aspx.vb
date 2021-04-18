Imports System.Data
Imports System.Data.OleDb
Partial Class WebsitePages_Register
    Inherits System.Web.UI.Page

    'Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '    Response.Redirect("SuperHomePage.aspx")
    'End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim name, user, pass, pass2, role, department, location, dob, superemail As String
        name = txtName.Text
        user = txtUsername.Text
        pass = txtPassword.Text
        pass2 = txtConfirmPW.Text
        role = DropDownList1.SelectedItem.ToString
        department = txtDepartment.Text
        superemail = txtSEmail.Text
        location = txtLocation.Text
        dob = txtDOB.Text.Trim.Replace(" ", "").Insert(2, "/").Insert(5, "/")


        Dim str, str1 As String
        str = "INSERT INTO Employee([EmployeeName],[Username],[password],[Role], [Department], [SupervisorEmail], [Location], [EmployeeDOB], [EmployeeIsActive]) values (@EmployeeName,@Username, @Password, @Role, @department,@SupervisorEmail, @Location, @EmployeeDOB, '1')"
        str1 = " SELECT DISTINCT [Username] FROM [Employee] Where Username ='" & user & "'"

        Dim con As OleDbConnection
        Dim ad As OleDbDataAdapter
        Dim ds As New DataSet
        Dim cmdinsert, cmdselect As OleDbCommand


        con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
        cmdinsert = New OleDbCommand(str, con)
        cmdselect = New OleDbCommand(str1, con)
        cmdinsert.Parameters.Add("@EmployeeName", OleDbType.Char, 255).Value = name
        cmdinsert.Parameters.Add("@Username", OleDbType.Char, 255).Value = user
        cmdinsert.Parameters.Add("@Password", OleDbType.Char, 255).Value = pass
        cmdinsert.Parameters.Add("@Role", OleDbType.Char, 255).Value = role
        cmdinsert.Parameters.Add("@Department", OleDbType.Char, 255).Value = department
        cmdinsert.Parameters.Add("@SupervisorEmail", OleDbType.Char, 255).Value = superemail
        cmdinsert.Parameters.Add("@Location", OleDbType.Char, 255).Value = location
        cmdinsert.Parameters.Add("@EmployeeDOB", OleDbType.Date).Value = dob

        con.Open()
        ad = New OleDbDataAdapter(str1, con)
        ad.Fill(ds, "Test")
        'the Pseudo name "test" is optional. 
        'If pseudoname is not used, use table index instead for ds.tables(0)
        If pass = pass2 Then


            If ds.Tables(0).Rows.Count > 0 Then
                Try
                    cmdselect.ExecuteReader()
                    For i = 0 To ds.Tables("Test").Rows.Count - 1 'This used table pseudo name.
                        'Response.Write(ds.Tables(0).Rows(i).Item(0).ToString) 'This used table index.
                        Response.Write("<br></br>")
                        'Response.Write(ds.Tables(0).Rows(i).Item(1).ToString)
                        'Explain why Item(1) does not work. There is a modification needed for the SELECT statement
                        'Response.Write("<br></br>")
                        lblRegistration.Visible = False
                        lblTaken.Visible = True
                        lblPW.Visible = False
                        'Response.Write("Username, '" & ds.Tables(0).Rows(i).Item(0).ToString & "' is already taken! Please choose another one.")
                        Response.Write("<br></br>")
                    Next
                Catch ex As Exception
                    Response.Write(ex.ToString)
                End Try
            Else
                'Response.Write("Email does not exist in the database.")
                Response.Write("<br></br>")
                cmdinsert.ExecuteNonQuery()
                lblRegistration.Visible = True
                lblTaken.Visible = False
                lblPW.Visible = False
                Response.Redirect("Login.aspx?")
                'Response.Write("Registration completed!")
            End If
            ad.Dispose()
            con.Close()
        Else
            lblPW.Visible = True
            lblTaken.Visible = False
            lblRegistration.Visible = False
        End If
    End Sub


    Protected Sub txtLocation_TextChanged(sender As Object, e As EventArgs) Handles txtLocation.TextChanged

    End Sub
End Class
