inherited FormFiltroProduto: TFormFiltroProduto
  Caption = 'Filtro Produto'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Left = 16
      Width = 33
      Caption = 'C'#243'digo'
      ExplicitLeft = 16
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 168
      Top = 40
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited edtFIltro: TEdit
      Left = 16
      Top = 61
      Width = 129
      ExplicitLeft = 16
      ExplicitTop = 61
      ExplicitWidth = 129
    end
    inherited btnFiltro: TButton
      Left = 456
      OnClick = btnFiltroClick
      ExplicitLeft = 456
    end
    object edtDescricao: TEdit
      Left = 168
      Top = 59
      Width = 233
      Height = 21
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 105
    Width = 927
    Height = 303
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'V_UNITARIO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO_LIQUIDO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PESO_BRUTO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FABRICANTE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA_MODELO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNCEDOR'
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'ID_PRODUTO'
    SQL.Strings = (
      'SELECT P.id_produto,'
      '       P.descricao,'
      '       P.qtd,'
      '       P.custo,'
      '       P.v_unitario,'
      '       P.unidade,'
      '       P.peso_liquido,'
      '       P.peso_bruto,'
      '       P.fabricante,'
      '       P.marca_modelo,'
      '       F.razao_social FORNECEDOR'
      ''
      
        'FROM produto P left join FORNECEDOR F ON F.id_fornecedor = P.id_' +
        'forncedor'
      'WHERE 1 = 1')
    Left = 520
    Top = 184
    object fdQryFiltroID_PRODUTO: TFDAutoIncField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryFiltroDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 60
    end
    object fdQryFiltroQTD: TSingleField
      FieldName = 'QTD'
      Origin = 'QTD'
    end
    object fdQryFiltroCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object fdQryFiltroV_UNITARIO: TSingleField
      FieldName = 'V_UNITARIO'
      Origin = 'V_UNITARIO'
    end
    object fdQryFiltroUNIDADE: TWideStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 4
    end
    object fdQryFiltroPESO_LIQUIDO: TSingleField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object fdQryFiltroPESO_BRUTO: TSingleField
      FieldName = 'PESO_BRUTO'
      Origin = 'PESO_BRUTO'
    end
    object fdQryFiltroFABRICANTE: TWideStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Size = 60
    end
    object fdQryFiltroMARCA_MODELO: TWideStringField
      FieldName = 'MARCA_MODELO'
      Origin = 'MARCA_MODELO'
      Size = 255
    end
    object fdQryFiltroFORNECEDOR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
  end
  inherited FDTransaction: TFDTransaction
    Left = 520
  end
end
