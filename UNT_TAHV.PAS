unit unt_tahvil_sanad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit;

type
  Tfrm_tahvil_sanad = class(TForm)
    GroupBox5: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    e_sanad_shomare: TsuiEdit;
    e_sanad_tahvilgir: TsuiEdit;
    e_sanad_roz: TsuiEdit;
    e_sanad_mah: TsuiEdit;
    e_sanad_sal: TsuiEdit;
    Button11: TButton;
    L_cod: TLabel;
    L_type: TLabel;
    function check:boolean;
    procedure Button11Click(Sender: TObject);
    procedure e_sanad_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_sanad_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_sanad_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_sanad_rozExit(Sender: TObject);
    procedure e_sanad_mahExit(Sender: TObject);
    procedure e_sanad_salExit(Sender: TObject);
    procedure insert_sanad;
    function check_exist:boolean;
    procedure FormShow(Sender: TObject);
    procedure show_moshakhsat_feli;
    procedure update_sanad;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tahvil_sanad: Tfrm_tahvil_sanad;

implementation

uses unt_DataM_tahvil_joz, DB;

{$R *.dfm}
procedure Tfrm_tahvil_sanad.update_sanad;
begin
  DataM_tahvil_joz.ADOQ_sanad.SQL.Text:=' update T_tahvile_sanad set '+
  'sanad_shomare='+QuotedStr(e_sanad_shomare.Text)+
  ',sanad_tahvil_girande='+QuotedStr(e_sanad_tahvilgir.Text)+
  ',sanad_tarikh='+QuotedStr(e_sanad_sal.Text+'/'+e_sanad_mah.Text+'/'+e_sanad_roz.Text)+
  ' where cod='+L_cod.Caption+
  ' ';

  DataM_tahvil_joz.ADOQ_sanad.ExecSQL;
  MessageBox(Handle,'ãÔÎÕÇÊ ÌÏíÏ ÓäÏ ãæÊæÑ Óí˜áÊ¡ĞÎíÑå ÔÏ','ÊæÌå!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;

procedure Tfrm_tahvil_sanad.show_moshakhsat_feli;
begin

  e_sanad_roz.Text:=DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[9]+DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[10];

  e_sanad_mah.Text:=DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[6]+DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[7];

  e_sanad_sal.Text:=DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[1]+DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[2]+

  DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[3]+DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString[4];

  e_sanad_tahvilgir.Text:=DataM_tahvil_joz.ADOQ_sanadsanad_tahvil_girande.AsString;

  e_sanad_shomare.Text:=DataM_tahvil_joz.ADOQ_sanadsanad_shomare.AsString;

  L_cod.Caption:=DataM_tahvil_joz.ADOQ_sanadcod.AsString;
end;
///////////////
function Tfrm_tahvil_sanad.check_exist:boolean;
var s:string;
begin
  check_exist:=true;
  DataM_tahvil_joz.ADOQ_sanad.SQL.Text:='select * from T_tahvile_sanad where cod_forosh='+L_cod.Caption;
  DataM_tahvil_joz.ADOQ_sanad.Open;

  if DataM_tahvil_joz.ADOQ_sanad.RecordCount >0 then
  begin
    s:=' ÓäÏ ãæÊæÑ Óí˜áÊ Èå ÔãÇÑå ' + DataM_tahvil_joz.ADOQ_sanadsanad_shomare.AsString+' ÏÑ ÊÇÑíÎ '+DataM_tahvil_joz.ADOQ_sanadsanad_tarikh.AsString+
    ' Èå '+DataM_tahvil_joz.ADOQ_sanadsanad_tahvil_girande.AsString+' ÊÍæíá ÏÇÏå ÔÏå ÇÓÊ ';
    MessageBox(Handle,pchar(s),'!ÎØÇ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check_exist:=false;
  end;
end;
procedure Tfrm_tahvil_sanad.insert_sanad;
begin
  DataM_tahvil_joz.ADOQ_sanad.SQL.Text:=' insert into T_tahvile_sanad(cod_forosh,sanad_tarikh,sanad_shomare,sanad_tahvil_girande)'+
  ' values('+L_cod.Caption+','+QuotedStr(e_sanad_sal.Text+'/'+e_sanad_mah.Text+'/'+e_sanad_roz.Text)+','+QuotedStr(e_sanad_shomare.Text)+','+QuotedStr(e_sanad_tahvilgir.Text)+')'+
  ' ';
  DataM_tahvil_joz.ADOQ_sanad.ExecSQL;

  MessageBox(Handle,'ãÔÎÕÇÊ ÓäÏ ãæÊæÑ Óí˜áÊ ĞÎíÑå ÔÏ','ÊæÌå!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
end;
function Tfrm_tahvil_sanad.check:boolean;
begin
  check:=true;
  if (e_sanad_tahvilgir.Text='') or (e_sanad_tahvilgir.Text='ÊÍæíá ÏÇÏå äÔÏå') then
  begin
    MessageBox(Handle,'äÇã æ äÇã ÎÇäæÇÏí ÊÍæíá íÑäÏå ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_sanad_tahvilgir.SetFocus;
    Exit;
  end;
  if (e_sanad_shomare.Text='') then
  begin
    MessageBox(Handle,'ÔãÇÑå ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sanad_shomare.SetFocus;
    Exit;
  end;

  if (e_sanad_roz.Text='') then
  begin
    MessageBox(Handle,'ÑæÒ ÊÍæíá ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sanad_roz.SetFocus;
    Exit;
  end;

  if (e_sanad_mah.Text='') then
  begin
    MessageBox(Handle,'ãÇå ÊÍæíá ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sanad_mah.SetFocus;
    Exit;
  end;

  if (e_sanad_sal.Text='') then
  begin
    MessageBox(Handle,'ÓÇá ÊÍæíá ÓäÏ ÈÇíÏ æÇÑÏ ÔæÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sanad_sal.SetFocus;
    Exit;
  end;
end;
procedure Tfrm_tahvil_sanad.Button11Click(Sender: TObject);
begin
  if check then
  begin
    if L_type.Caption='vorod' then
    begin
      insert_sanad;
      close;
    end
    else
    if  MessageBox(Handle,'ãÔÎÕÇÊ ÌÏíÏ ÓäÏ ãæÊæÑ Óí˜áÊ ĞÎíÑå ÔæÏ¿ ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin    
      update_sanad;
      close;
    end;
  end;

end;

procedure Tfrm_tahvil_sanad.e_sanad_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_tahvil_sanad.e_sanad_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_tahvil_sanad.e_sanad_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_tahvil_sanad.e_sanad_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_sanad_roz.Text))<=1 then
    e_sanad_roz.Text:='0'+e_sanad_roz.Text;

    ss:=e_sanad_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'ÑæÒ ÈÇíÏ Èíä 1 æ 31 ÈÇÔÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_sanad_roz.SetFocus;
    end;
end;

procedure Tfrm_tahvil_sanad.e_sanad_mahExit(Sender: TObject);
var sS:string;
begin
  if StrLen(pchar(e_sanad_mah.Text))<=1 then
    e_sanad_mah.Text:='0'+e_sanad_mah.Text;

    ss:=e_sanad_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'ãÇå ÈÇíÏ Èíä 1 æ 12 ÈÇÔÏ','!ÎØÇ',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_sanad_mah.SetFocus;
    end;
end;

procedure Tfrm_tahvil_sanad.e_sanad_salExit(Sender: TObject);
begin
 if strlen(pchar(e_sanad_sal.Text))=1 then
    e_sanad_sal.Text:='0'+e_sanad_sal.Text;
end;

procedure Tfrm_tahvil_sanad.FormShow(Sender: TObject);
begin
 if L_type.Caption='vorod' then
 begin
    e_sanad_shomare.Text:='';
    e_sanad_tahvilgir.Text:='';
    e_sanad_roz.Text:='';
    e_sanad_mah.Text:='';
    e_sanad_sal.Text:='';
 end
 else
  show_moshakhsat_feli;
end;

end.
