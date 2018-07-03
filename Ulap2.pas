unit Ulap2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame, unimURLFrame;

type
  TUniForm2 = class(TUniForm)
    UnimURLFrame1: TUnimURLFrame;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniForm2: TUniForm2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function UniForm2: TUniForm2;
begin
  Result := TUniForm2(DM.GetFormInstance(TUniForm2));
end;

end.
