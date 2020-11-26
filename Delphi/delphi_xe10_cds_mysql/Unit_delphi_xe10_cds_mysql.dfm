object Form_delphi_xe10_cds_mysql: TForm_delphi_xe10_cds_mysql
  Left = 0
  Top = 0
  Caption = 'Form_delphi_xe10_cds_mysql'
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
    DataSource = DS_person
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 18
    Top = 128
    Width = 121
    Height = 21
    DataField = 'my_name'
    DataSource = DS_person
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
    DataSource = DS_person
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
  object DS_person: TDataSource
    DataSet = CDS_person
    Left = 696
    Top = 80
  end
  object CDS_person: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_Person'
    Left = 664
    Top = 152
  end
  object DSP_Person: TDataSetProvider
    DataSet = Q_Person
    UpdateMode = upWhereKeyOnly
    Left = 672
    Top = 224
  end
  object Q_Person: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select * from tbl_person')
    SQLConnection = SQLConnection_Main
    Left = 744
    Top = 168
    object Q_Personmy_id: TIntegerField
      FieldName = 'my_id'
    end
    object Q_Personmy_name: TStringField
      FieldName = 'my_name'
      Size = 10
    end
  end
  object SQLConnection_Main: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver230.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=23.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver230.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=23.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=mytestdb'
      'User_Name=mytestuser1'
      'Password=AAAAABB_2'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60'
      
        'ConnectionString=DriverUnit=Data.DBXMySQL,DriverPackageLoader=TD' +
        'BXDynalinkDriverLoader,DbxCommonDriver230.bpl,DriverAssemblyLoad' +
        'er=Borland.Data.TDBXDynalinkDriverLoader,Borland.Data.DbxCommonD' +
        'river,Version=23.0.0.0,Culture=neutral,PublicKeyToken=91d62ebb5b' +
        '0d1b1b,MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,Dbx' +
        'MySQLDriver230.bpl,MetaDataAssemblyLoader=Borland.Data.TDBXMySql' +
        'MetaDataCommandFactory,Borland.Data.DbxMySQLDriver,Version=23.0.' +
        '0.0,Culture=neutral,PublicKeyToken=91d62ebb5b0d1b1b,GetDriverFun' +
        'c=getSQLDriverMYSQL,LibraryName=dbxmys.dll,LibraryNameOsx=libsql' +
        'mys.dylib,VendorLib=LIBMYSQL.dll,VendorLibWin64=libmysql.dll,Ven' +
        'dorLibOsx=libmysqlclient.dylib,MaxBlobSize=-1,DriverName=MySQL,H' +
        'ostName=ServerName,Database=DBNAME,User_Name=user,Password=passw' +
        'ord,ServerCharSet=,BlobSize=-1,ErrorResourceFile=,LocaleCode=000' +
        '0,Compressed=False,Encrypted=False,ConnectTimeout=60')
    Connected = True
    Left = 128
    Top = 8
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=localhost'
      'Database=mytestdb'
      'User_Name=mytestuser1'
      'Password=AAAAABB_2'
      'ConnectTimeout=60'
      'ServerCharSet=UTF8')
    Connected = True
    Left = 312
    Top = 8
  end
end
