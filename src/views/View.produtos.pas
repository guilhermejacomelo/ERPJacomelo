unit View.produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base.listas, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Service.cadastro, Provider.constants,
  Vcl.Mask, Vcl.DBCtrls;

type
  TViewProdutos = class(TViewBaseListas)
    dsProduto2: TDataSource;
    pnlDetalhes: TPanel;
    DBG_Detalhes: TDBGrid;
    pnlTituloCadProdutos: TPanel;
    lblTituloProdutos: TLabel;
    lblPR1_CODIGO: TLabel;
    edtPR1_CODIGO: TDBEdit;
    lblNomeCompleto: TLabel;
    edtPR1_NOMECOMPLETO: TDBEdit;
    lblNomePopular: TLabel;
    edtPR1_NOMEPOPULAR: TDBEdit;
    lblTituloCadastro: TLabel;
    edtPR1_CODBARRA: TDBEdit;
    lblTituloCadastro1: TLabel;
    edtPR1_REFERENCIA: TDBEdit;
    lblTituloCadastro2: TLabel;
    edtPR1_NCM: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure dsDadosDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewProdutos: TViewProdutos;

implementation

{$R *.dfm}

procedure TViewProdutos.btnNovoClick(Sender: TObject);
begin
  inherited;
  ServiceCadastro.QRY_produto1PR1_GRUPO.AsInteger := 1;
  ServiceCadastro.QRY_produto1PR1_SUBGRUPO.AsInteger := 1;
end;

procedure TViewProdutos.dsDadosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  GET_Produtos_detalhe(ServiceCadastro.QRY_produto1PR1_CODIGO.AsInteger);
end;

procedure TViewProdutos.FormShow(Sender: TObject);
begin
  inherited;
  GET_Produtos;
end;

end.
