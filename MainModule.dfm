object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  Height = 335
  Width = 459
  object dbConn: TFDConnection
    Params.Strings = (
      
        'Database=E:\DelphiProjects\WebInterViewerGUI\files\data\IVIEWER.' +
        'FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'CharacterSet=UTF8'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    AfterConnect = dbConnAfterConnect
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
  object qryContacts: TFDQuery
    Connection = dbConn
    FetchOptions.AssignedValues = [evRecordCountMode]
    FetchOptions.RecordCountMode = cmTotal
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_CONTACTS_ID'
    UpdateOptions.UpdateTableName = 'CONTACTS'
    UpdateOptions.KeyFields = 'CODE'
    UpdateOptions.AutoIncFields = 'CODE'
    SQL.Strings = (
      'select * from contacts '
      'where '
      '  fio like :fio and'
      '  region like :region'
      'order by code')
    Left = 96
    Top = 16
    ParamData = <
      item
        Name = 'FIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'REGION'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsContacts: TDataSource
    DataSet = qryContacts
    Left = 96
    Top = 72
  end
end
