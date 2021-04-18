Imports System.Data
Imports System.Data.OleDb
Partial Class Test_FinalWizard
    Inherits System.Web.UI.Page
    Private Sub btnI5_Click(sender As Object, e As EventArgs) Handles btnI5.Click
        Session("SesPro") = "i5"
        Response.Redirect("Wizard2.aspx?Pro=" & Session("SesPro"))
    End Sub

    Private Sub btnI7_Click(sender As Object, e As EventArgs) Handles btnI7.Click
        Session("SesPro") = "i7"
        Response.Redirect("Wizard2.aspx?Pro=" & Session("SesPro"))
    End Sub
End Class
