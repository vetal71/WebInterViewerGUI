object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 335
  Width = 459
  object dbConn: TFDConnection
    Params.Strings = (
      'Database=D:\DelphiProjects\WebInterViewerGUI\data\IVIEWER.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    BeforeConnect = dbConnBeforeConnect
    Left = 32
    Top = 16
  end
  object dbdFirebird: TFDPhysFBDriverLink
    VendorLib = 'gds32.dll'
    Left = 408
    Top = 272
  end
  object dwcCursor: TFDGUIxWaitCursor
    Provider = 'Console'
    ScreenCursor = gcrNone
    Left = 408
    Top = 216
  end
end
