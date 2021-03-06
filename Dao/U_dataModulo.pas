unit U_dataModulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conn1: TFDConnection;
    QRY_Empresa: TFDQuery;
    Wait1: TFDGUIxWaitCursor;
    Mysql1: TFDPhysMySQLDriverLink;
    QRY_EmpresaID_EMPRESA: TIntegerField;
    strngfldQRY_EmpresaEMPRESA: TStringField;
    strngfldQRY_EmpresaRAZAOSOCIAL: TStringField;
    strngfldQRY_EmpresaCNPJ: TStringField;
    strngfldQRY_EmpresaIE: TStringField;
    strngfldQRY_EmpresaENDERECO: TStringField;
    strngfldQRY_EmpresaNUMERO: TStringField;
    strngfldQRY_EmpresaCIDADE: TStringField;
    strngfldQRY_EmpresaUF: TStringField;
    strngfldQRY_EmpresaBAIRRO: TStringField;
    strngfldQRY_EmpresaCEP: TStringField;
    strngfldQRY_EmpresaFONE: TStringField;
    strngfldQRY_EmpresaFAX: TStringField;
    strngfldQRY_EmpresaEMAIL: TStringField;
    strngfldQRY_EmpresaHP: TStringField;
    strngfldQRY_EmpresaLOGO: TStringField;
    QRY_EmpresaSTATUS: TIntegerField;
    QRY_acesso: TFDQuery;
    QRY_acessoID_SENHA: TIntegerField;
    QRY_acessoID_EMPRESA: TIntegerField;
    strngfldQRY_acessoNOME: TStringField;
    strngfldQRY_acessoUSUARIO: TStringField;
    strngfldQRY_acessoSENHA: TStringField;
    QRY_acessoNIVEL: TIntegerField;
    strngfldQRY_acessoEMPRESAS: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
