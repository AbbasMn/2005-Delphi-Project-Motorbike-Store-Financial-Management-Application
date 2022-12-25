unit unt_eslahe_zemanat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, ExtCtrls;

type
  Tfrm_eslahe_zemanat = class(TForm)
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
    e_bank: TsuiEdit;
    e_shobe: TsuiEdit;
    e_jari: TsuiEdit;
    e_mablagh_check: TsuiEdit;
    e_sh_check: TsuiEdit;
    e_sabe_check: TsuiEdit;
    e_check_roz: TsuiEdit;
    e_check_mah: TsuiEdit;
    e_check_sal: TsuiEdit;
    Bt1: TButton;
    L_cod: TLabel;
    RadioGroup1: TRadioGroup;
    Label43: TLabel;
    e_telephone_zamen: TsuiEdit;
    Bt: TButton;
    L_kh_family: TLabel;
    l_kh_sh_sh: TLabel;
    L_forosh_tarikh: TLabel;
    procedure show_moshakhsat_feli;
    procedure Bt1Click(Sender: TObject);
    procedure update_zemanat;
    function check_vorod_zemanat:boolean;
    procedure FormShow(Sender: TObject);
    procedure type_zemanat;
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_check_rozExit(Sender: TObject);
    procedure e_check_mahExit(Sender: TObject);
    procedure e_check_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_check_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_check_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_mablagh_checkKeyPress(Sender: TObject; var Key: Char);
    procedure BtClick(Sender: TObject);
    procedure e_jariKeyPress(Sender: TObject; var Key: Char);
    procedure e_telephone_zamenKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_zemanat: Tfrm_eslahe_zemanat;

implementation

uses Unt_datam_input_data, unt_show_forosh, unt_data_input,
  unt_check_dovom;

{$R *.dfm}
procedure Tfrm_eslahe_zemanat.type_zemanat;
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
end;
procedure Tfrm_eslahe_zemanat.update_zemanat;
var tarikh:string;
begin
  if RadioGroup1.ItemIndex=0 then
    tarikh:=e_check_sal.Text+'/'+e_check_mah.Text+'/'+e_check_roz.Text
  else
    tarikh:='';
  DataM_input_data.ADOQ_forosh.SQL.Text:=' update T_moshakhasate_forosh set '+
  
  'zemanat_bank='+QuotedStr(e_bank.Text)+
  ',zemanat_shobe='+QuotedStr(e_shobe.Text)+

  ',zemanat_tarikh_check='+QuotedStr(tarikh)+
  ',zemanat_jari='+QuotedStr(e_jari.Text)+
  ',zemanat_sab_check='+QuotedStr(e_sabe_check.Text)+
  ',zemanat_shomare_check='+QuotedStr(e_sh_check.Text)+
  ',zemanat_mablagh_check='+e_mablagh_check.Text+
  ',zemanat_telephon='+QuotedStr(e_telephone_zamen.Text)+' where cod='+L_cod.Caption+

  ' ';
  
  DataM_input_data.ADOQ_forosh.ExecSQL;
  frm_show_forosh.show_kholase_foroshha;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod.Caption,[]);
end;

function Tfrm_eslahe_zemanat.check_vorod_zemanat:boolean;
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
    e_check_mah.SetFocus;
  end;

  if e_check_roz.Text='' then
  begin
    s:=s+' —Ê“ çò ÷„«‰  ';
    e_check_roz.SetFocus;
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
///////////////
procedure Tfrm_eslahe_zemanat.show_moshakhsat_feli;
begin
  e_bank.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_bank.AsString;
  e_shobe.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_shobe.AsString;
  e_jari.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_jari.AsString;
  e_sh_check.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_shomare_check.AsString;

  if DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString<>'' then
  begin
    e_check_roz.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[9]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[10];

    e_check_mah.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[6]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[7];

    e_check_sal.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[1]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[2]+
              DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[3]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_tarikh_check.AsString[4];
  end
  else
  begin
    e_check_roz.Text:='';
    e_check_mah.Text:='';
    e_check_sal.Text:='';
  end;
  e_sabe_check.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_sab_check.AsString;

  e_mablagh_check.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_mablagh_check.AsString;

  e_telephone_zamen.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasezemanat_telephon.AsString;

  L_cod.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasecod.AsString;  

