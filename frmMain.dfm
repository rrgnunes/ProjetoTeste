object F_Main: TF_Main
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 654
  ClientWidth = 963
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 112
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Pessoa1: TMenuItem
        Caption = 'Pessoa'
        OnClick = Pessoa1Click
      end
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object PontodeVenda1: TMenuItem
        Caption = 'Ponto de Venda'
        OnClick = PontodeVenda1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = 'Relat'#243'rio'
      object Vendas2: TMenuItem
        Caption = 'Vendas'
      end
    end
    object Configurao1: TMenuItem
      Caption = 'Configura'#231#227'o'
      object Banco1: TMenuItem
        Caption = 'Banco'
      end
    end
  end
end
