object frmLogin2: TfrmLogin2
  Left = 0
  Top = 0
  ClientHeight = 328
  ClientWidth = 525
  Caption = 'frmLogin2'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    525
    328)
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 88
    Top = 40
    Width = 361
    Height = 233
    Hint = ''
    Anchors = []
    TabOrder = 0
    Caption = ''
    object BtLogin: TUniButton
      Left = 64
      Top = 181
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Login'
      TabOrder = 4
      OnClick = BtLoginClick
    end
    object cbtahun: TUniComboBox
      Left = 160
      Top = 128
      Width = 89
      Hint = ''
      Text = ''
      TabOrder = 3
      OnDropDown = cbtahunDropDown
    end
    object edpassword: TUniEdit
      Left = 160
      Top = 88
      Width = 121
      Hint = ''
      PasswordChar = '*'
      Text = ''
      TabOrder = 2
    end
    object edusername: TUniEdit
      Left = 160
      Top = 48
      Width = 121
      Hint = ''
      Text = ''
      TabOrder = 1
    end
    object UniLabel1: TUniLabel
      Left = 64
      Top = 57
      Width = 48
      Height = 13
      Hint = ''
      Caption = 'Username'
      TabOrder = 5
    end
    object UniLabel2: TUniLabel
      Left = 64
      Top = 88
      Width = 46
      Height = 13
      Hint = ''
      Caption = 'Password'
      TabOrder = 6
    end
    object UniLabel3: TUniLabel
      Left = 64
      Top = 128
      Width = 30
      Height = 13
      Hint = ''
      Caption = 'Tahun'
      TabOrder = 7
    end
    object Btkeluar: TUniButton
      Left = 208
      Top = 181
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'keluar'
      TabOrder = 8
      OnClick = BtkeluarClick
    end
  end
  object UniQuery1: TUniQuery
    Connection = DM.koneksi
    Left = 376
    Top = 192
  end
end
