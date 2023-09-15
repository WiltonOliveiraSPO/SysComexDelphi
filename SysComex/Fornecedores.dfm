object frmFornecedores: TfrmFornecedores
  Left = 192
  Top = 117
  Width = 928
  Height = 613
  Caption = 'Cadastro de Fornecedores'
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
    Width = 912
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 96
      Top = 8
      Width = 240
      Height = 25
      DataSource = dsFornecedores
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 912
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label10: TLabel
      Left = 48
      Top = 16
      Width = 85
      Height = 13
      Caption = 'C'#243'd. Fornecedor: '
    end
    object SpeedButton1: TSpeedButton
      Left = 215
      Top = 9
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
      OnClick = SpeedButton1Click
    end
    object txtFornecedor: TEdit
      Left = 137
      Top = 11
      Width = 75
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 533
    Width = 912
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 400
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
    Top = 312
    Width = 912
    Height = 221
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 908
      Height = 217
      Align = alClient
      DataSource = dsQryFornecedores
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDFORNECEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFORNECEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SETORCOMERCIAL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TIPODOCUMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMDOCUMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDFORNECEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELFORNECEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAILFORNECEDOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SITEFORNECEDOR'
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 82
    Width = 912
    Height = 230
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object Label1: TLabel
      Left = 48
      Top = 9
      Width = 39
      Height = 13
      Caption = 'C'#243'digo: '
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 53
      Top = 32
      Width = 34
      Height = 13
      Caption = 'Nome: '
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 7
      Top = 55
      Width = 80
      Height = 13
      Caption = 'Setor Comercial: '
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 34
      Top = 78
      Width = 53
      Height = 13
      Caption = 'Tipo Doc.: '
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 30
      Top = 103
      Width = 57
      Height = 13
      Caption = 'Num. Doc.: '
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 34
      Top = 129
      Width = 52
      Height = 13
      Caption = 'Endere'#231'o: '
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 39
      Top = 153
      Width = 48
      Height = 13
      Caption = 'Telefone: '
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 54
      Top = 177
      Width = 34
      Height = 13
      Caption = 'E-mail: '
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 63
      Top = 201
      Width = 24
      Height = 13
      Caption = 'Site: '
      FocusControl = DBEdit9
    end
    object DBEdit1: TDBEdit
      Left = 90
      Top = 5
      Width = 75
      Height = 21
      DataField = 'IDFORNECEDOR'
      DataSource = dsFornecedores
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 90
      Top = 29
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEFORNECEDOR'
      DataSource = dsFornecedores
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 90
      Top = 52
      Width = 200
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SETORCOMERCIAL'
      DataSource = dsFornecedores
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 90
      Top = 75
      Width = 150
      Height = 21
      DataField = 'TIPODOCUMENTO'
      DataSource = dsFornecedores
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 90
      Top = 100
      Width = 150
      Height = 21
      DataField = 'NUMDOCUMENTO'
      DataSource = dsFornecedores
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 90
      Top = 126
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDFORNECEDOR'
      DataSource = dsFornecedores
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 90
      Top = 150
      Width = 150
      Height = 21
      DataField = 'TELFORNECEDOR'
      DataSource = dsFornecedores
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 90
      Top = 173
      Width = 200
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMAILFORNECEDOR'
      DataSource = dsFornecedores
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 90
      Top = 198
      Width = 150
      Height = 21
      CharCase = ecLowerCase
      DataField = 'SITEFORNECEDOR'
      DataSource = dsFornecedores
      TabOrder = 8
    end
  end
  object tblFornecedor: TIBTable
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BeforePost = tblFornecedorBeforePost
    OnNewRecord = tblFornecedorNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'IDFORNECEDOR'
    TableName = 'FORNECEDOR'
    Left = 512
    Top = 8
    object tblFornecedorIDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo: '
      FieldName = 'IDFORNECEDOR'
    end
    object tblFornecedorNOMEFORNECEDOR: TIBStringField
      DisplayLabel = 'Nome: '
      FieldName = 'NOMEFORNECEDOR'
      Size = 100
    end
    object tblFornecedorSETORCOMERCIAL: TIBStringField
      DisplayLabel = 'Setor Comercial: '
      FieldName = 'SETORCOMERCIAL'
      Size = 50
    end
    object tblFornecedorTIPODOCUMENTO: TIBStringField
      DisplayLabel = 'Tipo Doc.: '
      FieldName = 'TIPODOCUMENTO'
      Size = 50
    end
    object tblFornecedorNUMDOCUMENTO: TIBStringField
      DisplayLabel = 'Num. Doc.: '
      FieldName = 'NUMDOCUMENTO'
      Size = 50
    end
    object tblFornecedorENDFORNECEDOR: TIBStringField
      DisplayLabel = 'Endere'#231'o: '
      FieldName = 'ENDFORNECEDOR'
      Size = 100
    end
    object tblFornecedorTELFORNECEDOR: TIBStringField
      DisplayLabel = 'Telefone: '
      FieldName = 'TELFORNECEDOR'
      EditMask = '!\(999\)000-0000;1;_'
      Size = 50
    end
    object tblFornecedorEMAILFORNECEDOR: TIBStringField
      DisplayLabel = 'E-mail: '
      FieldName = 'EMAILFORNECEDOR'
      Size = 50
    end
    object tblFornecedorSITEFORNECEDOR: TIBStringField
      DisplayLabel = 'Site: '
      FieldName = 'SITEFORNECEDOR'
      Size = 50
    end
  end
  object dsFornecedores: TDataSource
    DataSet = tblFornecedor
    Left = 544
    Top = 8
  end
  object qryContador: TIBQuery
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MAX(IDFORNECEDOR) FROM FORNECEDOR')
    Left = 368
    Top = 90
  end
  object qryFornecedores: TIBQuery
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR WHERE IDFORNECEDOR = :CODIGO')
    Left = 256
    Top = 46
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryFornecedoresIDFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'digo: '
      FieldName = 'IDFORNECEDOR'
      Origin = 'FORNECEDOR.IDFORNECEDOR'
      Required = True
    end
    object qryFornecedoresNOMEFORNECEDOR: TIBStringField
      DisplayLabel = 'Nome: '
      FieldName = 'NOMEFORNECEDOR'
      Origin = 'FORNECEDOR.NOMEFORNECEDOR'
      Required = True
      Size = 100
    end
    object qryFornecedoresSETORCOMERCIAL: TIBStringField
      DisplayLabel = 'Setor Comercial: '
      FieldName = 'SETORCOMERCIAL'
      Origin = 'FORNECEDOR.SETORCOMERCIAL'
      Size = 50
    end
    object qryFornecedoresTIPODOCUMENTO: TIBStringField
      DisplayLabel = 'Tipo Doc.: '
      FieldName = 'TIPODOCUMENTO'
      Origin = 'FORNECEDOR.TIPODOCUMENTO'
      Required = True
      Size = 50
    end
    object qryFornecedoresNUMDOCUMENTO: TIBStringField
      DisplayLabel = 'Num. Doc.: '
      FieldName = 'NUMDOCUMENTO'
      Origin = 'FORNECEDOR.NUMDOCUMENTO'
      Required = True
      Size = 50
    end
    object qryFornecedoresENDFORNECEDOR: TIBStringField
      DisplayLabel = 'Endere'#231'o: '
      FieldName = 'ENDFORNECEDOR'
      Origin = 'FORNECEDOR.ENDFORNECEDOR'
      Required = True
      Size = 100
    end
    object qryFornecedoresTELFORNECEDOR: TIBStringField
      DisplayLabel = 'Telefone: '
      FieldName = 'TELFORNECEDOR'
      Origin = 'FORNECEDOR.TELFORNECEDOR'
      Required = True
      Size = 50
    end
    object qryFornecedoresEMAILFORNECEDOR: TIBStringField
      DisplayLabel = 'E-mail: '
      FieldName = 'EMAILFORNECEDOR'
      Origin = 'FORNECEDOR.EMAILFORNECEDOR'
      Size = 50
    end
    object qryFornecedoresSITEFORNECEDOR: TIBStringField
      DisplayLabel = 'Site: '
      FieldName = 'SITEFORNECEDOR'
      Origin = 'FORNECEDOR.SITEFORNECEDOR'
      Size = 50
    end
  end
  object dsQryFornecedores: TDataSource
    DataSet = qryFornecedores
    Left = 288
    Top = 47
  end
end
