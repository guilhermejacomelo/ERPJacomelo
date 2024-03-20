inherited ViewProdutos: TViewProdutos
  Caption = 'ViewProdutos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlTopo: TPanel
    ExplicitWidth = 1200
    inherited lblTitulo: TLabel
      Width = 1095
      Height = 29
      Caption = 'Produtos'
      ExplicitWidth = 77
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
        ExplicitTop = -3
        object lblPR1_CODIGO: TLabel
          Left = 26
          Top = 128
          Width = 49
          Height = 20
          Caption = 'C'#243'digo'
          FocusControl = edtPR1_CODIGO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNomeCompleto: TLabel
          Left = 120
          Top = 128
          Width = 194
          Height = 20
          Caption = 'Nome Completo do Produto'
          FocusControl = edtPR1_NOMECOMPLETO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblNomePopular: TLabel
          Left = 544
          Top = 128
          Width = 181
          Height = 20
          Caption = 'Nome Popular do Produto'
          FocusControl = edtPR1_NOMEPOPULAR
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloCadastro: TLabel
          Left = 26
          Top = 184
          Width = 111
          Height = 20
          Caption = 'C'#243'digo de barra'
          FocusControl = edtPR1_CODBARRA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloCadastro1: TLabel
          Left = 168
          Top = 184
          Width = 72
          Height = 20
          Caption = 'Refer'#234'ncia'
          FocusControl = edtPR1_REFERENCIA
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblTituloCadastro2: TLabel
          Left = 328
          Top = 184
          Width = 35
          Height = 20
          Caption = 'NCM'
          FocusControl = edtPR1_NCM
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object pnlTituloCadProdutos: TPanel
          Left = 0
          Top = 0
          Width = 1198
          Height = 105
          Align = alTop
          BevelOuter = bvNone
          Color = 13224393
          ParentBackground = False
          TabOrder = 0
          object lblTituloProdutos: TLabel
            Left = 26
            Top = 22
            Width = 200
            Height = 30
            Caption = 'Cadastro de Produtos'
            Font.Charset = ANSI_CHARSET
            Font.Color = 5131854
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtPR1_CODIGO: TDBEdit
          Left = 26
          Top = 155
          Width = 66
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PR1_CODIGO'
          DataSource = dsDados
          Enabled = False
          TabOrder = 1
        end
        object edtPR1_NOMECOMPLETO: TDBEdit
          Left = 120
          Top = 155
          Width = 400
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PR1_NOMECOMPLETO'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtPR1_NOMEPOPULAR: TDBEdit
          Left = 544
          Top = 155
          Width = 400
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PR1_NOMEPOPULAR'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtPR1_CODBARRA: TDBEdit
          Left = 26
          Top = 211
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PR1_CODBARRA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtPR1_REFERENCIA: TDBEdit
          Left = 168
          Top = 211
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PR1_REFERENCIA'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtPR1_NCM: TDBEdit
          Left = 328
          Top = 211
          Width = 134
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PR1_NCM'
          DataSource = dsDados
          TabOrder = 6
        end
      end
      inherited card_cadastro: TCard
        ExplicitWidth = 1198
        ExplicitHeight = 624
        inherited pnlTituloPesquisa: TPanel
          ExplicitWidth = 1198
        end
        inherited DBG_dados: TDBGrid
          Height = 359
          Columns = <
            item
              Expanded = False
              FieldName = 'PR1_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMECOMPLETO'
              Title.Caption = 'Nome Completo'
              Width = 130
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_NOMEPOPULAR'
              Title.Caption = 'Nome Popular'
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_CODBARRA'
              Title.Caption = 'C'#243'digo Barras'
              Width = 147
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PR1_REFERENCIA'
              Title.Caption = 'Refer'#234'ncia'
              Width = 132
              Visible = True
            end>
        end
        object pnlDetalhes: TPanel
          Left = 0
          Top = 474
          Width = 1198
          Height = 150
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object DBG_Detalhes: TDBGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 1188
            Height = 140
            Cursor = crHandPoint
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alClient
            BorderStyle = bsNone
            DataSource = dsProduto2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'PR2_FILIAL'
                Title.Alignment = taCenter
                Title.Caption = 'Filial'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_CUSTOINI'
                Title.Alignment = taCenter
                Title.Caption = 'Custo Inicial'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAVISTA'
                Title.Alignment = taCenter
                Title.Caption = 'Venda a vista'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_VENDAPRAZO'
                Title.Alignment = taCenter
                Title.Caption = 'Venda a prazo'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PR2_ESTOQUE'
                Title.Alignment = taCenter
                Title.Caption = 'Estoque'
                Width = 71
                Visible = True
              end>
          end
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_produto1
    OnDataChange = dsDadosDataChange
    Left = 872
    Top = 80
  end
  object dsProduto2: TDataSource
    DataSet = ServiceCadastro.QRY_produto2
    Left = 952
    Top = 80
  end
end
