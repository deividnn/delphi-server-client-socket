unit ufrmEditaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmEditaBase, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ACBrBase, ACBrEnterTab;

type
  TfrmEditaProduto = class(TfrmEditaBase)
    ACBrEnterTab1: TACBrEnterTab;
    Label1: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditaProduto: TfrmEditaProduto;

implementation

{$R *.dfm}

end.

