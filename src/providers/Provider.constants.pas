unit Provider.constants;

interface

procedure GET_pessoas(iTIPO: integer);
procedure GET_Produtos;
procedure GET_Produtos_detalhe(iCOD_PRODUTO: integer);

var

  iCOD_FILIAL: integer;
  sRAZAO_FILIAL: string;

implementation

uses
  Service.cadastro;


procedure GET_pessoas(iTIPO: integer);
begin
  ServiceCadastro.QRY_pessoas.Close;
  ServiceCadastro.QRY_pessoas.SQL.Clear;
  ServiceCadastro.QRY_pessoas.SQL.Add('select * from pessoas where pes_tipo = :tipo');
  ServiceCadastro.QRY_pessoas.SQL.Add('order by pes_codigo desc');
  ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTIPO;
  ServiceCadastro.QRY_pessoas.Open();
end;

procedure GET_Produtos;
begin
  ServiceCadastro.QRY_produto1.Close;
  ServiceCadastro.QRY_produto1.SQL.Clear;
  ServiceCadastro.QRY_produto1.SQL.Add('select * from produto1 order by pr1_codigo');
  ServiceCadastro.QRY_produto1.Open();
end;

procedure GET_Produtos_detalhe(iCOD_PRODUTO: integer);
begin
  ServiceCadastro.QRY_produto2.Close;
  ServiceCadastro.QRY_produto2.SQL.Clear;
  ServiceCadastro.QRY_produto2.SQL.Add('select * from produto2 where pr2_codigopr1 = :codigo');
  ServiceCadastro.QRY_produto2.Params[0].AsInteger := iCOD_PRODUTO;
  ServiceCadastro.QRY_produto2.Open();
end;


end.
