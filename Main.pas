unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniStatusBar, uniGUIBaseClasses,
  uniPanel, uniButton, uniBitBtn, uniSpeedButton, uniBasicGrid, uniDBGrid,
  uniTimer;

type
  TMainForm = class(TUniForm)
    UniPanel1: TUniPanel;
    pnlGrid: TUniPanel;
    sbMain: TUniStatusBar;
    pnlAddInfo: TUniPanel;
    btnNew: TUniSpeedButton;
    dbgContacts: TUniDBGrid;
    btnEdit: TUniSpeedButton;
    btnDelete: TUniSpeedButton;
    btnSuperVizer: TUniSpeedButton;
    tmrMain: TUniTimer;
    procedure tmrMainTimer(Sender: TObject);
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

procedure TMainForm.tmrMainTimer(Sender: TObject);
begin
  // ����� ���� � ������� � �����������
  sbMain.Panels[ 0 ].Text := FormatDateTime('dd mmmm yyyy �. hh:mm:ss', Now);
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
