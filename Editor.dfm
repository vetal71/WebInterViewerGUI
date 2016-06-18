object EditorForm: TEditorForm
  Left = 0
  Top = 0
  ClientHeight = 482
  ClientWidth = 632
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1080
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TUniPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 438
    Hint = ''
    BorderStyle = ubsNone
    Caption = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitTop = 1
    object UniLabel1: TUniLabel
      Left = 7
      Top = 69
      Width = 47
      Height = 13
      Hint = ''
      Caption = #1054#1073#1083#1072#1089#1090#1100':'
      TabOrder = 1
    end
    object UniLabel2: TUniLabel
      Left = 7
      Top = 40
      Width = 78
      Height = 13
      Hint = ''
      Caption = #1060#1072#1084#1080#1083#1080#1103', '#1048'.'#1054'.:'
      TabOrder = 2
    end
    object UniLabel3: TUniLabel
      Left = 433
      Top = 40
      Width = 23
      Height = 13
      Hint = ''
      Caption = #1055#1086#1083':'
      TabOrder = 3
    end
    object UniLabel4: TUniLabel
      Left = 12
      Top = 6
      Width = 179
      Height = 19
      Hint = ''
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1082#1086#1085#1090#1072#1082#1090#1077
      ParentFont = False
      Font.Color = clBlue
      Font.Height = -16
      TabOrder = 4
    end
    object UniLabel5: TUniLabel
      Left = 254
      Top = 69
      Width = 35
      Height = 13
      Hint = ''
      Caption = #1043#1086#1088#1086#1076':'
      TabOrder = 5
    end
    object edtFIO: TUniDBEdit
      Left = 96
      Top = 37
      Width = 329
      Height = 22
      Hint = ''
      DataField = 'FIO'
      DataSource = UniMainModule.dsContacts
      TabOrder = 6
    end
    object cbbSEX: TUniDBComboBox
      Left = 462
      Top = 37
      Width = 161
      Hint = ''
      DataField = 'SEX'
      DataSource = UniMainModule.dsContacts
      Items.Strings = (
        #1084#1091#1078#1089#1082#1086#1081
        #1078#1077#1085#1089#1082#1080#1081)
      ItemIndex = -1
      TabOrder = 7
    end
    object edtREGION: TUniDBEdit
      Left = 96
      Top = 65
      Width = 152
      Height = 22
      Hint = ''
      DataField = 'REGION'
      DataSource = UniMainModule.dsContacts
      TabOrder = 8
    end
    object edtCITY: TUniDBEdit
      Left = 295
      Top = 65
      Width = 130
      Height = 22
      Hint = ''
      DataField = 'CITY'
      DataSource = UniMainModule.dsContacts
      TabOrder = 9
    end
    object UniLabel6: TUniLabel
      Left = 433
      Top = 69
      Width = 64
      Height = 13
      Hint = ''
      Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076'.:'
      TabOrder = 10
    end
    object UniDBDateTimePicker1: TUniDBDateTimePicker
      Left = 503
      Top = 65
      Width = 120
      Hint = ''
      DataField = 'BIRTHDATE'
      DataSource = UniMainModule.dsContacts
      DateTime = 42539.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 11
    end
    object UniLabel7: TUniLabel
      Left = 7
      Top = 97
      Width = 72
      Height = 13
      Hint = ''
      Caption = #1052#1086#1073'.'#1090#1077#1083#1077#1092#1086#1085':'
      TabOrder = 12
    end
    object edtCELURARPHONE: TUniDBEdit
      Left = 96
      Top = 93
      Width = 200
      Height = 22
      Hint = ''
      DataField = 'CELURARPHONE'
      DataSource = UniMainModule.dsContacts
      TabOrder = 13
    end
    object UniLabel8: TUniLabel
      Left = 345
      Top = 97
      Width = 72
      Height = 13
      Hint = ''
      Caption = #1044#1086#1084'.'#1090#1077#1083#1077#1092#1086#1085':'
      TabOrder = 14
    end
    object edtHOMEPHONE: TUniDBEdit
      Left = 423
      Top = 93
      Width = 200
      Height = 22
      Hint = ''
      DataField = 'HOMEPHONE'
      DataSource = UniMainModule.dsContacts
      TabOrder = 15
    end
    object UniLabel9: TUniLabel
      Left = 7
      Top = 132
      Width = 49
      Height = 13
      Hint = ''
      Caption = #1055#1088#1086#1077#1082#1090#1099':'
      TabOrder = 16
    end
    object mmoMEMBERPROJECTS: TUniDBMemo
      Left = 96
      Top = 120
      Width = 527
      Height = 41
      Hint = ''
      DataField = 'MEMBERPROJECTS'
      DataSource = UniMainModule.dsContacts
      TabOrder = 17
    end
    object chkISSUPERVIZER: TUniDBCheckBox
      Left = 96
      Top = 167
      Width = 97
      Height = 17
      Hint = ''
      DataField = 'ISSUPERVIZER'
      DataSource = UniMainModule.dsContacts
      Caption = #1057#1091#1087#1077#1088#1074#1072#1081#1079#1077#1088
      TabOrder = 18
    end
    object UniLabel10: TUniLabel
      Left = 7
      Top = 194
      Width = 75
      Height = 13
      Hint = ''
      Caption = #1069#1083#1077#1082#1090#1088'.'#1087#1086#1095#1090#1072':'
      TabOrder = 19
    end
    object edtEMAIL: TUniDBEdit
      Left = 96
      Top = 190
      Width = 193
      Height = 22
      Hint = ''
      DataField = 'EMAIL'
      DataSource = UniMainModule.dsContacts
      TabOrder = 20
    end
    object UniLabel11: TUniLabel
      Left = 295
      Top = 194
      Width = 117
      Height = 13
      Hint = ''
      Caption = #1044#1088#1091#1075#1080#1077' '#1089#1087#1086#1089#1086#1073#1099' '#1089#1074#1103#1079#1080':'
      TabOrder = 21
    end
    object edtOTHERTYPELINKS: TUniDBEdit
      Left = 418
      Top = 190
      Width = 205
      Height = 22
      Hint = ''
      DataField = 'OTHERTYPELINKS'
      DataSource = UniMainModule.dsContacts
      TabOrder = 22
    end
    object UniLabel12: TUniLabel
      Left = 7
      Top = 222
      Width = 100
      Height = 13
      Hint = ''
      Caption = #1040#1076#1088#1077#1089' '#1087#1088#1086#1078#1080#1074#1072#1085#1080#1103':'
      TabOrder = 23
    end
    object edtADDRESS: TUniDBEdit
      Left = 112
      Top = 218
      Width = 511
      Height = 22
      Hint = ''
      DataField = 'ADDRESS'
      DataSource = UniMainModule.dsContacts
      TabOrder = 24
    end
    object UniLabel13: TUniLabel
      Left = 7
      Top = 250
      Width = 94
      Height = 13
      Hint = ''
      Caption = #1044#1072#1085#1085#1099#1077' '#1087#1072#1089#1087#1086#1088#1090#1072':'
      TabOrder = 25
    end
    object edtPASSPORT: TUniDBEdit
      Left = 112
      Top = 246
      Width = 511
      Height = 22
      Hint = ''
      DataField = 'PASSPORT'
      DataSource = UniMainModule.dsContacts
      TabOrder = 26
    end
    object UniLabel14: TUniLabel
      Left = 7
      Top = 275
      Width = 94
      Height = 13
      Hint = ''
      Caption = #1044#1072#1085#1085#1099#1077' '#1087#1072#1089#1087#1086#1088#1090#1072':'
      TabOrder = 27
    end
  end
  object pnlButton: TUniPanel
    Left = 0
    Top = 438
    Width = 632
    Height = 44
    Hint = ''
    BorderStyle = ubsNone
    Caption = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    ExplicitWidth = 593
    DesignSize = (
      632
      44)
    object btnOK: TUniButton
      Left = 381
      Top = 7
      Width = 120
      Height = 30
      Hint = ''
      Caption = 'OK'
      ModalResult = 1
      Anchors = [akTop, akRight]
      TabOrder = 1
      ExplicitLeft = 343
    end
    object btnCancel: TUniButton
      Left = 504
      Top = 7
      Width = 120
      Height = 30
      Hint = ''
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 466
    end
  end
end
