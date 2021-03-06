unit urdCliente;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, PrjServer_TLB, StdVcl, Data.DBXMySQL, Data.FMTBcd, Data.DB,
  Datasnap.Provider, Data.SqlExpr;

type
  TRDCliente = class(TRemoteDataModule, IRDCliente)
    qry_cliente: TSQLQuery;
    dsp_cliente: TDataSetProvider;
    qry_clienteid: TIntegerField;
    qry_clientedescricao: TStringField;
    qry_clienteidade: TIntegerField;
    qry: TSQLQuery;
    procedure RemoteDataModuleCreate(Sender: TObject);
    function dsp_clienteDataRequest(Sender: TObject; Input: OleVariant)
      : OleVariant;
    procedure dsp_clienteAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
  private
    { Private declarations }
  protected
    class procedure UpdateRegistry(Register: Boolean;
      const ClassID, ProgID: string); override;
  public
    { Public declarations }
    function generator: integer;
  end;

implementation

{$R *.DFM}

uses udmConexao;

// #################################################################################
procedure TRDCliente.dsp_clienteAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
  if UpdateKind = ukInsert then
    DeltaDS.FieldByName('id').NewValue := generator;
end;

// #################################################################################
function TRDCliente.dsp_clienteDataRequest(Sender: TObject; Input: OleVariant)
  : OleVariant;
var
  wsql: string;
begin
  wsql := 'select * from cliente';
  if (Input[0] <> '') then
  begin
    // nao traz nenhm registro
    wsql := wsql + ' where descricao like :nome';
  end
  else
    // traz todos os registros
    wsql := 'select * from cliente';
  qry_cliente.Close;
  qry_cliente.SQL.Clear;
  qry_cliente.SQL.Add(wsql);
  if (Input[0] <> '') then
    qry_cliente.ParamByName('nome').AsString := '%' + Input[0] + '%';
  result := dsp_cliente.Data;
end;

// #################################################################################
function TRDCliente.generator: integer;
begin
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('select max(id)+1 as sequenciador from cliente');
  qry.Open;
  if qry.FieldByName('sequenciador').AsInteger = 1 then
    result := 1
  else
    result := qry.FieldByName('sequenciador').AsInteger;
end;

// #################################################################################
procedure TRDCliente.RemoteDataModuleCreate(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    // busca componentes do tipo sqlquery e atribui a conexao do dm a ela
    if (Components[i] is TSQLQuery) then
      (Components[i] as TSQLQuery).SQLConnection := dmConexao.conexao;

  end;

end;
   //#################################################################################
class procedure TRDCliente.UpdateRegistry(Register: Boolean;
  const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end
  else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

initialization

TComponentFactory.Create(ComServer, TRDCliente, Class_RDCliente,
  ciMultiInstance, tmApartment);

end.
