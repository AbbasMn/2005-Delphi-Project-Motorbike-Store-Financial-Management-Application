unit unt_tahvil_karte_sokht;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit;

type
  Tfrm_tahvil_karte_sokht = class(TForm)
    GroupBox7: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    E_sokht_shomare: TsuiEdit;
    E_sokht_tahvilgir: TsuiEdit;
    E_sokht_roz: TsuiEdit;
    E_sokht_mah: TsuiEdit;
    E_sokht_sal: TsuiEdit;
    Button11: TButton;
    L_cod: TLabel;
    L_type: TLabel;
    function check:boolean;
    procedure insert_carte_sokht;
    function check_exist:boolean;
    procedure Button11Click(Sender: TObject);
    procedure E_sokht_rozExit(Sender: TObject);
    procedure E_sokht_mahExit(Sender: TObject);
    procedure E_sokht_salExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_sokht_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_sokht_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_sokht_salKeyPress(Sender: TObject; var Key: Char);
    procedure update_karte_sokht;
    procedure show_moshakhsat_feli;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tahvil_karte_sokht: Tfrm_tahvil_karte_sokht;

implementation

uses unt_DataM_tahvil_joz;

{$R *.dfm}

procedure Tfrm_tahvil_karte_sokht.update_karte_sokht;
begin
  DataM_tahvil_joz.ADOQ_carte_sokht.SQL.Text:=' update t_tahvile_carte_sokht set '+
  'carte_sokht_shomare='+QuotedStr(E_sokht_shomare.Text)+
  ',carte_sokht_tahvil_girande='+QuotedStr(E_sokht_tahvilgir.Text)+
  ',carte_sokht_tarikh='+QuotedStr(E_sokht_sal.Text+'/'+E_sokht_mah.Text+'/'+E_sokht_roz.Text)+
  ' where cod='+L_cod.Caption+' ';

  DataM_tahvil_joz.ADOQ_carte_sokht.ExecSQL;
  MessageBox(Handle,'������ ���� ���� ���� ����� ���ʡ����� ��','����!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
end;

procedure Tfrm_tahvil_karte_sokht.show_moshakhsat_feli;
begin

  E_sokht_roz.Text:=DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[9]+DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[10];

  E_sokht_mah.Text:=DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[6]+DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[7];

  E_sokht_sal.Text:=DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[1]+DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[2]+

  DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[3]+DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString[4];

  E_sokht_tahvilgir.Text:=DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tahvil_girande.AsString;

  E_sokht_shomare.Text:=DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_shomare.AsString;

  L_cod.Caption:=DataM_tahvil_joz.ADOQ_carte_sokhtcod.AsString;
end;
///////////////

function Tfrm_tahvil_karte_sokht.check_exist:boolean;
var s:string;
begin
  check_exist:=true;
  DataM_tahvil_joz.ADOQ_carte_sokht.SQL.Text:='select * from t_tahvile_carte_sokht where cod_forosh='+L_cod.Caption;
  DataM_tahvil_joz.ADOQ_carte_sokht.Open;

  if DataM_tahvil_joz.ADOQ_carte_sokht.RecordCount >0 then
  begin
    s:=' ���� ���� ����� ���� �� ����� ' + DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_shomare.AsString+' �� ����� '+DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tarikh.AsString+
    ' �� '+DataM_tahvil_joz.ADOQ_carte_sokhtcarte_sokht_tahvil_girande.AsString+' ����� ���� ��� ��� ';
    MessageBox(Handle,pchar(s),'!���',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check_exist:=false;
  end;
end;
procedure Tfrm_tahvil_karte_sokht.insert_carte_sokht;
begin
  DataM_tahvil_joz.ADOQ_carte_sokht.SQL.Text:=' insert into t_tahvile_carte_sokht(cod_forosh,carte_sokht_tarikh,carte_sokht_shomare,carte_sokht_tahvil_girande)'+
  ' values('+L_cod.Caption+','+QuotedStr(E_sokht_sal.Text+'/'+E_sokht_mah.Text+'/'+E_sokht_roz.Text)+','+QuotedStr(e_sokht_shomare.Text)+','+QuotedStr(e_sokht_tahvilgir.Text)+')'+
  ' ';
  DataM_tahvil_joz.ADOQ_carte_sokht.ExecSQL;

  MessageBox(Handle,'������ ���� ���� ����� ���� ����� ��','����!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
end;
function Tfrm_tahvil_karte_sokht.check:boolean;
begin
  check:=true;
  if (e_sokht_tahvilgir.Text='') or (e_sokht_tahvilgir.Text='����� ���� ����') then
  begin
    MessageBox(Handle,'��� � ��� �����ϐ� ����� ������ ��� ���� ���� ���','!���',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_sokht_tahvilgir.SetFocus;
    Exit;
  end;
  if (e_sokht_tahvilgir.Text='') then
  begin
    MessageBox(Handle,'����� ��� ���� ���� ���','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sokht_tahvilgir.SetFocus;
    Exit;
  end;

  if (e_sokht_roz.Text='') then
  begin
    MessageBox(Handle,'��� ����� ��� ���� ���� ���','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sokht_roz.SetFocus;
    Exit;
  end;

  if (e_sokht_mah.Text='') then
  begin
    MessageBox(Handle,'��� ����� ��� ���� ���� ���','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sokht_mah.SetFocus;
    Exit;
  end;

  if (e_sokht_sal.Text='') then
  begin
    MessageBox(Handle,'��� ����� ��� ���� ���� ���','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    check:=false;
    e_sokht_sal.SetFocus;
    Exit;
  end;
end;




procedure Tfrm_tahvil_karte_sokht.Button11Click(Sender: TObject);
begin
  if check then
  begin
    if L_type.Caption='vorod' then
    begin
      insert_carte_sokht;
      close;
    end
    else
    if  MessageBox(Handle,'������ ���� ���� ���� ����� ��Ͽ ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin
      update_karte_sokht;
      close;
    end;
  end;
end;







procedure Tfrm_tahvil_karte_sokht.E_sokht_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(E_sokht_roz.Text))<=1 then
    E_sokht_roz.Text:='0'+E_sokht_roz.Text;

    ss:=E_sokht_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'��� ���� ��� 1 � 31 ����','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      E_sokht_roz.SetFocus;
    end;
end;
procedure Tfrm_tahvil_karte_sokht.E_sokht_mahExit(Sender: TObject);
var sS:string;
begin
  if StrLen(pchar(E_sokht_mah.Text))<=1 then
    E_sokht_mah.Text:='0'+E_sokht_mah.Text;

    ss:=E_sokht_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'��� ���� ��� 1 � 12 ����','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      E_sokht_mah.SetFocus;
    end;
end;

procedure Tfrm_tahvil_karte_sokht.E_sokht_salExit(Sender: TObject);
begin
 if strlen(pchar(e_sokht_sal.Text))=1 then
    e_sokht_sal.Text:='0'+e_sokht_sal.Text;
end;

procedure Tfrm_tahvil_karte_sokht.FormShow(Sender: TObject);
begin
  if L_type.Caption='vorod' then
 begin
  e_sokht_tahvilgir.Text:='';
  E_sokht_shomare.Text:='';
  e_sokht_roz.Text:='';
  e_sokht_mah.Text:='';
  e_sokht_sal.Text:='';
 end
 else
  show_moshakhsat_feli;
end;

procedure Tfrm_tahvil_karte_sokht.E_sokht_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_tahvil_karte_sokht.E_sokht_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_tahvil_karte_sokht.E_sokht_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
