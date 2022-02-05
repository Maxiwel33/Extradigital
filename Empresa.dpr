program Empresa;

uses
  Vcl.Forms,
  U_principal in 'View\U_principal.pas' {FRM_PRINCIPAL},
  U_Empresa in 'View\U_Empresa.pas' {Frm_empresa},
  U_dataModulo in 'Dao\U_dataModulo.pas' {DM: TDataModule},
  U_Login in 'View\U_Login.pas' {frm_login},
  U_Usuarios in 'View\U_Usuarios.pas' {frm_usuarios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_PRINCIPAL, FRM_PRINCIPAL);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
