Imports System.Data
Imports System.Data.OleDb
Partial Class WebsitePages_Wizard
    Inherits System.Web.UI.Page

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim con As New OleDbConnection
        Dim ad As New OleDbDataAdapter
        Dim ds As New DataSet
        Dim strprice As String

        con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("../App_Data/ProjectDatabase42.mdb"))
        ad = New OleDbDataAdapter("SELECT ProductID, ProductModel, ProductPrice, CategoryName, Images FROM Product WHERE ProductPrice " & Session("SesPrice") & " AND ProductSpecs LIKE '%" & Session("SesPro") & "%' AND ProductType = '" & Session("SesWork") & "'", con)
        If Session("SesPrice") = "<800" Then
            strprice = "under $800:"
        ElseIf Session("SesPrice") = ">800" Then
            strprice = "over $800:"
        End If
        Try
            con.Open()
            ad.Fill(ds)
            GridView1.Visible = True
            GridView1.DataSource = ds
            GridView1.DataBind()
            If ds.Tables(0).Rows.Count > 0 Then
                lblResults.Text = "Voila! Your results are shown below."
                LblParameters.Text = "Showing results for all " & Session("SesPro") & " " & Session("SesWork") & "s with a price " & strprice
            Else
                lblResults.Text = "No results found. Try changing your search."
                LblParameters.Text = "Showing results for all " & Session("SesPro") & " " & Session("SesWork") & "s with a price " & strprice
                btnStart.visible = True
            End If
            con.Close()
        Catch ex As Exception
            Response.Write(ex.ToString)
            con.Close()
        End Try
    End Sub

    Protected Sub btnStart_Click(sender As Object, e As EventArgs) Handles btnStart.Click
        Response.Redirect("Wizard1.aspx?")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
