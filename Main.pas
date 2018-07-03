unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, Vcl.Menus, uniMainMenu,
  uniGUIBaseClasses, uniPanel, ppParameter, ppDesignLayer, ppBands, ppCtrls,
  ppClass, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, System.Actions, Vcl.ActnList, uniButton;

type
  TMainForm = class(TUniForm)
    UniMainMenu1: TUniMainMenu;
    Parameter1: TUniMenuItem;
    Laporan1: TUniMenuItem;
    LaporanRealisasiAnggaranGabungan11: TUniMenuItem;
    File1: TUniMenuItem;
    LRAGab11: TUniMenuItem;
    UniPanel2: TUniPanel;
    Logout1: TUniMenuItem;
    Btlogout: TUniButton;
    procedure LRAGab11Click(Sender: TObject);
    procedure BtlogoutClick(Sender: TObject);
    procedure UniFormAfterShow(Sender: TObject);
    procedure Checkstate ;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, UFrmLraGab1, ULogin2;

function MainForm: TMainForm;
begin
  Result := TMainForm(DM.GetFormInstance(TMainForm));
end;

procedure TMainForm.BtlogoutClick(Sender: TObject);
begin
if Btlogout.Caption = 'Login' then
begin
   frmLogin2.ShowModal();
end
else
 UniApplication.Terminate('Anda Telah Logout');

end;

procedure TMainForm.Checkstate;
begin
if DM.LoggedUser = '' then
begin
  Btlogout.Caption := 'Login';
end
else
Btlogout.Caption := 'Logout : '+ DM.LoggedUser;
end;

procedure TMainForm.LRAGab11Click(Sender: TObject);
begin
if DM.LoggedUser = '' then
begin
   DM.ExtAlerta('Aplikasi Desa','Login terlebih dahulu');
end
else
begin
  FrmLraGab1.Show;
  FrmLraGab1.judul := 'laporan Gabungan';
end;

end;

procedure TMainForm.UniFormAfterShow(Sender: TObject);
begin
Checkstate ;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
