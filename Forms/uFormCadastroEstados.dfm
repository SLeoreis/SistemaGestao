inherited FormCadastroEstado: TFormCadastroEstado
  Caption = 'Cadastro de Estados '
  ClientHeight = 236
  ExplicitHeight = 265
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 96
    Top = 88
    Width = 57
    Height = 13
    Caption = 'ID_ESTADO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 304
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit2
  end
  object Label4: TLabel [2]
    Left = 600
    Top = 88
    Width = 29
    Height = 13
    Caption = 'SIGLA'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit [4]
    Left = 96
    Top = 109
    Width = 134
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 304
    Top = 109
    Width = 250
    Height = 21
    DataField = 'NOME'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 600
    Top = 109
    Width = 30
    Height = 21
    DataField = 'SIGLA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO'
    SQL.Strings = (
      'SELECT * FROM ESTADO ')
    Left = 680
    Top = 168
    object fdQryCadastroID_ESTADO: TFDAutoIncField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME: TWideStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 60
    end
    object fdQryCadastroSIGLA: TWideStringField
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 2
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO ESTADO'
      '(DT_EXCLUIDO)'
      'VALUES (:NEW_DT_EXCLUIDO)'
      'RETURNING ID_ESTADO')
    ModifySQL.Strings = (
      'UPDATE ESTADO'
      'SET DT_EXCLUIDO = :NEW_DT_EXCLUIDO'
      'WHERE ID_ESTADO = :OLD_ID_ESTADO'
      'RETURNING ID_ESTADO')
    DeleteSQL.Strings = (
      'DELETE FROM ESTADO'
      'WHERE ID_ESTADO = :OLD_ID_ESTADO')
    FetchRowSQL.Strings = (
      'SELECT ID_ESTADO, NOME, SIGLA, DT_EXCLUIDO'
      'FROM ESTADO'
      'WHERE ID_ESTADO = :ID_ESTADO')
    Left = 680
    Top = 112
  end
  inherited fdTransaction: TFDTransaction
    Left = 680
    Top = 56
  end
  inherited dsCadastro: TDataSource
    Left = 680
    Top = 8
  end
end
