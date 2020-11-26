Imports System.Data.SqlClient
Imports System.Configuration

Public Class Form1

    Dim MyClassVarAAAAA As String

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ' RemarkAAAAA
        Dim MyFunctionVarAAAAA As String ' RemarkAAAAA
        MyClassVarAAAAA = "MyClassValueAAAAA"
        MyFunctionVarAAAAA = "MyFunctionValueAAAAA"
        MsgBox("Static_MsgBox_MessageAAAAA")
        MsgBox(MyClassVarAAAAA)
        MsgBox(MyFunctionVarAAAAA)

        Dim Conn As SqlConnection = New SqlConnection
        Conn.ConnectionString = ConfigurationManager.ConnectionStrings("VS2019_VB_SQLTest_ConnectionString_By_AppConf.My.MySettings.A_ConnectionString").ConnectionString()

        Dim SqlString As String = "Select * from tbl_person"
        Dim adpt As SqlDataAdapter = New SqlDataAdapter(SqlString, Conn.ConnectionString)
        Dim ds As New DataSet()
        If (Conn.State = ConnectionState.Closed) Then Conn.Open()
        adpt.Fill(ds)
        DataGridView1.DataSource = ds.Tables(0)
        Conn.Close()

    End Sub
End Class
