Unit Unit_delphi_xe10_firedac_mysql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
   Vcl.Grids, Vcl.DBGrids, MemDS, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TForm_delphi_xe10_firedac_mysql = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    FDConnection1: TFDConnection;
    FDTable_person: TFDTable;
    DataSource1: TDataSource;
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
  Form_delphi_xe10_firedac_mysql: TForm_delphi_xe10_firedac_mysql;

implementation

{$R *.dfm}

procedure TForm_delphi_xe10_firedac_mysql.Button1Click(Sender: TObject);
begin
FDTable_person.Insert;
end;

procedure TForm_delphi_xe10_firedac_mysql.Button2Click(Sender: TObject);
begin
FDTable_person.ApplyUpdates;
end;

procedure TForm_delphi_xe10_firedac_mysql.Button3Click(Sender: TObject);
begin
FDTable_person.Refresh;
end;

procedure TForm_delphi_xe10_firedac_mysql.Button4Click(Sender: TObject);
begin
Edit1.Text:=PAnsiChar(Utf8ToAnsi(UTF8Encode('我是')));
Edit2.Text:=UTF8DeCode(Edit1.Text);
//PAnsiChar(Utf8ToUnicodeString((UTF8Encode('我是'))));

end;

procedure TForm_delphi_xe10_firedac_mysql.FormShow(Sender: TObject);
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
