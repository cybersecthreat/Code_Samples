unit Unit_delphi_xe10_firemonkey_firedac_mysql;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Controls, FMX.Layouts, Fmx.Bind.Navigator, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Grid;

type
  TForm_delphi_xe10_firemonkey_firedac_mysql = class(TForm)
    Localhost_mytestdbConnection: TFDConnection;
    Tbl_personTable: TFDQuery;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    NavigatorBindSourceDB1: TBindNavigator;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    var MyPrivateVarAAAAA: String;
  public
    { Public declarations }
    var MyPublicVarAAAAA: String;
  end;

var
  Form_delphi_xe10_firemonkey_firedac_mysql: TForm_delphi_xe10_firemonkey_firedac_mysql;

implementation

{$R *.fmx}

procedure TForm_delphi_xe10_firemonkey_firedac_mysql.FormShow(Sender: TObject);
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
