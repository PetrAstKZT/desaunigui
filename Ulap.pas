unit Ulap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniURLFrame;

type
  Tfrmlap = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    procedure UniFormBeforeShow(Sender: TObject);
  private
    FID: string;
    FRepName: string;
    procedure setID(const Value: string);
    procedure SetRepName(const Value: string);
    { Private declarations }
  public
    property ID : string read FID write setID;
    property RepName : string read FRepName write SetRepName;
  end;

function frmlap: Tfrmlap;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UfrDMlragab1;

function frmlap: Tfrmlap;
begin
  Result := Tfrmlap(DM.GetFormInstance(Tfrmlap));
end;

procedure Tfrmlap.setID(const Value: string);
begin
  FID := Value;
end;

procedure Tfrmlap.SetRepName(const Value: string);
begin
  FRepName := Value;
end;

procedure Tfrmlap.UniFormBeforeShow(Sender: TObject);
var
  dm : Tfrdmlragab1;
  PdfUrl : string;
begin
  dm := Tfrdmlragab1.Create(nil);
  try
    PdfUrl := dm.GenReportPDF();
  finally
    dm.Free;
  end;

  UniURLFrame1.URL := PdfUrl;
end;

end.
