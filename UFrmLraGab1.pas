unit UFrmLraGab1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniLabel,
  uniDateTimePicker, uniButton, ppDB, ppDBPipe, ppParameter, ppDesignLayer,
  ppBands, ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, uniURLFrame;

type
  TFrmLraGab1 = class(TUniForm)
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniSimplePanel1: TUniSimplePanel;
    BtView: TUniButton;
    UniPanel3: TUniPanel;
    UniPanelJudul: TUniPanel;
    UniPanel4: TUniPanel;
    Btback: TUniButton;
    UniPanel5: TUniPanel;
    ljudul: TUniLabel;
    UniPanel6: TUniPanel;
    procedure UniFormAfterShow(Sender: TObject);
    procedure BtbackClick(Sender: TObject);
    procedure BtViewClick(Sender: TObject);
  private
    fjudul: string;
    procedure setjudul(const Value: string);
    { Private declarations }
  public
  property judul : string read fjudul write setjudul ;
  end;

function FrmLraGab1: TFrmLraGab1;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UfrDMlragab1, Ulap;

function FrmLraGab1: TFrmLraGab1;
begin
  Result := TFrmLraGab1(DM.GetFormInstance(TFrmLraGab1));
end;

{ TFrmLraGab1 }

procedure TFrmLraGab1.BtbackClick(Sender: TObject);
begin
Close ;
end;

procedure TFrmLraGab1.BtViewClick(Sender: TObject);
begin
frmlap.Parent := UniPanel6 ;
frmlap.Show;
end;

procedure TFrmLraGab1.setjudul(const Value: string);
begin
  fjudul := Value;
end;

procedure TFrmLraGab1.UniFormAfterShow(Sender: TObject);
begin
ljudul.Font.Size := 14 ;
ljudul.Caption := judul ;
end;

end.
