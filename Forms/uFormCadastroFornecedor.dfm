inherited FormCadastroFornecedor: TFormCadastroFornecedor
  Caption = 'Cadastro Fornecedor '
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 104
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 144
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 184
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 224
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 264
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 16
    Top = 304
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 16
    Top = 344
    Width = 38
    Height = 13
    Caption = 'CIDADE'
  end
  object Label8: TLabel [7]
    Left = 16
    Top = 384
    Width = 40
    Height = 13
    Caption = 'ESTADO'
  end
  object Label9: TLabel [8]
    Left = 16
    Top = 424
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit9
  end
  object DBEdit1: TDBEdit [10]
    Left = 16
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [11]
    Left = 16
    Top = 160
    Width = 300
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [12]
    Left = 16
    Top = 200
    Width = 300
    Height = 21
    DataField = 'FANTASIA'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [13]
    Left = 16
    Top = 240
    Width = 264
    Height = 21
    DataField = 'CNPJ'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [14]
    Left = 16
    Top = 280
    Width = 300
    Height = 21
    DataField = 'ENDERECO'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [15]
    Left = 16
    Top = 320
    Width = 300
    Height = 21
    DataField = 'BAIRRO'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit9: TDBEdit [16]
    Left = 16
    Top = 440
    Width = 300
    Height = 21
    DataField = 'EMAIL'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox [17]
    Left = 16
    Top = 360
    Width = 300
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE'
    ListField = 'NOME'
    ListSource = Lookup.dsCidades
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox [18]
    Left = 16
    Top = 400
    Width = 145
    Height = 21
    DataField = 'ID_ESTADO'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO'
    ListField = 'SIGLA'
    ListSource = Lookup.dsEstados
    TabOrder = 9
  end
  inherited fdQryCadastro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR ')
    object fdQryCadastroID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL: TWideStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 60
    end
    object fdQryCadastroFANTASIA: TWideStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 60
    end
    object fdQryCadastroCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object fdQryCadastroENDERECO: TWideStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 255
    end
    object fdQryCadastroBAIRRO: TWideStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object fdQryCadastroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
    end
    object fdQryCadastroID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object fdQryCadastroEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 255
    end
  end
end
