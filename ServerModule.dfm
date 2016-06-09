object UniServerModule: TUniServerModule
  OldCreateOrder = False
  OnCreate = UniGUIServerModuleCreate
  FilesFolder = 'files\'
  TempFolder = 'temp\'
  Port = 8080
  Title = #1041#1072#1079#1072' '#1080#1085#1090#1077#1088#1074#1100#1102#1077#1088#1086#1074
  BGColor = 8404992
  CharSet = 'utf-8'
  FaviconOptions = [foVisible, foLocalCache]
  DefaultImageFormat = cfPNG
  SuppressErrors = []
  UnavailableErrMsg = #1054#1096#1080#1073#1082#1072' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1103
  LoadingMessage = #1047#1072#1075#1088#1091#1079#1082#1072'...'
  Bindings = <>
  MainFormDisplayMode = mfPage
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">'#1042' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1080' '#1087#1088#1086#1080#1079#1086#1096#1083 +
      #1086' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1077':</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>'#1055#1077#1088#1077#1079#1072#1087#1091#1089#1082' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103'</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>'#1055#1077#1088#1077#1079#1072#1087#1091#1089#1082' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103'</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>'#1055#1077#1088#1077#1079#1072#1087#1091#1089#1082' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103'</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = #1053#1077#1082#1086#1088#1088#1077#1082#1090#1085#1072#1103' '#1089#1077#1089#1089#1080#1103' '#1080#1083#1080' '#1090#1072#1081#1084'-'#1072#1091#1090' '#1089#1077#1089#1089#1080#1080'.'
  ServerMessages.TerminateMessage = 'Web '#1089#1077#1089#1089#1080#1103' '#1079#1072#1074#1077#1088#1096#1077#1085#1072'.'
  ExtLocale = '[Auto]'
  Compression.MinTextSize = 512
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 328
  Width = 446
  object fdmConnections: TFDManager
    WaitCursor = gcrNone
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 40
    Top = 24
  end
end
