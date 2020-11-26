program delphi_xe10_firedac_mysql;

uses
  Vcl.Forms,
  Unit_delphi_xe10_firedac_mysql in 'Unit_delphi_xe10_firedac_mysql.pas' {Form_delphi_xe10_firedac_mysql};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_delphi_xe10_firedac_mysql, Form_delphi_xe10_firedac_mysql);
  Application.Run;
end.
