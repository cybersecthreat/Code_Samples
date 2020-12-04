program LaunchProgram;

uses
  Vcl.Forms,
  Unit_LaunchProgram in 'Unit_LaunchProgram.pas' {Form_LaunchProgram},
  Unit_Function in 'Unit_Function.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm_LaunchProgram, Form_LaunchProgram);
  Application.Run;
end.
