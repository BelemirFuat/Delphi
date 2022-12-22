unit merkezform;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Ani, FireDAC.UI.Intf, FireDAC.FMXUI.Wait, FireDAC.Stan.Intf,
  FireDAC.Comp.UI, FMX.StdCtrls, FMX.Controls.Presentation,  FMX.Edit, FMX.Media, FMX.Effects, System.IOUtils,System.Devices,  FMX.Layouts, FMX.ListBox,
  FMX.Advertising


  ;

type
  TForm1 = class(TForm)
    Circle1: TCircle;
    Line1: TLine;
    Line2: TLine;
    Line3: TLine;
    Timer1: TTimer;
    Timer2: TTimer;
    FloatAnimation1: TFloatAnimation;
    FloatAnimation2: TFloatAnimation;
    FloatAnimation3: TFloatAnimation;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    FloatAnimation4: TFloatAnimation;
    Text4: TText;
    Text5: TText;
    Text6: TText;
    Text7: TText;
    Text8: TText;
    Text9: TText;
    Text10: TText;
    Text11: TText;
    Text12: TText;
    Circle2: TCircle;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Circle4: TCircle;
    Text13: TText;
    Line4: TLine;
    Timer3: TTimer;
    FloatAnimation5: TFloatAnimation;
    Circle3: TCircle;
    Text14: TText;
    Line5: TLine;
    FloatAnimation6: TFloatAnimation;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button2: TButton;
    Button3: TButton;
    zamanlayicitimer: TTimer;
    FloatAnimation7: TFloatAnimation;
    Timer4: TTimer;
    Button4: TButton;
    Timer5: TTimer;
    Timer6: TTimer;
    Text15: TText;
    Text16: TText;
    Text17: TText;
    Text18: TText;
    Text19: TText;
    Text20: TText;
    ProgressBar1: TProgressBar;
    Text21: TText;
    piltimer: TTimer;
    BannerAd1: TBannerAd;
    BannerAd2: TBannerAd;
    Label1: TLabel;
    procedure Circle1Painting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation3Finish(Sender: TObject);

    procedure Circle4Painting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
    procedure Circle4Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

    procedure zamanlayicitimerTimer(Sender: TObject);
    procedure FloatAnimation7Finish(Sender: TObject);
    procedure Circle3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Circle4DblClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Timer6Timer(Sender: TObject);
    procedure Circle1Click(Sender: TObject);
    procedure piltimerTimer(Sender: TObject);
   // function batterypercent(const aContext: JContext): Integer;
  private
    { Private declarations }
  public
    { Public declarations }
    s,m,h,i: integer;
    zk: boolean;
    t: array[1..21] of ttext;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}




procedure TForm1.Button2Click(Sender: TObject);
begin
floatanimation7.StopValue:= form1.Width+rectangle1.Width;
floatanimation7.Enabled:= true;

zamanlayicitimer.Enabled:= true;
button3.Enabled:= true;
button2.Enabled:= false;
  if edit3.Text='' then
  begin
    edit3.text:= inttostr(60);
  end;
if edit1.Text= '' then
begin
  edit1.Text:= '0';
end;
if edit2.Text= '' then
begin
  edit2.Text:= '0';
end;
 floatanimation6.Duration:= edit3.Text.ToInteger()+(edit2.Text.ToInteger()*60)+(edit1.Text.ToInteger()*3600);
floatanimation6.Enabled:= true;

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
zamanlayicitimer.Enabled:= false;
button3.Enabled:= false;
button2.Enabled:= true;
floatanimation6.StopValue:= 270;
floatanimation6.Duration:= 1;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
edit1.Text:= '';
edit2.Text:= '';
edit3.Text:= '';
zamanlayicitimer.Enabled:= false;
text14.Text:= '';

end;

procedure TForm1.Circle1Click(Sender: TObject);
begin
if rectangle1.Position.X<form1.Width then
if rectangle1.Position.X>=form1.Width-rectangle1.Width then
begin
  floatanimation7.StopValue:= form1.Width;
  floatanimation7.Enabled:= true;
  edit1.ReadOnly:= true;
  edit2.ReadOnly:= true;
  edit3.ReadOnly:= true;
end;
end;

procedure TForm1.Circle1Painting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
 var
  r: single;
  begin
  with circle1 do
  begin
    if width>=height
    then r:= height *0.5
    else r:= width *0.5;
    line3.Width:= r*0.6;
    line2.Width:= r*0.9;
    line1.Width:= r*0.9;
    line3.Position.Point:= absolutetolocal(absoluterect.CenterPoint);
    line2.Position.Point:= absolutetolocal(absoluterect.CenterPoint);
    line1.Position.Point:= absolutetolocal(absoluterect.CenterPoint);


  end;


end;


