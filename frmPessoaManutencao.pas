unit frmPessoaManutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmGenericoManutencao,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_PessoaManutencao = class(TF_GenericoManutencao)
    Label3: TLabel;
    editNome: TEdit;
    Label4: TLabel;
    editCPFCNPJ: TEdit;
    Label5: TLabel;
    editTelefone: TEdit;
    Label6: TLabel;
    editCelular: TEdit;
    Label7: TLabel;
    editEndereco: TEdit;
    Label8: TLabel;
    editBairro: TEdit;
    Label9: TLabel;
    editCidade: TEdit;
    Label10: TLabel;
    editCep: TEdit;
    Label11: TLabel;
    editComplemento: TEdit;
    Label12: TLabel;
    editDataCadastro: TEdit;
    editDataAtualizacao: TEdit;
    Label13: TLabel;
    editDataUltimaVenda: TEdit;
    Label14: TLabel;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
    procedure Inicio;
  end;

var
  F_PessoaManutencao: TF_PessoaManutencao;

implementation

{$R *.dfm}

procedure TF_PessoaManutencao.btnSalvarClick(Sender: TObject);
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
  qryManutencao.FieldByName('NOME').AsString := editNome.Text;
  qryManutencao.FieldByName('CPF_CNPJ').AsString := editCPFCNPJ.Text;
  qryManutencao.FieldByName('TELEFONE').AsString := editTelefone.Text;
  qryManutencao.FieldByName('CELULAR').AsString := editCelular.Text;
  qryManutencao.FieldByName('ENDERECO').AsString := editEndereco.Text;
  qryManutencao.FieldByName('BAIRRO').AsString := editBairro.Text;
  qryManutencao.FieldByName('CIDADE').AsString := editCidade.Text;
  qryManutencao.FieldByName('CEP').AsString := editCep.Text;
  qryManutencao.FieldByName('COMPLEMENTO').AsString := editComplemento.Text;

  qryManutencao.Post;

  close;
end;

procedure TF_PessoaManutencao.Inicio;
begin

  qryManutencao.close;
  qryManutencao.SQL.Text :=
    'SELECT NOME,CPF_CNPJ,TELEFONE,CELULAR,ENDERECO,BAIRRO,CIDADE,CEP,COMPLEMENTO,DATA_ATUALIZACAO,DATA_CADASTRO,DATA_ULTIMA_VENDA FROM PESSOA';

  if editCodigo.Text <> '' then
  begin
    qryManutencao.SQL.Add('WHERE ID = ' + editCodigo.Text);

  end;
  qryManutencao.Open();

  if editCodigo.Text <> '' then
  begin
    editNome.Text := qryManutencao.FieldByName('NOME').AsString;
    editCPFCNPJ.Text := qryManutencao.FieldByName('CPF_CNPJ').AsString;
    editTelefone.Text := qryManutencao.FieldByName('TELEFONE').AsString;
    editCelular.Text := qryManutencao.FieldByName('CELULAR').AsString;
    editEndereco.Text := qryManutencao.FieldByName('ENDERECO').AsString;
    editBairro.Text := qryManutencao.FieldByName('BAIRRO').AsString;
    editCidade.Text := qryManutencao.FieldByName('CIDADE').AsString;
    editCep.Text := qryManutencao.FieldByName('CEP').AsString;
    editComplemento.Text := qryManutencao.FieldByName('COMPLEMENTO').AsString;
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
