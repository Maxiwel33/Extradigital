object frm_usuarios: Tfrm_usuarios
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'usuarios'
  ClientHeight = 299
  ClientWidth = 430
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
  object lbl2: TLabel
    Left = 8
    Top = 64
    Width = 63
    Height = 13
    Caption = 'ID_EMPRESA'
    FocusControl = dbedtID_EMPRESA
  end
  object lbl3: TLabel
    Left = 8
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = dbedtNOME
  end
  object lbl4: TLabel
    Left = 8
    Top = 144
    Width = 46
    Height = 13
    Caption = 'USUARIO'
    FocusControl = dbedtUSUARIO
  end
  object lbl5: TLabel
    Left = 167
    Top = 144
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = dbedtSENHA
  end
  object lbl6: TLabel
    Left = 8
    Top = 184
    Width = 28
    Height = 13
    Caption = 'NIVEL'
    FocusControl = dbedtNIVEL
  end
  object lbl7: TLabel
    Left = 152
    Top = 64
    Width = 52
    Height = 13
    Caption = 'EMPRESAS'
  end
  object lbl1: TLabel
    Left = 16
    Top = 231
    Width = 361
    Height = 13
    Caption = 
      '1 - nivel Basico / 2 -Nivel Intermediario / 3 - nivel Administra' +
      'dor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbedtID_EMPRESA: TDBEdit
    Left = 8
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ID_EMPRESA'
    DataSource = Ds1
    Enabled = False
    TabOrder = 0
  end
  object dbedtNOME: TDBEdit
    Left = 8
    Top = 120
    Width = 394
    Height = 21
    DataField = 'NOME'
    DataSource = Ds1
    TabOrder = 1
  end
  object dbedtUSUARIO: TDBEdit
    Left = 8
    Top = 160
    Width = 153
    Height = 21
    DataField = 'USUARIO'
    DataSource = Ds1
    TabOrder = 2
  end
  object dbedtSENHA: TDBEdit
    Left = 167
    Top = 160
    Width = 235
    Height = 21
    DataField = 'SENHA'
    DataSource = Ds1
    TabOrder = 3
  end
  object dbedtNIVEL: TDBEdit
    Left = 8
    Top = 200
    Width = 63
    Height = 21
    DataField = 'NIVEL'
    DataSource = Ds1
    TabOrder = 4
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 430
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Cadastro de Usuarios'
    Color = 1228799
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    ExplicitWidth = 422
  end
  object btn1: TButton
    Left = 304
    Top = 187
    Width = 98
    Height = 38
    Caption = 'Fecha'
    TabOrder = 6
    OnClick = btn1Click
  end
  object dblkcbbID_EMPRESA: TDBLookupComboBox
    Left = 152
    Top = 80
    Width = 250
    Height = 21
    DataField = 'ID_EMPRESA'
    DataSource = Ds1
    KeyField = 'ID_EMPRESA'
    ListField = 'EMPRESA'
    ListSource = Ds2
    TabOrder = 7
  end
  object btn2: TBitBtn
    Left = 16
    Top = 260
    Width = 97
    Height = 31
    Caption = 'Novo'
    TabOrder = 8
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 128
    Top = 256
    Width = 97
    Height = 35
    Caption = 'Salvar'
    TabOrder = 9
    OnClick = btn3Click
  end
  object Ds1: TDataSource
    DataSet = DM.QRY_acesso
    Left = 216
    Top = 192
  end
  object Ds2: TDataSource
    DataSet = DM.QRY_Empresa
    Left = 248
    Top = 56
  end
end
