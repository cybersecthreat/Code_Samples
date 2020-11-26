#include "MyForm.h"

using namespace System;
using namespace System::Windows::Forms;

[STAThread]
//void main (array<String^>^args )
int main(array<String^>^ argv)
{
	Application::EnableVisualStyles();
	Application::SetCompatibleTextRenderingDefault(false);
	SQLTest_VC2013::MyForm MyForm;
	Application::Run(%MyForm);
	//return 0;
}