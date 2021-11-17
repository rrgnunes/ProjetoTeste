unit frmPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frmGenerico, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frmPessoaManutencao;

type
  TF_Pessoa = class(TF_Generico)
    btnSelecionar: TSpeedButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    lPesquisar: boolean;
    iCodigoSelecionado: integer;
    { Public declarations }
    procedure Inicia();
  end;

var
  F_Pessoa: TF_Pessoa;

implementation

{$R *.dfm}
{ TF_Pessoa }

procedure TF_Pessoa.btnEditarClick(Sender: TObject);
var
  FPessoaManutencao: TF_PessoaManutencao;
begin
  inherited;
  FPessoaManutencao := TF_PessoaManutencao.Create(self);
  FPessoaManutencao.editCodigo.Text := qryConsulta.FieldByName('ID').AsString;
  FPessoaManutencao.Inicio;
  qryConsulta.Close;
  qryConsulta.Open;
end;

procedure TF_Pessoa.btnNovoClick(Sender: TObject);
var
  FPessoaManutencao: TF_PessoaManutencao;
begin
  inherited;
  FPessoaManutencao := TF_PessoaManutencao.Create(self);

  FPessoaManutencao.Inicio;
  qryConsulta.Close;
  qryConsulta.Open;
end;

procedure TF_Pessoa.btnSelecionarClick(Sender: TObject);
begin
  inherited;
  //
  iCodigoSelecionado := qryConsulta.FieldByName('ID').AsInteger;
  Close;
end;

procedure TF_Pessoa.Inicia();
begin
  qryConsulta.Close;
  qryConsulta.SQL.Text :=
    'SELECT ID,NOME,CPF_CNPJ,TELEFONE,CELULAR,ENDERECO,BAIRRO,COMPLEMENTO,CIDADE,CEP,DATA_CADASTRO,DATA_ATUALIZACAO, '
    + '       DATA_ULTIMA_VENDA FROM PESSOA ';
  qryConsulta.Open;

  if lPesquisar then
  begin
    btnSelecionar.Visible := true;
    showmodal;
  end
  else
  begin
    btnNovo.Visible := true;
    btnEditar.Visible := true;
    btnDeletar.Visible := true;
    show;
  end;

end;

end.
