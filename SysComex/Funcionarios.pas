unit Funcionarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IBCustomDataSet, IBTable, StdCtrls, DBCtrls, Mask,
  Buttons, IBQuery, Grids, DBGrids;

type
  TfrmFuncionarios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    tblFuncionario: TIBTable;
    dsFuncionarios: TDataSource;
    tblFuncionarioIDFUNCIONARIO: TIntegerField;
    tblFuncionarioNOMEFUNCIONARIO: TIBStringField;
    tblFuncionarioSEXO: TIBStringField;
    tblFuncionarioDTNASCIMENTO: TIBStringField;
    tblFuncionarioNUMDOCUMENTO: TIBStringField;
    tblFuncionarioENDERECO: TIBStringField;
    tblFuncionarioTELEFONE: TIBStringField;
    tblFuncionarioEMAIL: TIBStringField;
    tblFuncionarioACESSO: TIBStringField;
    tblFuncionarioUSUARIO: TIBStringField;
    tblFuncionarioSENHA: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBNavigator1: TDBNavigator;
    Label12: TLabel;
    txtUsuario: TEdit;
    BitBtn1: TBitBtn;
    btnPesqFunc: TSpeedButton;
    qryPesqFunc: TIBQuery;
    dsPesqFunc: TDataSource;
    DBGrid1: TDBGrid;
    qryPesqFuncIDFUNCIONARIO: TIntegerField;
    qryPesqFuncNOMEFUNCIONARIO: TIBStringField;
    qryPesqFuncSEXO: TIBStringField;
    qryPesqFuncDTNASCIMENTO: TIBStringField;
    qryPesqFuncNUMDOCUMENTO: TIBStringField;
    qryPesqFuncENDERECO: TIBStringField;
    qryPesqFuncTELEFONE: TIBStringField;
    qryPesqFuncEMAIL: TIBStringField;
    qryPesqFuncACESSO: TIBStringField;
    qryPesqFuncUSUARIO: TIBStringField;
    qryPesqFuncSENHA: TIBStringField;
    qryContFunc: TIBQuery;
    procedure btnPesqFuncClick(Sender: TObject);
    procedure tblFuncionarioIDFUNCIONARIOValidate(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure tblFuncionarioNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure qryPesqFuncBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarios: TfrmFuncionarios;

implementation

uses MenuPrin;

{$R *.dfm}

procedure TfrmFuncionarios.btnPesqFuncClick(Sender: TObject);
begin
  qryPesqFunc.Close;
  qryPesqFunc.SQL.Text := 'SELECT * FROM FUNCIONARIO WHERE USUARIO = ' + quotedstr(txtUsuario.text);
  qryPesqFunc.Open;
end;

procedure TfrmFuncionarios.tblFuncionarioIDFUNCIONARIOValidate(
  Sender: TField);
begin
  if dsFuncionarios.State in [dsEdit, dsInsert] then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure TfrmFuncionarios.FormActivate(Sender: TObject);
begin
  tblFuncionario.Open;
end;

procedure TfrmFuncionarios.tblFuncionarioNewRecord(DataSet: TDataSet);
begin
  dbEdit2.SetFocus;
end;

procedure TfrmFuncionarios.FormDestroy(Sender: TObject);
begin
  tblFuncionario.Close;
end;

procedure TfrmFuncionarios.qryPesqFuncBeforePost(DataSet: TDataSet);
begin
  if dsFuncionarios.State = dsInsert then
  begin
    qryContFunc.Active := False;
    qryContFunc.Active := True;
    with  qryContFunc.Fields[0] do
      if IsNull then
        tblFuncionarioIDFUNCIONARIO.Value := 1
      else
        tblFuncionarioIDFUNCIONARIO.Value := AsInteger +1;
  end;
end;

end.
