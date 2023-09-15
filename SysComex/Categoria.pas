unit Categoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, DB,
  IBCustomDataSet, IBTable, Buttons, IBQuery;

type
  TfrmCategoria = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    tblCategoria: TIBTable;
    dsCategoria: TDataSource;
    tblCategoriaIDCATEGORIA: TIntegerField;
    tblCategoriaNOMECATEGORIA: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    btnFechar: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label3: TLabel;
    txtPesquisa: TEdit;
    qryContador: TIBQuery;
    btnPesquisa: TSpeedButton;
    qryPesquisa: TIBQuery;
    dsPesquisa: TDataSource;
    qryPesquisaIDCATEGORIA: TIntegerField;
    qryPesquisaNOMECATEGORIA: TIBStringField;
    procedure FormDestroy(Sender: TObject);
    procedure tblCategoriaNewRecord(DataSet: TDataSet);
    procedure tblCategoriaBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure tblCategoriaIDCATEGORIAValidate(Sender: TField);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoria: TfrmCategoria;

implementation

uses MenuPrin;

{$R *.dfm}

procedure TfrmCategoria.FormDestroy(Sender: TObject);
begin
  tblCategoria.Close;
end;

procedure TfrmCategoria.tblCategoriaNewRecord(DataSet: TDataSet);
begin
    dbedit2.SetFocus;
end;

procedure TfrmCategoria.tblCategoriaBeforePost(DataSet: TDataSet);
begin
  if dsCategoria.State = dsInsert then
  begin
    qryContador.Active := False;
    qryContador.Active := True;
    with qryContador.Fields[0] do
      if IsNull then
        tblCategoriaIDCATEGORIA.Value := 1
      else
        tblCategoriaIDCATEGORIA.Value := AsInteger +1;
  end;
end;

procedure TfrmCategoria.FormActivate(Sender: TObject);
begin
  tblCategoria.Open;
end;

procedure TfrmCategoria.tblCategoriaIDCATEGORIAValidate(Sender: TField);
begin
  if dsCategoria.State in [dsEdit, dsInsert] then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure TfrmCategoria.btnPesquisaClick(Sender: TObject);
begin
  qryPesquisa.Close;
  qryPesquisa.SQL.Text := 'SELECT * FROM CATEGORIA WHERE IDCATEGORIA = ' + quotedstr(txtPesquisa.text);
  qryPesquisa.Open;
end;

end.
