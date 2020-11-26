program delphi_xe10_firemonkey_firedac_mysql;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit_delphi_xe10_firemonkey_firedac_mysql in 'Unit_delphi_xe10_firemonkey_firedac_mysql.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_delphi_xe10_firemonkey_firedac_mysql, Form_delphi_xe10_firemonkey_firedac_mysql);
  Application.Run;
end.
