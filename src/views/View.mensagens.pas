unit View.mensagens;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  View.base,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  View.fundo;

  type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TViewBase)
    pnlImagens: TPanel;
    pnlConteudo: TPanel;
    pnlTitulo: TPanel;
    pnlBotoes: TPanel;
    lblTitulo: TLabel;
    btnOk: TSpeedButton;
    btnSim: TSpeedButton;
    btnNao: TSpeedButton;
    imgAlerta: TImage;
    imgInformacao: TImage;
    imgErro: TImage;
    pnlMensagem: TPanel;
    lblMensagem: TLabel;
    procedure btnSimClick(Sender: TObject);
    procedure btnNaoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    class function Mensagem(Texto, Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}


procedure TViewMensagens.btnNaoClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.btnOkClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.btnSimClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrYes
end;

class function TViewMensagens.Mensagem(Texto, Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
var
  i: Integer;
  view :TViewMensagens;
begin
  view := TViewMensagens.Create(nil);
  try
    view.lblTitulo.Caption := Titulo;
    view.lblMensagem.Caption := Texto;


    for i:= 0 to Length(Botoes) -1 do
      begin
        case (Botoes[i]) of
          mbOk: begin
                  view.BtnOK.Visible := True;
                  view.BtnOK.Align := alRight;
                end;

          mbSim: begin
                   view.btnSim.Visible := True;
                   view.btnSim.Align := alRight;
                 end;

          mbNao: begin
                   view.BtnNao.Visible := True;
                   view.BtnNao.Align := alRight;
                 end;

          else begin
            view.BtnOK.Visible := True;
            view.BtnOK.Align := alRight;
          end;
      end;
    end;

    case (Tipo) of
      'I' : begin
              view.imgInformacao.Visible := True;
            end;

      'E' : begin
              view.imgErro.Visible := True;
            end;

      'A' : begin
              view.imgAlerta.Visible := True;
            end;

      else begin
             view.imgInformacao.Visible := True;
           end;
    end;

    ViewFundo.Show;
    view.ShowModal;

    case (view.ModalResult) of
      mrOk, mrYes : result := True;
      else
        result := False;
    end;

  finally
    if (view <> nil) then
    begin
      VIewFundo.Hide;
      FreeAndNil(view);
    end;
  end;
end;


end.
