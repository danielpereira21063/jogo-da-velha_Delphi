program pJogoVelha;

uses
  Vcl.Forms,
  uJogoVelha in 'uJogoVelha.pas' {frmJogoVelha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmJogoVelha, frmJogoVelha);
  Application.Run;
end.
