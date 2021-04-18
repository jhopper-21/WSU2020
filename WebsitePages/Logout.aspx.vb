
Partial Class WebsitePages_Logout
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Session.Abandon()
    End Sub
End Class
