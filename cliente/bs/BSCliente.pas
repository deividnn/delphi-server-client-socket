unit BSCliente;

interface

uses SysUtils, Classes, DB, DBClient, MConnect, SConnect, Variants,
  IniFiles, Messages, Windows, BSBase;

type
  TBSCliente = Class(TBSBase)
  private
  public
    constructor create;
    procedure select(param: string);
  End;

implementation

{ TBSCliente }

constructor TBSCliente.create;
begin
  inherited create;
  sck.ServerName := 'PrjServer.RDCliente';
  dataset.ProviderName := 'dsp_cliente';
  sck.Connected := true;
end;

procedure TBSCliente.select(param: string);
begin
  dataset.Close;
  dataset.Data := dataset.DataRequest(vararrayof([param]));
end;

end.
