unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniStatusBar, uniGUIBaseClasses,
  uniPanel, uniButton, uniBitBtn, uniSpeedButton, uniBasicGrid, uniDBGrid,
  uniTimer, uniEdit, uniDBEdit, uniLabel, uniMemo, uniDBMemo;

type
  TMainForm = class(TUniForm)
    pnlFilters: TUniPanel;
    pnlGrid: TUniPanel;
    sbMain: TUniStatusBar;
    pnlAddInfo: TUniPanel;
    btnNew: TUniSpeedButton;
    dbgContacts: TUniDBGrid;
    btnEdit: TUniSpeedButton;
    btnDelete: TUniSpeedButton;
    btnSuperVizer: TUniSpeedButton;
    tmrMain: TUniTimer;
    btn1: TUniSpeedButton;
    btn2: TUniSpeedButton;
    btn3: TUniSpeedButton;
    btn4: TUniSpeedButton;
    btn5: TUniSpeedButton;
    btn6: TUniSpeedButton;
    btn7: TUniSpeedButton;
    btn8: TUniSpeedButton;
    lbl1: TUniLabel;
    edtEMail: TUniDBEdit;
    lbl2: TUniLabel;
    edtOtherTypeLinks: TUniDBEdit;
    lbl3: TUniLabel;
    edtADDRESS: TUniDBEdit;
    lbl4: TUniLabel;
    edtPASSPORT: TUniDBEdit;
    lbl5: TUniLabel;
    edtSPECIALIZATION: TUniDBEdit;
    lbl6: TUniLabel;
    edtTRANSFERTYPE: TUniDBEdit;
    lbl7: TUniLabel;
    edtNUMBERCARD: TUniDBEdit;
    lbl8: TUniLabel;
    mmoGENERALCHARACTERISTIC: TUniDBMemo;
    lbl9: TUniLabel;
    mmoCURRENTNOTES: TUniDBMemo;
    hpnlFilterComponents: TUniHiddenPanel;
    edtFIO: TUniEdit;
    edtREGION: TUniEdit;
    procedure tmrMainTimer(Sender: TObject);
    procedure dbgContactsClearFilters(Sender: TObject);
    procedure dbgContactsColumnFilter(Sender: TUniDBGrid;
      const Column: TUniDBGridColumn; const Value: Variant);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.dbgContactsClearFilters(Sender: TObject);
var
  I : Integer;
begin
  if UniMainModule.qryContacts.Active then
  begin
    for I := 0 to UniMainModule.qryContacts.ParamCount - 1 do
      UniMainModule.qryContacts.Params[ I ].Value:='%%';

    UniMainModule.qryContacts.Refresh;
  end;
end;

procedure TMainForm.dbgContactsColumnFilter(Sender: TUniDBGrid;
  const Column: TUniDBGridColumn; const Value: Variant);
begin
  if UniMainModule.qryContacts.Active then
  begin
    UniMainModule.qryContacts.ParamByName(Column.FieldName).Value := '%'+Value+'%';
    UniMainModule.qryContacts.Refresh;
  end;
end;

procedure TMainForm.tmrMainTimer(Sender: TObject);
begin
  // вывод даты и времени в статустроке
  sbMain.Panels[ 0 ].Text := FormatDateTime('dd mmmm yyyy г. hh:mm:ss', Now);
end;

procedure TMainForm.UniFormShow(Sender: TObject);
begin
  if UniMainModule.dbConn.Connected then
    sbMain.Panels[ 1 ].Text := UniMainModule.dbConn.Params.Database
  else
    sbMain.Panels[ 1 ].Text := 'нет соединения...';
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
