unit Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniPanel, uniLabel,
  uniEdit, uniDBEdit, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDateTimePicker, uniDBDateTimePicker, uniCheckBox, uniDBCheckBox, uniMemo,
  uniDBMemo, uniGroupBox;

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
    gbSpec: TUniGroupBox;
    chkOutSource: TUniCheckBox;
    chk1: TUniCheckBox;
    chk2: TUniCheckBox;
    chk3: TUniCheckBox;
    chk4: TUniCheckBox;
    chk5: TUniCheckBox;
    chk6: TUniCheckBox;
    lbl1: TUniLabel;
    edtTRANSFERTYPE: TUniDBEdit;
    lbl2: TUniLabel;
    edtNUMBERCARD: TUniDBEdit;
    lbl3: TUniLabel;
    mmoGENERALCHARACTERISTIC: TUniDBMemo;
    lbl4: TUniLabel;
    mmoCURRENTNOTES: TUniDBMemo;
    lbl5: TUniLabel;
    edtCOUNTANKETA: TUniDBNumberEdit;
    lbl6: TUniLabel;
    edtPERCENTGOOD: TUniDBNumberEdit;
    lbl7: TUniLabel;
    edtPERCENTBAD: TUniDBNumberEdit;
  private
    FSpecialization: string;
  private
    procedure FillCheckBox(ADelimetedString: string);

    procedure SetSpecialization(AValue: string);
    function GetSpecialization: string;
  public
    property Specialization: string read GetSpecialization write SetSpecialization;
  end;

function EditorForm: TEditorForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule;

function EditorForm: TEditorForm;
begin
  Result := TEditorForm(UniMainModule.GetFormInstance(TEditorForm));
end;

procedure SplitText(const aSource : string; aTarget : TStrings; aDelimiter : Char = ',');
var pS, pT : PChar;
    fS : string;
begin
  aTarget.Clear;
  pS := PChar(aSource);
  while pS^ <> #0 do
  begin
    pT := pS;
    while (pS^ <> #0) and (pS^ <> aDelimiter) do
      pS := CharNext(pS);
    SetString(fS, pT, pS - pT);
    aTarget.Add(fS);
    if pS^ = aDelimiter then
      pS := CharNext(pS);
  end;
end;

procedure TEditorForm.FillCheckBox(ADelimetedString: string);
var
  sl: TStringList;
  I, J: Integer;
  CheckBox: TUniCheckBox;
begin
  sl := TStringList.Create;
  try
    SplitText( ADelimetedString, sl, ';' );
    for I := 0 to sl.Count - 1 do
    begin
      for J := 0 to ComponentCount - 1 do
      begin
        if (Components[ j ] is TUniCheckBox) then begin
          CheckBox := TUniCheckBox(Components[ j ]);
          if CompareStr(CheckBox.Caption, sl[ I ]) = 0 then begin
            CheckBox.Checked := True;
            CheckBox.Tag     := 1;                                              // Признак модификации
          end else begin
           if (CheckBox.Tag = 0) then
             CheckBox.Checked := False;
          end;
        end;
      end;
    end;

  finally
    sl.Free;
  end;

end;

function TEditorForm.GetSpecialization: string;
var
  I: Integer;
  CheckBox: TUniCheckBox;
begin
  Result := '';
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[ i ] is TUniCheckBox) then begin
      CheckBox := TUniCheckBox(Components[ i ]);
      if CheckBox.Checked then begin
        if Result > '' then
          Result := Result + ';';
        Result := Result + CheckBox.Caption;
      end;
    end;
  end;
end;

procedure TEditorForm.SetSpecialization(AValue: string);
begin
  FSpecialization := AValue;
  FillCheckBox( FSpecialization );
end;

end.
