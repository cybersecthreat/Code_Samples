unit Unit_delphi_xe2_cds_mysql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids,Data.DBXMySql, Data.FMTBcd, Data.SqlExpr, Datasnap.Provider,
  Datasnap.DBClient;

type
  TForm_delphi_xe2_cds_mysql = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DS_person: TDataSource;
    CDS_person: TClientDataSet;
    DSP_Person: TDataSetProvider;
    Q_Person: TSQLQuery;
    Q_Personmy_id: TIntegerField;
    Q_Personmy_name: TWideStringField;
    SQLConnection_Main: TSQLConnection;
    SQLConnection1: TSQLConnection;
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
  Form_delphi_xe2_cds_mysql: TForm_delphi_xe2_cds_mysql;

implementation

{$R *.dfm}

procedure TForm_delphi_xe2_cds_mysql.Button1Click(Sender: TObject);
begin
CDS_person.Insert;
end;

procedure TForm_delphi_xe2_cds_mysql.Button2Click(Sender: TObject);
begin
CDS_person.ApplyUpdates(1);
end;

procedure TForm_delphi_xe2_cds_mysql.Button3Click(Sender: TObject);
begin
CDS_person.Refresh;
end;

procedure TForm_delphi_xe2_cds_mysql.Button4Click(Sender: TObject);
begin
Edit1.Text:=PAnsiChar(Utf8ToAnsi(UTF8Encode('我是')));
Edit2.Text:=UTF8DeCode(Edit1.Text);
//PAnsiChar(Utf8ToUnicodeString((UTF8Encode('我是'))));

end;

procedure TForm_delphi_xe2_cds_mysql.FormShow(Sender: TObject);
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
