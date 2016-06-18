object RDCliente: TRDCliente
  OldCreateOrder = False
  OnCreate = RemoteDataModuleCreate
  Height = 402
  Width = 532
  object qry_cliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from cliente where id=0')
    Left = 152
    Top = 24
    object qry_clienteid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_clientedescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object qry_clienteidade: TIntegerField
      FieldName = 'idade'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsp_cliente: TDataSetProvider
    DataSet = qry_cliente
    Options = [poIncFieldProps, poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    OnDataRequest = dsp_clienteDataRequest
    AfterUpdateRecord = dsp_clienteAfterUpdateRecord
    Left = 264
    Top = 24
  end
  object qry: TSQLQuery
    Params = <>
    Left = 32
    Top = 24
  end
end
