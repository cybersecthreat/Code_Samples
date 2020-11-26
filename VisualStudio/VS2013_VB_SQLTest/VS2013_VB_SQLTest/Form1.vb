Public Class Form1
    Dim MyClassVarAAAAA As String ' This variable name will be available via strings.exe

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'MytestdbDataSet.tbl_person' table. You can move, or remove it, as needed.
        ' RemarkAAAAA
        Me.Tbl_personTableAdapter.Fill(Me.MytestdbDataSet.tbl_person)
        Dim MyFunctionVarAAAAA As String
        MyClassVarAAAAA = "MyClassValueAAAAA"
        MyFunctionVarAAAAA = "MyFunctionValueAAAAA"
        MsgBox("Static_MsgBox_MessageAAAAA")
        MsgBox(MyClassVarAAAAA)
        MsgBox(MyFunctionVarAAAAA)

    End Sub
End Class
