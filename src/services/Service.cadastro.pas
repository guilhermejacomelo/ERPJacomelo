unit Service.cadastro;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Service.conexao;

type
  TServiceCadastro = class(TDataModule)
    QRY_pessoas: TFDQuery;
    QRY_pessoasPES_CODIGO: TIntegerField;
    QRY_pessoasPES_RAZAO: TStringField;
    strngfldQRY_pessoasPES_FANTASIA: TStringField;
    strngfldQRY_pessoasPES_TELEFONE: TStringField;
    intgrfldQRY_pessoasPES_TIPO: TIntegerField;
    strngfldQRY_pessoasPES_CNPJCPF: TStringField;
    strngfldQRY_pessoasPES_IERG: TStringField;
    strngfldQRY_pessoasPES_OBSERVACAO: TStringField;
    QRY_enderecos: TFDQuery;
    intgrfldQRY_enderecosEND_CODIGO: TIntegerField;
    intgrfldQRY_enderecosEND_PESSOA: TIntegerField;
    strngfldQRY_enderecosEND_ENDERECO: TStringField;
    strngfldQRY_enderecosEND_CEP: TStringField;
    strngfldQRY_enderecosEND_CIDADE: TStringField;
    strngfldQRY_enderecosEND_BAIRRO: TStringField;
    strngfldQRY_enderecosEND_OBS: TStringField;
    strngfldQRY_enderecosEND_NUMERO: TStringField;
    QRY_produto1: TFDQuery;
    QRY_produto1PR1_CODIGO: TIntegerField;
    QRY_produto1PR1_NOMECOMPLETO: TStringField;
    QRY_produto1PR1_NOMEPOPULAR: TStringField;
    QRY_produto1PR1_CODBARRA: TStringField;
    QRY_produto1PR1_REFERENCIA: TStringField;
    QRY_produto1PR1_GRUPO: TIntegerField;
    QRY_produto1PR1_SUBGRUPO: TIntegerField;
    QRY_produto1PR1_NCM: TStringField;
    QRY_produto2: TFDQuery;
    QRY_produto2PR2_CODIGO: TIntegerField;
    QRY_produto2PR2_CODIGOPR1: TIntegerField;
    QRY_produto2PR2_FILIAL: TIntegerField;
    QRY_produto2PR2_CUSTOINI: TFMTBCDField;
    QRY_produto2PR2_VENDAVISTA: TFMTBCDField;
    QRY_produto2PR2_VENDAPRAZO: TFMTBCDField;
    QRY_produto2PR2_SITUACAOTRIBUTARIA: TIntegerField;
    QRY_produto2PR2_ESTOQUE: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



end.
