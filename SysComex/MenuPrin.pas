unit MenuPrin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, IBDatabase, DB;

type
  TfrmMenuPrin = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    Sobre1: TMenuItem;
    Clientes1: TMenuItem;
    Funcionrios1: TMenuItem;
    Fornecedores1: TMenuItem;
    Categorias1: TMenuItem;
    Produtos1: TMenuItem;
    Entradas1: TMenuItem;
    Vendas2: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    DetalhesdeEntrada1: TMenuItem;
    DetalhedeVendas1: TMenuItem;
    Vendas3: TMenuItem;
    Entradas2: TMenuItem;
    SobreoSistema1: TMenuItem;
    dbComercio: TIBDatabase;
    Trans: TIBTransaction;
    Consultas1: TMenuItem;
    Vendas4: TMenuItem;
    Entrada1: TMenuItem;
    Apresentao1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuPrin: TfrmMenuPrin;

implementation

uses Categoria, Cliente, Fornecedores, Funcionarios, Produtos;

{$R *.dfm}

procedure TfrmMenuPrin.Sair1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMenuPrin.Categorias1Click(Sender: TObject);
begin
  frmCategoria.ShowModal;
end;

procedure TfrmMenuPrin.FormActivate(Sender: TObject);
begin
  dbComercio.Connected := True;
end;

procedure TfrmMenuPrin.Clientes1Click(Sender: TObject);
begin
  frmClientes.ShowModal;
end;

procedure TfrmMenuPrin.Fornecedores1Click(Sender: TObject);
begin
  frmFornecedores.ShowModal;
end;

procedure TfrmMenuPrin.Funcionrios1Click(Sender: TObject);
begin
  frmFuncionarios.ShowModal;
end;

procedure TfrmMenuPrin.Produtos1Click(Sender: TObject);
begin
  frmProdutos.ShowModal;
end;

end.
