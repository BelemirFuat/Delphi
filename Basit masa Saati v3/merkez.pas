unit merkez;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,
  FMX.Objects, FMX.Ani, FMX.Controls.Presentation, FMX.StdCtrls;
//  FMX.Ani, FMX.Objects, FMX.Controls.Android, FMX.FontGlyphs.Android,FMX.FontGlyphs,FMX.Graphics.Android;

type
  TForm1 = class(TForm)
    Text1: TText;
    Text3: TText;
    Text5: TText;
    Timer1: TTimer;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Timer2: TTimer;
    Text7: TText;
    Circle1: TCircle;
    Line1: TLine;
    FloatAnimation1: TFloatAnimation;
    Line2: TLine;
    FloatAnimation2: TFloatAnimation;
    Line3: TLine;
    FloatAnimation3: TFloatAnimation;
    Rectangle1: TRectangle;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Text1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
tfloatanimation(sender).Enabled:= false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
//

end;

procedure TForm1.Text1DblClick(Sender: TObject);
begin
form1.FullScreen:= not form1.FullScreen;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
a,b,c,d,e,f: word;
g: tdatetime;
begin

g:= now;

decodetime(g,a,b,c,d);
 if a<10 then
 begin
 text1.Text:= '0'+inttostr(a)
 end else begin
          text1.Text:= inttostr(a);
          end;
 if b<10 then
 begin
 text3.Text:= '0'+inttostr(b);
 end else begin
          text3.Text:= inttostr(b);
          end;

floatanimation1.StopValue:= 6*c+225;
floatanimation1.Enabled:= true;
floatanimation2.StopValue:= 30*a+225;
floatanimation2.Enabled:= true;
floatanimation3.StopValue:= 6*b+225;
floatanimation3.Enabled:= true;

//text4.Text:= formatdatetime('dd',g);
text5.Text:= formatdatetime('dd',g)+' '+ formatdatetime('mmmm',g)+' '+formatdatetime('yyyy',g);
//text6.Text:= formatdatetime('yyyy',g);

text7.Text:= formatdatetime('dddd',g);

end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
a,b,c,d,e,f: word;
g: tdatetime;
begin
g:= date;
decodetime(g,a,b,c,d);

if d=0 then
begin
  timer1.Enabled:= true;
  floatanimation1.Enabled:= true;
  timer2.Enabled:= false;

end;


end;

end.
