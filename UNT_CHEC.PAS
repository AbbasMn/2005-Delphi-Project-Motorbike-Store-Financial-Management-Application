unit unt_check_dovom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, ExtCtrls;

type
  Tfrm_check_dovom = class(TForm)
    G_zemanat: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label43: TLabel;
    e_bank: TsuiEdit;
    e_shobe: TsuiEdit;
    e_jari: TsuiEdit;
    e_mablagh_check: TsuiEdit;
    e_sh_check: TsuiEdit;
    e_sabe_check: TsuiEdit;
    e_check_roz: TsuiEdit;
    e_check_mah: TsuiEdit;
    e_check_sal: TsuiEdit;
    e_telephone_zamen: TsuiEdit;
    Button1: TButton;
    L_kh_family: TLabel;
    l_kh_sh_sh: TLabel;
    L_forosh_tarikh: TLabel;
    RadioGroup1: TRadioGroup;
    l_type: TLabel;
    L_exists: TLabel;
    L_select_ch_2: TLabel;
    function check_vorod_zemanat:boolean;
    procedure Button1Click(Sender: TObject);
    procedure insert_check_dovom;
    procedure update_check_dovom;    
    procedure type_zemanat;
    procedure RadioGroup1Click(Sender: TObject);
    procedure show_moshakhsat_feli;
    procedure FormShow(Sender: TObject);
    procedure e_mablagh_checkKeyPress(Sender: TObject; var Key: Char);
    procedure e_check_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_check_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_check_salKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure e_check_rozExit(Sender: TObject);
    procedure e_check_mahExit(Sender: TObject);
    procedure e_shobeKeyPress(Sender: TObject; var Key: Char);
    procedure e_telephone_zamenKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_check_dovom: Tfrm_check_dovom;

implementation

uses Unt_datam_input_data, DB, unt_show_forosh, unt_eslahe_zemanat,
  unt_data_input;

