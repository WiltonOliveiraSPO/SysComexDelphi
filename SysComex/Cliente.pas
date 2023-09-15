unit Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, IBCustomDataSet, IBTable, StdCtrls, DBCtrls, Mask,
  Grids, DBGrids, Buttons, IBQuery;

type
  TfrmClientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    tblCliente: TIBTable;
    dsCliente: TDataSource;
    tblClienteIDCLIENTE: TIntegerField;
    tblClienteNOMECLIENTE: TIBStringField;
    tblClienteSEXO: TIBStringField;
    tblClienteTIPODOC: TIBStringField;
    tblClienteNUMDOC: TIBStringField;
    tblClienteENDERECO: TIBStringField;
    tblClienteTELEFONE: TIBStringField;
    tblClienteEMAIL: TIBStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    txtCliente: TEdit;
    SpeedButton1: TSpeedButton;
    qryContador: TIBQuery;
    qryPesqCliente: TIBQuery;
    dsPesqCliente: TDataSource;
    qryPesqClienteIDCLIENTE: TIntegerField;
    qryPesqClienteNOMECLIENTE: TIBStringField;
    qryPesqClienteSEXO: TIBStringField;
    qryPesqClienteTIPODOC: TIBStringField;
    qryPesqClienteNUMDOC: TIBStringField;
    qryPesqClienteENDERECO: TIBStringField;
    qryPesqClienteTELEFONE: TIBStringField;
    qryPesqClienteEMAIL: TIBStringField;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tblClienteBeforePost(DataSet: TDataSet);
    procedure tblClienteNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

uses MenuPrin;

{$R *.dfm}

procedure TfrmClientes.FormActivate(Sender: TObject);
begin
  tblCliente.Open;
end;

procedure TfrmClientes.FormDestroy(Sender: TObject);
begin
  tblCliente.Close;
end;

procedure TfrmClientes.tblClienteBeforePost(DataSet: TDataSet);
begin
  if dsCliente.State = dsInsert then
  begin
    qryContador.Active := False;
    qryContador.Active := True;
    with qryContador.Fields[0] do
      if IsNull then
        tblClienteIDCLIENTE.Value := 1
      else
        tblClienteIDCLIENTE.Value := AsInteger +1;
  end;
end;

procedure TfrmClientes.tblClienteNewRecord(DataSet: TDataSet);
begin
  DBedit2.SetFocus;
end;

procedure TfrmClientes.SpeedButton1Click(Sender: TObject);
begin
  qryPesqCliente.Close;
  qryPesqCliente.SQL.Text := 'SELECT * FROM CLIENTE WHERE IDCLIENTE = ' + quotedstr(txtCliente.text);
  qryPesqCliente.Open;
end;

end.
