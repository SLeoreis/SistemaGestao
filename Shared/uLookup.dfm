object Lookup: TLookup
  OldCreateOrder = False
  Height = 298
  Width = 388
  object FDQueryEstados: TFDQuery
    Connection = DataModule1.FDCon
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 144
    Top = 48
  end
  object dsEstados: TDataSource
    DataSet = FDQueryEstados
    Left = 144
    Top = 120
  end
  object FDTransaction: TFDTransaction
    Connection = DataModule1.FDCon
    Left = 96
    Top = 192
  end
  object FDQueryCidades: TFDQuery
    Connection = DataModule1.FDCon
    Transaction = FDTransaction
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 248
    Top = 48
  end
  object dsCidades: TDataSource
    DataSet = FDQueryCidades
    Left = 248
    Top = 120
  end
end