procedure TForm1.Circle3Click(Sender: TObject);
begin
if rectangle1.Position.x= form1.Width then
begin
  floatanimation7.StopValue:= form1.Width-rectangle1.Width;
  floatanimation7.Enabled:= true;
end else
if rectangle1.Position.X=form1.Width-rectangle1.Width then
begin
 floatanimation7.StopValue:= form1.Width;
 floatanimation7.Enabled:= true;
end;

 edit1.ReadOnly:= false;
 edit2.readonly:= false;
 edit3.ReadOnly:= false;
 form1.ActiveControl:= edit1;

end;

procedure TForm1.Circle4Click(Sender: TObject);
begin
if timer3.Enabled then
begin
timer3.Enabled:= false;
floatanimation5.StopValue:= 270;
floatanimation5.Enabled:= true;
s:= 0;
m:= 0;
h:= 0;
timer6.Enabled:= true;
end else
timer3.Enabled:= true;
s:= 0;
m:= 0;
h:= 0;
end;

procedure TForm1.Circle4DblClick(Sender: TObject);
begin
Text13.Text:= '';
s:= 0;
m:= 0;
h:=0;
timer3.Enabled:= false;
floatanimation5.StopValue:= 270;
end;

procedure TForm1.Circle4Painting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
var
  r: single;
  begin
  with circle4 do
  begin
    if width>=height
    then r:= height *0.5
    else r:= width *0.5;
    line4.Width:= r*0.6;

    line4.Position.Point:= absolutetolocal(absoluterect.CenterPoint);
 end;
 with circle3 do
  begin
    if width>=height
    then r:= height *0.5
    else r:= width *0.5;
    line5.Width:= r*0.6;

    line5.Position.Point:= absolutetolocal(absoluterect.CenterPoint);
 end;

end;


procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
floatanimation1.Enabled:= false;
end;

procedure TForm1.FloatAnimation2Finish(Sender: TObject);
begin
floatanimation2.Enabled:= false;
end;

procedure TForm1.FloatAnimation3Finish(Sender: TObject);
begin
floatanimation3.Enabled:= false;
end;

procedure TForm1.FloatAnimation5Finish(Sender: TObject);
begin
floatanimation5.Enabled:= false;
end;

procedure TForm1.FloatAnimation7Finish(Sender: TObject);
begin
floatanimation7.Enabled:= false;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
a,b: integer;

begin
zk:= false;

//text1.TextSettings.Font.Size:= 480*130/form1.Height;
//text2.TextSettings.Font.Size:= 480*130/form1.Height;
//text3.TextSettings.Font.Size:= 480*130/form1.Height;
//text4.TextSettings.Font.Size:= 480*32/form1.Height;
//text5.TextSettings.Font.Size:= 480*48/form1.Height;
//text6.TextSettings.Font.Size:= 480*32/form1.Height;
//text7.TextSettings.Font.Size:= 480*32/form1.Height;
//text8.TextSettings.Font.Size:= 480*48/form1.Height;
//text9.TextSettings.Font.Size:= 480*32/form1.Height;
//text10.TextSettings.Font.Size:= 480*32/form1.Height;
//text11.TextSettings.Font.Size:= 480*48/form1.Height;
//text12.TextSettings.Font.Size:= 480*32/form1.Height;
//text13.TextSettings.Font.Size:= 480*36/form1.Height;
//text14.TextSettings.Font.Size:= 480*36/form1.Height;
//text15.TextSettings.Font.Size:= 480*32/form1.Height;
//text16.TextSettings.Font.Size:= 480*48/form1.Height;
//text17.TextSettings.Font.Size:= 480*32/form1.Height;
//text18.TextSettings.Font.Size:= 480*32/form1.Height;
//text19.TextSettings.Font.Size:= 480*48/form1.Height;
//text20.TextSettings.Font.Size:= 480*32/form1.Height;
//text21.TextSettings.Font.Size:= 480*48/form1.Height;




end;
procedure TForm1.piltimerTimer(Sender: TObject);
{var
    ifl: JIntentFilter;
    ctx: JContext;
    bStatus: JIntent;
    level, scale: Integer;
 begin
    //(get the battery status intent) to determine the current state of charge
    ifl := TJintentFilter.JavaClass.init(TJIntent.JavaClass.ACTION_BATTERY_CHANGED);

  ctx := TAndroidHelper.Context;

  bStatus := ctx.registerReceiver(nil, ifl);


  //string reality is that the level of BatteryManager.EXTRA_LEVEL
    reality of //BatteryManager.EXTRA_SCALE string that Scale
    level := bStatus.getIntExtra(StringToJString('level'), -1);

  scale := bStatus.getIntExtra(StringToJstring('scale'), -1);
   text1.text:= IntToStr((100*level) div scale);
   progressbar1.value:= (100*level) div scale;
 end;
         }
         begin
           //
         end;


