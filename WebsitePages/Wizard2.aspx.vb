Imports System.Data
Imports System.Data.OleDb
Partial Class Test_FinalWizard
    Inherits System.Web.UI.Page
    Private Sub btnMobile_Click(sender As Object, e As EventArgs) Handles btnMobile.Click
        Dim strPro As String = Session("SesPro")
        Session("SesWork") = "Laptop"
        Response.Redirect("Wizard3.aspx?Role=" & strPro & "&Work=" & Session("SesWork"))
    End Sub

    Private Sub btnOffice_Click(sender As Object, e As EventArgs) Handles btnOffice.Click
        Dim strPro As String = Session("SesPro")
        Session("SesWork") = "Computer"
        Response.Redirect("Wizard3.aspx?Role=" & strPro & "&Work=" & Session("SesWork"))
    End Sub
    'Private Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnNextPage.Click
    '    Dim strProcessor As String
    'Dim strSetting As String
    'Dim strPrice As String

    'Dim con As New OleDbConnection
    'Dim ad As New OleDbDataAdapter
    'Dim ds As New DataSet

    'Get processor

    'Select Case True
    'Case btnI5
    '            strProcessor = "i5"
    '        Case chki7.Checked
    '            strProcessor = "i7"
    '    End Select
    'Get workstation type
    'Select Case True
    'Case chkDesktop.Checked
    '            strSetting = "Computer"
    '        Case chkLaptop.Checked
    '            strSetting = "Laptop"
    '    End Select
    'Get price range
    'Select Case True
    'Case chkOver600.Checked
    '            strPrice = ">850"
    '        Case chkUnder600.Checked
    '            strPrice = "<850"
    '    End Select

    '    con = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("../App_Data/ProjectDatabase42.mdb"))
    '    ad = New OleDbDataAdapter("SELECT ProductID, ProductModel, ProductPrice, CategoryName, Images FROM Product WHERE ProductPrice " & strPrice & " AND ProductSpecs LIKE '%" & strProcessor & "%' AND ProductType = '" & strSetting & "'", con)

    '    Try
    '        con.Open()
    '        ad.Fill(ds)
    '        GridView1.Visible = True
    '        GridView1.DataSource = ds
    '        GridView1.DataBind()
    '        con.Close()
    '    Catch ex As Exception
    '        Response.Write("No results found. Try changing your search.")
    '        con.Close()
    '    End Try
    'End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
