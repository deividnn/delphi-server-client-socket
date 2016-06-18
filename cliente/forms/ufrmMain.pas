unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    btnClientes: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure btnClientesClick(Sender: TObject);
    procedure Initialize;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    function FormExiste(Name: string): Boolean;

    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ufrmCliente, ufrmProduto;

procedure TfrmMain.btnClientesClick(Sender: TObject);
begin
  if not FormExiste('frmCliente') then
  begin
    frmCliente := TfrmCliente.Create(Application);
    frmCliente.Show;
  end;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('deseja sair ?', mtConfirmation, mbYesNo, 0) = mrNo then
  begin
    abort;
  end

end;

function TfrmMain.FormExiste(Name: string): Boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to MDIChildCount - 1 do
  begin
    if UpperCase(MDIChildren[I].Name) = UpperCase(Name) then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TfrmMain.Initialize;
begin
  Application.Initialize;
  Application.ShowMainForm := false;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  if not FormExiste('frmProduto') then
  begin
    frmProduto := TfrmProduto.Create(Application);
    frmProduto.Show;
  end;
end;

end.
