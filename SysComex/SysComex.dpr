program SysComex;

uses
  Forms,
  MenuPrin in 'MenuPrin.pas' {frmMenuPrin},
  Categoria in 'Categoria.pas' {frmCategoria},
  Fornecedores in 'Fornecedores.pas' {frmFornecedores},
  Funcionarios in 'Funcionarios.pas' {frmFuncionarios},
  Produtos in 'Produtos.pas' {frmProdutos},
  Cliente in 'Cliente.pas' {frmClientes},
  Apresentacao in 'Apresentacao.pas' {frmApresentacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMenuPrin, frmMenuPrin);
  Application.CreateForm(TfrmCategoria, frmCategoria);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmFuncionarios, frmFuncionarios);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmApresentacao, frmApresentacao);
  Application.Run;
end.
