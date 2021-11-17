unit frmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, frmPessoa,frmProduto,frmPontoVenda;

type
  TF_Main = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pessoa1: TMenuItem;
    Vendas1: TMenuItem;
    PontodeVenda1: TMenuItem;
    Relatrio1: TMenuItem;
    Configurao1: TMenuItem;
    Banco1: TMenuItem;
    Vendas2: TMenuItem;
    Produto1: TMenuItem;
    procedure Pessoa1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure PontodeVenda1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Main: TF_Main;

implementation

{$R *.dfm}

procedure TF_Main.Pessoa1Click(Sender: TObject);
var
  F_Pessoa: TF_Pessoa;
begin
  F_Pessoa := TF_Pessoa.Create(self);
  F_Pessoa.Inicia();
end;

procedure TF_Main.PontodeVenda1Click(Sender: TObject);
var
  F_PontoVenda: TF_PontoVenda;
begin
  F_PontoVenda := TF_PontoVenda.Create(self);
  F_PontoVenda.Inicio(0);

end;

procedure TF_Main.Produto1Click(Sender: TObject);
var
  F_Produto: TF_Produto;
begin
  F_Produto := TF_Produto.Create(self);
  F_Produto.Inicio();
end;

end.
