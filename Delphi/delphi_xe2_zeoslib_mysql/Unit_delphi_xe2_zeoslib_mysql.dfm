object Form_delphi_xe2_zeoslib_mysql: TForm_delphi_xe2_zeoslib_mysql
  Left = 0
  Top = 0
  Caption = 'Form_delphi_xe2_zeoslib_mysql'
  ClientHeight = 507
  ClientWidth = 1233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBEdit1: TDBEdit
    Left = 18
    Top = 88
    Width = 121
    Height = 21
    DataField = 'my_id'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 18
    Top = 128
    Width = 121
    Height = 21
    DataField = 'my_name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Insert'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Update'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 201
    Top = 88
    Width = 344
    Height = 162
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button3: TButton
    Left = 320
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Refresh'
    TabOrder = 5
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 184
    Top = 392
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 184
    Top = 419
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Edit2'
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    AutoEncodeStrings = True
    ClientCodepage = 'utf8'
    Catalog = 'mytestdb'
    Properties.Strings = (
      'codepage=utf8'
      'PreprepareSQL=ON')
    Connected = True
    HostName = 'localhost'
    Port = 0
    Database = 'mytestdb'
    User = 'mytestuser1'
    Password = 'AAAAABB_2'
    Protocol = 'mysql-5'
    LibraryLocation = 'libmySQL.dll'
    Left = 32
    Top = 24
  end
  object ZTable1: TZTable
    Connection = ZConnection1
    TableName = 'tbl_person'
    Left = 96
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ZQuery1
    Left = 160
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from mytestdb.tbl_person')
    Params = <>
    Left = 240
    Top = 24
  end
end
