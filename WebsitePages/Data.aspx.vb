
Partial Class WebsitePages_Data
    Inherits System.Web.UI.Page


    Private Sub chkOverall_CheckedChanged(sender As Object, e As EventArgs) Handles chkOverall.CheckedChanged, Me.Load
        If chkOverall.Checked = True Then
            DropDownList3.Enabled = False
        ElseIf chkOverall.Checked = False Then
            DropDownList3.Enabled = True
            End If

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnSearch.Click

        Select Case True
            Case chkOverall.Checked
                lblOverallOrder.Visible = True
                lblOverallCat.Visible = True
                lblOverallDecision.Visible = True

                lblOrderByUser.Visible = False
                lblCategoryByUser.Visible = False
                lblDecisionsByUser.Visible = False

                GridView1.Visible = False
                GridView2.Visible = False
                GridView3.Visible = False
                GridView4.Visible = False

                GridView7.Visible = False
                GridView8.Visible = True
                GridView9.Visible = True
                GridView10.Visible = True
                GridView11.Visible = True

                GridView13.Visible = True
            Case Else
                lblOrderByUser.Text = "Showing order statistics for " & DropDownList3.SelectedItem.ToString & ":"
                lblOrderByUser.Visible = True

                lblCategoryByUser.Text = "Showing cash breakdown for " & DropDownList3.SelectedItem.ToString & " by category:"
                lblCategoryByUser.Visible = True

                lblDecisionsByUser.Text = "Showing all decisions on orders placed by " & DropDownList3.SelectedItem.ToString & ":"
                lblDecisionsByUser.Visible = True

                lblOverallOrder.Visible = False
                lblOverallDecision.Visible = False
                lblOverallCat.Visible = False

                GridView1.Visible = True
                GridView2.Visible = True
                GridView3.Visible = True
                GridView4.Visible = True

                GridView7.Visible = True
                GridView8.Visible = False
                GridView9.Visible = False
                GridView10.Visible = False
                GridView11.Visible = False

                GridView13.Visible = False
        End Select
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
