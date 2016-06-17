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
    procedure UniGUIServerModuleDestroy(Sender: TObject);
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
  UniGUIVars, System.IniFiles;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
var
  tmpExtRoot, tmpUniRoot: string;
begin
  with TIniFile.Create(StartPath + 'config.ini') do begin
    tmpExtRoot := StartPath + 'ext-4.2.2.1144';
    tmpUniRoot := StartPath + 'uni';

    ExtRoot := ReadString('MAIN', 'EXT_ROOT_PATH', tmpExtRoot);
    UniRoot := ReadString('MAIN', 'UNI_ROOT_PATH', tmpUniRoot);

    Free;
  end;
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
  fdmConnections.Active := True;
end;

procedure TUniServerModule.UniGUIServerModuleDestroy(Sender: TObject);
begin
  with TIniFile.Create(StartPath + 'config.ini') do begin
    WriteString('MAIN', 'EXT_ROOT_PATH', ExtRoot);
    WriteString('MAIN', 'UNI_ROOT_PATH', UniRoot);

    Free;
  end;
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
