inherited FormCadastroCIdade: TFormCadastroCIdade
  Caption = 'Cadastro de Cidades'
  ClientHeight = 202
  ExplicitHeight = 231
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 42
    Top = 88
    Width = 55
    Height = 13
    Caption = 'ID_CIDADE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 256
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit [3]
    Left = 41
    Top = 107
    Width = 134
    Height = 21
    DataField = 'ID_CIDADE'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 256
    Top = 107
    Width = 250
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE '
    SQL.Strings = (
      'SELECT * FROM CIDADE ')
    Left = 688
    Top = 160
    object fdQryCadastroID_CIDADE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 688
    Top = 104
  end
  inherited fdTransaction: TFDTransaction
    Left = 688
    Top = 48
  end
  inherited dsCadastro: TDataSource
    Left = 688
    Top = 0
  end
end
