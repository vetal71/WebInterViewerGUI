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
    procedure ConfirmDeleteCallBack(Sender: TComponent; AResult:Integer);
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, System.IniFiles,
  Editor, DataSetExports, VCL.FlexCel.Core, FlexCel.XlsAdapter;

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
  // ��� ������� ����� �� ������ - ��������� �������
  if not (Sender is TUniSpeedButton) then Exit;
  aIndex := TUniSpeedButton(Sender).Tag;
  sSQLFilterDef := GetSQLFilter(aIndex);

  sSQLFilterNew := InputBox('������', '������� ����� �������� �������', sSQLFilterDef);
  with TIniFile.Create( UniServerModule.StartPath + 'config.ini' ) do
  begin
    WriteString('FILTER', 'Filter' + IntToStr(aIndex), sSQLFilterNew);
  end;
end;

procedure TMainForm.ConfirmDeleteCallBack(Sender: TComponent; AResult: Integer);
begin
  if AResult = mrYes then begin
    try
      UniMainModule.dbConn.StartTransaction;
      UniMainModule.qryContacts.Delete;
      UniMainModule.dbConn.Commit;
      UniMainModule.qryContacts.Refresh;
    except
      UniMainModule.dbConn.Rollback;
    end;
  end;
end;

function TMainForm.GetSQLFilter(aIndex: Integer): string;
var sSQLFilterDef: string;
begin
  case aIndex of
    2: sSQLFilterDef := '������ ����������';                // ������ ����������
    3: sSQLFilterDef := '��������� ����-������';            // call-�����
    4: sSQLFilterDef := '�����-������';                     // �����-������
    5: sSQLFilterDef := '������� �����';                    // ������� �����
    6: sSQLFilterDef := '������������ �����';               // ������������ �����
    7: sSQLFilterDef := '������';                           // ������
    8: sSQLFilterDef := '�������';                          // �������
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
  // �������� ������
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
const cDeleteConfirm = '������� ������� "%s" ?';
var
  iRes: Integer;
  eConfirm: string;
begin
  eConfirm := Format(cDeleteConfirm, [ UniMainModule.qryContacts.FieldByName('FIO').AsString ]);
  MessageDlg(eConfirm, mtConfirmation, mbYesNo, ConfirmDeleteCallBack);
end;

procedure TMainForm.btnDogovorClick(Sender: TObject);
var
  ePath, eFileName: string;
begin
  // �������� ��������
  ePath     := UniServerModule.StartPath;
  eFileName := '�������.doc';
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
  XLSX : TExcelFile;
  Mem : TMemoryStream;
  OldDataSource: TDataSource;
  ePath, eFileName: string;
begin
  ePath     := UniServerModule.StartPath;
  eFileName := '��������.xls';
  OldDataSource := dbgContacts.DataSource;                                      // �������� �������� ��� ����������� ��������������
  dbgContacts.DataSource := Nil;                                                //<- Stop DBGrid from updating

  XLSX := TXLSFile.Create;
  try
    DataSetToXLS( XLSX, UniMainModule.qryContacts );                            //<- Your dataset goes here. I use SQLDirect

    Mem := TMemoryStream.Create;
    XLSX.Save( Mem, TFileFormats( 0 ) );
    Mem.Position := 0;
    UniSession.SendStream( Mem, ePath + eFileName );                            //<- Push to browser
  except
    Mem.Free;
    XLSX.Free;
  end;

  dbgContacts.DataSource := OldDataSource;
end;

procedure TMainForm.ButtonFilterClick(Sender: TObject);
var
  SQLFilter : string;
begin
  if not (Sender is TUniSpeedButton) then Exit;
  // ���� ������ ������ - ���������� ������ � ������� �� ���������
  if not TUniSpeedButton(Sender).Down then begin
    ApplyFilter('(1 = 1)');
    Exit;
  end;
  case TUniSpeedButton(Sender).Tag of
    1: SQLFilter := 'ISSUPERVIZER=1';                                           // ������ �� �������������
    2..8: SQLFilter := 'SPECIALIZATION CONTAINING ''' + GetSQLFilter(TUniSpeedButton(Sender).Tag) + '''';
  end;
  ApplyFilter(SQLFilter);
end;

procedure TMainForm.tmrMainTimer(Sender: TObject);
begin
  // ����� ���� � ������� � �����������
  sbMain.Panels[ 0 ].Text := FormatDateTime('dd mmmm yyyy �. hh:mm:ss', Now);
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
    sbMain.Panels[ 1 ].Text := '���������� � �� �������';
  except
    sbMain.Panels[ 1 ].Text := '��� ���������� � ����� ������...';
    Exit;
  end;

  UniMainModule.qryContacts.MacroByName('cond').AsRaw := '(1 = 1)';
  UniMainModule.qryContacts.Active := True;
  // ���������� ������� �����
  UniSession.AddJS(dbgContacts.JSName  + '.headerCt.forceFit=true;');

end;

initialization
  RegisterAppFormClass(TMainForm);

end.
