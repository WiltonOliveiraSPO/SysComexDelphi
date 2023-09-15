object frmApresentacao: TfrmApresentacao
  Left = 192
  Top = 117
  Width = 440
  Height = 435
  Caption = 'Cadastro de Apresenta'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 424
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 52
      Top = 9
      Width = 240
      Height = 25
      DataSource = dsApresentacao
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 355
    Width = 424
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 160
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
    Top = 107
    Width = 424
    Height = 248
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 420
      Height = 244
      Align = alClient
      DataSource = dsApresentacao
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 41
    Width = 424
    Height = 66
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 14
      Width = 97
      Height = 13
      Caption = 'C'#243'd. Apresenta'#231#227'o: '
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 70
      Top = 36
      Width = 34
      Height = 13
      Caption = 'Nome: '
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 108
      Top = 11
      Width = 100
      Height = 21
      DataField = 'IDAPRESENTACAO'
      DataSource = dsApresentacao
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 108
      Top = 34
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsApresentacao
      TabOrder = 1
    end
  end
  object tblApresentacao: TIBTable
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'APRESENTACAO'
    Left = 336
    Top = 8
    object tblApresentacaoIDAPRESENTACAO: TIntegerField
      DisplayLabel = 'C'#243'd. Apresenta'#231#227'o: '
      FieldName = 'IDAPRESENTACAO'
    end
    object tblApresentacaoNOME: TIBStringField
      DisplayLabel = 'Nome: '
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsApresentacao: TDataSource
    DataSet = tblApresentacao
    Left = 364
    Top = 8
  end
  object qryContApres: TIBQuery
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BeforePost = qryContApresBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MAX (IDAPRESENTACAO) FROM APRESENTACAO')
    Left = 376
    Top = 49
  end
end
