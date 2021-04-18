Imports System.Data
Imports System.Data.DataTable
Imports System.Data.OleDb
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Math
Partial Class WebsitePages_Order
    Inherits System.Web.UI.Page
    Const CartID = 0
    Const CartPrice = 1
    Const CartDescription = 2
    Const CartQuantity = 3
    Dim intBeginningSize As Integer = 0

    Private Sub form1_Load(sender As Object, e As EventArgs) Handles form1.Load
        Dim Con As New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
        Dim strtotal As String = FormatCurrency(Session("OrderTotal"))
        Dim arrCart(,) As String
        Dim supQuery As String
        Dim b1, b2 As Decimal
        b1 = 999
        b2 = 4999.99
        If Not IsArray(Session("sesCart")) Then
            ReDim Preserve arrCart(3, intBeginningSize)
        Else
            arrCart = Session("sesCart")
        End If

        'Supervisors are able to approve orders themselves, maybe add a  AND EmployeeID NOT = ? to query?
        If Session("OrderTotal") <= b1 Then
            supQuery = "SELECT EmployeeID,EmployeeName,EmployeeStatus FROM Employee WHERE Role LIKE '%' + 'SUPERVISOR' + '%' AND EmployeeStatus = 'Available'"
        ElseIf Session("OrderTotal") > b1 And Session("OrderTotal") <= b2 Then
            supQuery = "SELECT EmployeeID,EmployeeName,EmployeeStatus FROM Employee WHERE Role = 'IT Manager' AND EmployeeStatus = 'Available'"
        ElseIf Session("OrderTotal") > b2 Then
            supQuery = "SELECT EmployeeID,EmployeeName,EmployeeStatus FROM Employee WHERE Role = 'CFO' AND EmployeeStatus = 'Available'"
        End If

        Using dsup As New OleDbDataAdapter(supQuery, Con)
            Using dspc As New DataSet()
                dsup.Fill(dspc, "Supervisor")
                ddlSupervisor.DataSource = dspc
                ddlSupervisor.DataValueField = "EmployeeID"
                ddlSupervisor.DataTextField = "EmployeeName"
                ddlSupervisor.DataBind()
            End Using
        End Using


    End Sub

    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim Con As New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
        Dim strSupervisor As String = ddlSupervisor.SelectedValue.ToString
        Dim productID As String = Session("sescart")(0, intBeginningSize)

        Dim OrderInsert As String = "INSERT INTO [Order] (DatePlaced, OrderStatus, DecisionBy, EmployeeID, Total) VALUES (@Date, 'PENDING', @DecBY, @UserID, @Price)"
        Dim OrderDetailsInsert As String = "INSERT INTO OrderDetails (OrderID, ProductID, OrderDate, Quantity, Price, EmployeeID, SupervisorID) VALUES (@OID,@PID,@ODATE,@Q,@P,@EID,@SID)"
        Dim GetOID As String = "Select @@Identity"

        Dim command As New OleDbCommand(OrderInsert, Con)

        'Order Insert Parameters
        command.Parameters.Add("@Date", OleDbType.Char, 255).Value = Now()
        command.Parameters.Add("@DecBy", OleDbType.Char, 255).Value = strSupervisor
        command.Parameters.Add("@UserID", OleDbType.Char, 255).Value = Session("EmpID")
        command.Parameters.Add("@Price", OleDbType.Char, 255).Value = Session("OrderTotal")





        'Insert Order Table
        Try
            Con.Open()
            command.ExecuteNonQuery()
            command.CommandText = GetOID
            Session("OrderID") = command.ExecuteScalar()
            Con.Close()
        Catch ex As Exception
            Response.Write(ex.ToString)
          Con.close()
        End Try

        'Insert Order Details Table
        For i As Integer = 0 To UBound(Session("sesCart"), 2)
            Try
                Dim arrcart(,) As String = Session("sesCart")
                Dim command1 As New OleDbCommand(OrderDetailsInsert, Con)
                command1.Parameters.Add("@OID", OleDbType.Char, 255).Value = Session("OrderID")
                command1.Parameters.Add("@PID", OleDbType.Char, 255).Value = arrcart(CartID, i)
                command1.Parameters.Add("@ODATE", OleDbType.Char, 255).Value = Now()
                command1.Parameters.Add("@Q", OleDbType.Char, 255).Value = arrcart(CartQuantity, i)
                command1.Parameters.Add("@P", OleDbType.Char, 255).Value = arrcart(CartPrice, i)
                command1.Parameters.Add("@EID", OleDbType.Char, 255).Value = Session("EmpID")
                command1.Parameters.Add("@SID", OleDbType.Char, 255).Value = strSupervisor
                Session("SesApprover") = ddlSupervisor.SelectedItem.ToString
                command1.Connection.Open()
                command1.ExecuteNonQuery()
                command1.Connection.Close()
            Catch ex As Exception
                Response.Write(ex.ToString)
            End Try
        Next

        Response.Redirect("OrderSuccess.aspx?")


    End Sub

    Protected Sub btnBack_Click(sender As Object, e As EventArgs) Handles btnBack.Click
        Response.Redirect("NewCart.aspx")
    End Sub
