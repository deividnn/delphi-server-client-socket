unit BSProduto;

interface

uses SysUtils, Classes, DB, DBClient, MConnect, SConnect, Variants,
  IniFiles, Messages, Windows, BSBase;

type
  TBSProduto = Class(TBSBase)
  private
  public
    constructor create;
    procedure select(param: string);
  End;

implementation

{ TBSCliente }

constructor TBSProduto.create;
begin
  inherited create;
  sck.ServerName := 'PrjServer.RDProduto';
  dataset.ProviderName := 'dsp_produto';
  sck.Connected := true;
end;

procedure TBSProduto.select(param: string);
begin
  dataset.Close;
  dataset.Data := dataset.DataRequest(vararrayof([param]));
end;

end.
