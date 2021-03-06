object DM: TDM
  OldCreateOrder = False
  Height = 302
  Width = 487
  object Conn1: TFDConnection
    Params.Strings = (
      'Database=C:\ExtraDigital\Banco\DADOS.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 32
  end
  object QRY_Empresa: TFDQuery
    ObjectView = False
    Connection = Conn1
    SQL.Strings = (
      'select * from empresa')
    Left = 88
    Top = 104
    object QRY_EmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldQRY_EmpresaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 60
    end
    object strngfldQRY_EmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 60
    end
    object strngfldQRY_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object strngfldQRY_EmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object strngfldQRY_EmpresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 40
    end
    object strngfldQRY_EmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object strngfldQRY_EmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object strngfldQRY_EmpresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object strngfldQRY_EmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object strngfldQRY_EmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object strngfldQRY_EmpresaFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 15
    end
    object strngfldQRY_EmpresaFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 15
    end
    object strngfldQRY_EmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 35
    end
    object strngfldQRY_EmpresaHP: TStringField
      FieldName = 'HP'
      Origin = 'HP'
      Size = 35
    end
    object strngfldQRY_EmpresaLOGO: TStringField
      FieldName = 'LOGO'
      Origin = 'LOGO'
      Size = 60
    end
    object QRY_EmpresaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUS'
    end
  end
  object Wait1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 32
  end
  object Mysql1: TFDPhysMySQLDriverLink
    Left = 208
    Top = 33
  end
  object QRY_acesso: TFDQuery
    Connection = Conn1
    UpdateOptions.KeyFields = 'ID_SENHA'
    UpdateOptions.AutoIncFields = 'ID_SENHA'
    SQL.Strings = (
      'SELECT A.*, B.EMPRESA  FROM ACESSO A  LEFT JOIN EMPRESA B '
      'ON B.ID_EMPRESA = A.ID_EMPRESA'
      
        'WHERE A.USUARIO =:USUARIO AND A.SENHA =:SENHA AND B.EMPRESA =:EM' +
        'PRESA')
    Left = 176
    Top = 104
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
        Value = Null
      end
      item
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'EMPRESA'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
    object QRY_acessoID_SENHA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_SENHA'
      Origin = 'ID_SENHA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_acessoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object strngfldQRY_acessoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object strngfldQRY_acessoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 30
    end
    object strngfldQRY_acessoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
    object QRY_acessoNIVEL: TIntegerField
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
    end
    object strngfldQRY_acessoEMPRESAS: TStringField
      FieldKind = fkLookup
      FieldName = 'EMPRESAS'
      LookupDataSet = QRY_Empresa
      LookupKeyFields = 'ID_EMPRESA'
      LookupResultField = 'EMPRESA'
      KeyFields = 'ID_EMPRESA'
      Lookup = True
    end
  end
end
