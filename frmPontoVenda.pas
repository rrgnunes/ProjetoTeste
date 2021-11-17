unit frmPontoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmGenericoManutencao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, frmPessoa, Vcl.DBCtrls;

type
  TF_PontoVenda = class(TF_GenericoManutencao)
    Label9: TLabel;
    editNumero: TEdit;
    Label3: TLabel;
    editCodigoCliente: TEdit;
    Label12: TLabel;
    editDataCadastro: TEdit;
    editNomeCliente: TEdit;
    btnPesquisar: TButton;
    Label1: TLabel;
    editValorProdutos: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    editDesconto: TEdit;
    lblTotal: TLabel;
    gridItens: TDBGrid;
    btnLocalizarPedido: TButton;
    qryCliente: TFDQuery;
    qryItem: TFDQuery;
    dsItem: TDataSource;
    procedure editCodigoClienteExit(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure inicio(iNumeroPedido: integer);
  end;

var
  F_PontoVenda: TF_PontoVenda;

implementation

{$R *.dfm}
{ TF_PontoVenda }

procedure TF_PontoVenda.btnPesquisarClick(Sender: TObject);
var
  F_Pessoa: TF_Pessoa;
begin
  inherited;
  F_Pessoa := TF_Pessoa.Create(self);
  F_Pessoa.lPesquisar := true;
  F_Pessoa.Inicia();

  editCodigoCliente.Text := IntToStr(F_Pessoa.iCodigoSelecionado);
  inicio(F_Pessoa.iCodigoSelecionado);
end;

procedure TF_PontoVenda.editCodigoClienteExit(Sender: TObject);
begin
  inherited;
  if editCodigoCliente.Text <> '' then
  begin
    qryCliente.Close;
    qryCliente.SQL.Text := 'SELECT * FROM PESSOA WHERE ID = ' +
      editCodigoCliente.Text;
    qryCliente.Open();

    editNomeCliente.Text := qryCliente.FieldByName('NOME').AsString;
    qryCliente.Close;
  end;
end;

procedure TF_PontoVenda.inicio(iNumeroPedido: integer);
begin

  qryManutencao.Close;
  qryManutencao.SQL.Text :=
    'SELECT NUMERO,DATA_EMISSAO,ID_CLIENTE,VALOR_PRODUTOS,VALOR_DESCONTO,VALOR_TOTAL FROM PEDIDOVENDA';

  if iNumeroPedido > 0 then
  begin
    qryManutencao.SQL.Add('WHERE NUMERO = ' + IntToStr(iNumeroPedido));
  end
  else if editCodigo.Text <> '' then
  begin
    qryManutencao.SQL.Add('WHERE ID = ' + editCodigo.Text);
  end;
  qryManutencao.Open();

  if editCodigo.Text <> '' then
  begin
    editNumero.Text := qryManutencao.FieldByName('NUMERO').AsString;
    editDataCadastro.Text := qryManutencao.FieldByName('DATA_EMISSAO').AsString;
    editCodigoCliente.Text := qryManutencao.FieldByName('ID_CLIENTE').AsString;
    editValorProdutos.Text := qryManutencao.FieldByName
      ('VALOR_PRODUTOS').AsString;
    editDesconto.Text := qryManutencao.FieldByName('VALOR_DESCONTO').AsString;
    lblTotal.Caption := qryManutencao.FieldByName('VALOR_DESCONTO').AsString;
  end;

  qryCliente.Close;
  qryCliente.SQL.Text := 'SELECT * FROM PESSOA';
  qryCliente.Open();

  show;
end;

end.
