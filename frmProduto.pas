unit frmProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmGenerico, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  frmProdutoManutencao;

type
  TF_Produto = class(TF_Generico)
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Inicio;
  end;

var
  F_Produto: TF_Produto;

implementation

{$R *.dfm}
{ TF_Produto }

procedure TF_Produto.btnEditarClick(Sender: TObject);
var
  FProdutoManutencao: TF_ProdutoManutencao;
begin
  inherited;
  FProdutoManutencao := TF_ProdutoManutencao.Create(self);
  FProdutoManutencao.editCodigo.Text := qryConsulta.FieldByName('ID').AsString;
  FProdutoManutencao.Inicio;
  qryConsulta.Close;
  qryConsulta.Open;
end;

procedure TF_Produto.btnNovoClick(Sender: TObject);
var
  FProdutoManutencao: TF_ProdutoManutencao;
begin
  inherited;
  FProdutoManutencao := TF_ProdutoManutencao.Create(self);
  FProdutoManutencao.Inicio;
  qryConsulta.Close;
  qryConsulta.Open;

end;

procedure TF_Produto.Inicio;
begin
  qryConsulta.Close;
  qryConsulta.SQL.Text :=
    'select ID,CODIGO_BARRAS,DESCRICAO,VALOR_CUSTO,VALOR_VENDA,DATA_CADASTRO,DATA_ATUALIZACAO,DATA_ULTIMA_VENDA from produto';
  qryConsulta.Open;
  show;
end;

end.
