unit frmGenericoManutencao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.StdCtrls,dmGeral, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_GenericoManutencao = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    editCodigo: TEdit;
    Panel2: TPanel;
    btnSalvar: TSpeedButton;
    btnSair: TSpeedButton;
    qryManutencao: TFDQuery;
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_GenericoManutencao: TF_GenericoManutencao;

implementation

{$R *.dfm}

procedure TF_GenericoManutencao.btnSairClick(Sender: TObject);
begin
  Close;



end;

procedure TF_GenericoManutencao.btnSalvarClick(Sender: TObject);
begin
  //




end;

procedure TF_GenericoManutencao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close
  else if Key = VK_F4 then
    btnSalvarClick(nil);
end;

end.