{$R *.dfm}
procedure Tfrm_check_dovom.update_check_dovom;
var tarikh:string;
begin
  if RadioGroup1.ItemIndex=0 then
    tarikh:=e_check_sal.Text+'/'+e_check_mah.Text+'/'+e_check_roz.Text
  else
    tarikh:='';
  DataM_input_data.ADOQ_check_dovom.SQL.Text:=' update t_cecke_dovome_zemanat set '+
  
  'zemanat_bank='+QuotedStr(e_bank.Text)+
  ',zemanat_shobe='+QuotedStr(e_shobe.Text)+
  ',zemanat_tarikh_check='+QuotedStr(tarikh)+
  ',zemanat_jari='+QuotedStr(e_jari.Text)+
  ',zemanat_sab_check='+QuotedStr(e_sabe_check.Text)+
  ',zemanat_shomare_check='+QuotedStr(e_sh_check.Text)+
  ',zemanat_mablagh_check='+e_mablagh_check.Text+
  ',zemanat_telephon='+QuotedStr(e_telephone_zamen.Text)+' where kharidar_family='+QuotedStr(L_kh_family.Caption)+
  ' and kharidar_sh_shenasname='+QuotedStr(l_kh_sh_sh.Caption)+' and forosh_tarikh='+QuotedStr(L_forosh_tarikh.Caption)+
  ' ';

  DataM_input_data.ADOQ_check_dovom.ExecSQL;
  MessageBox(Handle,pchar('„‘Œ’«  ÃœÌœ çò œÊ„ –ŒÌ—Â ‘œ'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_ICONINFORMATION);
  frm_show_forosh.show_kholase_foroshha;
  close;
end;
procedure Tfrm_check_dovom.show_moshakhsat_feli;
begin
  e_bank.Text:=DataM_input_data.ADOQ_check_dovomzemanat_bank.AsString;
  e_shobe.Text:=DataM_input_data.ADOQ_check_dovomzemanat_shobe.AsString;
  e_jari.Text:=DataM_input_data.ADOQ_check_dovomzemanat_jari.AsString;
  e_sh_check.Text:=DataM_input_data.ADOQ_check_dovomzemanat_shomare_check.AsString;

  if DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString<>'' then
  begin
    e_check_roz.Text:=DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[9]+DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[10];

    e_check_mah.Text:=DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[6]+DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[7];

    e_check_sal.Text:=DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[1]+DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[2]+
              DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[3]+DataM_input_data.ADOQ_check_dovomzemanat_tarikh_check.AsString[4];
  end
  else
  begin
    e_check_roz.Text:='';
    e_check_mah.Text:='';
    e_check_sal.Text:='';
  end;
  e_sabe_check.Text:=DataM_input_data.ADOQ_check_dovomzemanat_sab_check.AsString;

  e_mablagh_check.Text:=DataM_input_data.ADOQ_check_dovomzemanat_mablagh_check.AsString;

  e_telephone_zamen.Text:=DataM_input_data.ADOQ_check_dovomzemanat_telephon.AsString;

  {L_kh_family.Caption:=DataM_input_data.ADOQ_check_dovomkharidar_family.AsString;
  l_kh_sh_sh.Caption:=DataM_input_data.ADOQ_check_dovomkharidar_sh_shenasname.AsString;
  L_forosh_tarikh.Caption:=DataM_input_data.ADOQ_check_dovomforosh_tarikh.AsString;}
end;

procedure Tfrm_check_dovom.type_zemanat;
begin
if l_type.Caption='eslah' then
begin
 if RadioGroup1.ItemIndex=0 then
    show_moshakhsat_feli
 else
 begin
  e_bank.Text:='';
  e_shobe.Text:='';
  e_jari.Text:='';
  e_sh_check.Text:='';
  e_check_roz.Text:='';
  e_check_mah.Text:='';
  e_check_sal.Text:='';
  e_sabe_check.Text:='';
  e_mablagh_check.Text:='0';
  e_telephone_zamen.Clear;
 end;
end
else
begin
  e_bank.Text:='';
  e_shobe.Text:='';
  e_jari.Text:='';
  e_sh_check.Text:='';
  e_check_roz.Text:='';
  e_check_mah.Text:='';
  e_check_sal.Text:='';
  e_sabe_check.Text:='';
  e_mablagh_check.Text:='0';
  e_telephone_zamen.Clear;
end;
end;
procedure Tfrm_check_dovom.insert_check_dovom;
begin
  DataM_input_data.ADOQ_check_dovom.SQL.Text:=' insert into t_cecke_dovome_zemanat(zemanat_bank,zemanat_shobe,zemanat_tarikh_check,zemanat_jari'+
  ',zemanat_sab_check,zemanat_shomare_check,zemanat_mablagh_check,zemanat_telephon,kharidar_family,kharidar_sh_shenasname,forosh_tarikh)'+
  ' values('+QuotedStr(e_bank.Text)+','+QuotedStr(e_shobe.Text)+','+
  QuotedStr(e_check_sal.Text+'/'+e_check_mah.Text+'/'+e_check_roz.Text)+
  ','+QuotedStr(e_jari.Text)+','+QuotedStr(e_sabe_check.Text)+','+
  QuotedStr(e_sh_check.Text)+','+e_mablagh_check.Text+','+QuotedStr(e_telephone_zamen.Text)+
  ','+QuotedStr(L_kh_family.Caption)+','+QuotedStr(l_kh_sh_sh.Caption)+','+QuotedStr(L_forosh_tarikh.Caption)+')'+

  ' ';
  DataM_input_data.ADOQ_check_dovom.ExecSQL;
    frm_show_forosh.show_kholase_foroshha;
  Close;
end;
function Tfrm_check_dovom.check_vorod_zemanat:boolean;
var s:string;
begin
  check_vorod_zemanat:=true;
  s:='';

  if e_check_sal.Text='' then
  begin
    s:=s+' ”«· çò ÷„«‰  ';
    e_check_sal.SetFocus;
  end;

  if e_check_mah.Text='' then
  begin
    s:=s+' „«Â çò ÷„«‰  ';
    //e_check_mah.SetFocus;
  end;

  if e_check_roz.Text='' then
  begin
    s:=s+' —Ê“ çò ÷„«‰  ';
    //e_check_roz.SetFocus;
  end;

  if e_mablagh_check.Text='' then
  begin
    s:=s+' „»·€ çò ÷„«‰  ';
    e_mablagh_check.SetFocus;
  end;
  if e_sabe_check.Text='' then
  begin
    s:=s+' ’«Õ» çò ÷„«‰  ';
    e_sabe_check.SetFocus;
  end;
  if e_shobe.Text='' then
  begin
    s:=s+' ‘⁄»Â »«‰ò  ';
    e_shobe.SetFocus;
  end;
  if e_sh_check.Text='' then
  begin
    s:=s+' ‘„«—Â çò ÷„«‰  ';
    e_sh_check.SetFocus;
  end;
  if e_jari.Text='' then
  begin
    s:=s+' ‘„«—Â Õ”«» Ã«—Ì ';
    e_jari.SetFocus;
  end;
  if e_bank.Text='' then
  begin
    s:=s+' ‰«„ »«‰ò ';
    e_bank.SetFocus;
  end;

    if s<>'' then
  begin
    check_vorod_zemanat:=false;
    MessageBox(Handle,pchar(s+' »«Ìœ Ê«—œ ‘Êœ'),'!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;


procedure Tfrm_check_dovom.Button1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=0 then
begin
  if check_vorod_zemanat then
  begin
    if l_type.Caption='vorod' then
    begin
    frm_check_dovom.L_select_ch_2.Caption:='yes';
      close;
    end
    else
    begin
     if L_exists.Caption='yes' then
      update_check_dovom;
     if L_exists.Caption='no' then
      insert_check_dovom;
    end;
  end;
end
else
begin
  DataM_input_data.ADOQ_check_dovom.SQL.Text:=' delete from t_cecke_dovome_zemanat where kharidar_family='+QuotedStr(L_kh_family.Caption)+
  ' and kharidar_sh_shenasname='+QuotedStr(l_kh_sh_sh.Caption)+' and forosh_tarikh='+QuotedStr(L_forosh_tarikh.Caption)+
  ' ';
  DataM_input_data.ADOQ_check_dovom.ExecSQL;
  MessageBox(Handle,pchar('„‘Œ’«  çò œÊ„ Õ–› ‘œ'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_ICONINFORMATION);
  frm_show_forosh.show_kholase_foroshha;
  close;  
end;

end;

procedure Tfrm_check_dovom.RadioGroup1Click(Sender: TObject);
begin
  type_zemanat;
end;

procedure Tfrm_check_dovom.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  type_zemanat;
end;

procedure Tfrm_check_dovom.e_mablagh_checkKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_check_dovom.e_check_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_check_dovom.e_check_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_check_dovom.e_check_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_check_dovom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frm_eslahe_zemanat.Showing then
    frm_eslahe_zemanat.Close;
end;

procedure Tfrm_check_dovom.e_check_rozExit(Sender: TObject);
var ss:string;
begin

  if StrLen(pchar(trim(e_check_roz.Text)))<=1 then
    e_check_roz.Text:='0'+e_check_roz.Text;

    ss:=e_check_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
    if frm_data_input.Showing then
     begin
      MessageBox(Handle,'—Ê“ çò »«Ìœ »Ì‰ 1 Ê 31 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_check_roz.SetFocus;
     end;
    end;
end;

procedure Tfrm_check_dovom.e_check_mahExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_check_mah.Text)))<=1 then
    e_check_mah.Text:='0'+e_check_mah.Text;

    ss:=e_check_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'„«Â çò »«Ìœ »Ì‰ 1 Ê 12 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_check_mah.SetFocus;
    end;
end;

procedure Tfrm_check_dovom.e_shobeKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_check_dovom.e_telephone_zamenKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
