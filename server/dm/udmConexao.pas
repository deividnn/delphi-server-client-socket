unit udmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXMySQL, Data.DB, Data.SqlExpr;

type
  TdmConexao = class(TDataModule)
    conexao: TSQLConnection;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  try
    conexao.Params.Values['hostname'] := 'localhost';
    conexao.Params.Values['database'] := 'delphi';
    conexao.Params.Values['user_name'] := 'deivid';
    conexao.Params.Values['password'] := '6291';
    conexao.Connected := true;
  except
    on e: Exception do
      raise Exception.Create(e.Message);
  end;
end;

procedure TdmConexao.DataModuleDestroy(Sender: TObject);
begin
  conexao.Connected := false;
end;

end.
