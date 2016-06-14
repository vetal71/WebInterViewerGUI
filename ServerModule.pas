unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Phys,
  FireDAC.Comp.Client;

type
  TUniServerModule = class(TUniGUIServerModule)
    fdmConnections: TFDManager;
    procedure UniGUIServerModuleCreate(Sender: TObject);
    procedure UniGUIServerModuleBeforeInit(Sender: TObject);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
begin
  // TODO чтение из ini файла
  ExtRoot := ExtractFilePath (ParamStr (0)) + 'ext-4.2.2.1144';
  UniRoot := ExtractFilePath (ParamStr (0)) + 'uni';
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
  fdmConnections.Active := True;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
