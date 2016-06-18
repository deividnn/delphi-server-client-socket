unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  JvComponentBase, JvTrayIcon, Vcl.AppEvnts;

type
  TfrmMain = class(TForm)
    JvTrayIcon1: TJvTrayIcon;
    ImageList1: TImageList;
    ApplicationEvents1: TApplicationEvents;
    procedure JvTrayIcon1DblClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

    procedure ApplicationEvents1Minimize(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.ApplicationEvents1Minimize(Sender: TObject);
begin
  JvTrayIcon1.Active := True;
  Self.Visible := False;
  ShowWindow(Self.Handle, SW_HIDE);
end;

procedure TfrmMain.JvTrayIcon1DblClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  JvTrayIcon1.Active := False;
  Self.Visible := True;
  Application.Restore;
  ShowWindow(Self.Handle, SW_RESTORE);
  Self.SetFocus;
end;

initialization

Application.ShowMainForm := False;

end.
