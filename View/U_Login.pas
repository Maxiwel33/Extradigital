unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.DBCtrls;

type
  Tfrm_login = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    stat1: TStatusBar;
    tmr1: TTimer;
    img1: TImage;
    edtUsuario: TEdit;
    edt_senha: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn1: TBitBtn;
    btn2: TBitBtn;
    pnl3: TPanel;
    img2: TImage;
    lbl_data: TLabel;
    Ds1: TDataSource;
    dblkcbb1: TDBLookupComboBox;
    Dsempresa: TDataSource;
    procedure tmr1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
   nivel_acesso: Integer;
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

uses
  U_principal, U_dataModulo;

{$R *.dfm}

procedure Tfrm_login.btn1Click(Sender: TObject);
begin
FRM_PRINCIPAL.imgcentro.Visible:=True;
Close;
end;

procedure Tfrm_login.btn2Click(Sender: TObject);
begin
  dm.QRY_acesso.Close;
  dm.QRY_acesso.ParamByName('USUARIO').AsString := edtusuario.Text;
  dm.QRY_acesso.ParamByName('SENHA').AsString := edt_senha.Text;
  dm.QRY_acesso.ParamByName('EMPRESA').AsString := dblkcbb1.Text;
  dm.QRY_acesso.Open();

  Nivel_acesso:=DM.QRY_acessoNIVEL.Value;

    if DM.QRY_acesso.IsEmpty then
  begin
  DM.QRY_acesso.Close;
    ShowMessage('nao cadastrado');
    Application.Terminate;
  end else
  begin
//frm_principal.Show;
  frm_login.Close;
//  Frm_principal.pnlimagem.Visible:=False;

      // Nivel de segurança 01

    if nivel_acesso = 1 then
    begin
    FRM_PRINCIPAL.pnl_empresa.Enabled      :=False;
    Frm_principal.pnl_fornecedor.Enabled    :=False;

  end
  else if nivel_acesso = 2 then
  begin
    Frm_principal.pnl_empresa.Enabled      :=False;
    Frm_principal.pnl_fornecedor.Enabled    :=True;

  end
    else if nivel_acesso = 3 then
    begin
    Frm_principal.pnl_empresa.Enabled      :=True;
    Frm_principal.pnl_usuarios.Enabled    :=True;

end;

end;
end;

procedure Tfrm_login.FormShow(Sender: TObject);

begin

    lbl_data.Caption:=FormatDateTime('dddddd',date);
    dm.QRY_acesso.Active:=True;
    dm.QRY_Empresa.Active:=True;
end;

procedure Tfrm_login.tmr1Timer(Sender: TObject);
begin
   stat1.Panels[0].Text:=TimeToStr(time);

end;

end.
