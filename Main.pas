unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniStatusBar, uniGUIBaseClasses,
  uniPanel, uniButton, uniBitBtn, uniSpeedButton, uniBasicGrid, uniDBGrid,
  uniTimer, uniEdit, uniDBEdit, uniLabel, uniMemo, uniDBMemo;

type
  TDBMode = (dbmAppend, dbmEdit);

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
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonFilterClick(Sender: TObject);
    procedure ButtonFilterDblClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    procedure ShowEditForm(AMode: TDBMode);
    procedure ApplyFilter(AFilterSQL: string);
    function GetSQLFilter(aIndex: Integer): string;
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, System.IniFiles,
  Editor, Data.DB;

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

procedure TMainForm.ButtonFilterDblClick(Sender: TObject);
var sSQLFilterDef, sSQLFilterNew: string;
var aIndex: Integer;
begin
  // При двойном клике на кнопке - изменение фильтра
  if not (Sender is TUniSpeedButton) then Exit;
  aIndex := TUniSpeedButton(Sender).Tag;
  sSQLFilterDef := GetSQLFilter(aIndex);

  sSQLFilterNew := InputBox('Фильтр', 'Введите новое значение фильтра', sSQLFilterDef);
  with TIniFile.Create( UniServerModule.StartPath + 'config.ini' ) do
  begin
    WriteString('FILTER', 'Filter' + IntToStr(aIndex), sSQLFilterNew);
  end;
end;

function TMainForm.GetSQLFilter(aIndex: Integer): string;
var sSQLFilterDef: string;
begin
  case aIndex of
    2: sSQLFilterDef := 'тайный покупатель';                // тайный покупатель
    3: sSQLFilterDef := 'диспетчер колл-центра';            // call-центр
    4: sSQLFilterDef := 'фокус-группа';                     // фокус-группа
    5: sSQLFilterDef := 'уличный опрос';                    // уличный опрос
    6: sSQLFilterDef := 'поквартирный опрос';               // поквартирный опрос
    7: sSQLFilterDef := 'вбивка';                           // вбивка
    8: sSQLFilterDef := 'аутсорс';                          // аутсорс
  end;
  with TIniFile.Create( UniServerModule.StartPath + 'config.ini' ) do
  begin
    Result := ReadString('FILTER', 'Filter' + IntToStr(aIndex), sSQLFilterDef);

    Free;
  end;
end;

procedure TMainForm.ShowEditForm(AMode: TDBMode);
var
  eBookmark: TBookmark;
  eFormResult: Integer;
begin
  // Изменить запись
  eBookmark := UniMainModule.qryContacts.GetBookmark;

  UniMainModule.dbConn.StartTransaction;
  if AMode = dbmAppend then UniMainModule.qryContacts.Append;
  if AMode = dbmEdit then
  begin
    UniMainModule.qryContacts.Edit;
    EditorForm.Specialization := UniMainModule.qryContacts.FieldByName('SPECIALIZATION').AsString;
  end;

  EditorForm.ShowModal(
    procedure (Sender: TComponent; AResult:Integer)
    begin
      eFormResult := AResult;
    end
  );
  if (eFormResult = 1) then
  begin
    UniMainModule.qryContacts.FieldByName('SPECIALIZATION').AsString := EditorForm.Specialization;
    UniMainModule.qryContacts.Post;
    UniMainModule.dbConn.Commit;
    if AMode = dbmEdit then UniMainModule.qryContacts.GotoBookmark(eBookmark);
  end
  else
  begin
    UniMainModule.qryContacts.Cancel;
    UniMainModule.dbConn.Rollback;
    UniMainModule.qryContacts.GotoBookmark(eBookmark);
  end;
end;

procedure TMainForm.btnEditClick(Sender: TObject);
begin
  ShowEditForm( dbmEdit );
end;

procedure TMainForm.btnNewClick(Sender: TObject);
begin
  ShowEditForm( dbmAppend );
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
  if UniMainModule.FDataLog then
    UniMainModule.dbConn.ConnectionIntf.Tracing := False;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  try
    UniMainModule.dbConn.Connected := True;
    sbMain.Panels[ 1 ].Text := 'Соединение с БД успешно';
  except
    sbMain.Panels[ 1 ].Text := 'Нет соединения с базой данных...';
    Exit;
  end;

  UniMainModule.qryContacts.MacroByName('cond').AsRaw := '(1 = 1)';
  UniMainModule.qryContacts.Active := True;
  // авторазмер колонок грида
  UniSession.AddJS(dbgContacts.JSName  + '.headerCt.forceFit=true;');

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
