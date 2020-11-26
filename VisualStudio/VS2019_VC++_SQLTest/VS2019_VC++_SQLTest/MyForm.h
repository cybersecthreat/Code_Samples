#pragma once
#include <string>

namespace SQLTest_VC2019 {

	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;
	using namespace System::Data::SqlClient;

	/// <summary>
	/// Summary for MyForm
	/// </summary>
	public ref class MyForm : public System::Windows::Forms::Form
	{
		String ^ MyClassVarAAAAA;

	public:
		MyForm(void)
		{
			InitializeComponent();
			//
			//TODO: Add the constructor code here
			//
		}

	protected:
		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		~MyForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private: System::Windows::Forms::DataGridView^  dataGridView1;
	protected:



	private: System::ComponentModel::IContainer^  components;

	private:
		/// <summary>
		/// Required designer variable.
		/// </summary>


#pragma region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		void InitializeComponent(void)
		{
			this->dataGridView1 = (gcnew System::Windows::Forms::DataGridView());
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->BeginInit();
			this->SuspendLayout();
			// 
			// dataGridView1
			// 
			this->dataGridView1->ColumnHeadersHeightSizeMode = System::Windows::Forms::DataGridViewColumnHeadersHeightSizeMode::AutoSize;
			this->dataGridView1->Location = System::Drawing::Point(16, 14);
			this->dataGridView1->Margin = System::Windows::Forms::Padding(4, 3, 4, 3);
			this->dataGridView1->Name = L"dataGridView1";
			this->dataGridView1->RowHeadersWidth = 51;
			this->dataGridView1->Size = System::Drawing::Size(860, 351);
			this->dataGridView1->TabIndex = 0;
			// 
			// MyForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(8, 15);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->ClientSize = System::Drawing::Size(935, 415);
			this->Controls->Add(this->dataGridView1);
			this->Margin = System::Windows::Forms::Padding(4, 3, 4, 3);
			this->Name = L"MyForm";
			this->Text = L"Form_VS2019_VC++_SQLTest";
			this->Load += gcnew System::EventHandler(this, &MyForm::MyForm_Load);
			(cli::safe_cast<System::ComponentModel::ISupportInitialize^>(this->dataGridView1))->EndInit();
			this->ResumeLayout(false);

		}
#pragma endregion
	private: System::Void MyForm_Load(System::Object^  sender, System::EventArgs^  e) {
		// RemarkAAAAA
		String ^ MyFunctionVarAAAAA;
		MyClassVarAAAAA = L"MyClassValueAAAAA";
		MyFunctionVarAAAAA = "MyFunctionValueAAAAA";
		MessageBox::Show("Static_MsgBox_MessageAAAAA");
		MessageBox::Show(MyClassVarAAAAA);
		MessageBox::Show(MyFunctionVarAAAAA);

		//String ^ constring = L"datasource=localhost;port=3306;username=root;password=root";
		String ^ constring = L"Data Source=localhost\\SQLEXPRESS;Initial Catalog=mytestdb;Persist Security Info=True;User ID=mytestuser1;Password=AAAAABB_2";
		//MysqlConnection^ conDataBase = gcnew MysqlConnection(constring);
		SqlConnection^ conDataBase = gcnew SqlConnection(constring);
		//MysqlCommand^ cmdDataBase = gcnew MysqlCommand("Select * from tbl_person ;", conDataBase);
		SqlCommand^ cmdDataBase = gcnew SqlCommand("Select * from tbl_person ;", conDataBase);
		//MysqlDataReader^ myReader;

		try{
			//MySqlDataAdapter ^ sda = gcnew MysqlDataAdapter();
			SqlDataAdapter^ sda = gcnew SqlDataAdapter;
			sda->SelectCommand = cmdDataBase;
			DataTable^ dbdataset = gcnew DataTable();
			sda->Fill(dbdataset);
			BindingSource^ bSource = gcnew BindingSource();

			bSource->DataSource = dbdataset;
			dataGridView1->DataSource = bSource;
			sda->Update(dbdataset);
		} catch (Exception^ex){
			MessageBox::Show(ex->Message);
		}

	}
	};
}
