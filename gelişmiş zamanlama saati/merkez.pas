unit merkez;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.Ani, FireDAC.UI.Intf,
  FireDAC.FMXUI.Wait, FireDAC.Stan.Intf, FireDAC.Comp.UI,math, FMX.TabControl,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.Notification;

type
  TForm1 = class(TForm)
    Text7: TText;
    Button1: TButton;
    Button2: TButton;
    Timer1: TTimer;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Text12: TText;
    Timer2: TTimer;
    Timer3: TTimer;
    RoundRect1: TRoundRect;
    RoundRect2: TRoundRect;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Text5: TText;
    FloatAnimation1: TFloatAnimation;
    Edit1: TEdit;
    Text6: TText;
    RoundRect3: TRoundRect;
    Text8: TText;
    Text9: TText;
    Text10: TText;
    Text11: TText;
    Text13: TText;
    FloatAnimation2: TFloatAnimation;
    RoundRect4: TRoundRect;
    Edit2: TEdit;
    Text14: TText;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    RoundRect5: TRoundRect;
    Text15: TText;
    Text16: TText;
    Text17: TText;
    Text18: TText;
    Text19: TText;
    FloatAnimation3: TFloatAnimation;
    RoundRect6: TRoundRect;
    Edit3: TEdit;
    Text20: TText;
    Button3: TButton;
    Timer4: TTimer;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    LinkPropertyToFieldText9: TLinkPropertyToField;
    LinkPropertyToFieldText10: TLinkPropertyToField;
    LinkPropertyToFieldText11: TLinkPropertyToField;
    LinkPropertyToFieldText12: TLinkPropertyToField;
    LinkPropertyToFieldText13: TLinkPropertyToField;
    LinkPropertyToFieldText14: TLinkPropertyToField;
    FDQuery1: TFDQuery;
    StyleBook1: TStyleBook;
    Label1: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure button3click(sender:tobject);
    procedure Timer4Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbkayit;

  private
    { Private declarations }
  public
    { Public declarations }
    a,b,c,d,e,f,g,a1,a2,h,i,j: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
timer2.Enabled:= true;
timer3.enabled:= false;
timer4.Enabled:= false;
button3.Enabled:=true;
button1.Enabled:= false;
button2.Enabled:= true;
floatanimation1.Enabled:= true;
floatanimation2.Enabled:= false;
floatanimation3.Enabled:= false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
timer4.Enabled:= false;
button3.Enabled:= true;
timer3.Enabled:= true;
timer2.Enabled:= false;
button2.Enabled:= false;
button1.Enabled:= true;
 floatanimation2.Enabled:= true;
floatanimation1.Enabled:= false;
floatanimation3.Enabled:= false;
end;

procedure TForm1.button3click(sender: tobject);
begin
timer2.Enabled:= false;
timer3.enabled:= false;
timer4.Enabled:= true;
button3.Enabled:=false;
button1.Enabled:= true;
button2.Enabled:= true;
floatanimation1.Enabled:= false;
floatanimation2.Enabled:= false;
floatanimation3.Enabled:= true;;
end;

procedure TForm1.dbkayit;
begin
with fdquery1 do
begin


end;
end;

procedure TForm1.FloatAnimation1Finish(Sender: TObject);
begin
//
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 dbkayit;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
k,s,p,r: word;
l: tdatetime;
begin



a:= 0;
b:= text3.Text.ToInteger();
c:= text2.Text.ToInteger();
d:= text1.Text.ToInteger();
e:= text10.Text.ToInteger();
f:= text9.Text.ToInteger();
g:= text8.Text.ToInteger();
a1:= 0;
a2:= 0;
h:= text17.Text.ToInteger();
i:= text16.Text.ToInteger();
j:= text15.Text.ToInteger();
 l:= now;
  // button2.Enabled:= false;
 decodetime(l,k,s,p,r);
text12.Text:= 'Baþlangýç Zamaný: '+formatdatetime('dd/mmmm/yyyy/dddd', l)+' '+ k.ToString()+'.'+s.ToString();
end;


procedure TForm1.Timer1Timer(Sender: TObject);
var
m,n,o: integer;
begin
if a<59 then
begin
a:= a+1;
end else

begin
  a:= 0;

  if a1<59 then
  begin
    a1:= a1+1;

  end else
  begin
    a1:= 0;
    a2:= a2+1;
  end;
end;

m:= trunc(((d*3600+c*60+b)/(d*3600+c*60+b+g*3600+f*60+e+j*3600+i*60+h))  *100);
n:= trunc(((g*3600+f*60+e)/(d*3600+c*60+b+g*3600+f*60+e+j*3600+i*60+h))  *100);
o:= trunc(((j*3600+i*60+h)/(d*3600+c*60+b+g*3600+f*60+e+j*3600+i*60+h))  *100);

text6.Text:= '%'+  m.ToString();
 text14.Text:= '%'+ n.ToString();
 text20.Text:= '%' + o.ToString();
text7.Text:= 'Tutulan Süre: " '+ a2.ToString()+' Saat '+ a1.ToString()  + ' Dakika '+ a.ToString()+' Saniye "';


end;



procedure TForm1.Timer2Timer(Sender: TObject);
begin
// b saniye , c dakika, d saat

if b<59 then
begin
  b:= b+1 ;
end else  begin
b:= 0;
if c<59 then
begin
  c:= c+1;
end else begin
c:= 0;
d:= d+1;
end;
end;
text1.Text:= d.ToString();
text2.Text:= c.ToString();
text3.Text:= b.ToString();


end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
// e saniye , f dakika, g saat

if e<59 then
begin
 e:= e+1 ;
end else  begin
e:= 0;
if f<59 then
begin
  f:= f+1;
end else begin
f:= 0;
g:= g+1;
end;
end;
text8.Text:= g.ToString();
text9.Text:= f.ToString();
text10.Text:= e.ToString();

end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
//h saniye , i dakika, j saat

if h<59 then
begin
 h:= h+1 ;
end else  begin
h:= 0;
if i<59 then
begin
  i:= i+1;
end else begin
i:= 0;
j:= j+1;
end;
end;
text15.Text:= j.ToString();
text16.Text:= i.ToString();
text17.Text:= h.ToString();


end;

end.
