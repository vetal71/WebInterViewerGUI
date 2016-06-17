unit MainModule;

{.$define datalog}

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, FireDAC.ConsoleUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Moni.Base, FireDAC.Moni.Custom, FireDAC.Moni.FlatFile;

type
  TUniMainModule = class(TUniGUIMainModule)
    dbConn: TFDConnection;
    dbdFirebird: TFDPhysFBDriverLink;
    dwcCursor: TFDGUIxWaitCursor;
    qryContacts: TFDQuery;
    dsContacts: TDataSource;
    dbMonitor: TFDMoniFlatFileClientLink;
    procedure dbConnBeforeConnect(Sender: TObject);
    procedure dbConnAfterConnect(Sender: TObject);
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    FDataLog: Boolean;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication,
  System.IniFiles,
  System.IOUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.dbConnAfterConnect(Sender: TObject);
begin
  if FDataLog then
    dbConn.ConnectionIntf.Tracing := True;
end;

procedure TUniMainModule.dbConnBeforeConnect(Sender: TObject);
begin
  if FDataLog then
    dbMonitor.Tracing := True;
end;

procedure TUniMainModule.UniGUIMainModuleCreate(Sender: TObject);
var
  xAppPath : string;
begin
  // указываем путь до клиентской библиотеки
  xAppPath := UniServerModule.StartPath;
  dbdFirebird.VendorLib := xAppPath + 'fbclient' + PathDelim +
    'fbclient.dll';  with dbConn.Params do begin    Values[ 'Database' ]     := xAppPath + 'DATA\IVIEWER.FDB';
    Values[ 'UserName' ]     := 'SYSDBA';
    Values[ 'Password' ]     := 'masterkey';
    Values[ 'CharacterSet' ] := 'UTF8';
    Values[ 'MonitorBy' ]    := 'FlatFile';
  end;  with TIniFile.Create( UniServerModule.StartPath + 'config.ini' ) do  begin
    FDataLog := ReadBool('DEBUG', 'DEBUG_DATA_LOG', False);

    Free;
  end;end;
initialization
  RegisterMainModuleClass(TUniMainModule);
end.
