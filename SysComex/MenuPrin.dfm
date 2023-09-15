object frmMenuPrin: TfrmMenuPrin
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Sistema Comercial'
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 120
    Top = 128
    object Cadastro1: TMenuItem
      Caption = '&Cadastro'
      object Clientes1: TMenuItem
        Caption = '&Clientes'
        OnClick = Clientes1Click
      end
      object Funcionrios1: TMenuItem
        Caption = '&Funcion'#225'rios'
        OnClick = Funcionrios1Click
      end
      object Fornecedores1: TMenuItem
        Caption = 'F&ornecedores'
        OnClick = Fornecedores1Click
      end
      object Categorias1: TMenuItem
        Caption = 'C&ategorias'
        OnClick = Categorias1Click
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos1Click
      end
      object Apresentao1: TMenuItem
        Caption = '&Apresenta'#231#227'o'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        OnClick = Sair1Click
      end
    end
    object Vendas1: TMenuItem
      Caption = '&Vendas'
      object Entradas1: TMenuItem
        Caption = '&Entradas'
      end
      object Vendas2: TMenuItem
        Caption = '&Vendas'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object DetalhesdeEntrada1: TMenuItem
        Caption = '&Detalhes de Entrada'
      end
      object DetalhedeVendas1: TMenuItem
        Caption = 'D&etalhe de Vendas'
      end
    end
    object Relatrios1: TMenuItem
      Caption = '&Relat'#243'rios'
      object Vendas3: TMenuItem
        Caption = '&Vendas'
      end
      object Entradas2: TMenuItem
        Caption = '&Entradas'
      end
    end
    object Consultas1: TMenuItem
      Caption = 'C&onsultas'
      object Vendas4: TMenuItem
        Caption = '&Vendas'
      end
      object Entrada1: TMenuItem
        Caption = '&Entrada'
      end
    end
    object Sobre1: TMenuItem
      Caption = '&Sobre'
      object SobreoSistema1: TMenuItem
        Caption = '&Sobre o Sistema'
      end
    end
  end
  object dbComercio: TIBDatabase
    Connected = True
    DatabaseName = 'C:\SysComex\SYSCOMERCIO.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = Trans
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 148
    Top = 128
  end
  object Trans: TIBTransaction
    Active = True
    DefaultDatabase = dbComercio
    AutoStopAction = saNone
    Left = 176
    Top = 128
  end
end
