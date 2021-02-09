inherited FormFiltroCliente: TFormFiltroCliente
  Caption = 'Filtro de Clientes'
  ClientHeight = 419
  ClientWidth = 982
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 998
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 982
    ExplicitWidth = 982
    inherited Label1: TLabel
      Left = 16
      Width = 81
      Caption = 'Nome do Cliente '
      ExplicitLeft = 16
      ExplicitWidth = 81
    end
    object Label2: TLabel [1]
      Left = 400
      Top = 40
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object Label3: TLabel [2]
      Left = 273
      Top = 40
      Width = 54
      Height = 13
      Caption = 'CPF / CNPJ'
    end
    object Label4: TLabel [3]
      Left = 143
      Top = 40
      Width = 44
      Height = 13
      Caption = 'Fantasia '
    end
    inherited edtFIltro: TEdit
      Left = 16
      Width = 121
      ExplicitLeft = 16
      ExplicitWidth = 121
    end
    inherited btnFiltro: TButton
      Left = 552
      Cursor = crHandPoint
      OnClick = btnFiltroClick
      ExplicitLeft = 552
    end
    object edtFantasia: TEdit
      Left = 143
      Top = 59
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtCPF: TEdit
      Left = 273
      Top = 59
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 400
      Top = 59
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object btnNovo: TButton
      Left = 633
      Top = 57
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Novo'
      TabOrder = 6
      OnClick = btnNovoClick
    end
    object btnVisualizar: TButton
      Left = 714
      Top = 57
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Visualizar'
      TabOrder = 7
      OnClick = btnVisualizarClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 105
    Width = 982
    Height = 314
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
        FieldName = 'ID_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 50
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE ')
    Left = 864
    Top = 272
  end
  inherited dsFiltro: TDataSource
    Left = 864
    Top = 232
  end
  inherited FDTransaction: TFDTransaction
    Left = 864
    Top = 328
  end
end
