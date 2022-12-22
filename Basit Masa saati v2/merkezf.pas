unit merkezf;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FireDAC.UI.Intf, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Intf, FireDAC.Comp.UI;

type
  TForm1 = class(TForm)
    Text1: TText;
    Text2: TText;
    Timer1: TTimer;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.FormCreate(Sender: TObject);
begin
text1.Text:= '';
text2.Text:= '';

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
sl,sn,dk,sa: word;
zaman: ttime;
saa,dkk,sny,sls : string;
a: extended;
begin
zaman:= now;
decodetime(zaman,sa,dk,sn,sl);

case sa of
1: saa:= 'Bir';
2: saa:= '�ki';
3: saa:= '��';
4: saa:= 'D�rt';
5: saa:= 'Be�';
6: saa:= 'Alt�';
7: saa:= 'Yedi';
8: saa:= 'Sekiz';
9: saa:= 'Dokuz';
10: saa:= 'On';
11: saa:= 'On Bir';
12: saa:= 'On �ki';
13: saa:= 'On ��';
14: saa:= 'On D�rt';
15: saa:= 'On Be�';
16: saa:= 'On Alt�';
17: saa:= 'On Yedi';
18: saa:= 'On Sekiz';
19: saa:= 'On Dokuz';
20: saa:= 'Yirmi';
21: saa:= 'Yirmi Bir';
22: saa:= 'Yirmi �ki';
23: saa:= 'Yirmi ��';
24: saa:= 'Yirmi D�rt';
end;

case dk of
1: dkk:= 'Bir';
2: dkk:= '�ki';
3: dkk:= '��';
4: dkk:= 'D�rt';
5: dkk:= 'Be�';
6: dkk:= 'Alt�';
7: dkk:= 'Yedi';
8: dkk:= 'Sekiz';
9: dkk:= 'Dokuz';
10: dkk:= 'On';
11: dkk:= 'On Bir';
12: dkk:= 'On �ki';
13: dkk:= 'On ��';
14: dkk:= 'On D�rt';
15: dkk:= 'On Be�';
16: dkk:= 'On Alt�';
17: dkk:= 'On Yedi';
18: dkk:= 'On Sekiz';
19: dkk:= 'On Dokuz';
20: dkk:= 'Yirmi';
21: dkk:= 'Yirmi Bir';
22: dkk:= 'Yirmi �ki';
23: dkk:= 'Yirmi ��';
24: dkk:= 'Yirmi D�rt';
25: dkk:= 'Yirmi Be�';
26: dkk:= 'Yirmi Alt�;';
27: dkk:= 'Yirmi Yedi';
28: dkk:= 'Yirmi Sekiz';
29: dkk:= 'Yirmi Dokuz';
30: dkk:= 'Otuz';
31: dkk:= 'Otuz Bir';
32: dkk:= 'Otuz �ki';
33: dkk:= 'Otuz ��';
34: dkk:= 'Otuz D�rt';
35: dkk:= 'Otuz Be�';
36: dkk:= 'Otuz Alt�';
37: dkk:= 'Otuz Yedi';
38: dkk:= 'Otuz Sekiz';
39: dkk:= 'Otuz Dokuz';
40: dkk:= 'K�rk';
41: dkk:= 'K�rk Bir';
42: dkk:= 'K�rk �ki';
43: dkk:= 'K�rk ��';
44: dkk:= 'K�rk D�rt';
45: dkk:= 'K�rk Be�';
46: dkk:= 'K�rk Alt�';
47: dkk:= 'K�rk Yedi';
48: dkk:= 'K�rk Sekiz';
49: dkk:= 'K�rk Dokuz';
50: dkk:= 'Elli';
51: dkk:= 'Elli Bir';
52: dkk:= 'Elli �ki';
53: dkk:= 'Elli ��';
54: dkk:= 'Elli D�rt';
55: dkk:= 'Elli Be�';
56: dkk:= 'Elli Alt�';
57: dkk:= 'Elli Yedi';
58: dkk:= 'Elli Sekiz';
59: dkk:= 'Elli Dokuz';
60: dkk:= 'Altm��';
0: dkk:= 'S�f�r';
end;

case sn of
1: sny:= 'Bir';
2: sny:= '�ki';
3: sny:= '��';
4: sny:= 'D�rt';
5: sny:= 'Be�';
6: sny:= 'Alt�';
7: sny:= 'Yedi';
8: sny:= 'Sekiz';
9: sny:= 'Dokuz';
10: sny:= 'On';
11: sny:= 'On Bir';
12: sny:= 'On �ki';
13: sny:= 'On ��';
14: sny:= 'On D�rt';
15: sny:= 'On Be�';
16: sny:= 'On Alt�';
17: sny:= 'On Yedi';
18: sny:= 'On Sekiz';
19: sny:= 'On Dokuz';
20: sny:= 'Yirmi';
21: sny:= 'Yirmi Bir';
22: sny:= 'Yirmi �ki';
23: sny:= 'Yirmi ��';
24: sny:= 'Yirmi D�rt';
25: sny:= 'Yirmi Be�';
26: sny:= 'Yirmi Alt�;';
27: sny:= 'Yirmi Yedi';
28: sny:= 'Yirmi Sekiz';
29: sny:= 'Yirmi Dokuz';
30: sny:= 'Otuz';
31: sny:= 'Otuz Bir';
32: sny:= 'Otuz �ki';
33: sny:= 'Otuz ��';
34: sny:= 'Otuz D�rt';
35: sny:= 'Otuz Be�';
36: sny:= 'Otuz Alt�';
37: sny:= 'Otuz Yedi';
38: sny:= 'Otuz Sekiz';
39: sny:= 'Otuz Dokuz';
40: sny:= 'K�rk';
41: sny:= 'K�rk Bir';
42: sny:= 'K�rk �ki';
43: sny:= 'K�rk ��';
44: sny:= 'K�rk D�rt';
45: sny:= 'K�rk Be�';
46: sny:= 'K�rk Alt�';
47: sny:= 'K�rk Yedi';
48: sny:= 'K�rk Sekiz';
49: sny:= 'K�rk Dokuz';
50: sny:= 'Elli';
51: sny:= 'Elli Bir';
52: sny:= 'Elli �ki';
53: sny:= 'Elli ��';
54: sny:= 'Elli D�rt';
55: sny:= 'Elli Be�';
56: sny:= 'Elli Alt�';
57: sny:= 'Elli Yedi';
58: sny:= 'Elli Sekiz';
59: sny:= 'Elli Dokuz';
60: sny:= 'Altm��';
0: sny:= 'S�f�r';
end;

text1.Text:= saa;
text2.Text:= dkk;
//text3.Text:= sny;

a:= text1.Height/182;

text1.TextSettings.Font.Size:= 144*a;
text2.TextSettings.Font.Size:= 144*a;
//text3.TextSettings.Font.Size:= 144*a;


end;

end.
