unit Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniPanel, uniLabel,
  uniEdit, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDateTimePicker, uniDBDateTimePicker, uniCheckBox, uniDBCheckBox, uniMemo,
  uniDBMemo;

type
  TEditorForm = class(TUniForm)
    pnlMain: TUniPanel;
    pnlButton: TUniPanel;
    btnOK: TUniButton;
    btnCancel: TUniButton;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    edtFIO: TUniDBEdit;
    cbbSEX: TUniDBComboBox;
    edtREGION: TUniDBEdit;
    edtCITY: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel7: TUniLabel;
    edtCELURARPHONE: TUniDBEdit;
    UniLabel8: TUniLabel;
    edtHOMEPHONE: TUniDBEdit;
    UniLabel9: TUniLabel;
    mmoMEMBERPROJECTS: TUniDBMemo;
    chkISSUPERVIZER: TUniDBCheckBox;
    UniLabel10: TUniLabel;
    edtEMAIL: TUniDBEdit;
    UniLabel11: TUniLabel;
    edtOTHERTYPELINKS: TUniDBEdit;
    UniLabel12: TUniLabel;
    edtADDRESS: TUniDBEdit;
    UniLabel13: TUniLabel;
    edtPASSPORT: TUniDBEdit;
    UniLabel14: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function EditorForm: TEditorForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function EditorForm: TEditorForm;
begin
  Result := TEditorForm(UniMainModule.GetFormInstance(TEditorForm));
end;

end.
