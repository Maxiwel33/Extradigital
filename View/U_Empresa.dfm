object Frm_empresa: TFrm_empresa
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadaempresa'
  ClientHeight = 454
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 454
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 56
      Width = 46
      Height = 13
      Caption = 'EMPRESA'
      FocusControl = dbedtEMPRESA
    end
    object lbl2: TLabel
      Left = 16
      Top = 96
      Width = 72
      Height = 13
      Caption = 'RAZAOSOCIAL'
      FocusControl = dbedtRAZAOSOCIAL
    end
    object lbl3: TLabel
      Left = 16
      Top = 136
      Width = 25
      Height = 13
      Caption = 'CNPJ'
      FocusControl = dbedtCNPJ
    end
    object lbl4: TLabel
      Left = 224
      Top = 136
      Width = 10
      Height = 13
      Caption = 'IE'
      FocusControl = dbedtIE
    end
    object lbl5: TLabel
      Left = 16
      Top = 176
      Width = 54
      Height = 13
      Caption = 'ENDERECO'
      FocusControl = dbedtENDERECO
    end
    object lbl6: TLabel
      Left = 482
      Top = 176
      Width = 43
      Height = 13
      Caption = 'NUMERO'
      FocusControl = dbedtNUMERO
    end
    object lbl7: TLabel
      Left = 16
      Top = 216
      Width = 38
      Height = 13
      Caption = 'CIDADE'
      FocusControl = dbedtCIDADE
    end
    object lbl8: TLabel
      Left = 416
      Top = 216
      Width = 13
      Height = 13
      Caption = 'UF'
      FocusControl = dbedtUF
    end
    object lbl9: TLabel
      Left = 16
      Top = 264
      Width = 39
      Height = 13
      Caption = 'BAIRRO'
      FocusControl = dbedtBAIRRO
    end
    object lbl10: TLabel
      Left = 482
      Top = 264
      Width = 19
      Height = 13
      Caption = 'CEP'
      FocusControl = dbedtCEP
    end
    object lbl11: TLabel
      Left = 16
      Top = 304
      Width = 27
      Height = 13
      Caption = 'FONE'
      FocusControl = dbedtFONE
    end
    object lbl12: TLabel
      Left = 157
      Top = 304
      Width = 19
      Height = 13
      Caption = 'FAX'
      FocusControl = dbedtFAX
    end
    object lbl13: TLabel
      Left = 287
      Top = 304
      Width = 30
      Height = 13
      Caption = 'EMAIL'
      FocusControl = dbedtEMAIL
    end
    object lbl14: TLabel
      Left = 16
      Top = 344
      Width = 13
      Height = 13
      Caption = 'HP'
      FocusControl = dbedtHP
    end
    object pnl2: TPanel
      Left = 0
      Top = 0
      Width = 635
      Height = 49
      Align = alTop
      Caption = 'Cadastro de Empresa'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object dbedtEMPRESA: TDBEdit
      Left = 16
      Top = 72
      Width = 600
      Height = 21
      DataField = 'EMPRESA'
      DataSource = Ds1
      TabOrder = 1
    end
    object dbedtRAZAOSOCIAL: TDBEdit
      Left = 16
      Top = 112
      Width = 600
      Height = 21
      DataField = 'RAZAOSOCIAL'
      DataSource = Ds1
      TabOrder = 2
    end
    object dbedtCNPJ: TDBEdit
      Left = 16
      Top = 152
      Width = 193
      Height = 21
      DataField = 'CNPJ'
      DataSource = Ds1
      TabOrder = 3
    end
    object dbedtIE: TDBEdit
      Left = 224
      Top = 152
      Width = 205
      Height = 21
      DataField = 'IE'
      DataSource = Ds1
      TabOrder = 4
    end
    object dbedtENDERECO: TDBEdit
      Left = 16
      Top = 192
      Width = 459
      Height = 21
      DataField = 'ENDERECO'
      DataSource = Ds1
      TabOrder = 5
    end
    object dbedtNUMERO: TDBEdit
      Left = 482
      Top = 192
      Width = 134
      Height = 21
      DataField = 'NUMERO'
      DataSource = Ds1
      TabOrder = 6
    end
    object dbedtCIDADE: TDBEdit
      Left = 16
      Top = 232
      Width = 394
      Height = 21
      DataField = 'CIDADE'
      DataSource = Ds1
      TabOrder = 7
    end
    object dbedtUF: TDBEdit
      Left = 416
      Top = 232
      Width = 30
      Height = 21
      DataField = 'UF'
      DataSource = Ds1
      TabOrder = 8
    end
    object dbedtBAIRRO: TDBEdit
      Left = 16
      Top = 280
      Width = 459
      Height = 21
      DataField = 'BAIRRO'
      DataSource = Ds1
      TabOrder = 9
    end
    object dbedtCEP: TDBEdit
      Left = 482
      Top = 280
      Width = 134
      Height = 21
      DataField = 'CEP'
      DataSource = Ds1
      TabOrder = 10
    end
    object dbedtFONE: TDBEdit
      Left = 16
      Top = 320
      Width = 129
      Height = 21
      DataField = 'FONE'
      DataSource = Ds1
      TabOrder = 11
    end
    object dbedtFAX: TDBEdit
      Left = 157
      Top = 320
      Width = 124
      Height = 21
      DataField = 'FAX'
      DataSource = Ds1
      TabOrder = 12
    end
    object dbedtEMAIL: TDBEdit
      Left = 287
      Top = 320
      Width = 329
      Height = 21
      DataField = 'EMAIL'
      DataSource = Ds1
      TabOrder = 13
    end
    object dbedtHP: TDBEdit
      Left = 16
      Top = 360
      Width = 600
      Height = 21
      DataField = 'HP'
      DataSource = Ds1
      TabOrder = 14
    end
    object pnl3: TPanel
      Left = 0
      Top = 402
      Width = 635
      Height = 52
      Align = alBottom
      Color = clWhite
      ParentBackground = False
      TabOrder = 15
      object dbnvgr1: TDBNavigator
        Left = 160
        Top = 8
        Width = 240
        Height = 25
        DataSource = Ds1
        TabOrder = 0
      end
    end
  end
  object Ds1: TDataSource
    DataSet = DM.QRY_Empresa
    Left = 352
    Top = 208
  end
end
