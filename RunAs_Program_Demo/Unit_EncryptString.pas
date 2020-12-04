unit Unit_EncryptString;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm_EncryptString = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_input_string: TEdit;
    edt_encryption_key: TEdit;
    edt_output_string: TEdit;
    btn_Save: TButton;
    procedure btn_SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_EncryptString: TForm_EncryptString;

implementation

{$R *.dfm}

uses Unit_Function;


procedure TForm_EncryptString.btn_SaveClick(Sender: TObject);
begin
edt_output_string.Text:=AES_Encrypt_With_Key(edt_input_string.Text, edt_encryption_key.Text);
end;

end.
