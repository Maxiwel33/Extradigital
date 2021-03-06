unit U_Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB;

type
  TFrm_empresa = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    Ds1: TDataSource;
    lbl1: TLabel;
    dbedtEMPRESA: TDBEdit;
    lbl2: TLabel;
    dbedtRAZAOSOCIAL: TDBEdit;
    lbl3: TLabel;
    dbedtCNPJ: TDBEdit;
    lbl4: TLabel;
    dbedtIE: TDBEdit;
    lbl5: TLabel;
    dbedtENDERECO: TDBEdit;
    lbl6: TLabel;
    dbedtNUMERO: TDBEdit;
    lbl7: TLabel;
    dbedtCIDADE: TDBEdit;
    lbl8: TLabel;
    dbedtUF: TDBEdit;
    lbl9: TLabel;
    dbedtBAIRRO: TDBEdit;
    lbl10: TLabel;
    dbedtCEP: TDBEdit;
    lbl11: TLabel;
    dbedtFONE: TDBEdit;
    lbl12: TLabel;
    dbedtFAX: TDBEdit;
    lbl13: TLabel;
    dbedtEMAIL: TDBEdit;
    lbl14: TLabel;
    dbedtHP: TDBEdit;
    pnl3: TPanel;
    dbnvgr1: TDBNavigator;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_empresa: TFrm_empresa;

implementation

uses
  U_dataModulo;

{$R *.dfm}

procedure TFrm_empresa.FormShow(Sender: TObject);
begin
   dm.QRY_Empresa.Active:=True;
end;

end.