end;

procedure Tfrm_eslahe_zemanat.Bt1Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex=0) then
  begin
  if  (check_vorod_zemanat) then
  begin
    if  MessageBox(Handle,' „‘Œ’«  ÃœÌœ ÷„«‰  –ŒÌ—Â ‘Êœø ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin
      update_zemanat;
      MessageBox(Handle,'„‘Œ’«  ÃœÌœ ÷„«‰ °–ŒÌ—Â ‘œ',' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
      close;
    end;
  end;
  end
  else
    begin
      e_mablagh_check.Text:='0';
      update_zemanat;
      MessageBox(Handle,'„‘Œ’«  ÷„«‰  Õ–› ‘œ',' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
      close;
    end;
end;

procedure Tfrm_eslahe_zemanat.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  type_zemanat;
end;

procedure Tfrm_eslahe_zemanat.RadioGroup1Click(Sender: TObject);
begin
  type_zemanat;
end;

procedure Tfrm_eslahe_zemanat.e_check_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_check_roz.Text)))<=1 then
    e_check_roz.Text:='0'+e_check_roz.Text;

    ss:=e_check_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'—Ê“ çò »«Ìœ »Ì‰ 1 Ê 31 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_check_roz.SetFocus;
    end;

end;

procedure Tfrm_eslahe_zemanat.e_check_mahExit(Sender: TObject);
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

procedure Tfrm_eslahe_zemanat.e_check_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_zemanat.e_check_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_zemanat.e_check_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_zemanat.e_mablagh_checkKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_zemanat.BtClick(Sender: TObject);
begin
  frm_check_dovom.L_kh_family.Caption:=L_kh_family.Caption;
  frm_check_dovom.l_kh_sh_sh.Caption:=l_kh_sh_sh.Caption;
  frm_check_dovom.L_forosh_tarikh.Caption:=L_forosh_tarikh.Caption;

  DataM_input_data.ADOQ_check_dovom.SQL.Text:='select * from t_cecke_dovome_zemanat where '+
  'kharidar_family='+QuotedStr(L_kh_family.Caption)+' and kharidar_sh_shenasname='+QuotedStr(l_kh_sh_sh.Caption)+
  ' and forosh_tarikh='+QuotedStr(L_forosh_tarikh.Caption);
  DataM_input_data.ADOQ_check_dovom.Open;
  if DataM_input_data.ADOQ_check_dovom.RecordCount>0 then
  begin
    frm_check_dovom.show_moshakhsat_feli;
    frm_check_dovom.L_exists.Caption:='yes';
  end
  else
    begin
      frm_check_dovom.L_exists.Caption:='no';
      frm_check_dovom.e_bank.Text:='';
      frm_check_dovom.e_shobe.Text:='';
      frm_check_dovom.e_jari.Text:='';
      frm_check_dovom.e_sh_check.Text:='';
      frm_check_dovom.e_check_roz.Text:='';
      frm_check_dovom.e_check_mah.Text:='';
      frm_check_dovom.e_check_sal.Text:='';
      frm_check_dovom.e_sabe_check.Text:='';
      frm_check_dovom.e_mablagh_check.Text:='0';
      frm_check_dovom.e_telephone_zamen.Clear;
    end;
   frm_check_dovom.l_type.Caption:='eslah';
   frm_check_dovom.Caption:='«’·«Õ „‘Œ’«  çò œÊ„';
  frm_check_dovom.ShowModal;
end;

procedure Tfrm_eslahe_zemanat.e_jariKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_zemanat.e_telephone_zamenKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
