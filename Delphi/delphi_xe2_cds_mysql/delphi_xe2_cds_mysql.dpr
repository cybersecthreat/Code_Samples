program delphi_xe2_cds_mysql;

uses
  Vcl.Forms,
  Unit_delphi_xe2_cds_mysql in 'Unit_delphi_xe2_cds_mysql.pas' {Form_delphi_xe2_cds_mysql};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_delphi_xe2_cds_mysql, Form_delphi_xe2_cds_mysql);
  Application.Run;
end.
