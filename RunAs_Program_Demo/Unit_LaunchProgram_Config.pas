unit Unit_LaunchProgram_Config;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IniFiles, ShellApi;

type
  TForm_LaunchProgram_Config = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_system_user: TEdit;
    edt_system_domain: TEdit;
    edt_system_password: TEdit;
    edt_system_currentDirectory: TEdit;
    edt_system_program: TEdit;
    btn_Save: TButton;
    edt_system_program_parameters: TEdit;
    Label6: TLabel;
    btn_Open: TButton;
    btn_SaveAs: TButton;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    CheckBox_UseShellExecute_And_PsExec: TCheckBox;
    function GetEnvVarValue(const VarName: string): string;
    procedure FormCreate(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_OpenClick(Sender: TObject);
    procedure OpenConfigFile(ConfigFile: String);
    procedure SaveConfigFile(ConfigFile: String);
    procedure btn_SaveAsClick(Sender: TObject);
  private
    { Private declarations }
    function RunAs(User, Domain, Password, currentDirectory, Command: String): Integer;
  public
    { Public declarations }
    CurrentConfigFile: String;
  end;

var
  Form_LaunchProgram_Config: TForm_LaunchProgram_Config;

implementation

{$R *.dfm}

uses Unit_Function;

function TForm_LaunchProgram_Config.GetEnvVarValue(const VarName: string): string;
var
  BufSize: Integer;  // buffer size required for value
begin
  // Get required buffer size (inc. terminal #0)
  BufSize := GetEnvironmentVariable(PChar(VarName), nil, 0);
  if BufSize > 0 then
  begin
    // Read env var value into result string
    SetLength(Result, BufSize - 1);
    GetEnvironmentVariable(PChar(VarName),
      PChar(Result), BufSize);
  end
  else
    // No such environment variable
    Result := '';
end;

procedure TForm_LaunchProgram_Config.btn_OpenClick(Sender: TObject);
begin
if OpenDialog1.Execute then
  begin
     CurrentConfigFile:=OpenDialog1.FileName;
     OpenConfigFile(CurrentConfigFile);
  end;
end;

procedure TForm_LaunchProgram_Config.OpenConfigFile(ConfigFile: String);
var Ini : TIniFile;
begin
  //Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+ConfigFile);
  Ini := TIniFile.Create(ConfigFile);

  try

    Visible:=True;
    WindowState:=wsNormal;

    edt_system_user.Text := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_user', AES_Encrypt('K-Sec_Default_User')));

    edt_system_domain.Text := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_domain', AES_Encrypt('K-Sec_Default_Domain')));

    edt_system_password.Text := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_password', AES_Encrypt('K-Sec_Default_Password')));

    edt_system_currentDirectory.Text := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_currentDirectory', AES_Encrypt('C:\tools\SysinternalsSuite')));

    edt_system_program.Text := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_program', AES_Encrypt('C:\tools\SysinternalsSuite\PsExec.exe')));

    edt_system_program_parameters.Text := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_program_parameters', AES_Encrypt('c:\windows\system32\calc.exe')));

    CheckBox_UseShellExecute_And_PsExec.Checked := Ini.ReadBool('SYS_UserInfo','UseShellExecute_And_PsExec', true);

    Form_LaunchProgram_Config.Caption:='Launch Program Config ('+ConfigFile+' )';

    //edt_system_program.Text := AES_Encrypt_With_Key('BBBBB', 'BBBBB_key');
    //edt_system_program_parameters.Text := AES_Encrypt_With_Key('DDDDD', 'DDDDD_key');

  finally
    Ini.free;
  end;
end;

procedure TForm_LaunchProgram_Config.SaveConfigFile(ConfigFile: String);
var
  Ini : TIniFile;
  system_user, system_domain, system_password, system_currentDirectory, system_program: String;
begin
      if ConfigFile=ExtractFilePath(Application.ExeName)+'config.ini' then
        begin
          Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'config.ini');
        end
      else
        begin
          if (ExtractFileExt(ConfigFile)='') then
            begin
              Ini := TIniFile.Create(ConfigFile+'.ini');
            end
          else
            begin
              Ini := TIniFile.Create(ConfigFile);
            end;
        end;

      try

        Ini.WriteString('SYS_UserInfo','system_user', AES_Encrypt(edt_system_user.Text));

        Ini.WriteString('SYS_UserInfo','system_domain', AES_Encrypt(edt_system_domain.Text));

        Ini.WriteString('SYS_UserInfo','system_password', AES_Encrypt(edt_system_password.Text));

        Ini.WriteString('SYS_UserInfo','system_currentDirectory', AES_Encrypt(edt_system_currentDirectory.Text));

        Ini.WriteString('SYS_UserInfo','system_program', AES_Encrypt(edt_system_program.Text));

        Ini.WriteString('SYS_UserInfo','system_program_parameters', AES_Encrypt(edt_system_program_parameters.Text));

        Ini.WriteBool('SYS_UserInfo','UseShellExecute_And_PsExec', CheckBox_UseShellExecute_And_PsExec.Checked);

      finally
        Ini.free;
      end;

