object dm_Geral: Tdm_Geral
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 488
  Width = 909
  object conGeral: TFDConnection
    Params.Strings = (
      'Database=D:\Dados\teste\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    Left = 192
    Top = 248
  end
end
