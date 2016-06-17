unit Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniPanel;

type
  TEditorForm = class(TUniForm)
    pnlMain: TUniPanel;
    pnlButton: TUniPanel;
    btnOK: TUniButton;
    btnCancel: TUniButton;
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

initialization
  RegisterAppFormClass(TEditorForm);

end.
