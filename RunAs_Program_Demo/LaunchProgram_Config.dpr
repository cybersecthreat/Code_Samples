program LaunchProgram_Config;

uses
  Vcl.Forms,
  Unit_LaunchProgram_Config in 'Unit_LaunchProgram_Config.pas' {Form_LaunchProgram_Config},
  Unit_Function in 'Unit_Function.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_LaunchProgram_Config, Form_LaunchProgram_Config);
  Application.Run;
end.
