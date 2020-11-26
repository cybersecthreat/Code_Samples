using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VS2019_VCSharp_SQLTest
{
    public partial class Form1 : Form
    {
        string MyClassVarAAAAA;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // RemarkAAAAA
            // TODO: This line of code loads data into the 'mytestdbDataSet.tbl_person' table. You can move, or remove it, as needed.
            this.tbl_personTableAdapter.Fill(this.mytestdbDataSet.tbl_person);
            String MyFunctionVarAAAAA;
            MyClassVarAAAAA = "MyClassValueAAAAA";
            MyFunctionVarAAAAA = "MyFunctionValueAAAAA";
            MessageBox.Show("Static_MsgBox_MessageAAAAA");
            MessageBox.Show(MyClassVarAAAAA);
            MessageBox.Show(MyFunctionVarAAAAA);

        }
    }
}
