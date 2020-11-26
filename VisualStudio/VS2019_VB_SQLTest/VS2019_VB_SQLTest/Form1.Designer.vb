<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Me.DataGridView1 = New System.Windows.Forms.DataGridView()
        Me.MyidDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.MynameDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.TblpersonBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.MytestdbDataSet = New VS2019_VB_SQLTest.mytestdbDataSet()
        Me.Tbl_personTableAdapter = New VS2019_VB_SQLTest.mytestdbDataSetTableAdapters.tbl_personTableAdapter()
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.TblpersonBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.MytestdbDataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'DataGridView1
        '
        Me.DataGridView1.AutoGenerateColumns = False
        Me.DataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.DataGridView1.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.MyidDataGridViewTextBoxColumn, Me.MynameDataGridViewTextBoxColumn})
        Me.DataGridView1.DataSource = Me.TblpersonBindingSource
        Me.DataGridView1.Location = New System.Drawing.Point(31, 51)
        Me.DataGridView1.Margin = New System.Windows.Forms.Padding(4, 3, 4, 3)
        Me.DataGridView1.Name = "DataGridView1"
        Me.DataGridView1.RowHeadersWidth = 51
        Me.DataGridView1.Size = New System.Drawing.Size(320, 173)
        Me.DataGridView1.TabIndex = 0
        '
        'MyidDataGridViewTextBoxColumn
        '
        Me.MyidDataGridViewTextBoxColumn.DataPropertyName = "my_id"
        Me.MyidDataGridViewTextBoxColumn.HeaderText = "my_id"
        Me.MyidDataGridViewTextBoxColumn.MinimumWidth = 6
        Me.MyidDataGridViewTextBoxColumn.Name = "MyidDataGridViewTextBoxColumn"
        Me.MyidDataGridViewTextBoxColumn.Width = 125
        '
        'MynameDataGridViewTextBoxColumn
        '
        Me.MynameDataGridViewTextBoxColumn.DataPropertyName = "my_name"
        Me.MynameDataGridViewTextBoxColumn.HeaderText = "my_name"
        Me.MynameDataGridViewTextBoxColumn.MinimumWidth = 6
        Me.MynameDataGridViewTextBoxColumn.Name = "MynameDataGridViewTextBoxColumn"
        Me.MynameDataGridViewTextBoxColumn.Width = 125
        '
        'TblpersonBindingSource
        '
        Me.TblpersonBindingSource.DataMember = "tbl_person"
        Me.TblpersonBindingSource.DataSource = Me.MytestdbDataSet
        '
        'MytestdbDataSet
        '
        Me.MytestdbDataSet.DataSetName = "mytestdbDataSet"
        Me.MytestdbDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'Tbl_personTableAdapter
        '
        Me.Tbl_personTableAdapter.ClearBeforeFill = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(379, 301)
        Me.Controls.Add(Me.DataGridView1)
        Me.Margin = New System.Windows.Forms.Padding(4, 3, 4, 3)
        Me.Name = "Form1"
        Me.Text = "Form_VS2019_VB_SQLTest"
        CType(Me.DataGridView1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.TblpersonBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.MytestdbDataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents DataGridView1 As System.Windows.Forms.DataGridView
    Friend WithEvents MytestdbDataSet As VS2019_VB_SQLTest.mytestdbDataSet
    Friend WithEvents TblpersonBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents Tbl_personTableAdapter As VS2019_VB_SQLTest.mytestdbDataSetTableAdapters.tbl_personTableAdapter
    Friend WithEvents MyidDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents MynameDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn

End Class
