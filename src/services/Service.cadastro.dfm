object ServiceCadastro: TServiceCadastro
  OldCreateOrder = False
  Height = 517
  Width = 689
  object QRY_pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from pessoas where pes_codigo = :codigo')
    Left = 40
    Top = 48
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_pessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_pessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object strngfldQRY_pessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object strngfldQRY_pessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object intgrfldQRY_pessoasPES_TIPO: TIntegerField
      FieldName = 'PES_TIPO'
      Origin = 'PES_TIPO'
    end
    object strngfldQRY_pessoasPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object strngfldQRY_pessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 50
    end
    object strngfldQRY_pessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
  end
  object QRY_enderecos: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from endereco where end_codigo = :codigo')
    Left = 40
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object intgrfldQRY_enderecosEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object intgrfldQRY_enderecosEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object strngfldQRY_enderecosEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 100
    end
    object strngfldQRY_enderecosEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
    end
    object strngfldQRY_enderecosEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 100
    end
    object strngfldQRY_enderecosEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 100
    end
    object strngfldQRY_enderecosEND_OBS: TStringField
      FieldName = 'END_OBS'
      Origin = 'END_OBS'
      Size = 100
    end
    object strngfldQRY_enderecosEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
    end
  end
  object QRY_produto1: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto1 where pr1_codigo = :codigo')
    Left = 128
    Top = 104
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto1PR1_CODIGO: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arAutoInc
      FieldName = 'PR1_CODIGO'
      Origin = 'PR1_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_produto1PR1_NOMECOMPLETO: TStringField
      FieldName = 'PR1_NOMECOMPLETO'
      Origin = 'PR1_NOMECOMPLETO'
      Size = 100
    end
    object QRY_produto1PR1_NOMEPOPULAR: TStringField
      FieldName = 'PR1_NOMEPOPULAR'
      Origin = 'PR1_NOMEPOPULAR'
      Size = 100
    end
    object QRY_produto1PR1_CODBARRA: TStringField
      FieldName = 'PR1_CODBARRA'
      Origin = 'PR1_CODBARRA'
      Size = 50
    end
    object QRY_produto1PR1_REFERENCIA: TStringField
      FieldName = 'PR1_REFERENCIA'
      Origin = 'PR1_REFERENCIA'
      Size = 50
    end
    object QRY_produto1PR1_GRUPO: TIntegerField
      FieldName = 'PR1_GRUPO'
      Origin = 'PR1_GRUPO'
    end
    object QRY_produto1PR1_SUBGRUPO: TIntegerField
      FieldName = 'PR1_SUBGRUPO'
      Origin = 'PR1_SUBGRUPO'
    end
    object QRY_produto1PR1_NCM: TStringField
      FieldName = 'PR1_NCM'
      Origin = 'PR1_NCM'
      Size = 10
    end
  end
  object QRY_produto2: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from produto2 where pr2_codigo = :codigo')
    Left = 128
    Top = 48
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_produto2PR2_CODIGO: TIntegerField
      FieldName = 'PR2_CODIGO'
      Origin = 'PR2_CODIGO'
    end
    object QRY_produto2PR2_CODIGOPR1: TIntegerField
      FieldName = 'PR2_CODIGOPR1'
      Origin = 'PR2_CODIGOPR1'
    end
    object QRY_produto2PR2_FILIAL: TIntegerField
      FieldName = 'PR2_FILIAL'
      Origin = 'PR2_FILIAL'
    end
    object QRY_produto2PR2_CUSTOINI: TFMTBCDField
      FieldName = 'PR2_CUSTOINI'
      Origin = 'PR2_CUSTOINI'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAVISTA: TFMTBCDField
      FieldName = 'PR2_VENDAVISTA'
      Origin = 'PR2_VENDAVISTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_VENDAPRAZO: TFMTBCDField
      FieldName = 'PR2_VENDAPRAZO'
      Origin = 'PR2_VENDAPRAZO'
      currency = True
      Precision = 18
      Size = 2
    end
    object QRY_produto2PR2_SITUACAOTRIBUTARIA: TIntegerField
      FieldName = 'PR2_SITUACAOTRIBUTARIA'
      Origin = 'PR2_SITUACAOTRIBUTARIA'
    end
    object QRY_produto2PR2_ESTOQUE: TFMTBCDField
      Alignment = taCenter
      FieldName = 'PR2_ESTOQUE'
      Origin = 'PR2_ESTOQUE'
      Precision = 18
      Size = 2
    end
  end
end
