inherited F_ProdutoManutencao: TF_ProdutoManutencao
  Caption = 'Produto Manuten'#231#227'o'
  ClientHeight = 250
  ClientWidth = 661
  ExplicitWidth = 677
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 661
    Height = 176
    object Label12: TLabel [1]
      Left = 186
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Data Cad.:'
    end
    object Label13: TLabel [2]
      Left = 410
      Top = 24
      Width = 57
      Height = 13
      Caption = 'Data Atua.:'
    end
    object Label14: TLabel [3]
      Left = 21
      Top = 51
      Width = 50
      Height = 13
      Caption = 'Data Ult. :'
    end
    object Label9: TLabel [4]
      Left = 21
      Top = 78
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object Label1: TLabel [5]
      Left = 15
      Top = 105
      Width = 56
      Height = 13
      Caption = 'Cod. Barra:'
    end
    object Label3: TLabel [6]
      Left = 43
      Top = 132
      Width = 28
      Height = 13
      Caption = 'Valor:'
    end
    object Label4: TLabel [7]
      Left = 177
      Top = 132
      Width = 32
      Height = 13
      Caption = 'Custo:'
    end
    object editDataCadastro: TEdit
      Left = 245
      Top = 21
      Width = 139
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object editDataAtualizacao: TEdit
      Left = 481
      Top = 21
      Width = 139
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object editDataUltimaVenda: TEdit
      Left = 77
      Top = 48
      Width = 139
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
    object editDescricao: TEdit
      Left = 77
      Top = 75
      Width = 543
      Height = 21
      TabOrder = 4
    end
    object editCodigoBarra: TEdit
      Left = 77
      Top = 102
      Width = 220
      Height = 21
      TabOrder = 5
    end
    object editValor: TEdit
      Left = 77
      Top = 129
      Width = 84
      Height = 21
      TabOrder = 6
    end
    object editCusto: TEdit
      Left = 213
      Top = 129
      Width = 84
      Height = 21
      TabOrder = 7
    end
  end
  inherited Panel2: TPanel
    Top = 176
    Width = 661
    inherited btnSalvar: TSpeedButton
      Left = 515
    end
  end
  inherited qryManutencao: TFDQuery
    Left = 368
    Top = 120
  end
end
