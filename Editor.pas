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

implementation

uses
  uniGUIApplication;

{$R *.dfm}


end.
