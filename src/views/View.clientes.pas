unit View.clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Service.cadastro, System.Actions,
  Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls;

type
  TViewClientes = class(TViewBaseListas)
    pnlTituloCadCliente: TPanel;
    lblTituloCadastro: TLabel;
    lblCodigoPes: TLabel;
    edtPES_CODIGO: TDBEdit;
    lblTituloPesquisa1: TLabel;
    edtPES_CNPJCPF: TDBEdit;
    lblTituloPesquisa2: TLabel;
    edtPES_RAZAO: TDBEdit;
    lblTituloPesquisa3: TLabel;
    edtPES_FANTASIA: TDBEdit;
    lblTituloPesquisa4: TLabel;
    edtPES_IERG: TDBEdit;
    lblTituloPesquisa5: TLabel;
    edtPES_TELEFONE: TDBEdit;
    lblTituloPesquisa6: TLabel;
    edtPES_OBSERVACAO: TDBEdit;
  private
    { Private declarations }
  public
  end;

var
  ViewClientes: TViewClientes;

implementation

{$R *.dfm}

{ TViewClientes }


end.
