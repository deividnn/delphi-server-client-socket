inherited frmProduto: TfrmProduto
  Caption = 'Produtos'
  ClientHeight = 491
  ClientWidth = 757
  OnCreate = FormCreate
  ExplicitWidth = 773
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Left = 613
    Height = 418
    ExplicitLeft = 613
    ExplicitHeight = 418
    inherited btnInserir: TButton
      OnClick = btnInserirClick
    end
    inherited btnEditar: TButton
      OnClick = btnEditarClick
    end
  end
  inherited Panel3: TPanel
    Width = 613
    Height = 418
    ExplicitWidth = 613
    ExplicitHeight = 418
    inherited grid: TDBGrid
      Width = 611
      Height = 416
    end
  end
  inherited Panel2: TPanel
    Width = 757
    ExplicitWidth = 757
    inherited btnPesquisar: TButton
      OnClick = btnPesquisarClick
    end
  end
end
