namespace VS2017_VCSharp_SQLTest
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.myidDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.mynameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tblpersonBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.mytestdbDataSet = new VS2017_VCSharp_SQLTest.mytestdbDataSet();
            this.tbl_personTableAdapter = new VS2017_VCSharp_SQLTest.mytestdbDataSetTableAdapters.tbl_personTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblpersonBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mytestdbDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.myidDataGridViewTextBoxColumn,
            this.mynameDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.tblpersonBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(37, 35);
            this.dataGridView1.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(607, 267);
            this.dataGridView1.TabIndex = 0;
            // 
            // myidDataGridViewTextBoxColumn
            // 
            this.myidDataGridViewTextBoxColumn.DataPropertyName = "my_id";
            this.myidDataGridViewTextBoxColumn.HeaderText = "my_id";
            this.myidDataGridViewTextBoxColumn.Name = "myidDataGridViewTextBoxColumn";
            // 
            // mynameDataGridViewTextBoxColumn
            // 
            this.mynameDataGridViewTextBoxColumn.DataPropertyName = "my_name";
            this.mynameDataGridViewTextBoxColumn.HeaderText = "my_name";
            this.mynameDataGridViewTextBoxColumn.Name = "mynameDataGridViewTextBoxColumn";
            // 
            // tblpersonBindingSource
            // 
            this.tblpersonBindingSource.DataMember = "tbl_person";
            this.tblpersonBindingSource.DataSource = this.mytestdbDataSet;
            // 
            // mytestdbDataSet
            // 
            this.mytestdbDataSet.DataSetName = "mytestdbDataSet";
            this.mytestdbDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tbl_personTableAdapter
            // 
            this.tbl_personTableAdapter.ClearBeforeFill = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(719, 345);
            this.Controls.Add(this.dataGridView1);
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.Name = "Form1";
            this.Text = "Form_VS2017_VCSharp_SQLTest";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tblpersonBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mytestdbDataSet)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private mytestdbDataSet mytestdbDataSet;
        private System.Windows.Forms.BindingSource tblpersonBindingSource;
        private mytestdbDataSetTableAdapters.tbl_personTableAdapter tbl_personTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn myidDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn mynameDataGridViewTextBoxColumn;
    }
}

