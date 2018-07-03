program DesaUnigui;

uses
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {DM: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  UFrmLraGab1 in 'UFrmLraGab1.pas' {FrmLraGab1: TUniForm},
  UfrDMlragab1 in 'UfrDMlragab1.pas' {frdmlragab1: TDataModule},
  Ulap in 'Ulap.pas' {frmlap: TUniForm},
  ULogin2 in 'ULogin2.pas' {frmLogin2: TUniForm},
  Ulap2 in 'Ulap2.pas' {UniForm2: TUniForm};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
