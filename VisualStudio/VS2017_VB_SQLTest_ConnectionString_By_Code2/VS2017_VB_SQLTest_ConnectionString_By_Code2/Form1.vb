Imports System.Data.SqlClient


Public Class Form1
    Dim newconn As New ClassConnection
    Dim MyClassVarAAAAA As String

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' RemarkAAAAA
        Dim SqlString As String = "Select * from tbl_person"
        Dim adpt As SqlDataAdapter = New SqlDataAdapter(SqlString, newconn.connstring)
        Dim ds As New DataSet()
        If (newconn.connection.State = ConnectionState.Closed) Then newconn.connection.Open()
        adpt.Fill(ds)
        DataGridView1.DataSource = ds.Tables(0)
        newconn.connection.Close()

        Dim MyFunctionVarAAAAA As String
        MyClassVarAAAAA = "MyClassValueAAAAA"
        MyFunctionVarAAAAA = "MyFunctionValueAAAAA"
        MsgBox("Static_MsgBox_MessageAAAAA")
        MsgBox(MyClassVarAAAAA)
        MsgBox(MyFunctionVarAAAAA)

    End Sub
End Class
