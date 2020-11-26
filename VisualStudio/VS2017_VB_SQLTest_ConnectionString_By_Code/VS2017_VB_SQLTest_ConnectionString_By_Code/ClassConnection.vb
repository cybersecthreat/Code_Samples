Imports System.Data.SqlClient


Public Class ClassConnection
    ' RemarkAAAAA
    'Public connstring As String = "server=LOCALHOST\SQLEXPRESS;database=mytestdb;Integrated Security=True"
    Public connstring As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=mytestdb;Persist Security Info=True;User ID=mytestuser1;Password=AAAAABB_2"
    Public connection As New SqlConnection(connstring)
    Public MySeperateClassPublicVarAAAAA As String = "MySeperateClassValueAAAAA"
    Private MySeperateClassPrivatetVarAAAAA As String = "MySeperateClassPrivatetValueAAAAA"
End Class
