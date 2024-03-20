unit View.base.listas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.base, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.WinXPanels, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.WinXCtrls, Service.cadastro, Provider.constants, Provider.conversao,
  View.mensagens;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlIcone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btnNovo: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnEditar: TSpeedButton;
    pnlBackground: TPanel;
    CardPanel_Listas: TCardPanel;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanel_ListasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
      sTELA: string;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  begin
      dsDados.DataSet.Cancel;
      CardPanel_Listas.ActiveCard := card_cadastro;
  end;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin
  inherited;
  CardPanel_Listas.ActiveCard := card_pesquisa;
  dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if dsDados.DataSet.RecordCount > 0 then
    begin
      if Self.Tag > 0 then
      begin

      case Self.Tag of

          1: begin
            if TViewMensagens.Mensagem('Deseja excluir esse cliente?', 'Excluir', 'A', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Cliente deletado com sucesso!', 'Sucesso', 'I', [mbOk]);
              end;
          end;
          2: begin
            if TViewMensagens.Mensagem('Deseja excluir esse fornecedor?', 'Excluir', 'A', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Fornecedor deletado com sucesso!', 'Sucesso', 'I', [mbOk]);
              end;
          end;
          3: begin
            if TViewMensagens.Mensagem('Deseja excluir esse funcionário?', 'Excluir', 'A', [mbSim, mbNao]) then
              begin
                dsDados.DataSet.Delete;
                TViewMensagens.Mensagem('Funcionário deletado com sucesso!', 'Sucesso', 'I', [mbOk]);
              end;
          end;

      end;
    end
    else begin

     if sTELA = TelasToStr(tpProdutos) then
     begin
       TViewMensagens.Mensagem('Produtos deletado com sucesso!', 'Deletar', 'D', [mbOk]);
     end;

     if sTELA = TelasToStr(tpCaixa) then
     begin
       TViewMensagens.Mensagem('Caixa deletado com sucesso!', 'Deletar', 'D', [mbOk]);
     end;

     if sTELA = TelasToStr(tpGrupo) then
     begin
       TViewMensagens.Mensagem('Grupo deletado com sucesso!', 'Deletar', 'D', [mbOk]);
     end;

     if sTELA = TelasToStr(tpSubgrupo) then
     begin
       TViewMensagens.Mensagem('Subgrupo deletado com sucesso!', 'Deletar', 'D', [mbOk]);
     end;

    end;
  end;

    CardPanel_Listas.ActiveCard := card_cadastro;
end;

procedure TViewBaseListas.btnNovoClick(Sender: TObject);
begin
  inherited;
  CardPanel_Listas.ActiveCard := card_pesquisa;
  dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;


procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin
  inherited;

  if dsDados.DataSet.State in dsEditModes then
  begin

    if Self.Tag > 0 then
      begin
        ServiceCadastro.intgrfldQRY_pessoasPES_TIPO.AsInteger := Self.Tag;
        ServiceCadastro.QRY_pessoas.Post;

        case Self.Tag of

          1: begin
            TViewMensagens.Mensagem('Cliente salvo com sucesso!', 'Salvar', 'I', [mbOk]);
          end;
          2: begin
            TViewMensagens.Mensagem('Fornecedor salvo com sucesso!', 'Salvar', 'I', [mbOk]);
          end;
          3: begin
            TViewMensagens.Mensagem('Funcionário salvo com sucesso!', 'Salvar', 'I', [mbOk]);
          end;

        end;
      end

    else
      begin
        dsDados.DataSet.Post;

         if sTELA = TelasToStr(tpProdutos) then
         begin
           ShowMessage('Produto salvo com sucesso');
         end;

         if sTELA = TelasToStr(tpCaixa) then
         begin
           ShowMessage('Caixa salvo com sucesso');
         end;

         if sTELA = TelasToStr(tpGrupo) then
         begin
           ShowMessage('Grupo salvo com sucesso');
         end;

         if sTELA = TelasToStr(tpSubgrupo) then
         begin
           ShowMessage('Subgrupo salvo com sucesso');
         end;
      end;
      CardPanel_Listas.ActiveCard := card_cadastro;

  end;
end;

procedure TViewBaseListas.CardPanel_ListasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;
  if CardPanel_Listas.ActiveCard = card_pesquisa then
    SelectFirst;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin
  inherited;
  CardPanel_Listas.ActiveCard := card_cadastro;
  GET_pessoas(Self.Tag);
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
   const
   sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);
end;

end.
