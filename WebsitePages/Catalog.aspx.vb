
Partial Class WebsitePages_NewCategories
    Inherits System.Web.UI.Page

    Private Sub Search(sender As Object, e As EventArgs) Handles form1.Load
        Select Case True
            Case radCategory.Checked
                ddlCategory.Enabled = True
                txtKeyword.Enabled = False
            Case radKeyword.Checked
                ddlCategory.Enabled = False
                txtKeyword.Enabled = True
        End Select
    End Sub

    Private Sub Search1(sender As Object, e As EventArgs) Handles txtKeyword.TextChanged, ddlCategory.SelectedIndexChanged, btnSearch.Click

        Select Case True
            Case radCategory.Checked
                GridView2.Visible = False
                GridView1.Visible = True
            Case radKeyword.Checked
                GridView2.Visible = True
                GridView1.Visible = False
        End Select

    End Sub
End Class
