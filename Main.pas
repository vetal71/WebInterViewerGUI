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
    btnHidenBuyer: TUniSpeedButton;
    btnCallCenter: TUniSpeedButton;
    btnFocusGroup: TUniSpeedButton;
    btnStreet: TUniSpeedButton;
    btnFlour: TUniSpeedButton;
    btnEnterings: TUniSpeedButton;
    btnOutSource: TUniSpeedButton;
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
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonFilterClick(Sender: TObject);
  private
//    Options: TOptions;
//    IsFirstRun: Boolean;
//    procedure ReadIni;
//    procedure DBConnect;
//    procedure InitConnection(ADBType: TDBType);
//    procedure ImportData;
//    procedure OpenData;
//    procedure ShowEditForm(AMode: TDBMode);
    procedure ApplyFilter(AFilterSQL: string);
    function GetSQLFilter(aIndex: Integer): string;
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

procedure TMainForm.ApplyFilter(AFilterSQL: string);
var
  eFilter: string;
begin
  with UniMainModule do begin
    qryContacts.Close;
    qryContacts.MacroByName('cond').AsRaw := AFilterSQL;
    qryContacts.Open;
  end;
end;

function TMainForm.GetSQLFilter(aIndex: Integer): string;
begin
  //
end;

procedure TMainForm.ButtonFilterClick(Sender: TObject);
var
  SQLFilter : string;
begin
  if not (Sender is TUniSpeedButton) then Exit;
  // Если кнопка нажата - сбрасываем фильтр и выходим из процедуры
  if not TUniSpeedButton(Sender).Down then begin
    ApplyFilter('(1 = 1)');
    Exit;
  end;
  case TUniSpeedButton(Sender).Tag of
    1: SQLFilter := 'ISSUPERVIZER=1';                                           // Фильтр по супервайзерам
    2..8: SQLFilter := 'SPECIALIZATION CONTAINING ''' + GetSQLFilter(TUniSpeedButton(Sender).Tag) + '''';
  end;
  ApplyFilter(SQLFilter);
end;

procedure TMainForm.tmrMainTimer(Sender: TObject);
begin
  // вывод даты и времени в статустроке
  sbMain.Panels[ 0 ].Text := FormatDateTime('dd mmmm yyyy г. hh:mm:ss', Now);
end;

procedure TMainForm.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
  {$if datalog}
  UniMainModule.dbConn.ConnectionIntf.Tracing := False;
  UniMainModule.dbMonitor.Tracing := False;
  {$endif}
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
