# WebInterViewerGUI
InterViewer base for web

# for init UniGUI server
(*
procedure TUniServerModule.UniGUIServerModuleBeforeInit(Sender: TObject);
var
ServerConfig: TInifile;
begin
serverConfig := TInifile.create(gsAppPath + 'unigui.ini');
port := serverConfig.readinteger('AppWeb', 'ServerPort', 1980);
extroot := serverConfig.readstring('AppWeb', 'ExtjsPath', '');
uniroot := serverConfig.readstring('AppWeb', 'UniPath', '');
FreeAndNil(serverConfig);
end;
*)