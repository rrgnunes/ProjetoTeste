unit frmGenerico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dmGeral;

type
  TF_Generico = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TSpeedButton;
    btnSair: TSpeedButton;
    btnDeletar: TSpeedButton;
    btnEditar: TSpeedButton;
    gridGenerico: TDBGrid;
    qryConsulta: TFDQuery;
    btnPesquisar: TSpeedButton;
    dsGenerico: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Inicio;

  end;

var
  F_Generico: TF_Generico;

implementation

{$R *.dfm}

procedure TF_Generico.btnDeletarClick(Sender: TObject);
begin
  if MessageDlg('Você tem certeza que deseja excluir o registro?',
    mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    qryConsulta.Delete;
  end;

end;

procedure TF_Generico.btnNovoClick(Sender: TObject);
begin
  //
end;

procedure TF_Generico.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_Generico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F4 then
  begin

    btnNovoClick(nil);
  end;
end;

procedure TF_Generico.Inicio;
begin
 //
end;

end.
