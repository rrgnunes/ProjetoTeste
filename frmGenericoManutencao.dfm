object F_GenericoManutencao: TF_GenericoManutencao
  Left = 823
  Top = 0
  Caption = 'Pessoa Manuten'#231#227'o'
  ClientHeight = 325
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 672
    Height = 251
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 34
      Top = 24
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object editCodigo: TEdit
      Left = 77
      Top = 21
      Width = 94
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 251
    Width = 672
    Height = 74
    Align = alBottom
    TabOrder = 1
    object btnSalvar: TSpeedButton
      Left = 526
      Top = 1
      Width = 145
      Height = 72
      Align = alRight
      Caption = 'Salvar'
      Flat = True
      OnClick = btnSalvarClick
      ExplicitLeft = 96
      ExplicitTop = 8
      ExplicitHeight = 65
    end
    object btnSair: TSpeedButton
      Left = 1
      Top = 1
      Width = 145
      Height = 72
      Align = alLeft
      Caption = 'Sair'
      Flat = True
      OnClick = btnSairClick
      ExplicitLeft = 96
      ExplicitTop = 8
      ExplicitHeight = 65
    end
  end
  object qryManutencao: TFDQuery
    Connection = dm_Geral.conGeral
    Left = 272
    Top = 216
  end
end
