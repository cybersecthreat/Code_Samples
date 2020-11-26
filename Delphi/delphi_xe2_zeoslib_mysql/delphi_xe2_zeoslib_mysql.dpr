program delphi_xe2_zeoslib_mysql;

uses
  Vcl.Forms,
  Unit_delphi_xe2_zeoslib_mysql in 'Unit_delphi_xe2_zeoslib_mysql.pas' {Form_delphi_xe2_zeoslib_mysql};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_delphi_xe2_zeoslib_mysql, Form_delphi_xe2_zeoslib_mysql);
  Application.Run;
end.
