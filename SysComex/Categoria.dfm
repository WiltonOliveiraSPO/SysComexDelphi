object frmCategoria: TfrmCategoria
  Left = 192
  Top = 117
  Width = 471
  Height = 480
  Caption = 'Cadastro de categorias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 96
      Top = 8
      Width = 240
      Height = 25
      DataSource = dsCategoria
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 455
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label3: TLabel
      Left = 22
      Top = 12
      Width = 39
      Height = 13
      Caption = 'C'#243'digo: '
    end
    object btnPesquisa: TSpeedButton
      Left = 184
      Top = 8
      Width = 23
      Height = 22
      Flat = True
      Glyph.Data = {
        06010000424D0601000000000000420000002800000007000000070000000100
        200003000000C4000000130B0000130B000000000000000000000000FF0000FF
        0000FF000000000000F500000066000000000000000000000000000000000000
        000000000066000000FF0000007A0000008F0000009900000051000000000000
        00000000007A000000C200000033000000150000009900000075000000000000
        008F00000033000000000000000000000000000000CC00000000000000990000
        0052000000290000000000000000000000C80000000000000051000000A30000
        008E0000009900000052000000A3000000000000000000000075000000CC0000
        00C8000000A30000000A}
      OnClick = btnPesquisaClick
    end
    object txtPesquisa: TEdit
      Left = 62
      Top = 9
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 400
    Width = 455
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object btnFechar: TBitBtn
      Left = 184
      Top = 8
      Width = 90
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 152
    Width = 455
    Height = 248
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 451
      Height = 244
      Align = alClient
      DataSource = dsPesquisa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDCATEGORIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMECATEGORIA'
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 82
    Width = 455
    Height = 70
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object Label1: TLabel
      Left = 20
      Top = 8
      Width = 39
      Height = 13
      Caption = 'C'#243'digo: '
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 31
      Width = 51
      Height = 13
      Caption = 'Categoria: '
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 62
      Top = 5
      Width = 75
      Height = 21
      DataField = 'IDCATEGORIA'
      DataSource = dsCategoria
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 62
      Top = 29
      Width = 200
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMECATEGORIA'
      DataSource = dsCategoria
      TabOrder = 1
    end
  end
  object tblCategoria: TIBTable
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BeforePost = tblCategoriaBeforePost
    OnNewRecord = tblCategoriaNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'IDCATEGORIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMECATEGORIA'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'IDCATEGORIA'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'IDCATEGORIA'
    StoreDefs = True
    TableName = 'CATEGORIA'
    Left = 390
    Top = 8
    object tblCategoriaIDCATEGORIA: TIntegerField
      DisplayLabel = 'C'#243'digo: '
      FieldName = 'IDCATEGORIA'
      OnValidate = tblCategoriaIDCATEGORIAValidate
    end
    object tblCategoriaNOMECATEGORIA: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'NOMECATEGORIA'
      Size = 50
    end
  end
  object dsCategoria: TDataSource
    DataSet = tblCategoria
    Left = 420
    Top = 8
  end
  object qryContador: TIBQuery
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCategoria
    SQL.Strings = (
      'SELECT MAX(IDCATEGORIA) FROM CATEGORIA')
    Left = 272
    Top = 89
  end
  object qryPesquisa: TIBQuery
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CATEGORIA WHERE IDCATEGORIA = '#39':ID'#39)
    Left = 232
    Top = 49
    object qryPesquisaIDCATEGORIA: TIntegerField
      DisplayLabel = 'C'#243'digo: '
      FieldName = 'IDCATEGORIA'
      Origin = 'CATEGORIA.IDCATEGORIA'
      Required = True
    end
    object qryPesquisaNOMECATEGORIA: TIBStringField
      DisplayLabel = 'Categoria: '
      FieldName = 'NOMECATEGORIA'
      Origin = 'CATEGORIA.NOMECATEGORIA'
      Size = 50
    end
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 264
    Top = 49
  end
end
