unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList,
  System.Actions,
  Vcl.ActnList, Provider.constants, View.clientes, View.fornecedores,
  Provider.conversao, View.produtos;
type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImagemUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuairos: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicenca: TPanel;
    lblTitLicenciado: TLabel;
    lblLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    imgBackground: TImage;
    actlstPrincipal: TActionList;
    actclientes: TAction;
    actCaixa: TAction;
    actFornecedores: TAction;
    actProdutos: TAction;
    actConfig: TAction;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure GET_LineMenu(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try
    ViewClientes.Tag := PessoasToInt(tpCliente);
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  GET_LineMenu(Sender);

  ViewFornecedores := TViewFornecedores.Create(Self);
  try
    ViewFornecedores.Tag := PessoasToInt(tpCliente);
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  GET_LineMenu(Sender);

  ViewProdutos := TViewProdutos.Create(Self);
  try
    ViewProdutos.sTELA := TelasToStr(tpProdutos);
    ViewProdutos.ShowModal;
  finally
    FreeAndNil(ViewProdutos);
  end;
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  if  MessageDlg('Deseja sair da aplicação?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
      begin
        Application.Terminate;
      end;
end;

procedure TViewPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    if  MessageDlg('Deseja sair da aplicação?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
      begin
        Self.Close;
      end;
  end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  GET_LineMenu(btnClientes);
  lblLicenciado.Caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.GET_LineMenu(Sender: TObject);
begin
  ShapeMenu.Left := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height;
  ShapeMenu.Top := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUserBrancaMouseEnter(Sender: TObject);
begin
  imgUserBranca.Visible := False;
  imgUserLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
  imgUserBranca.Visible := True;
  imgUserLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $00DC3729;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.
