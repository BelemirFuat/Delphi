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
2: saa:= 'Ýki';
3: saa:= 'Üç';
4: saa:= 'Dört';
5: saa:= 'Beþ';
6: saa:= 'Altý';
7: saa:= 'Yedi';
8: saa:= 'Sekiz';
9: saa:= 'Dokuz';
10: saa:= 'On';
11: saa:= 'On Bir';
12: saa:= 'On Ýki';
13: saa:= 'On Üç';
14: saa:= 'On Dört';
15: saa:= 'On Beþ';
16: saa:= 'On Altý';
17: saa:= 'On Yedi';
18: saa:= 'On Sekiz';
19: saa:= 'On Dokuz';
20: saa:= 'Yirmi';
21: saa:= 'Yirmi Bir';
22: saa:= 'Yirmi Ýki';
23: saa:= 'Yirmi Üç';
24: saa:= 'Yirmi Dört';
end;

case dk of
1: dkk:= 'Bir';
2: dkk:= 'Ýki';
3: dkk:= 'Üç';
4: dkk:= 'Dört';
5: dkk:= 'Beþ';
6: dkk:= 'Altý';
7: dkk:= 'Yedi';
8: dkk:= 'Sekiz';
9: dkk:= 'Dokuz';
10: dkk:= 'On';
11: dkk:= 'On Bir';
12: dkk:= 'On Ýki';
13: dkk:= 'On Üç';
14: dkk:= 'On Dört';
15: dkk:= 'On Beþ';
16: dkk:= 'On Altý';
17: dkk:= 'On Yedi';
18: dkk:= 'On Sekiz';
19: dkk:= 'On Dokuz';
20: dkk:= 'Yirmi';
21: dkk:= 'Yirmi Bir';
22: dkk:= 'Yirmi Ýki';
23: dkk:= 'Yirmi Üç';
24: dkk:= 'Yirmi Dört';
25: dkk:= 'Yirmi Beþ';
26: dkk:= 'Yirmi Altý;';
27: dkk:= 'Yirmi Yedi';
28: dkk:= 'Yirmi Sekiz';
29: dkk:= 'Yirmi Dokuz';
30: dkk:= 'Otuz';
31: dkk:= 'Otuz Bir';
32: dkk:= 'Otuz Ýki';
33: dkk:= 'Otuz Üç';
34: dkk:= 'Otuz Dört';
35: dkk:= 'Otuz Beþ';
36: dkk:= 'Otuz Altý';
37: dkk:= 'Otuz Yedi';
38: dkk:= 'Otuz Sekiz';
39: dkk:= 'Otuz Dokuz';
40: dkk:= 'Kýrk';
41: dkk:= 'Kýrk Bir';
42: dkk:= 'Kýrk Ýki';
43: dkk:= 'Kýrk Üç';
44: dkk:= 'Kýrk Dört';
45: dkk:= 'Kýrk Beþ';
46: dkk:= 'Kýrk Altý';
47: dkk:= 'Kýrk Yedi';
48: dkk:= 'Kýrk Sekiz';
49: dkk:= 'Kýrk Dokuz';
50: dkk:= 'Elli';
51: dkk:= 'Elli Bir';
52: dkk:= 'Elli Ýki';
53: dkk:= 'Elli Üç';
54: dkk:= 'Elli Dört';
55: dkk:= 'Elli Beþ';
56: dkk:= 'Elli Altý';
57: dkk:= 'Elli Yedi';
58: dkk:= 'Elli Sekiz';
59: dkk:= 'Elli Dokuz';
60: dkk:= 'Altmýþ';
0: dkk:= 'Sýfýr';
end;

case sn of
1: sny:= 'Bir';
2: sny:= 'Ýki';
3: sny:= 'Üç';
4: sny:= 'Dört';
5: sny:= 'Beþ';
6: sny:= 'Altý';
7: sny:= 'Yedi';
8: sny:= 'Sekiz';
9: sny:= 'Dokuz';
10: sny:= 'On';
11: sny:= 'On Bir';
12: sny:= 'On Ýki';
13: sny:= 'On Üç';
14: sny:= 'On Dört';
15: sny:= 'On Beþ';
16: sny:= 'On Altý';
17: sny:= 'On Yedi';
18: sny:= 'On Sekiz';
19: sny:= 'On Dokuz';
20: sny:= 'Yirmi';
21: sny:= 'Yirmi Bir';
22: sny:= 'Yirmi Ýki';
23: sny:= 'Yirmi Üç';
24: sny:= 'Yirmi Dört';
25: sny:= 'Yirmi Beþ';
26: sny:= 'Yirmi Altý;';
27: sny:= 'Yirmi Yedi';
28: sny:= 'Yirmi Sekiz';
29: sny:= 'Yirmi Dokuz';
30: sny:= 'Otuz';
31: sny:= 'Otuz Bir';
32: sny:= 'Otuz Ýki';
33: sny:= 'Otuz Üç';
34: sny:= 'Otuz Dört';
35: sny:= 'Otuz Beþ';
36: sny:= 'Otuz Altý';
37: sny:= 'Otuz Yedi';
38: sny:= 'Otuz Sekiz';
39: sny:= 'Otuz Dokuz';
40: sny:= 'Kýrk';
41: sny:= 'Kýrk Bir';
42: sny:= 'Kýrk Ýki';
43: sny:= 'Kýrk Üç';
44: sny:= 'Kýrk Dört';
45: sny:= 'Kýrk Beþ';
46: sny:= 'Kýrk Altý';
47: sny:= 'Kýrk Yedi';
48: sny:= 'Kýrk Sekiz';
49: sny:= 'Kýrk Dokuz';
50: sny:= 'Elli';
51: sny:= 'Elli Bir';
52: sny:= 'Elli Ýki';
53: sny:= 'Elli Üç';
54: sny:= 'Elli Dört';
55: sny:= 'Elli Beþ';
56: sny:= 'Elli Altý';
57: sny:= 'Elli Yedi';
58: sny:= 'Elli Sekiz';
59: sny:= 'Elli Dokuz';
60: sny:= 'Altmýþ';
0: sny:= 'Sýfýr';
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