End Class



































'    Private Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
'        ''Dim con As String
'        ''con = "Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb")
'        ''Dim strUsername As String = Session("sesUser")
'        ''Dim strSupervisor As String = ddlSupervisor.SelectedItem.Value
'        ''Dim strProductID As String = "haha"
'        ''Dim integerPrice As Integer = Session("OrderTotal")
'        ''Dim intOrderID As Integer = -1
'        ''Dim intEmployeeID As Integer = Session("EmpID")
'        ''Dim strSupID As String = ddlSupervisor.DataValueField
'        '''Dim pid As Integer = ddlbaseconfig.SelectedItem.Value

'        ''Dim insertOrder As String = "INSERT INTO Order([DatePlaced], [DecisionBy], [DecisionDate], [EmployeeID], [Total]) VALUES (now(),?,?,?,?)"
'        ''Dim insertOrderDetail As String = "INSERT INTO OrderDetails([OrderID],[ProductID],[OrderDate],[Quantity],[Price],[EmployeeID], [SupervisorID]) VALUES(?,?,now(),?,?,?,?)"
'        ''Dim getOrderid As String = "Select @@IDENTITY"




'        ''Try
'        ''    Dim success As Boolean = False
'        ''    Using connection As New OleDbConnection(con)
'        ''        Dim command As New OleDbCommand(insertOrder, connection)
'        ''        command.CommandType = CommandType.Text
'        ''        command.Parameters.AddWithValue("empID", intEmployeeID)
'        ''        command.Parameters.AddWithValue("supID", strSupID)
'        ''        command.Connection.Open()
'        ''        command.ExecuteScalar()
'        ''        command.CommandText = getOrderid
'        ''        intOrderID = CType(command.ExecuteScalar(), Integer)
'        ''        command.Connection.Close()
'        ''        Dim command1 As New OleDbCommand(insertOrderDetail, connection)
'        ''        command1.Parameters.AddWithValue("orderID", intOrderID)
'        ''        command1.Parameters.AddWithValue("supID", strSupID)
'        ''        command1.Parameters.AddWithValue("empID", intEmployeeID)
'        ''        'command1.Parameters.AddWithValue("productID", pid)
'        ''        command1.Parameters.AddWithValue("price", integerPrice)
'        ''        command1.Connection.Open()
'        ''        command1.ExecuteScalar()
'        ''        command1.Connection.Close()
'        ''        success = True
'        ''    End Using
'        ''Catch ex As Exception
'        ''    'Label5.Text = "Please check your selection"

'        ''Finally
'        ''    ' Session.Remove(oid)
'        ''    'Response.Write(orderID)
'        ''    Response.Redirect("~/success.aspx")
'        ''End Try



'        ''Dim arrCart(,) As String
'        ''Dim str As String

'        ''Dim con As OleDbConnection
'        ''Dim insert As OleDbCommand
'        ''con = New OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=" & Server.MapPath("~/Unicorn_Riders/App_Data/ProjectDatabase42.mdb"))
'        ''str = "Insert into OrderDetails ([ProductID],[OrderDate],[Quantity],[Price],[EmployeeID],[SupervisorID]) values (@PID, @Date, @QTY, @Price,'TEST','TEST')"
'        ''If Not IsArray(Session("sesCart")) Then
'        ''    Dim intBeginningSize As Integer = 0
'        ''    ReDim Preserve arrCart(3, intBeginningSize)
'        ''Else
'        ''    arrCart = Session("sesCart")
'        ''End If


'        'Try
'        '    For i As Integer = 0 To UBound(arrCart, 2)
'        '        con.Open()
'        '        insert = New OleDbCommand(str, con)
'        '        insert.Parameters.Add("@PID", OleDbType.Char, 255).Value = arrCart(CartID, i)
'        '        insert.Parameters.Add("@Date", OleDbType.Date, 255).Value = DateAndTime.Now
'        '        insert.Parameters.Add("@QTY", OleDbType.Integer, 255).Value = arrCart(CartQuantity, i)
'        '        insert.Parameters.Add("@Price", OleDbType.Currency, 255).Value = arrCart(CartPrice, i)
'        '        con.Close()
'        '        Response.Write("Insert record number" & (i + 1) & "<br>")
'        '    Next

'        'Catch ex As Exception
'        '    Response.Write("OOPSIE")
'        'End Try


'    End Sub
'End Class
