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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication,
  System.IOUtils;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

procedure TUniMainModule.dbConnAfterConnect(Sender: TObject);
begin
  {$if datalog}
  dbConn.ConnectionIntf.Tracing := True;
  {$endif}
  qryContacts.MacroByName('cond').AsRaw := '(1 = 1)';
  qryContacts.Active := True;
end;

procedure TUniMainModule.dbConnBeforeConnect(Sender: TObject);
begin
  {$if datalog}
  dbMonitor.Tracing := True;
  {$endif}
  with dbConn.Params do begin
    Values[ 'Database' ]     :=
      UniServerModule.FilesFolderPath +
      'DATA\IVIEWER.FDB';
    Values[ 'UserName' ]     := 'SYSDBA';
    Values[ 'Password' ]     := 'masterkey';
    Values[ 'CharacterSet' ] := 'UTF8';
    Values[ 'MonitorBy' ]    := 'FlatFile';
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
