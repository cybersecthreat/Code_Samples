object Form_EncryptString: TForm_EncryptString
  Left = 0
  Top = 0
  Caption = 'Form_EncryptString'
  ClientHeight = 288
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 18
    Width = 57
    Height = 13
    Caption = 'Input String'
  end
  object Label2: TLabel
    Left = 25
    Top = 54
    Width = 72
    Height = 13
    Caption = 'Encryption Key'
  end
  object Label3: TLabel
    Left = 25
    Top = 95
    Width = 65
    Height = 13
    Caption = 'Output String'
  end
  object edt_input_string: TEdit
    Left = 107
    Top = 15
    Width = 454
    Height = 21
    TabOrder = 0
  end
  object edt_encryption_key: TEdit
    Left = 107
    Top = 51
    Width = 454
    Height = 21
    TabOrder = 1
  end
  object edt_output_string: TEdit
    Left = 107
    Top = 92
    Width = 454
    Height = 21
    TabOrder = 2
  end
  object btn_Save: TButton
    Left = 260
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Generate'
    TabOrder = 3
    OnClick = btn_SaveClick
  end
end
