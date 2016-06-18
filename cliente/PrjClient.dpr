program PrjClient;

uses
  Vcl.Forms,
  BSBase in 'bs\BSBase.pas',
  BSProduto in 'bs\BSProduto.pas',
  ufrmBase in 'forms\ufrmBase.pas' {frmBase},
  ufrmCliente in 'forms\ufrmCliente.pas' {frmCliente},
  ufrmEditaBase in 'forms\ufrmEditaBase.pas' {frmEditaBase},
  ufrmEditaCliente in 'forms\ufrmEditaCliente.pas' {frmEditaCliente},
  ufrmMain in 'forms\ufrmMain.pas' {frmMain},
  ufrmProduto in 'forms\ufrmProduto.pas' {frmProduto},
  ufrmEditaProduto in 'forms\ufrmEditaProduto.pas' {frmEditaProduto},
  BSCliente in 'bs\BSCliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

