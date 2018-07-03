unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, Winapi.ShellAPI, Winapi.Windows;

type
  TUniServerModule = class(TUniGUIServerModule)
    procedure UniGUIServerModuleCreate(Sender: TObject);
    procedure ExploreWeb(page:PChar);
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function UniServerModule: TUniServerModule;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function UniServerModule: TUniServerModule;
begin
  Result:=TUniServerModule(UniGUIServerInstance);
end;

procedure TUniServerModule.ExploreWeb(page: PChar);
var
Returnvalue: integer;
begin
ReturnValue := ShellExecute(0, 'open', page, nil, nil,SW_SHOWNORMAL);
  if ReturnValue <= 32 then
     begin
     case Returnvalue of
          0 : MessageBox(0,'Error: Out of memory','Error',0);
          ERROR_FILE_NOT_FOUND: MessageBox(0,'Error: File not found','Error',0);
          ERROR_PATH_NOT_FOUND: MessageBox(0,'Error: Directory not found','Error',0);
          ERROR_BAD_FORMAT    : MessageBox(0,'Error: Wrong format in EXE','Error',0);
     else
          MessageBox(0,PChar('Error Nr: '+IntToStr(Returnvalue)+' inShellExecute'),'Error',0)
     end;
  end;
end;

procedure TUniServerModule.FirstInit;
begin
  InitServerModule(Self);
end;

procedure TUniServerModule.UniGUIServerModuleCreate(Sender: TObject);
begin
ExploreWeb('http://localhost:8077')
end;

initialization
  RegisterServerModuleClass(TUniServerModule);
end.
