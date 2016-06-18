object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 537
  ClientWidth = 766
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 766
    Height = 73
    Align = alTop
    TabOrder = 0
    object btnClientes: TSpeedButton
      Left = 8
      Top = 8
      Width = 81
      Height = 59
      Caption = 'Clientes'
      OnClick = btnClientesClick
    end
    object SpeedButton1: TSpeedButton
      Left = 112
      Top = 8
      Width = 81
      Height = 59
      Caption = 'Produtos'
      OnClick = SpeedButton1Click
    end
  end
end
