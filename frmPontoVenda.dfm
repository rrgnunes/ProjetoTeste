inherited F_PontoVenda: TF_PontoVenda
  Caption = 'Vendas'
  ClientHeight = 590
  ClientWidth = 579
  ExplicitWidth = 595
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 579
    Height = 516
    ExplicitWidth = 579
    ExplicitHeight = 516
    inherited Label2: TLabel
      Top = 21
      ExplicitTop = 21
    end
    object Label9: TLabel [1]
      Left = 30
      Top = 48
      Width = 41
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label3: TLabel [2]
      Left = 34
      Top = 75
      Width = 37
      Height = 13
      Caption = 'Cliente:'
    end
    object Label12: TLabel [3]
      Left = 354
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Data Cad.:'
    end
    object Label1: TLabel [4]
      Left = 14
      Top = 490
      Width = 57
      Height = 13
      Caption = 'Valor Prod.:'
    end
    object Label4: TLabel [5]
      Left = 354
      Top = 459
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object Label5: TLabel [6]
      Left = 22
      Top = 459
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object lblTotal: TLabel [7]
      Left = 538
      Top = 459
      Width = 12
      Height = 40
      Alignment = taRightJustify
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    inherited editCodigo: TEdit
      Top = 17
      ExplicitTop = 17
    end
    object editNumero: TEdit
      Left = 77
      Top = 44
      Width = 95
      Height = 21
      TabOrder = 2
    end
    object editCodigoCliente: TEdit
      Left = 77
      Top = 71
      Width = 36
      Height = 21
      TabOrder = 3
      OnExit = editCodigoClienteExit
    end
    object editDataCadastro: TEdit
      Left = 413
      Top = 20
      Width = 139
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object editNomeCliente: TEdit
      Left = 119
      Top = 71
      Width = 394
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object btnPesquisar: TButton
      Left = 519
      Top = 69
      Width = 31
      Height = 25
      Caption = 'P'
      TabOrder = 8
      Visible = False
      OnClick = btnPesquisarClick
    end
    object editValorProdutos: TEdit
      Left = 77
      Top = 486
      Width = 69
      Height = 21
      Enabled = False
      TabOrder = 7
    end
    object editDesconto: TEdit
      Left = 77
      Top = 459
      Width = 69
      Height = 21
      TabOrder = 6
    end
    object gridItens: TDBGrid
      Left = 30
      Top = 100
      Width = 522
      Height = 317
      DataSource = dsItem
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO_PRODUTO'
          Title.Caption = 'Produto'
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Qtd'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_VENDA'
          Title.Caption = 'Valor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'Total'
          Visible = True
        end>
    end
    object btnLocalizarPedido: TButton
      Left = 177
      Top = 42
      Width = 56
      Height = 25
      Caption = 'Carregar'
      TabOrder = 9
    end
  end
  inherited Panel2: TPanel
    Top = 516
    Width = 579
    ExplicitTop = 516
    ExplicitWidth = 579
    inherited btnSalvar: TSpeedButton
      Left = 433
      ExplicitLeft = 433
    end
  end
  inherited qryManutencao: TFDQuery
    Left = 256
    Top = 432
  end
  object qryCliente: TFDQuery
    Connection = dm_Geral.conGeral
    SQL.Strings = (
      'select * from pessoa')
    Left = 8
    Top = 65
  end
  object qryItem: TFDQuery
    Connection = dm_Geral.conGeral
    SQL.Strings = (
      'select * from ITEMPEDIDOVENDA')
    Left = 416
    Top = 344
  end
  object dsItem: TDataSource
    DataSet = qryItem
    Left = 360
    Top = 344
  end
end
