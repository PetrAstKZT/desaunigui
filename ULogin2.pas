unit ULogin2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGUIBaseClasses, uniPanel, uniLabel, uniEdit,
  uniMultiItem, uniComboBox, uniButton, Data.DB, MemDS, DBAccess, Uni;

type
  TfrmLogin2 = class(TUniForm)
    UniPanel1: TUniPanel;
    BtLogin: TUniButton;
    cbtahun: TUniComboBox;
    edpassword: TUniEdit;
    edusername: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniQuery1: TUniQuery;
    Btkeluar: TUniButton;
    procedure cbtahunDropDown(Sender: TObject);
    procedure BtLoginClick(Sender: TObject);
    procedure BtkeluarClick(Sender: TObject);
  private
    ftahun: SmallInt;
    procedure settahun(const Value: SmallInt);
    { Private declarations }
  public
    property vtahun : SmallInt read ftahun write settahun ;
  end;

function frmLogin2: TfrmLogin2;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main;

function frmLogin2: TfrmLogin2;
begin
  Result := TfrmLogin2(DM.GetFormInstance(TfrmLogin2));
end;

procedure TfrmLogin2.BtkeluarClick(Sender: TObject);
begin
UniApplication.Terminate('Anda keluar');
end;

procedure TfrmLogin2.BtLoginClick(Sender: TObject);
var
vpass, vuser : string ;
loginok, tahunok : Boolean ;
begin
  vtahun := StrToInt(cbtahun.Items[cbtahun.ItemIndex]) ;
  vpass := DM.EncryptText(True, edpassword.Text);
  vuser := DM.EncryptText(False, edusername.Text) ;

  DM.vtahun := cbtahun.Items[cbtahun.ItemIndex].ToInteger;
  //pesan alert
 loginok := DM.CekUser(edusername.Text, edpassword.Text) ;

 DM.LoggedUser := edusername.Text;

 if loginok then
 begin
  // SesiPengguna.pesan('Selamat Datang :' + edusername.Text );
  tahunok :=  DM.CekTahun(vtahun) ;
  if tahunok then
  begin
  DM.ExtAlerta('Sistem Desa', 'Selamat Datang : '+ edusername.Text);
  MainForm.Checkstate ;

    ModalResult := mrOk ;
  end
  else
  begin
   DM.ExtAlerta('Sistem Desa', 'Tahun ' + IntToStr(vtahun) + ' tidak di temukan');

  end;
 end
 else
 begin
  DM.ExtAlerta('Sistem Desa', 'Gagal Login');

 end;
end;

procedure TfrmLogin2.cbtahunDropDown(Sender: TObject);
var
vsql : TUniQuery ;
begin
 vsql := TUniQuery.Create(Self);
 try
 vsql.Connection := DM.koneksi ;

   vsql.SQL.Text := 'Select tahun from ta_pemda order by tahun asc';
   vsql.Active := True ;

   cbtahun.Items.Clear ;
   while not vsql.Eof do
   begin
    cbtahun.Items.Add(vsql.Fields.FieldByName('tahun').AsString);
    vsql.Next ;
   end;
 finally
   FreeAndNil(vsql);
 end;
end;

procedure TfrmLogin2.settahun(const Value: SmallInt);
begin
  ftahun := Value;
end;

end.
