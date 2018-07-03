object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 414
  ClientWidth = 763
  Caption = 'MainForm'
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  Movable = False
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 0
    Top = 0
    Width = 763
    Height = 33
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    ParentFont = False
    Font.Color = clRed
    Font.Height = -16
    Font.Style = [fsBold]
    Font.Quality = fqClearType
    TabOrder = 0
    Caption = ''
    object Btlogout: TUniButton
      Left = 560
      Top = 1
      Width = 202
      Height = 31
      Hint = ''
      Caption = 'Logout'
      Anchors = [akTop, akRight, akBottom]
      Align = alRight
      ParentFont = False
      Font.Color = clRed
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 1
      OnClick = BtlogoutClick
    end
  end
  object UniMainMenu1: TUniMainMenu
    Left = 72
    Top = 160
    object File1: TUniMenuItem
      Caption = 'File'
      object Logout1: TUniMenuItem
        Caption = 'Logout'
      end
    end
    object Parameter1: TUniMenuItem
      Caption = 'Parameter'
    end
    object Laporan1: TUniMenuItem
      Caption = 'Laporan'
      object LaporanRealisasiAnggaranGabungan11: TUniMenuItem
        Caption = 'Pemda'
        object LRAGab11: TUniMenuItem
          Caption = 'LRA Gab 1'
          OnClick = LRAGab11Click
        end
      end
    end
  end
end
