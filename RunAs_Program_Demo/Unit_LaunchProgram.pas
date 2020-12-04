unit Unit_LaunchProgram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IniFiles, ShellApi, Vcl.StdCtrls;

type

  TForm_LaunchProgram = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    function RunAs(User, Domain, Password, currentDirectory, Command: String): Integer;
  public
    { Public declarations }
  end;

var
  Form_LaunchProgram: TForm_LaunchProgram;

implementation

{$R *.dfm}

uses Unit_Function;

procedure TForm_LaunchProgram.FormCreate(Sender: TObject);
const
  SM_REMOTESESSION = $1000;
var
  Ini : TIniFile;
  CurrentConfigFile: String;
  //AppSem: THandle; // semaphore address
  //WinHandle: HWND; // window handle address
  system_user, system_domain, system_password, system_currentDirectory, system_program, system_program_parameters: String;
  UseShellExecute_And_PsExec :boolean;
begin

      if ParamStr(1)='-config' then
        begin
          if ParamStr(2)<>'' then
            begin
              CurrentConfigFile:=ParamStr(2);
            end
          else
            begin
              if FileExists('config.ini') then
                begin
                  CurrentConfigFile:='config.ini';
                end;
            end;
        end
      else
        begin
            if FileExists('config.ini') then
              begin
                CurrentConfigFile:='config.ini';
              end;
        end;

      if CurrentConfigFile<>'' then

        begin

          Ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+CurrentConfigFile);

          try

            if not Ini.ValueExists('SYS_UserInfo', 'system_user') then
             Ini.WriteString('SYS_UserInfo','system_user', AES_Encrypt('K-Sec_Default_User'));

            if not Ini.ValueExists('SYS_UserInfo', 'system_domain') then
              Ini.WriteString('SYS_UserInfo','system_domain', AES_Encrypt('K-Sec_Domain'));

            if not Ini.ValueExists('SYS_UserInfo', 'system_password') then
              Ini.WriteString('SYS_UserInfo','system_password', AES_Encrypt('K-Sec_Password'));

            if not Ini.ValueExists('SYS_UserInfo', 'system_currentDirectory') then
              Ini.WriteString('SYS_UserInfo','system_currentDirectory', AES_Encrypt('C:\tools\SysinternalsSuite'));

            if not Ini.ValueExists('SYS_UserInfo', 'system_program') then
              begin
                Ini.WriteString('SYS_UserInfo','system_program', AES_Encrypt('C:\tools\SysinternalsSuite\PsExec.exe'));
              end;

            if not Ini.ValueExists('SYS_UserInfo', 'system_program_parameters') then
              Ini.WriteString('SYS_UserInfo','system_program_parameters', AES_Encrypt('c:\windows\system32\calc.exe'));

            if not Ini.ValueExists('SYS_UserInfo', 'UseShellExecute_And_PsExec') then
              Ini.WriteBool('SYS_UserInfo','UseShellExecute_And_PsExec', true);

            system_user := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_user', AES_Encrypt('K-Sec_Default_User')));
            system_domain := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_domain', AES_Encrypt('K-Sec_Default_Domain')));
            system_password := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_password', AES_Encrypt('K-Sec_Default_Password')));
            system_currentDirectory := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_currentDirectory', AES_Encrypt('C:\tools\SysinternalsSuite')));
            system_program := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_program', AES_Encrypt('C:\tools\SysinternalsSuite\PsExec.exe')));

            system_program_parameters := AES_Decrypt(Ini.ReadString('SYS_UserInfo','system_program_parameters', AES_Encrypt('c:\windows\system32\calc.exe')));
            UseShellExecute_And_PsExec := Ini.ReadBool('SYS_UserInfo','UseShellExecute_And_PsExec', true);

            if UseShellExecute_And_PsExec=True then
              begin
                ShellExecute(Handle, nil, PWideChar(system_program),  PWideChar(' -accepteula -u '+system_domain+'\'+system_user+' -p '+system_password+' '+system_program_parameters), nil, SW_HIDE);
              end
            else
              begin
                Runas(system_user, system_domain, system_password, system_currentDirectory, system_program+' '+system_program_parameters);
              end;
          finally
            Ini.free;
          end;
        end;

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


procedure TForm_LaunchProgram.FormShow(Sender: TObject);
begin
Close;
end;

function TForm_LaunchProgram.RunAs(User, Domain, Password, currentDirectory, Command: String): Integer;
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
