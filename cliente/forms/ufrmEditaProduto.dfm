inherited frmEditaProduto: TfrmEditaProduto
  Caption = 'Editar Produto'
  ClientHeight = 278
  ClientWidth = 351
  Position = poDesktopCenter
  ExplicitWidth = 367
  ExplicitHeight = 317
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 351
    Height = 225
    ExplicitWidth = 351
    ExplicitHeight = 225
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 46
      Height = 13
      Caption = 'Descricao'
    end
    object DBEdit1: TDBEdit
      Left = 90
      Top = 45
      Width = 207
      Height = 21
      DataField = 'descricao'
      DataSource = ds_tabela
      TabOrder = 0
    end
  end
  inherited Panel2: TPanel
    Top = 225
    Width = 351
    ExplicitTop = 225
    ExplicitWidth = 351
  end
  inherited ds_tabela: TDataSource
    Left = 72
    Top = 160
  end
  object ACBrEnterTab1: TACBrEnterTab
    EnterAsTab = True
    Left = 248
    Top = 152
  end
end
