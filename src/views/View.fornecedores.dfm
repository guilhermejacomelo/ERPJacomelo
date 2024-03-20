inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    ExplicitWidth = 1200
    inherited lblTitulo: TLabel
      Width = 1095
      Height = 29
      Caption = 'Forncedores'
      ExplicitWidth = 105
    end
    inherited pnlFechar: TPanel
      ExplicitLeft = 1136
    end
  end
  inherited pnlRodape: TPanel
    ExplicitTop = 659
    ExplicitWidth = 1200
  end
  inherited pnlBackground: TPanel
    ExplicitWidth = 1200
    ExplicitHeight = 624
    inherited CardPanel_Listas: TCardPanel
      ActiveCard = card_pesquisa
      ExplicitWidth = 1198
      ExplicitHeight = 624
      inherited card_pesquisa: TCard
        object lblCodigoPes: TLabel
          Left = 26
          Top = 152
          Width = 65
          Height = 21
          Caption = 'C'#243'digo *'
          FocusControl = edtPES_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa1: TLabel
          Left = 120
          Top = 152
          Width = 89
          Height = 21
          Caption = 'CNPJ / CPF *'
          FocusControl = edtPES_CNPJCPF
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa2: TLabel
          Left = 296
          Top = 152
          Width = 169
          Height = 21
          Caption = 'Nome do Fornecedor *'
          FocusControl = edtPES_RAZAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa3: TLabel
          Left = 624
          Top = 152
          Width = 117
          Height = 21
          Caption = 'Nome Fantasia *'
          FocusControl = edtPES_FANTASIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa4: TLabel
          Left = 26
          Top = 224
          Width = 45
          Height = 21
          Caption = 'IERG *'
          FocusControl = edtPES_IERG
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa5: TLabel
          Left = 192
          Top = 224
          Width = 74
          Height = 21
          Caption = 'Telefone *'
          FocusControl = edtPES_TELEFONE
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloPesquisa6: TLabel
          Left = 26
          Top = 296
          Width = 98
          Height = 21
          Caption = 'Observa'#231#227'o *'
          FocusControl = edtPES_OBSERVACAO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadCliente: TPanel
          Left = 0
          Top = 0
          Width = 1198
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          Color = 13224393
          ParentBackground = False
          TabOrder = 0
          object lblTituloCadastro: TLabel
            Left = 26
            Top = 22
            Width = 241
            Height = 30
            Caption = 'Cadastro de Fornecedores'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5131854
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPES_CODIGO: TDBEdit
          Left = 26
          Top = 171
          Width = 57
          Height = 21
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object edtPES_CNPJCPF: TDBEdit
          Left = 120
          Top = 171
          Width = 153
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPES_RAZAO: TDBEdit
          Left = 296
          Top = 171
          Width = 297
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPES_FANTASIA: TDBEdit
          Left = 624
          Top = 171
          Width = 300
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPES_IERG: TDBEdit
          Left = 26
          Top = 243
          Width = 143
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_IERG'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPES_TELEFONE: TDBEdit
          Left = 192
          Top = 243
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtPES_OBSERVACAO: TDBEdit
          Left = 26
          Top = 315
          Width = 311
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
      inherited card_cadastro: TCard
        ExplicitWidth = 1198
        ExplicitHeight = 624
        inherited pnlTituloPesquisa: TPanel
          ExplicitWidth = 1198
        end
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome do Fornecedor'
              Width = 242
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ / CPF'
              Width = 105
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
  end
end
