unit Fornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IBCustomDataSet, IBTable, StdCtrls, Mask, DBCtrls,
  IBQuery, Grids, DBGrids, Buttons;

type
  TfrmFornecedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    tblFornecedor: TIBTable;
    dsFornecedores: TDataSource;
    tblFornecedorIDFORNECEDOR: TIntegerField;
    tblFornecedorNOMEFORNECEDOR: TIBStringField;
    tblFornecedorSETORCOMERCIAL: TIBStringField;
    tblFornecedorTIPODOCUMENTO: TIBStringField;
    tblFornecedorNUMDOCUMENTO: TIBStringField;
    tblFornecedorENDFORNECEDOR: TIBStringField;
    tblFornecedorTELFORNECEDOR: TIBStringField;
    tblFornecedorEMAILFORNECEDOR: TIBStringField;
    tblFornecedorSITEFORNECEDOR: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
    DBNavigator1: TDBNavigator;
    qryContador: TIBQuery;
    DBGrid1: TDBGrid;
    Label10: TLabel;
    txtFornecedor: TEdit;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    qryFornecedores: TIBQuery;
    dsQryFornecedores: TDataSource;
    qryFornecedoresIDFORNECEDOR: TIntegerField;
    qryFornecedoresNOMEFORNECEDOR: TIBStringField;
    qryFornecedoresSETORCOMERCIAL: TIBStringField;
    qryFornecedoresTIPODOCUMENTO: TIBStringField;
    qryFornecedoresNUMDOCUMENTO: TIBStringField;
    qryFornecedoresENDFORNECEDOR: TIBStringField;
    qryFornecedoresTELFORNECEDOR: TIBStringField;
    qryFornecedoresEMAILFORNECEDOR: TIBStringField;
    qryFornecedoresSITEFORNECEDOR: TIBStringField;
    procedure tblFornecedorBeforePost(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tblFornecedorNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFornecedores: TfrmFornecedores;

implementation

uses MenuPrin;

{$R *.dfm}

procedure TfrmFornecedores.tblFornecedorBeforePost(DataSet: TDataSet);
begin
  if dsFornecedores.State = dsInsert then
  begin
    qryContador.Active := False;
    qryContador.Active := True;
    with qryContador.Fields[0] do
      if IsNull then
        tblFornecedorIDFORNECEDOR.Value := 1
      else
        tblFornecedorIDFORNECEDOR.Value := AsInteger +1;
  end;
end;

procedure TfrmFornecedores.SpeedButton1Click(Sender: TObject);
begin
  qryFornecedores.Close;
  qryFornecedores.SQL.Text := 'SELECT * FROM FORNECEDOR WHERE IDFORNECEDOR = ' + quotedstr(txtFornecedor.text);
  qryFornecedores.Open;
end;

procedure TfrmFornecedores.FormActivate(Sender: TObject);
begin
  tblFornecedor.Open;
end;

procedure TfrmFornecedores.FormDestroy(Sender: TObject);
begin
  tblFornecedor.Close;
end;

procedure TfrmFornecedores.tblFornecedorNewRecord(DataSet: TDataSet);
begin
  dbEdit2.SetFocus;
end;

end.
