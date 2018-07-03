unit UfrDMlragab1;

interface

uses
  SysUtils, Classes, ppDB, ppDBPipe, ppParameter, ppDesignLayer, ppBands,
  ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  Data.DB, MemDS, DBAccess, Uni, frxClass, frxDBSet, frxExportPDF;

type
  Tfrdmlragab1 = class(TDataModule)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    qlapgab1: TUniQuery;
  private
  procedure OpenDS();
    procedure CloseDS;
  public
   function GenReportPDF(): string;
  end;

implementation

{$R *.dfm}
uses
MainModule, ServerModule;

{ TDataModule2 }

procedure Tfrdmlragab1.CloseDS;
begin
  qlapgab1.Close ;
end;

function Tfrdmlragab1.GenReportPDF(): string;
begin
  OpenDS();
  try
    frxReport1.PrintOptions.ShowDialog := False;
    frxReport1.ShowProgress := false;

    frxReport1.EngineOptions.SilentMode := True;
    frxReport1.EngineOptions.EnableThreadSafe := True;
    frxReport1.EngineOptions.DestroyForms := False;
    frxReport1.EngineOptions.UseGlobalDataSetList := False;

    frxReport1.LoadFromFile(UniServerModule.FilesFolderPath + 'laplragab1.fr3');

    frxPDFExport1.Background := True;
    frxPDFExport1.ShowProgress := False;
    frxPDFExport1.ShowDialog := False;
    frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', Result, True);
    frxPDFExport1.DefaultPath := '';

    frxReport1.PreviewOptions.AllowEdit := False;
    frxReport1.PrepareReport;
    frxReport1.Export(frxPDFExport1);
  finally
    CloseDS;
  end;

end;

procedure Tfrdmlragab1.OpenDS();
begin
  qlapgab1.Close;
 // qlapgab1.SQL.Clear;
 // DM.qlapgab1.SQL.Add('SELECT * FROM ((tblInv INNER JOIN tblCust ON tblCust.CustNum = tblInv.InvCustNum) INNER JOIN tblInvDetail ON tblInvDetail.InvDetailInvNum = tblInv.InvNum) WHERE InvNum=:Num;');
 // qlapgab1.Params.ParamByName('Num').Value := InvNum;
  qlapgab1.Open;
end;

end.
