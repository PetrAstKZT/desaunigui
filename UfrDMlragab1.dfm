object frdmlragab1: Tfrdmlragab1
  OldCreateOrder = False
  Height = 415
  Width = 603
  object frxReport1: TfrxReport
    Version = '5.6.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43275.827270370400000000
    ReportOptions.LastChange = 43283.867218055560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 232
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."kd_kec"'
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Filter = '<frxDBDataset1."kd_kec">'
        RowCount = 0
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1anggaran: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779529999999994000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'anggaran'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."anggaran"]')
          ParentFont = False
        end
        object frxDBDataset1Realisasi: TfrxMemoView
          Left = 510.236550000000000000
          Top = 3.779529999999994000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'Realisasi'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Realisasi"]')
          ParentFont = False
        end
        object frxDBDataset1Nama_Akun: TfrxMemoView
          Left = 109.606370000000000000
          Top = 3.779529999999994000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'Nama_Akun'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Nama_Akun"]')
        end
        object frxDBDataset1persen: TfrxMemoView
          Left = 642.520100000000000000
          Top = 3.779529999999994000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'persen'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."persen"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."kd_desa"'
        object frxDBDataset1kd_desa: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779529999999994000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'kd_desa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."kd_desa"]')
        end
        object frxDBDataset1nama_desa: TfrxMemoView
          Left = 83.149660000000000000
          Top = 3.779529999999994000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'nama_desa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."nama_desa"]')
        end
        object Memo1: TfrxMemoView
          Left = 377.953000000000000000
          Top = 3.779529999999994000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Anggaran')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 512.016080000000000000
          Top = 3.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Realisasi')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 642.520100000000000000
          Top = 4.779529999999994000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Persen')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 264.567100000000000000
          Top = 3.779529999999994000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 377.953000000000000000
          Top = 3.779529999999994000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = 'Rp#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."anggaran">,DetailData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 510.236550000000000000
          Top = 3.779529999999994000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = 'Rp#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."Realisasi">,DetailData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qlapgab1
    BCDToCurrency = False
    Left = 392
    Top = 232
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 392
    Top = 320
  end
  object qlapgab1: TUniQuery
    Connection = DM.koneksi
    SQL.Strings = (
      
        'DECLARE @tglbukti1 NVARCHAR(8), @tahun SMALLINT,@tglbukti2 NVARC' +
        'HAR(8)'
      'SET @tglbukti1 = '#39'20170101'#39
      'SET @tglbukti2 = '#39'20171231'#39
      'SET @tahun = 2017'
      ''
      
        'DECLARE @tmpP1 TABLE(tahun SMALLINT, kd_kec NVARCHAR(2), nama_ke' +
        'c NVARCHAR(100), kd_desa NVARCHAR(8), nama_desa NVARCHAR(100),'
      '  akun NVARCHAR (2),  anggaran MONEY)'
      
        'INSERT INTO @tmpP1 (tahun, kd_kec, nama_kec, kd_desa, nama_desa,' +
        ' akun,  anggaran)'
      
        'SELECT A.Tahun, E.Kd_Kec, E.Nama_Kecamatan, D.Kd_Desa, D.Nama_De' +
        'sa, Left(A.Kd_Rincian,2) AS Akun,'
      '  Sum(B.Anggaran)+Sum(B.AnggaranPAK) AS JmlAnggaran'
      
        '  FROM (Ref_Kecamatan AS E INNER JOIN (Ref_Desa AS D INNER JOIN ' +
        '(Ta_Desa AS C INNER JOIN Ta_RAB AS A ON (C.Tahun = A.Tahun)'
      
        '  AND (C.Kd_Desa = A.Kd_Desa)) ON D.Kd_Desa = C.Kd_Desa) ON E.Kd' +
        '_Kec = D.Kd_Kec) INNER JOIN Ta_RABRinci AS B'
      
        '  ON (A.Kd_Rincian = B.Kd_Rincian) AND (A.Kd_Keg = B.Kd_Keg) AND' +
        ' (A.Kd_Desa = B.Kd_Desa) AND (A.Tahun = B.Tahun)'
      
        '  WHERE ((A.Tahun=@tahun) ) GROUP BY A.Tahun, E.Kd_Kec, E.Nama_K' +
        'ecamatan, D.Kd_Desa, D.Nama_Desa, Left(A.Kd_Rincian,2)'
      ''
      
        'DECLARE @tmpP2 TABLE(tahun SMALLINT, kd_kec NVARCHAR(2), nama_ke' +
        'c NVARCHAR(100), kd_desa NVARCHAR(8), nama_desa NVARCHAR(100),'
      '  akun NVARCHAR (2),  realisasi MONEY)'
      
        'INSERT INTO @tmpP2 (tahun, kd_kec, nama_kec, kd_desa, nama_desa,' +
        ' akun, realisasi)'
      
        ' SELECT A.Tahun, E.Kd_Kec, E.Nama_Kecamatan, D.Kd_Desa, D.Nama_D' +
        'esa, Left(A.Kd_Rincian,2),'
      '   ABS(Sum(Kredit-Debet)) AS JmlRealisasi FROM'
      
        '  (Ref_Kecamatan AS E INNER JOIN (Ref_Desa AS D INNER JOIN Ta_De' +
        'sa AS C ON D.Kd_Desa = C.Kd_Desa) ON'
      
        '  E.Kd_Kec = D.Kd_Kec) INNER JOIN QrSP_Jurnal AS A ON (C.Tahun =' +
        ' A.Tahun) AND (C.Kd_Desa = A.Kd_Desa)'
      
        '  WHERE ((A.Tahun=@tahun) ) AND a.Tgl_Bukti BETWEEN @tglbukti1 A' +
        'ND @tglbukti2 AND (A.Kd_Rincian Like '#39'4%'#39
      '  OR A.Kd_Rincian Like '#39'5%'#39' OR A.Kd_Rincian Like '#39'6%'#39')'
      
        '  GROUP BY A.Tahun, E.Kd_Kec, E.Nama_Kecamatan, D.Kd_Desa, D.Nam' +
        'a_Desa, Left(A.Kd_Rincian,2)'
      ''
      
        'DECLARE @tmpP3 TABLE(tahun SMALLINT, kd_kec NVARCHAR(2), nama_ke' +
        'c NVARCHAR(100), kd_desa NVARCHAR(8), nama_desa NVARCHAR(100),'
      
        '  akun NVARCHAR (2),  anggaran MONEY, realisasi MONEY, persen DE' +
        'CIMAL(5,2))'
      
        ' INSERT INTO @tmpP3 (tahun, kd_kec, nama_kec, kd_desa, nama_desa' +
        ', akun, anggaran, realisasi, persen)'
      ''
      
        'SELECT a.tahun, a.kd_kec, a.nama_kec, a.kd_desa, a.nama_desa, a.' +
        'akun,'
      '    SUM(a.anggaran) AS Anggaran, b.realisasi,'
      '  (b.realisasi/a.anggaran*100) AS persen'
      '  FROM @tmpP1 a'
      
        '  INNER JOIN @tmpP2 b ON a.tahun = b.tahun AND a.kd_kec = b.kd_k' +
        'ec AND a.kd_desa = b.kd_desa AND a.akun = b.akun'
      
        '  GROUP BY  a.kd_desa,a.akun,  a.nama_desa, a.nama_kec, a.anggar' +
        'an, b.realisasi, a.tahun, a.kd_kec'
      ''
      ''
      
        '  SELECT a.kd_kec, a.nama_kec, a.kd_desa, a.nama_desa, rr.Nama_A' +
        'kun, a.anggaran,a.Realisasi, a.persen'
      '  FROM @tmpP3 a  INNER JOIN Ref_Rek1 rr ON a.akun = rr.Akun')
    Active = True
    Left = 368
    Top = 104
  end
end
