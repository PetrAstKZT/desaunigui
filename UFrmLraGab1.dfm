object FrmLraGab1: TFrmLraGab1
  Left = 0
  Top = 0
  ClientHeight = 513
  ClientWidth = 615
  Caption = 'FrmLraGab1'
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  Movable = False
  Layout = 'fit'
  OnAfterShow = UniFormAfterShow
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 77
    Width = 615
    Height = 436
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Caption = ''
    ExplicitHeight = 319
    object UniPanel3: TUniPanel
      Left = 1
      Top = 1
      Width = 613
      Height = 434
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      Caption = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'fit'
      ExplicitHeight = 317
    end
    object UniPanel6: TUniPanel
      Left = 1
      Top = 1
      Width = 613
      Height = 434
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Caption = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'fit'
      ExplicitHeight = 317
    end
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 36
    Width = 615
    Height = 41
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
    Caption = ''
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 1
      Top = 1
      Width = 78
      Height = 39
      Hint = ''
      DateTime = 43275.000000000000000000
      DateFormat = 'dd/MM/yy'
      TimeFormat = 'HH:mm:ss'
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
    end
    object UniDateTimePicker2: TUniDateTimePicker
      Left = 200
      Top = 1
      Width = 78
      Height = 39
      Hint = ''
      DateTime = 43275.000000000000000000
      DateFormat = 'dd/MM/yy'
      TimeFormat = 'HH:mm:ss'
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 2
    end
    object UniSimplePanel1: TUniSimplePanel
      Left = 79
      Top = 1
      Width = 121
      Height = 39
      Hint = ''
      ParentColor = False
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 3
      object UniLabel1: TUniLabel
        Left = 0
        Top = 0
        Width = 121
        Height = 39
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = ':::::s.d.:::::'
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 1
      end
    end
    object BtView: TUniButton
      Left = 520
      Top = 1
      Width = 94
      Height = 39
      Hint = ''
      Caption = 'View Laporan'
      Anchors = [akTop, akRight, akBottom]
      Align = alRight
      TabOrder = 4
      OnClick = BtViewClick
    end
  end
  object UniPanelJudul: TUniPanel
    Left = 0
    Top = 0
    Width = 615
    Height = 36
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Caption = ''
    object UniPanel4: TUniPanel
      Left = 1
      Top = 1
      Width = 168
      Height = 34
      Hint = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      Caption = ''
      object Btback: TUniButton
        Left = 1
        Top = 1
        Width = 75
        Height = 32
        Hint = ''
        Caption = 'Kembali'
        Anchors = [akLeft, akTop, akBottom]
        Align = alLeft
        TabOrder = 1
        OnClick = BtbackClick
      end
    end
    object UniPanel5: TUniPanel
      Left = 169
      Top = 1
      Width = 445
      Height = 34
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Caption = ''
      object ljudul: TUniLabel
        Left = 1
        Top = 1
        Width = 3
        Height = 13
        Hint = ''
        Alignment = taCenter
        Caption = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentColor = False
        Color = clHighlight
        TabOrder = 1
      end
    end
  end
end
