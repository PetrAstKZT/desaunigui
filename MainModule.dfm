object DM: TDM
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  OnDestroy = UniGUIMainModuleDestroy
  Theme = 'access'
  MonitoredKeys.Keys = <>
  OnBeforeLogin = UniGUIMainModuleBeforeLogin
  Height = 307
  Width = 455
  object koneksi: TUniConnection
    ProviderName = 'sQL Server'
    Port = 1433
    Database = 'desa_bateng'
    Username = 'sa'
    Server = 'LOCALHOST'
    LoginPrompt = False
    Left = 88
    Top = 80
    EncryptedPassword = 'CEFFCDFFCCFFCBFFCAFF'
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 88
    Top = 152
  end
end
