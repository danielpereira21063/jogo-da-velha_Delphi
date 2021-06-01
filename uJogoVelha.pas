unit uJogoVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmJogoVelha = class(TForm)
    Image1: TImage;
    imgX: TImage;
    imgO: TImage;
    img1: TImage;
    img2: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    btnReiniciar: TButton;
    img3: TImage;
    imgLimpar: TImage;
    Button1: TButton;
    procedure img1Click(Sender: TObject);
    procedure img2Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img8Click(Sender: TObject);
    procedure img9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Reiniciar();
    procedure btnReiniciarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJogoVelha: TfrmJogoVelha;
  vez : double;
  xvertical1, xvertical2, xvertical3, xhorizontal1, xhorizontal2, xhorizontal3, xdiagonal1, xdiagonal2 : byte;
  overtical1, overtical2, overtical3, ohorizontal1, ohorizontal2, ohorizontal3, odiagonal1, odiagonal2 : byte;
  empate : byte;

implementation

{$R *.dfm}

/////////      C�DIGO DAS IMAGENS      //////
procedure TfrmJogoVelha.img1Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img1.Picture:= imgX.Picture;
    vez := 1;
    xdiagonal1 := 1;
    xvertical1 := 1;
    xhorizontal1 := 1;


  end else
  if vez = 1 then
  begin
    img1.Picture:= imgO.Picture;
    vez:= 0;
    odiagonal1 := 1;
    overtical1 := 1;
    ohorizontal1 := 1;
  end;
  if ((xdiagonal1 = 3) or (xvertical1 = 3) or (xhorizontal1 = 3)) then
    begin
      showmessage('X venceu');
    end;
  if ((odiagonal1 = 3) or (overtical1 = 3) or (ohorizontal1 = 3)) then
    begin
      showmessage('O venceu');
    end;

  img1.Enabled:= false;
end;

procedure TfrmJogoVelha.img2Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img2.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img2.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img2.Enabled:= false;
end;

procedure TfrmJogoVelha.img3Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img3.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img3.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img3.Enabled:= false;
end;

procedure TfrmJogoVelha.img4Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img4.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img4.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img4.Enabled:= false;
end;

procedure TfrmJogoVelha.img5Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img5.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img5.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img5.Enabled:= false;
end;

procedure TfrmJogoVelha.img6Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img6.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img6.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img6.Enabled:= false;
end;

procedure TfrmJogoVelha.img7Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img7.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img7.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img7.Enabled:= false;
end;

procedure TfrmJogoVelha.img8Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img8.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img8.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img8.Enabled:= false;
end;

procedure TfrmJogoVelha.img9Click(Sender: TObject);
begin
  if vez = 0 then
  begin
    img9.Picture:= imgX.Picture;
    vez := 1;
  end else
  if vez = 1 then
  begin
    img9.Picture:= imgO.Picture;
    vez:= 0;
  end;
  img9.Enabled:= false;
end;
//////// FIM DO C�DIGO DAS IMAGENS /////////



//// REINICIAR JOGO ///////
procedure TfrmJogoVelha.Reiniciar;
begin
  vez := 0;

  img1.Picture:= imglimpar.Picture;
  img2.Picture:= imgLimpar.Picture;
  img3.Picture:= imgLimpar.Picture;
  img4.Picture:= imgLimpar.Picture;
  img5.Picture:= imgLimpar.Picture;
  img6.Picture:= imgLimpar.Picture;
  img7.Picture:= imgLimpar.Picture;
  img8.Picture:= imgLimpar.Picture;
  img9.Picture:= imgLimpar.Picture;

  img1.Enabled:= true;
  img2.Enabled:= true;
  img3.Enabled:= true;
  img4.Enabled:= true;
  img5.Enabled:= true;
  img6.Enabled:= true;
  img7.Enabled:= true;
  img8.Enabled:= true;
  img9.Enabled:= true;
end;

//// REINICIAR JOGO ///////
procedure TfrmJogoVelha.btnReiniciarClick(Sender: TObject);
begin
  Reiniciar;
end;

// AO CRIAR O FORM�L�RIO A VEZ PASSA A VELER 0
procedure TfrmJogoVelha.Button1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmJogoVelha.FormCreate(Sender: TObject);
begin
  vez := 0;
end;

end.
