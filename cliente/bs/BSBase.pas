unit BSBase;

interface

uses SysUtils, Classes, DB, DBClient, MConnect, SConnect, Variants,
  IniFiles, Messages, Windows;

type
  TBSBase = Class
  private
    Fdataset: tclientdataset;
    Fdatasource: tdatasource;
    Fsck: tsocketconnection;

  public
    property dataset: tclientdataset read Fdataset write Fdataset;
    property datasource: tdatasource read Fdatasource write Fdatasource;
    property sck: tsocketconnection read Fsck write Fsck;
    procedure afterpost(pdataset: tdataset);
    procedure afterdelete(pdataset: tdataset);
    constructor create;
    destructor destroy;
  End;

implementation

{ TBSBase }

destructor TBSBase.destroy;
begin
  dataset.close;
  dataset.Free;
  datasource.Free;
  sck.Connected := false;
  sck.Free;
end;

{ TBSBase }

procedure TBSBase.afterdelete(pdataset: tdataset);
begin
   try
    dataset.ApplyUpdates(0);
  except
    on e: Exception do
      raise Exception.create(e.Message);
  end;
end;

procedure TBSBase.afterpost(pdataset: tdataset);
begin
  try
    dataset.ApplyUpdates(0);
  except
    on e: Exception do
      raise Exception.create(e.Message);
  end;

end;

constructor TBSBase.create;
begin

  sck := tsocketconnection.create(nil);
  sck.Host := 'localhost';
  sck.Port := 3070;

  dataset := tclientdataset.create(nil);
  datasource := tdatasource.create(nil);
  dataset.RemoteServer := sck;
  datasource.dataset := dataset;
  dataset.afterpost := afterpost;
  dataset.afterdelete := afterdelete;
end;

end.
