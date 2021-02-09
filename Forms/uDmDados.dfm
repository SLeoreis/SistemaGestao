object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 215
  object FDCon: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=UTF8'
      
        'Database=C:\Users\ATS\Desktop\Projeto_TESTE_Delphi10\Projeto Ude' +
        'my COMPLETO\Banco de dados\DADOS.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 40
  end
end
