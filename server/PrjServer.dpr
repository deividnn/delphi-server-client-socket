program PrjServer;

uses
  Vcl.Forms,
  PrjServer_TLB in 'PrjServer_TLB.pas',
  urdCliente in 'rd\urdCliente.pas' {RDCliente: TRemoteDataModule},
  udmConexao in 'dm\udmConexao.pas' {dmConexao: TDataModule},
  ufrmMain in 'forms\ufrmMain.pas' {frmMain},
  urdProduto in 'rd\urdProduto.pas' {RDProduto: TRemoteDataModule} {RDProduto: CoClass};

{$R *.TLB}

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