end;

procedure TForm_LaunchProgram_Config.btn_SaveAsClick(Sender: TObject);
begin
if SaveDialog1.Execute then
  begin
     CurrentConfigFile:=SaveDialog1.FileName;
     SaveConfigFile(CurrentConfigFile);
  end;
end;

procedure TForm_LaunchProgram_Config.btn_SaveClick(Sender: TObject);
begin
SaveConfigFile(CurrentConfigFile);
end;

procedure TForm_LaunchProgram_Config.FormCreate(Sender: TObject);
var
  Ini : TIniFile;
  //AppSem: THandle; // semaphore address
  //WinHandle: HWND; // window handle address
  system_user, system_domain, system_password, system_currentDirectory, system_program, system_program_parameters: String;
begin

      //showmessage(GetEnvVarValue('SESSIONNAME'));


      CurrentConfigFile:=ExtractFilePath(Application.ExeName)+'config.ini';
      OpenConfigFile(CurrentConfigFile);

end;

function CreateProcessWithLogon(lpUsername: PWideChar;
lpDomain: PWideChar;
lpPassword: PWideChar;
dwLogonFlags: DWORD;
lpApplicationName: PWideChar;
lpCommandLine: PWideChar;
dwCreationFlags: DWORD;
lpEnvironment: Pointer;
lpCurrentDirectory: PWideChar;
var lpStartupInfo: TStartupInfo;
var lpProcessInfo: TProcessInformation): BOOL; stdcall;
external 'advapi32' name 'CreateProcessWithLogonW';

function CreateEnvironmentBlock(var lpEnvironment: Pointer;
hToken: THandle;
bInherit: BOOL): BOOL; stdcall; external 'userenv';

function DestroyEnvironmentBlock(pEnvironment: Pointer): BOOL; stdcall; external 'userenv';

const
LOGON_WITH_PROFILE = $00000001;
LOGON_NETCREDENTIALS_ONLY = $00000002;


function TForm_LaunchProgram_Config.RunAs(User, Domain, Password, currentDirectory, Command: String): Integer;
var dwSize: DWORD;
hToken: THandle;
lpvEnv: Pointer;
pi: TProcessInformation;
si: TStartupInfo;
szPath: Array [0..MAX_PATH] of WideChar;
ProcInfo : TProcessInformation;
begin

ZeroMemory(@szPath, SizeOf(szPath));
ZeroMemory(@pi, SizeOf(pi));
ZeroMemory(@si, SizeOf(si));
si.cb:=SizeOf(TStartupInfo);
if LogonUser(PChar(User), PChar(Domain), PChar(Password), LOGON32_LOGON_INTERACTIVE, LOGON32_PROVIDER_DEFAULT, hToken) then
begin
if CreateEnvironmentBlock(lpvEnv, hToken, True) then
begin
dwSize:=SizeOf(szPath) div SizeOf(WCHAR);
if (GetCurrentDirectoryW(dwSize, @szPath) > 0) then
begin
if (CreateProcessWithLogon(PWideChar(WideString(User) ), PWideChar(Domain), PWideChar(WideString(Password)),
LOGON_WITH_PROFILE, nil, PWideChar(WideString(Command)), CREATE_UNICODE_ENVIRONMENT,
lpvEnv, szPath, si, pi)) then
begin
result:=ERROR_SUCCESS;
WaitForSingleObject(ProcInfo.hProcess, INFINITE);
CloseHandle(pi.hProcess);
CloseHandle(pi.hThread);
end
else
result:=GetLastError;
end
else
result:=GetLastError;
DestroyEnvironmentBlock(lpvEnv);
end
else
result:=GetLastError;
CloseHandle(hToken);
end
else
result:=GetLastError;

end;

end.
