unit Unit_delphi_xe2_zeoslib_mysql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZAbstractTable, ZDataset,
  ZAbstractConnection, ZConnection, Vcl.Grids, Vcl.DBGrids;

type
  TForm_delphi_xe2_zeoslib_mysql = class(TForm)
    ZConnection1: TZConnection;
    ZTable1: TZTable;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     var MyPrivateVarAAAAA: String;
  public
    { Public declarations }
    var MyPublicVarAAAAA: String;
  end;

var
  Form_delphi_xe2_zeoslib_mysql: TForm_delphi_xe2_zeoslib_mysql;

implementation

{$R *.dfm}

procedure TForm_delphi_xe2_zeoslib_mysql.Button1Click(Sender: TObject);
begin
ZQuery1.Insert;
end;

procedure TForm_delphi_xe2_zeoslib_mysql.Button2Click(Sender: TObject);
begin
ZQuery1.ApplyUpdates;
end;

procedure TForm_delphi_xe2_zeoslib_mysql.Button3Click(Sender: TObject);
begin
ZQuery1.Refresh;
end;

procedure TForm_delphi_xe2_zeoslib_mysql.Button4Click(Sender: TObject);
begin
Edit1.Text:=PAnsiChar(Utf8ToAnsi(UTF8Encode('我是')));
Edit2.Text:=UTF8DeCode(Edit1.Text);
//PAnsiChar(Utf8ToUnicodeString((UTF8Encode('我是'))));

end;

procedure TForm_delphi_xe2_zeoslib_mysql.FormShow(Sender: TObject);
var MyFunctionVarAAAAA: String;
begin
    // RemarkAAAAA
    MyPrivateVarAAAAA := 'MyPrivateValueAAAAA';
    MyPublicVarAAAAA := 'MyPublicValueAAAAA';
    MyFunctionVarAAAAA := 'MyFunctionValueAAAAA';
    ShowMessage('Static_MsgBox_MessageAAAAA');
    ShowMessage(MyPrivateVarAAAAA);
    ShowMessage(MyPublicVarAAAAA);
    ShowMessage(MyFunctionVarAAAAA);
end;

end.
