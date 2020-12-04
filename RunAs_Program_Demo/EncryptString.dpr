program EncryptString;

uses
  Vcl.Forms,
  Unit_EncryptString in 'Unit_EncryptString.pas' {Form_EncryptString};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_EncryptString, Form_EncryptString);
  Application.Run;
end.