procedure TForm1.Timer1Timer(Sender: TObject);
var
zaman: ttime;
tarihdun, tarihbugun, tarihyarin, tarihgecenay, tarihbuay, tarihgelecekay,
gecensene,busene, geleceksene: tdatetime;
saat, dak, san, sal, yil, ay, gun: word;
begin
zaman:= now;
decodetime(zaman, saat, dak, san, sal);

floatanimation1.StopValue:= (san*6)+270;
floatanimation1.Enabled:= true;
floatanimation2.StopValue:= (dak*6)+270;
floatanimation2.Enabled:= true;
floatanimation3.StopValue:= (saat*30)+270+ (dak/2);
floatanimation3.Enabled:= true;

text1.Text:= inttostr(saat);
if dak<10 then
begin
text2.Text:= '0'+inttostr(dak);
end else
if dak>= 10 then
begin
text2.Text:= inttostr(dak);
end;

tarihbugun:= date;
text4.Text:= formatdatetime('dd' , tarihbugun);
text5.Text:= formatdatetime('mmmm' , tarihbugun);
text6.Text:= formatdatetime('yyyy' , tarihbugun);



tarihdun:= date-1;
tarihyarin:= date+1;
text7.Text:= formatdatetime('dddd' , tarihdun);
text8.Text:= formatdatetime('dddd' , tarihbugun);
text9.Text:= formatdatetime('dddd' , tarihyarin);

tarihgecenay:= date - 31;
tarihbuay:= date;
tarihgelecekay:= date+31;
text10.Text:= formatdatetime('mmmm' , tarihgecenay);
text11.Text:= formatdatetime('mmmm' , tarihbuay);
text12.Text:= formatdatetime('mmmm' , tarihgelecekay);


text15.Text:= formatdatetime('dd', tarihdun);
text16.Text:= formatdatetime('dd', tarihbugun);
text17.Text:= formatdatetime('dd', tarihyarin);

busene:= date;
gecensene:= date-366;
geleceksene:= date+366;

text18.Text:= formatdatetime('yyyy', gecensene);
text19.Text:= formatdatetime('yyyy', busene);
text20.Text:= formatdatetime('yyyy', geleceksene);
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
zaman: tdatetime;
saat, dak, san, sal: word;
begin
zaman:= now;
decodetime(zaman, saat, dak, san, sal);

if sal=0 then
begin
  timer1.Enabled:= true;
  floatanimation4.Enabled:= true;
  timer2.Enabled:= false;
end;


end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
s:=s+1;
if h=0 then
if m=0 then
begin
if s<10 then
begin
text13.Text:='0'+inttostr(s);

end else
if s>=10 then
begin
text13.Text:='0'+inttostr(s);

end;
end else
if h= 0 then
if m<> 0 then
begin
if m<10 then
begin
if s>=10 then
begin
text13.Text:= '0'+inttostr(m)+':'+inttostr(s);
end else
if s<10 then
begin
text13.Text:= '0'+inttostr(m)+':'+'0'+inttostr(s);
end;
end;
  text13.Text:= inttostr(m)+':'+inttostr(s);
end else
if h<>0 then
if m<>0 then
begin
  text13.Text:= inttostr(h)+'.'+inttostr(m)+':'+inttostr(s);
end;

if s>59 then
begin
s:= 0;
m:= m+1;
end;
if m>59 then
begin
  m:= 0;
  h:= h+1;
end;
floatanimation5.StopValue:= (s*6)+270;
floatanimation5.Enabled:= true;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
text14.Text:= edit1.Text+'.'+edit2.Text+':'+edit3.Text;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
text14.text:= '';
timer5.Enabled:= false;
end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin
text13.text:= '';
timer6.Enabled:= false;
end;

procedure TForm1.zamanlayicitimerTimer(Sender: TObject);
begin

timer4.Enabled:= true;


edit3.Text:= inttostr(strtoint(edit3.Text) - 1);
 if strtoint(edit3.Text) < 0 then
 begin
   edit2.Text:= inttostr(strtoint(edit2.Text) - 1);
   edit3.Text:= inttostr(59);
   if strtoint(edit2.Text)< 0 then
   begin
   edit1.Text:= inttostr(strtoint(edit1.Text) -1);
   edit2.Text:= inttostr(59);
   if strtoint(edit1.Text) < 0 then
   begin
    zamanlayicitimer.Enabled:= false;
button3.Enabled:= false;
button2.Enabled:= true;
edit1.Text:= '';
edit2.Text:= '';
edit3.Text:= '';
timer5.Enabled:= true;
timer4.Enabled:= false;

   end;
   end;
 end;

end;

end.
