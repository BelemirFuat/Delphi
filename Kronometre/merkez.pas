unit merkez;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm1 = class(TForm)
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Timer1: TTimer;
    Label1: TLabel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    saat,dakika,saniye: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
timer1.Enabled:=false;
SpeedButton1.Enabled:= true;
SpeedButton2.Enabled:= false;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
timer1.Enabled:= true;
saat := 0;
dakika:= 0;
saniye:= 0;
SpeedButton2.Enabled:= false;
SpeedButton1.Enabled:= true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
text1.Text:= saat.ToString;
text2.Text:= dakika.ToString;
text3.Text:= saniye.ToString;

saniye:=saniye+1;
if(saniye>=60)then
begin
  dakika:= dakika+1;
  saniye:=0;
  if(dakika>=60)then
  begin
    saat:= saat+1;
    dakika:= 0;
  end;
end;

end;

end.
