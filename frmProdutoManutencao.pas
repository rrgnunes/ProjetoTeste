unit frmProdutoManutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmGenericoManutencao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TF_ProdutoManutencao = class(TF_GenericoManutencao)
    Label12: TLabel;
    editDataCadastro: TEdit;
    Label13: TLabel;
    editDataAtualizacao: TEdit;
    Label14: TLabel;
    editDataUltimaVenda: TEdit;
    Label9: TLabel;
    editDescricao: TEdit;
    Label1: TLabel;
    editCodigoBarra: TEdit;
    Label3: TLabel;
    editValor: TEdit;
    Label4: TLabel;
    editCusto: TEdit;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Inicio;
  end;

var
  F_ProdutoManutencao: TF_ProdutoManutencao;

implementation

{$R *.dfm}
{ TF_ProdutoManutencao }

procedure TF_ProdutoManutencao.btnSalvarClick(Sender: TObject);
begin
  inherited;
  if editCodigo.Text <> '' then
  begin
    qryManutencao.Edit;
    qryManutencao.FieldByName('DATA_ATUALIZACAO').AsDateTime := now;
  end
  else
  begin
    qryManutencao.Append;
    qryManutencao.FieldByName('DATA_CADASTRO').AsDateTime := now;
  end;
  qryManutencao.FieldByName('CODIGO_BARRAS').AsString := editCodigoBarra.Text;
  qryManutencao.FieldByName('DESCRICAO').AsString := editDescricao.Text;
  qryManutencao.FieldByName('VALOR_CUSTO').AsString := editCusto.Text;
  qryManutencao.FieldByName('VALOR_VENDA').AsString := editValor.Text;

  qryManutencao.Post;

  close;
end;

procedure TF_ProdutoManutencao.Inicio;
begin
  qryManutencao.close;
  qryManutencao.SQL.Text :=
    'SELECT CODIGO_BARRAS,DESCRICAO,VALOR_CUSTO,VALOR_VENDA,DATA_CADASTRO,DATA_ATUALIZACAO,DATA_ULTIMA_VENDA FROM PRODUTO';

  if editCodigo.Text <> '' then
  begin
    qryManutencao.SQL.Add('WHERE ID = ' + editCodigo.Text);

  end;
  qryManutencao.Open();

  if editCodigo.Text <> '' then
  begin
    editCodigoBarra.Text := qryManutencao.FieldByName('CODIGO_BARRAS').AsString;
    editDescricao.Text := qryManutencao.FieldByName('DESCRICAO').AsString;
    editCusto.Text := qryManutencao.FieldByName('VALOR_CUSTO').AsString;
    editValor.Text := qryManutencao.FieldByName('VALOR_VENDA').AsString;
    editDataCadastro.Text := qryManutencao.FieldByName('DATA_CADASTRO')
      .AsString;
    editDataUltimaVenda.Text := qryManutencao.FieldByName
      ('DATA_ULTIMA_VENDA').AsString;
    editDataAtualizacao.Text := qryManutencao.FieldByName
      ('DATA_ATUALIZACAO').AsString;

  end;

  ShowModal;
end;

end.
