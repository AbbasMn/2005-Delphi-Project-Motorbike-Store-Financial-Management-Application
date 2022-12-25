unit unt_tahvil_karte_motor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit;

type
  Tfrm_tahvil_karte_motor = class(TForm)
    GroupBox6: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    e_kart_shomare: TsuiEdit;
    e_kart_tahvilgir: TsuiEdit;
    e_kart_roz: TsuiEdit;
    e_kart_mah: TsuiEdit;
    e_kart_sal: TsuiEdit;
    Button11: TButton;
    L_cod: TLabel;
    L_type: TLabel;
    function check:boolean;
    procedure insert_carte_motor;
    function check_exist:boolean;
    procedure Button11Click(Sender: TObject);
    procedure e_kart_mahExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure e_kart_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_kart_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_kart_rozExit(Sender: TObject);
    procedure update_karte_motor;
    procedure show_moshakhsat_feli;
    procedure e_kart_rozKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tahvil_karte_motor: Tfrm_tahvil_karte_motor;

implementation

uses unt_DataM_tahvil_joz;

{$R *.dfm}

procedure Tfrm_tahvil_karte_motor.update_karte_motor;
begin
  DataM_tahvil_joz.ADOQ_carte_motor.SQL.Text:=' update t_tahvile_carte_motor set '+
  'cart_shomare='+QuotedStr(e_kart_shomare.Text)+
  ',cart_tahvil_girande='+QuotedStr(e_kart_tahvilgir.Text)+
  ',cart_tarikh='+QuotedStr(e_kart_sal.Text+'/'+e_kart_mah.Text+'/'+e_kart_roz.Text)+
  ' where cod='+L_cod.Caption+' ';

  DataM_tahvil_joz.ADOQ_carte_motor.ExecSQL;

  MessageBox(Handle,'ãÔÎÕÇÊ ÌÏíÏ ˜ÇÑÊ ãæÊæÑ Óí˜áÊ ÐÎíÑå ÔÏ','ÊæÌå!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
end;

procedure Tfrm_tahvil_karte_motor.show_moshakhsat_feli;
begin

  e_kart_roz.Text:=DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[9]+DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[10];

  e_kart_mah.Text:=DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[6]+DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[7];

  e_kart_sal.Text:=DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[1]+DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[2]+

  DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[3]+DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString[4];

  e_kart_tahvilgir.Text:=DataM_tahvil_joz.ADOQ_carte_motorcart_tahvil_girande.AsString;

  e_kart_shomare.Text:=DataM_tahvil_joz.ADOQ_carte_motorcart_shomare.AsString;

  L_cod.Caption:=DataM_tahvil_joz.ADOQ_carte_motorcod.AsString;
end;
///////////////

function Tfrm_tahvil_karte_motor.check_exist:boolean;
var s:string;
begin
  check_exist:=true;
  DataM_tahvil_joz.ADOQ_carte_motor.SQL.Text:='select * from t_tahvile_carte_motor where cod_forosh='+L_cod.Caption;
  DataM_tahvil_joz.ADOQ_carte_motor.Open;

  if DataM_tahvil_joz.ADOQ_carte_motor.RecordCount >0 then
  begin
    s:=' ˜ÇÑÊ ãæÊæÑ Óí˜áÊ Èå ÔãÇÑå ' + DataM_tahvil_joz.ADOQ_carte_motorcart_shomare.AsString+' ÏÑ ÊÇÑíÎ '+DataM_tahvil_joz.ADOQ_carte_motorcart_tarikh.AsString+
    ' Èå '+DataM_tahvil_joz.ADOQ_carte_motorcart_tahvil_girande.AsString+' ÊÍæíá ÏÇÏå ÔÏå ÇÓÊ ';
    MessageBox(Handle,pchar(s),'!ÎØÇ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check_exist:=false;
  end;
end;
procedure Tfrm_tahvil_karte_motor.insert_carte_motor;
begin
  DataM_tahvil_joz.ADOQ_carte_motor.SQL.Text:='  insert into t_tahvile_carte_motor(cod_forosh,cart_tarikh,cart_shomare,cart_tahvil_girande)'+
  ' values('+L_cod.Caption+','+QuotedStr(e_kart_sal.Text+'/'+E_kart_mah.Text+'/'+E_kart_mah.Text)+','+QuotedStr(e_kart_shomare.Text)+','+QuotedStr(e_kart_tahvilgir.Text)+')'+
  ' ';
  DataM_tahvil_joz.ADOQ_carte_motor.ExecSQL;

  MessageBox(Handle,'ãÔÎÕÇÊ ˜ÇÑÊ ãæÊæÑ Óí˜áÊ ÐÎíÑå ÔÏ','ÊæÌå!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
end;
function Tfrm_tahvil_karte_motor.check:boolean;
begin
  check:=true;
  if (e_kart_tahvilgir.Text='') or (e_kart_tahvilgir.Text='ÊÍæíá ÏÇÏå äÔÏå') then
  begin
    MessageBox(Handle,'äÇã æ äÇã ÎÇäæÇÏí ÊÍæíá íÑäÏå ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_kart_tahvilgir.SetFocus;
    Exit;
  end;
  if (e_kart_tahvilgir.Text='') then
  begin
    MessageBox(Handle,'ÔãÇÑå ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_kart_tahvilgir.SetFocus;
    Exit;
  end;

  if (E_kart_mah.Text='') then
  begin
    MessageBox(Handle,'ÑæÒ ÊÍæíá ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    E_kart_mah.SetFocus;
    Exit;
  end;

  if (E_kart_mah.Text='') then
  begin
    MessageBox(Handle,'ãÇå ÊÍæíá ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    E_kart_mah.SetFocus;
    Exit;
  end;

  if (e_kart_sal.Text='') then
  begin
    MessageBox(Handle,'ÓÇá ÊÍæíá ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_kart_sal.SetFocus;
    Exit;
  end;
end;


procedure Tfrm_tahvil_karte_motor.E_kart_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;


procedure Tfrm_tahvil_karte_motor.Button11Click(Sender: TObject);
begin
  if check then
  begin
  if L_type.Caption='vorod' then
  begin
    insert_carte_motor;
    close;
  end
  else
    if  MessageBox(Handle,'ãÔÎÕÇÊ ÌÏíÏ ˜ÇÑÊ ãæÊæÑ Óí˜áÊ ÐÎíÑå ÔæÏ¿ ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin
      update_karte_motor;
      close;
    end;
  end;
end;

procedure Tfrm_tahvil_karte_motor.e_kart_mahExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_kart_mah.Text))=1 then
    e_kart_mah.Text:='0'+e_kart_mah.Text;

    ss:=e_kart_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'ãÇå ÈÇíÏ Èíä 1 æ 12 ÈÇÔÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_kart_mah.SetFocus;
    end;
end;
procedure Tfrm_tahvil_karte_motor.FormShow(Sender: TObject);
begin
if L_type.Caption='vorod' then
begin
  e_kart_tahvilgir.Text:='';
  e_kart_shomare.Text:='';
  E_kart_roz.Text:='';
  E_kart_mah.Text:='';
  e_kart_sal.Text:='';
end
else
 show_moshakhsat_feli;
end;


procedure Tfrm_tahvil_karte_motor.e_kart_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_tahvil_karte_motor.e_kart_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_kart_roz.Text))=1 then
    e_kart_roz.Text:='0'+e_kart_roz.Text;

    ss:=e_kart_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'ÑæÒ ÈÇíÏ Èíä 1 æ 31 ÈÇÔÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_kart_roz.SetFocus;
    end;
end;

procedure Tfrm_tahvil_karte_motor.e_kart_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
