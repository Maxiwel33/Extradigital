unit U_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses,
  Vcl.ExtCtrls, Vcl.ComCtrls, System.IniFiles;

type
  TFRM_PRINCIPAL = class(TForm)
    pnl1: TPanel;
    pnl_menuLateral: TPanel;
    img1: TImage;
    lbl1: TLabel;
    pnl3: TPanel;
    img2: TImage;
    pnl4: TPanel;
    img3: TImage;
    pnl_fornecedor: TPanel;
    img4: TImage;
    pnl_usuarios: TPanel;
    img5: TImage;
    pnl_empresa: TPanel;
    img6: TImage;
    stat1: TStatusBar;
    pnl_central: TPanel;
    pnl9: TPanel;
    img8: TImage;
    img9: TImage;
    lbl2: TLabel;
    imgcentro: TImage;
    procedure FormShow(Sender: TObject);
    procedure pnl9Click(Sender: TObject);
    procedure img9Click(Sender: TObject);
    procedure img8Click(Sender: TObject);
    procedure pnl_empresaClick(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure pnl_usuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_PRINCIPAL: TFRM_PRINCIPAL;

implementation

uses
  U_Empresa, U_Login, U_Usuarios;

{$R *.dfm}

procedure TFRM_PRINCIPAL.FormCreate(Sender: TObject);
 var
 ArquivoINI: TIniFile;
begin
  ArquivoINI := TIniFile.Create('C:\extradigital\Arquivo.INI');
  ArquivoINI.WriteString('BANCO','LOCALIZAÇÃO','C:\extradigital\banco\dados.fdb');
  ArquivoINI.Free;
end;

procedure TFRM_PRINCIPAL.FormShow(Sender: TObject);
begin
 WindowState:=wsMaximized;
end;

procedure TFRM_PRINCIPAL.img8Click(Sender: TObject);
begin
Close;
end;

procedure TFRM_PRINCIPAL.img9Click(Sender: TObject);
begin
  if pnl_menuLateral.Width =65 then
  pnl_menuLateral.Width:=217
  else
  pnl_menuLateral.Width:=65;
end;

procedure TFRM_PRINCIPAL.pnl3Click(Sender: TObject);
begin
   imgcentro.Visible:=False;
   Application.CreateForm(Tfrm_login,frm_login);
   try
     frm_login.ShowModal;
   finally
   FreeAndNil(frm_login);

   end;
end;

procedure TFRM_PRINCIPAL.pnl_usuariosClick(Sender: TObject);
begin
   Application.CreateForm(Tfrm_usuarios,frm_usuarios);
   try
     frm_usuarios.ShowModal;
   finally
     FreeAndNil(frm_usuarios);
   end;
end;

procedure TFRM_PRINCIPAL.pnl_empresaClick(Sender: TObject);
begin
  Application.CreateForm(TFrm_empresa,Frm_empresa);
  try
    Frm_empresa.ShowModal;
  finally
    FreeAndNil(Frm_empresa);
  end;
end;

procedure TFRM_PRINCIPAL.pnl9Click(Sender: TObject);
begin
Close;
end;

end.
