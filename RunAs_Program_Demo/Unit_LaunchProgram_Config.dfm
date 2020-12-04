object Form_LaunchProgram_Config: TForm_LaunchProgram_Config
  Left = 0
  Top = 0
  Caption = 'Launch Program Config'
  ClientHeight = 350
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 75
    Top = 18
    Width = 22
    Height = 13
    Caption = 'User'
  end
  object Label2: TLabel
    Left = 62
    Top = 54
    Width = 35
    Height = 13
    Caption = 'Domain'
  end
  object Label3: TLabel
    Left = 51
    Top = 95
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 84
    Height = 13
    Caption = 'Current Directory'
  end
  object Label5: TLabel
    Left = 52
    Top = 177
    Width = 45
    Height = 13
    Caption = 'Programs'
  end
  object Label6: TLabel
    Left = 7
    Top = 213
    Width = 98
    Height = 13
    Caption = 'Program Parameters'
  end
  object edt_system_user: TEdit
    Left = 107
    Top = 15
    Width = 454
    Height = 21
    TabOrder = 0
  end
  object edt_system_domain: TEdit
    Left = 107
    Top = 51
    Width = 454
    Height = 21
    TabOrder = 1
  end
  object edt_system_password: TEdit
    Left = 107
    Top = 92
    Width = 454
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object edt_system_currentDirectory: TEdit
    Left = 107
    Top = 133
    Width = 454
    Height = 21
    TabOrder = 3
  end
  object edt_system_program: TEdit
    Left = 107
    Top = 174
    Width = 454
    Height = 21
    TabOrder = 4
  end
  object btn_Save: TButton
    Left = 260
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 5
    OnClick = btn_SaveClick
  end
  object edt_system_program_parameters: TEdit
    Left = 107
    Top = 210
    Width = 454
    Height = 21
    TabOrder = 6
  end
  object btn_Open: TButton
    Left = 107
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 7
    OnClick = btn_OpenClick
  end
  object btn_SaveAs: TButton
    Left = 413
    Top = 285
    Width = 75
    Height = 25
    Caption = 'Save As'
    TabOrder = 8
    OnClick = btn_SaveAsClick
  end
  object CheckBox_UseShellExecute_And_PsExec: TCheckBox
    Left = 107
    Top = 248
    Width = 207
    Height = 17
    Caption = ' Use ShellExecute and PsExec ?'
    TabOrder = 9
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Config Files|*.ini'
    Left = 520
    Top = 280
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Config Files|*.ini'
    Left = 32
    Top = 280
  end
end
