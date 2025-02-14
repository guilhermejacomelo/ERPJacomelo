unit Provider.conversao;

interface

uses
  SysUtils, StrUtils, Classes;

type
  TPCPessoas = (tpCliente, tpFornecedores, tpFuncionarios);
  TPCTelas = (tpProdutos, tpCaixa, tpGrupo, tpSubgrupo);

  function TelasToStr(const t: TPCTelas) : string;

  function PessoasToInt(const t: TPCPessoas) : integer;

  implementation

  function PessoasToInt(const t: TPCPessoas) : integer;
  begin
    case t of
      tpCliente: Result := 1;
      tpFornecedores: Result := 2;
      tpFuncionarios: Result := 3;
    end;
  end;

  function TelasToStr(const t: TPCTelas) : string;
  begin
    case t of
      tpProdutos: Result := 'Produtos' ;
      tpCaixa: Result := 'Caixa' ;
      tpGrupo: Result := 'Grupo' ;
      tpSubgrupo: Result := 'Subgrupo' ;
    end;
  end;

end.
