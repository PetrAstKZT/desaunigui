unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, DBAccess, Uni, UniProvider,
  SQLServerUniProvider, MemDS;

type
  TDM = class(TUniGUIMainModule)
    koneksi: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    procedure UniGUIMainModuleCreate(Sender: TObject);
    procedure UniGUIMainModuleDestroy(Sender: TObject);
    function CekUser(aUserName, aPassword: string): boolean;
    function CekTahun (aTahun : SmallInt) : Boolean ;
    function EncryptText( pass :Boolean; chipertext : String): String;
    procedure UniGUIMainModuleBeforeLogin(Sender: TObject;
      var Handled: Boolean);
    procedure ExtAlerta(Titulo, Mensagem: string);
  private
    ftahun: SmallInt;
    procedure settahun(const Value: SmallInt);
    { Private declarations }
  public
  LoggedUser : string;
  property vtahun : SmallInt read ftahun write settahun ;
  end;

function DM: TDM;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function DM: TDM;
begin
  Result := TDM(UniApplication.UniMainModule)
end;

function TDM.CekTahun(aTahun: SmallInt): Boolean;
var
qry_tahun : TUniQuery ;
begin
qry_tahun := TUniQuery.Create(Self);
try
  qry_tahun.Connection := koneksi ;
  qry_tahun.Active := False ;
  qry_tahun.SQL.Text := 'select * from ta_pemda where tahun =:vtahun ';

    qry_tahun.Params.ParamByName('vtahun').AsSmallInt := aTahun;
    qry_tahun.Open ;
    if qry_tahun.RecordCount = 1 then
    begin
      Result := True ;
    end
    else
    begin
      Result := False ;

    end;
finally
  FreeAndNil(qry_tahun);
end;

end;

function TDM.CekUser(aUserName, aPassword: string): boolean;
var
Auser , Apass : string ;
qry_user : TUniQuery ;
begin
Auser := EncryptText(False, aUserName);
Apass := EncryptText(True, aPassword);

qry_user := TUniQuery.Create(Self);
try
  qry_user.Connection := koneksi ;
  qry_user.Active := False ;

  qry_user.SQL.Text := 'select * from ta_userid where userid =:vuser and password =:vpass';

    qry_user.Params.ParamByName('vuser').AsString := Auser ;
    qry_user.Params.ParamByName('vpass').AsString := Apass ;
    qry_user.Open ;
    if qry_user.RecordCount = 1 then
    begin
      Result := True ;
    //  vpengguna := aUserName ;
    //  vpassword := aPassword ;
    end
    else
    begin
      Result := False ;
    end;
finally
 FreeAndNil(qry_user);
end;

end;

function TDM.EncryptText(pass: Boolean; chipertext: String): String;
var
 plaintext: AnsiString;
  length_chipertext, length_passphrase, i, j: Integer;
  decrypt_char: AnsiChar;
  passphrase : AnsiString ;
  chippertext_ansi : AnsiString ;
begin
chippertext_ansi := Ansistring(chipertext);
 length_chipertext := Length(TrimLeft(TrimRight(string(chippertext_ansi))));

 if pass = False then
 begin
  passphrase := 'simda21gres' ;
 end
 else
 begin
 passphrase := 'bpkp_simda' ;
 end;
 length_passphrase := Length(TrimLeft(TrimRight(string(passphrase))));

 // plaintext := '';
  i := 1 ;

  while i <= length_chipertext do
  begin
    if i <= length_passphrase then
      j := i
    else
    begin
      if (i mod length_passphrase) = 0 then
        j := length_passphrase
      else
        j := (i mod length_passphrase);
    end;
  //  decrypt_char := Char((Ord(chipertext[i])) - (Ord(passphrase[j])));
    decrypt_char := AnsiChar((Ord(chippertext_ansi[i])) + (Ord(passphrase[j])));
    plaintext := plaintext + AnsiString(decrypt_char);
    Inc(i);
  end;
  Result := string(plaintext) ;
end;

procedure TDM.ExtAlerta(Titulo, Mensagem: string);
begin
 UniSession.AddJS('Ext.example.msg('+
                   quotedstr(Titulo) + ',' +
                   quotedstr(Mensagem)+');');
end;

procedure TDM.settahun(const Value: SmallInt);
begin
  ftahun := Value;
end;

procedure TDM.UniGUIMainModuleBeforeLogin(Sender: TObject;
  var Handled: Boolean);
var
  S1, S2 : string;
begin
  S1 := (Sender as TUniGUISession).UniApplication.Cookies.Values['_loginname'];
  S2 := (Sender as TUniGUISession).UniApplication.Cookies.Values['_pwd'];

  Handled := SameText(S1, 'demo') and SameText(S2, 'demo');

  if Handled then
    LoggedUser := S1;

end;

procedure TDM.UniGUIMainModuleCreate(Sender: TObject);
begin
koneksi.Connected := True ;
end;

procedure TDM.UniGUIMainModuleDestroy(Sender: TObject);
begin
koneksi.Connected := False ;
end;

initialization
  RegisterMainModuleClass(TDM);
end.
