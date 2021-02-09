object FormFiltroPai: TFormFiltroPai
  Left = 0
  Top = 0
  Caption = 'FormFIltroPai'
  ClientHeight = 408
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 927
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 64
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtFIltro: TEdit
      Left = 64
      Top = 59
      Width = 409
      Height = 21
      TabOrder = 0
    end
    object btnFiltro: TButton
      Left = 488
      Top = 57
      Width = 75
      Height = 25
      Caption = 'Filtrar'
      TabOrder = 1
    end
    object btnSairFiltro: TButton
      Left = 827
      Top = 57
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = btnSairFiltroClick
    end
  end
  object fdQryFiltro: TFDQuery
    Connection = DataModule1.FDCon
    Transaction = FDTransaction
    Left = 456
    Top = 208
  end
  object dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 520
    Top = 224
  end
  object FDTransaction: TFDTransaction
    Connection = DataModule1.FDCon
    Left = 448
    Top = 280
  end
end
