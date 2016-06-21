unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, UniGuiDialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniStatusBar, uniGUIBaseClasses,
  uniPanel, uniButton, uniBitBtn, uniSpeedButton, uniBasicGrid, uniDBGrid,
  uniTimer, uniEdit, uniDBEdit, uniLabel, uniMemo, uniDBMemo, Data.DB;

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
    btnDogovor: TUniSpeedButton;
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
    btnPrint: TUniSpeedButton;
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
    procedure btnDogovorClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    FBookmark: TBookmark;
    FEditMode: TDBMode;

    procedure ShowEditForm;
    procedure ApplyFilter(AFilterSQL: string);
    function GetSQLFilter(aIndex: Integer): string;
  public
    procedure ShowCallBack(Sender: TComponent; AResult:Integer);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, System.IniFiles,
  Editor, Excel2010;

function ExportToExcel(oDataSet : TDataSet; sFile : String): Boolean;
var
  iCol,iRow : Integer;
  oExcel : TExcelApplication;
  oWorkbook : TExcelWorkbook;
  oSheet : TExcelWorksheet;
begin
  iCol := 0;
  iRow := 0;
  result := True;

  oExcel := TExcelApplication.Create(Application);
  oWorkbook := TExcelWorkbook.Create(Application);
  oSheet := TExcelWorksheet.Create(Application);

  try
    oExcel.Visible[0] := False;
    oExcel.Connect;
  except
    result := False;
    MessageDlg('Excel не установлен.', mtWarning, [mbOk],
      procedure(AComponent: TComponent; AResult: Integer)
      begin
        //
      end
    );
    exit;
  end;

  oExcel.Visible[0] := True;
  oExcel.Caption := 'Export Engine';
  oExcel.Workbooks.Add(Null,0);

  oWorkbook.ConnectTo(oExcel.Workbooks[1]);
  oSheet.ConnectTo(oWorkbook.Worksheets[1] as _Worksheet);

  oDataSet.DisableControls;
  oDataSet.First;
  while not oDataSet.Eof do begin
    Inc(iRow);
    for iCol:=1 to oDataSet.FieldCount do begin
      oSheet.Cells.Item[iRow,iCol] := oDataSet.Fields[iCol-1].AsString;
    end;
    oDataSet.Next;
  end;
  oDataSet.First;
  oDataSet.EnableControls;

  //Change the worksheet name.
  oSheet.Name := 'Контакты';

(*

  //Change the font properties of all columns.
  oSheet.Columns.Font.Color := clPurple;
  oSheet.Columns.Font.FontStyle := fsBold;
  oSheet.Columns.Font.Size := 10;

  //Change the font properties of a row.
  oSheet.Range['A1','A1'].EntireRow.Font.Color := clNavy;
  oSheet.Range['A1','A1'].EntireRow.Font.Size := 16;
  oSheet.Range['A1','A1'].EntireRow.Font.FontStyle := fsBold;
  oSheet.Range['A1','A1'].EntireRow.Font.Name := 'Arabic Transparent';

  //Change the font properties of a row.
  oSheet.Range['A2','A2'].EntireRow.Font.Color := clBlue;
  oSheet.Range['A2','A2'].EntireRow.Font.Size := 12;
  oSheet.Range['A2','A2'].EntireRow.Font.FontStyle := fsBold;
  oSheet.Range['A2','A2'].EntireRow.Font.Name := 'Arabic Transparent';
  oSheet.Range['A2','H2'].HorizontalAlignment := xlHAlignCenter;
  {
  //Change the font properties of a column.
  oSheet.Range['A1','C1'].EntireColumn.Font.Color := clBlue;

  //Change Cells color of a row.
  oSheet.Range['A1', 'A1'].EntireRow.Interior.Color := clNavy;

  //Change Cells color of a column.
  oSheet.Range['C1', 'C1'].EntireColumn.Interior.Color := clYellow;

  //Align a column.
  oSheet.Range['A1','A1'].HorizontalAlignment := xlHAlignLeft;

  //Set a column with manually.
  // oSheet.Columns.Range['A1','A1'].ColumnWidth := 16;
  }
*)
  //Auto fit all columns.
  oSheet.Columns.AutoFit;

  DeleteFile(sFile);

  Sleep(2000);

  oSheet.SaveAs(sFile);
  oSheet.Disconnect;
  oSheet.Free;

  oWorkbook.Disconnect;
  oWorkbook.Free;

  oExcel.Quit;
  oExcel.Disconnect;
  oExcel.Free;
end;

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

procedure TMainForm.ShowCallBack(Sender: TComponent; AResult: Integer);
begin
  if (AResult = 1) then begin
    UniMainModule.qryContacts.FieldByName('SPECIALIZATION').AsString := EditorForm.Specialization;
    UniMainModule.qryContacts.Post;
    UniMainModule.dbConn.Commit;
    if FEditMode = dbmEdit then
      UniMainModule.qryContacts.GotoBookmark(FBookmark);
    if FEditMode = dbmAppend then
      UniMainModule.qryContacts.Refresh;
  end else begin
    UniMainModule.qryContacts.Cancel;
    UniMainModule.dbConn.Rollback;
    UniMainModule.qryContacts.GotoBookmark(FBookmark);
  end;
end;

procedure TMainForm.ShowEditForm;
begin
  // Изменить запись
  FBookmark := UniMainModule.qryContacts.GetBookmark;

  UniMainModule.dbConn.StartTransaction;
  if FEditMode = dbmAppend then begin
    UniMainModule.qryContacts.Insert;
  end;
  if FEditMode = dbmEdit then begin
    UniMainModule.qryContacts.Edit;
    EditorForm.Specialization := UniMainModule.qryContacts.FieldByName('SPECIALIZATION').AsString;
  end;

  EditorForm.ShowModal( ShowCallBack );
end;

procedure TMainForm.btnDeleteClick(Sender: TObject);
var
  iRes: Integer;
begin
  MessageDlg('', mtConfirmation, mbYesNo,

  );
end;

procedure TMainForm.btnDogovorClick(Sender: TObject);
var
  ePath, eFileName: string;
begin
  // загрузка договора
  ePath     := UniServerModule.StartPath;
  eFileName := 'договор.doc';
  if FileExists( ePath + eFileName ) then
    UniSession.SendFile( ePath + eFileName );
end;

procedure TMainForm.btnEditClick(Sender: TObject);
begin
  FEditMode := dbmEdit;
  ShowEditForm;
end;

procedure TMainForm.btnNewClick(Sender: TObject);
begin
  FEditMode := dbmAppend;
  ShowEditForm;
end;

procedure TMainForm.btnPrintClick(Sender: TObject);
var
  ePath, eFileName: string;
begin
  // загрузка договора
  ePath     := UniServerModule.StartPath;
  eFileName := 'Контакты.xls';
  ExportToExcel(dbgContacts.DataSource.DataSet, ePath + eFileName);
  UniSession.SendFile( ePath + eFileName );
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
