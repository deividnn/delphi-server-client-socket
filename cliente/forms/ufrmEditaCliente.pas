unit ufrmEditaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmEditaBase, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ACBrBase, ACBrEnterTab;

type
  TfrmEditaCliente = class(TfrmEditaBase)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    ACBrEnterTab1: TACBrEnterTab;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditaCliente: TfrmEditaCliente;

implementation

{$R *.dfm}

end.

