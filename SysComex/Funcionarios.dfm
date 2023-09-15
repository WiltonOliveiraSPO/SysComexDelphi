object frmFuncionarios: TfrmFuncionarios
  Left = 256
  Top = 120
  Width = 620
  Height = 587
  Caption = 'Cadastro de Funcion'#225'rios'
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
    Width = 604
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 48
      Top = 8
      Width = 240
      Height = 25
      DataSource = dsFuncionarios
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 604
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object Label12: TLabel
      Left = 56
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Usu'#225'rio: '
    end
    object btnPesqFunc: TSpeedButton
      Left = 229
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
      OnClick = btnPesqFuncClick
    end
    object txtUsuario: TEdit
      Left = 103
      Top = 11
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 507
    Width = 604
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 256
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
    Top = 360
    Width = 604
    Height = 147
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 2
      Width = 600
      Height = 143
      Align = alClient
      DataSource = dsPesqFunc
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDFUNCIONARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEFUNCIONARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SEXO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTNASCIMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMDOCUMENTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ENDERECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACESSO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USUARIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SENHA'
          Visible = True
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 82
    Width = 604
    Height = 278
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object Label1: TLabel
      Left = 56
      Top = 9
      Width = 39
      Height = 13
      Caption = 'C'#243'digo: '
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 61
      Top = 33
      Width = 34
      Height = 13
      Caption = 'Nome: '
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 65
      Top = 55
      Width = 30
      Height = 13
      Caption = 'Sexo: '
    end
    object Label4: TLabel
      Left = 19
      Top = 80
      Width = 76
      Height = 13
      Caption = 'Dt. Nascimento:'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 6
      Top = 105
      Width = 89
      Height = 13
      Caption = 'Num. Documento: '
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 43
      Top = 130
      Width = 52
      Height = 13
      Caption = 'Endere'#231'o: '
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 47
      Top = 155
      Width = 48
      Height = 13
      Caption = 'Telefone: '
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 59
      Top = 179
      Width = 34
      Height = 13
      Caption = 'E-mail: '
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 54
      Top = 202
      Width = 41
      Height = 13
      Caption = 'Acesso: '
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 53
      Top = 227
      Width = 42
      Height = 13
      Caption = 'Usu'#225'rio: '
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 59
      Top = 251
      Width = 37
      Height = 13
      Caption = 'Senha: '
      FocusControl = DBEdit11
    end
    object DBEdit1: TDBEdit
      Left = 98
      Top = 6
      Width = 100
      Height = 21
      DataField = 'IDFUNCIONARIO'
      DataSource = dsFuncionarios
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 98
      Top = 29
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEFUNCIONARIO'
      DataSource = dsFuncionarios
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 98
      Top = 76
      Width = 150
      Height = 21
      DataField = 'DTNASCIMENTO'
      DataSource = dsFuncionarios
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 98
      Top = 101
      Width = 150
      Height = 21
      DataField = 'NUMDOCUMENTO'
      DataSource = dsFuncionarios
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 98
      Top = 126
      Width = 250
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = dsFuncionarios
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 98
      Top = 151
      Width = 150
      Height = 21
      DataField = 'TELEFONE'
      DataSource = dsFuncionarios
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 98
      Top = 176
      Width = 150
      Height = 21
      CharCase = ecLowerCase
      DataField = 'EMAIL'
      DataSource = dsFuncionarios
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 98
      Top = 199
      Width = 150
      Height = 21
      DataField = 'ACESSO'
      DataSource = dsFuncionarios
      TabOrder = 7
    end
    object DBEdit10: TDBEdit
      Left = 98
      Top = 223
      Width = 150
      Height = 21
      CharCase = ecLowerCase
      DataField = 'USUARIO'
      DataSource = dsFuncionarios
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 98
      Top = 248
      Width = 150
      Height = 21
      CharCase = ecLowerCase
      DataField = 'SENHA'
      DataSource = dsFuncionarios
      TabOrder = 9
    end
    object DBComboBox1: TDBComboBox
      Left = 99
      Top = 53
      Width = 75
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SEXO'
      DataSource = dsFuncionarios
      ItemHeight = 13
      Items.Strings = (
        'M'
        'F'
        'O')
      TabOrder = 10
    end
  end
  object tblFuncionario: TIBTable
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    OnNewRecord = tblFuncionarioNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'FUNCIONARIO'
    Left = 440
    Top = 8
    object tblFuncionarioIDFUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'digo: '
      FieldName = 'IDFUNCIONARIO'
      OnValidate = tblFuncionarioIDFUNCIONARIOValidate
    end
    object tblFuncionarioNOMEFUNCIONARIO: TIBStringField
      DisplayLabel = 'Nome: '
      FieldName = 'NOMEFUNCIONARIO'
      Size = 50
    end
    object tblFuncionarioSEXO: TIBStringField
      DisplayLabel = 'Sexo: '
      FieldName = 'SEXO'
      Size = 1
    end
    object tblFuncionarioDTNASCIMENTO: TIBStringField
      DisplayLabel = 'Dt. Nascimento:'
      FieldName = 'DTNASCIMENTO'
      EditMask = '!99/99/00;1;_'
    end
    object tblFuncionarioNUMDOCUMENTO: TIBStringField
      DisplayLabel = 'Num. Documento: '
      FieldName = 'NUMDOCUMENTO'
      Size = 50
    end
    object tblFuncionarioENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o: '
      FieldName = 'ENDERECO'
      Size = 100
    end
    object tblFuncionarioTELEFONE: TIBStringField
      DisplayLabel = 'Telefone: '
      FieldName = 'TELEFONE'
      Size = 50
    end
    object tblFuncionarioEMAIL: TIBStringField
      DisplayLabel = 'E-mail: '
      FieldName = 'EMAIL'
      Size = 50
    end
    object tblFuncionarioACESSO: TIBStringField
      DisplayLabel = 'Acesso: '
      FieldName = 'ACESSO'
      Size = 50
    end
    object tblFuncionarioUSUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio: '
      FieldName = 'USUARIO'
      Size = 50
    end
    object tblFuncionarioSENHA: TIBStringField
      DisplayLabel = 'Senha: '
      FieldName = 'SENHA'
      Size = 50
    end
  end
  object dsFuncionarios: TDataSource
    DataSet = tblFuncionario
    Left = 470
    Top = 8
  end
  object qryPesqFunc: TIBQuery
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BeforePost = qryPesqFuncBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO WHERE USUARIO = :USER')
    Left = 288
    Top = 47
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'USER'
        ParamType = ptUnknown
      end>
    object qryPesqFuncIDFUNCIONARIO: TIntegerField
      DisplayLabel = 'C'#243'digo: '
      FieldName = 'IDFUNCIONARIO'
      Origin = 'FUNCIONARIO.IDFUNCIONARIO'
      Required = True
    end
    object qryPesqFuncNOMEFUNCIONARIO: TIBStringField
      DisplayLabel = 'Nome: '
      FieldName = 'NOMEFUNCIONARIO'
      Origin = 'FUNCIONARIO.NOMEFUNCIONARIO'
      Required = True
      Size = 50
    end
    object qryPesqFuncSEXO: TIBStringField
      DisplayLabel = 'Sexo: '
      FieldName = 'SEXO'
      Origin = 'FUNCIONARIO.SEXO'
      FixedChar = True
      Size = 1
    end
    object qryPesqFuncDTNASCIMENTO: TIBStringField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'DTNASCIMENTO'
      Origin = 'FUNCIONARIO.DTNASCIMENTO'
    end
    object qryPesqFuncNUMDOCUMENTO: TIBStringField
      DisplayLabel = 'Num. Doc: '
      FieldName = 'NUMDOCUMENTO'
      Origin = 'FUNCIONARIO.NUMDOCUMENTO'
      Required = True
      Size = 50
    end
    object qryPesqFuncENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o: '
      FieldName = 'ENDERECO'
      Origin = 'FUNCIONARIO.ENDERECO'
      Required = True
      Size = 100
    end
    object qryPesqFuncTELEFONE: TIBStringField
      DisplayLabel = 'Telefone: '
      FieldName = 'TELEFONE'
      Origin = 'FUNCIONARIO.TELEFONE'
      Required = True
      Size = 50
    end
    object qryPesqFuncEMAIL: TIBStringField
      DisplayLabel = 'E-mail: '
      FieldName = 'EMAIL'
      Origin = 'FUNCIONARIO.EMAIL'
      Required = True
      Size = 50
    end
    object qryPesqFuncACESSO: TIBStringField
      DisplayLabel = 'Acesso: '
      FieldName = 'ACESSO'
      Origin = 'FUNCIONARIO.ACESSO'
      Required = True
      Size = 50
    end
    object qryPesqFuncUSUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio: '
      FieldName = 'USUARIO'
      Origin = 'FUNCIONARIO.USUARIO'
      Required = True
      Size = 50
    end
    object qryPesqFuncSENHA: TIBStringField
      DisplayLabel = 'Senha: '
      FieldName = 'SENHA'
      Origin = 'FUNCIONARIO.SENHA'
      Required = True
      Size = 50
    end
  end
  object dsPesqFunc: TDataSource
    DataSet = qryPesqFunc
    Left = 320
    Top = 47
  end
  object qryContFunc: TIBQuery
    Database = frmMenuPrin.dbComercio
    Transaction = frmMenuPrin.Trans
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MAX (IDFUNCIONARIO) FROM FUNCIONARIO')
    Left = 392
    Top = 114
  end
end
