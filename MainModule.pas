unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  Data.DB, FireDAC.Comp.Client, FireDAC.ConsoleUI.Wait;

type
  TUniMainModule = class(TUniGUIMainModule)
    dbConn: TFDConnection;
    dbdFirebird: TFDPhysFBDriverLink;
    dwcCursor: TFDGUIxWaitCursor;
    procedure dbConnBeforeConnect(Sender: TObject);
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

procedure TUniMainModule.dbConnBeforeConnect(Sender: TObject);
begin
  with dbConn.Params do begin
    Values[ 'Database' ]     :=
      TPath.GetDirectoryName( ParamStr( 0 ) ) +
      '\DATA\IVIEWER.FDB';
    Values[ 'UserName' ]     := 'SYSDBA';
    Values[ 'Password' ]     := 'masterkey';
    Values[ 'CharacterSet' ] := 'UTF8';
  end;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
