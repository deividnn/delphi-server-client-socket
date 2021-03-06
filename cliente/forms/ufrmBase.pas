unit ufrmBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,  System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmBase = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    btnInserir: TButton;
    btnFechar: TButton;
    btnEditar: TButton;
    Panel2: TPanel;
    grid: TDBGrid;
    ds_tabela: TDataSource;
    edt_campo: TEdit;
    btnPesquisar: TButton;
    Button1: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase: TfrmBase;

implementation

{$R *.dfm}

procedure TfrmBase.btnFecharClick(Sender: TObject);
begin
  self.Close;
  self.free;
end;



procedure TfrmBase.Button1Click(Sender: TObject);
begin
  if MessageDlg('deseja excluir?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    if (ds_tabela.DataSet.RecordCount > 0) then
    begin
      ds_tabela.DataSet.Delete;
    end
    else
      ShowMessage('lista vazia');

  end;

end;

end.
