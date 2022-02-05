unit U_Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Data.DB, Vcl.Buttons;

type
  Tfrm_usuarios = class(TForm)
    Ds1: TDataSource;
    lbl2: TLabel;
    dbedtID_EMPRESA: TDBEdit;
    lbl3: TLabel;
    dbedtNOME: TDBEdit;
    lbl4: TLabel;
    dbedtUSUARIO: TDBEdit;
    lbl5: TLabel;
    dbedtSENHA: TDBEdit;
    lbl6: TLabel;
    dbedtNIVEL: TDBEdit;
    lbl7: TLabel;
    pnl1: TPanel;
    btn1: TButton;
    dblkcbbID_EMPRESA: TDBLookupComboBox;
    Ds2: TDataSource;
    lbl1: TLabel;
    btn2: TBitBtn;
    btn3: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_usuarios: Tfrm_usuarios;

implementation

uses
  U_dataModulo;

{$R *.dfm}

procedure Tfrm_usuarios.btn1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_usuarios.btn2Click(Sender: TObject);
begin
DM.QRY_acesso.Insert;
end;

procedure Tfrm_usuarios.btn3Click(Sender: TObject);
begin
  dm.QRY_acesso.Post;
end;

procedure Tfrm_usuarios.FormShow(Sender: TObject);
begin
   dm.QRY_acesso.Open();
//   DM.QRY_Empresa.Open();
end;

end.
