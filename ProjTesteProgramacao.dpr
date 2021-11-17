program ProjTesteProgramacao;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {F_Main},
  frmRelVendas in 'frmRelVendas.pas' {F_RelVendas},
  frmConfiguracao in 'frmConfiguracao.pas' {F_Configuracao},
  frmGenerico in 'frmGenerico.pas' {F_Generico},
  frmPessoa in 'frmPessoa.pas' {F_Pessoa},
  dmGeral in 'dmGeral.pas' {dm_Geral: TDataModule},
  frmGenericoManutencao in 'frmGenericoManutencao.pas' {F_GenericoManutencao},
  frmPessoaManutencao in 'frmPessoaManutencao.pas' {F_PessoaManutencao},
  frmProduto in 'frmProduto.pas' {F_Produto},
  frmProdutoManutencao in 'frmProdutoManutencao.pas' {F_ProdutoManutencao},
  frmPontoVenda in 'frmPontoVenda.pas' {F_PontoVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm_Geral, dm_Geral);
  Application.CreateForm(TF_Main, F_Main);
  Application.Run;
end.
