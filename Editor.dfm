object EditorForm: TEditorForm
  Left = 0
  Top = 0
  ClientHeight = 482
  ClientWidth = 593
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088
  BorderStyle = bsDialog
  Position = poMainFormCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TUniPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 438
    Hint = ''
    BorderStyle = ubsNone
    Caption = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitLeft = 256
    ExplicitTop = 168
    ExplicitWidth = 256
    ExplicitHeight = 128
  end
  object pnlButton: TUniPanel
    Left = 0
    Top = 438
    Width = 593
    Height = 44
    Hint = ''
    BorderStyle = ubsNone
    Caption = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    ExplicitTop = 437
    object btnOK: TUniButton
      Left = 343
      Top = 7
      Width = 120
      Height = 30
      Hint = ''
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
    end
    object btnCancel: TUniButton
      Left = 466
      Top = 7
      Width = 120
      Height = 30
      Hint = ''
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 2
    end
  end
end
