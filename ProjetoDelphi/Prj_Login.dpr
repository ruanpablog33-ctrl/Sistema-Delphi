program Prj_Login;

uses
  Vcl.Forms,
  Vcl.Controls,
  uLogin in 'uLogin.pas' {frmLogin},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  UnitLancamentos in 'UnitLancamentos.pas' {frmLancamentos},
  UnitOrcamento in 'UnitOrcamento.pas' {frmOrcamento},
  uDM in 'uDM.pas' {dtmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // 1. Cria apenas o Login inicialmente
  frmLogin := TfrmLogin.Create(nil);
  try
    // 2. Mostra o Login e espera a resposta (Modal)
    // Lembre-se: No botão "Entrar" do login você colocou ModalResult := mrOk
    if frmLogin.ShowModal = mrOk then
    begin
      // 3. Se logou com sucesso, cria e abre o Dashboard
      Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmDados, dtmDados);
  Application.Run;
    end;
  finally
    // 4. Destrói o login da memória
    frmLogin.Free;
  end;
end.
