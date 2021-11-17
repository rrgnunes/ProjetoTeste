inherited F_Pessoa: TF_Pessoa
  Caption = 'Cadastro Pessoa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited btnNovo: TSpeedButton
      Visible = False
    end
    inherited btnDeletar: TSpeedButton
      Visible = False
    end
    inherited btnEditar: TSpeedButton
      Visible = False
      OnClick = btnEditarClick
    end
    object btnSelecionar: TSpeedButton
      Left = 396
      Top = 1
      Width = 145
      Height = 72
      Align = alRight
      Caption = 'Selecionar'
      Flat = True
      Visible = False
      OnClick = btnSelecionarClick
      ExplicitLeft = 182
      ExplicitTop = 6
    end
  end
  inherited qryConsulta: TFDQuery
    SQL.Strings = (
      
        'SELECT ID,NOME,CPF_CNPJ,TELEFONE,CELULAR,ENDERECO,BAIRRO,COMPLEM' +
        'ENTO,CIDADE,'
      'CEP,DATA_CADASTRO,DATA_ATUALIZACAO,'
      'DATA_ULTIMA_VENDA FROM PESSOA')
  end
end
