inherited F_PessoaManutencao: TF_PessoaManutencao
  Caption = 'Manutenc'#227'o Pessoa'
  ClientHeight = 310
  ClientWidth = 654
  ExplicitWidth = 670
  ExplicitHeight = 349
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 654
    Height = 236
    ExplicitWidth = 654
    ExplicitHeight = 236
    object Label3: TLabel [0]
      Left = 40
      Top = 78
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label4: TLabel [1]
      Left = 448
      Top = 78
      Width = 52
      Height = 13
      Caption = 'CPF/CNPJ:'
    end
    object Label5: TLabel [2]
      Left = 25
      Top = 186
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object Label6: TLabel [3]
      Left = 186
      Top = 186
      Width = 37
      Height = 13
      Caption = 'Celular:'
    end
    object Label7: TLabel [4]
      Left = 22
      Top = 105
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label8: TLabel [5]
      Left = 468
      Top = 105
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label9: TLabel [6]
      Left = 34
      Top = 132
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label10: TLabel [7]
      Left = 312
      Top = 132
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label11: TLabel [8]
      Left = 2
      Top = 159
      Width = 69
      Height = 13
      Caption = 'Complemento:'
    end
    object Label12: TLabel [9]
      Left = 186
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Data Cad.:'
    end
    object Label13: TLabel [10]
      Left = 410
      Top = 24
      Width = 57
      Height = 13
      Caption = 'Data Atua.:'
    end
    object Label14: TLabel [11]
      Left = 21
      Top = 51
      Width = 50
      Height = 13
      Caption = 'Data Ult. :'
    end
    object editNome: TEdit [13]
      Left = 77
      Top = 75
      Width = 358
      Height = 21
      TabOrder = 0
    end
    object editCPFCNPJ: TEdit [14]
      Left = 506
      Top = 75
      Width = 114
      Height = 21
      TabOrder = 1
    end
    object editTelefone: TEdit [15]
      Left = 77
      Top = 183
      Width = 94
      Height = 21
      TabOrder = 7
    end
    object editCelular: TEdit [16]
      Left = 229
      Top = 183
      Width = 94
      Height = 21
      TabOrder = 8
    end
    object editEndereco: TEdit [17]
      Left = 77
      Top = 102
      Width = 358
      Height = 21
      TabOrder = 2
    end
    object editBairro: TEdit [18]
      Left = 506
      Top = 102
      Width = 114
      Height = 21
      TabOrder = 3
    end
    object editCidade: TEdit [19]
      Left = 77
      Top = 129
      Width = 212
      Height = 21
      TabOrder = 4
    end
    object editCep: TEdit [20]
      Left = 341
      Top = 129
      Width = 94
      Height = 21
      TabOrder = 5
    end
    object editComplemento: TEdit [21]
      Left = 77
      Top = 156
      Width = 543
      Height = 21
      TabOrder = 6
    end
    object editDataCadastro: TEdit [22]
      Left = 245
      Top = 21
      Width = 139
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 9
    end
    object editDataAtualizacao: TEdit [23]
      Left = 481
      Top = 21
      Width = 139
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 10
    end
    object editDataUltimaVenda: TEdit [24]
      Left = 77
      Top = 48
      Width = 139
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 11
    end
    inherited editCodigo: TEdit
      TabOrder = 12
    end
  end
  inherited Panel2: TPanel
    Top = 236
    Width = 654
    ExplicitTop = 236
    ExplicitWidth = 654
    inherited btnSalvar: TSpeedButton
      Left = 508
      AllowAllUp = True
      ExplicitLeft = 508
    end
    inherited btnSair: TSpeedButton
      AllowAllUp = True
      ExplicitLeft = 0
      ExplicitTop = 6
      ExplicitHeight = 72
    end
  end
  inherited qryManutencao: TFDQuery
    Left = 320
    Top = 256
  end
end
