unit unt_data_input;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, SUIButton, SUIEdit, ExtCtrls, DB, DBCtrls;

type

  Tfrm_data_input = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    e_name: TsuiEdit;
    Label4: TLabel;
    e_family: TsuiEdit;
    Label16: TLabel;
    e_adress: TTeMemo;
    Label17: TLabel;
    e_telephon: TsuiEdit;
    e_telephonhamrah: TsuiEdit;
    Label3: TLabel;
    e_pedar: TsuiEdit;
    Label5: TLabel;
    e_sh_sh: TsuiEdit;
    Label6: TLabel;
    e_sadere: TsuiEdit;
    Label7: TLabel;
    e_roz: TsuiEdit;
    Label8: TLabel;
    e_code_meli: TsuiEdit;
    Label20: TLabel;
    e_mah: TsuiEdit;
    e_sal: TsuiEdit;
    Label1: TLabel;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    e_motor_name: TsuiEdit;
    e_motor_system: TsuiEdit;
    e_motor_rang: TsuiEdit;
    e_motor_model: TsuiEdit;
    e_motor_sale_sakht: TsuiEdit;
    e_motor_sh_motor: TsuiEdit;
    e_motor_plak_bala: TsuiEdit;
    e_motor_plak_shahr: TsuiEdit;
    e_motor_plak_paein: TsuiEdit;
    e_motor_sh_tane: TsuiEdit;
    Label12: TLabel;
    e_motor_tozih: TTeMemo;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    e_geytmat: TsuiEdit;
    e_nagd: TsuiEdit;
    e_bagimande: TsuiEdit;
    e_tedad_agsat: TsuiEdit;
    e_mablagh_gest: TsuiEdit;
    Label53: TLabel;
    e_forosh_roz: TsuiEdit;
    Label54: TLabel;
    e_forosh_mah: TsuiEdit;
    Label56: TLabel;
    e_forosh_sal: TsuiEdit;
    Label25: TLabel;
    e_darsad: TsuiEdit;
    Label26: TLabel;
    e_mablag_sod: TsuiEdit;
    Label30: TLabel;
    e_bagi_mande_kol: TsuiEdit;
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
    Bt: TButton;
    GroupBox4: TGroupBox;
    Label44: TLabel;
    e_roze_pardakhte_gest: TsuiEdit;
    Label40: TLabel;
    Label41: TLabel;
    RadioGroup1: TRadioGroup;
    GroupBox5: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label42: TLabel;
    e_geymate_nahaei: TsuiEdit;
    Label43: TLabel;
    e_telephone_zamen: TsuiEdit;
    Button1: TButton;
    L_forokhte: TLabel;
    GroupBox6: TGroupBox;
    CheckBox4: TCheckBox;
    Label45: TLabel;
    e_code_posti: TsuiEdit;
    procedure FormShow(Sender: TObject);
    function check_vorod_moshakhasate_kharida:boolean;
    function check_vorod_moshakhasate_motor:boolean;
    function check_vorod_moshakhasate_forosh:boolean;
    procedure e_bankEnter(Sender: TObject);
    procedure insert_kharidar(s:string);
    procedure BtClick(Sender: TObject);
    function get_tedad_kharidar_mojod:string;
    procedure e_sh_shKeyPress(Sender: TObject; var Key: Char);
    procedure e_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_code_meliKeyPress(Sender: TObject; var Key: Char);
    procedure e_telephonKeyPress(Sender: TObject; var Key: Char);
    procedure e_telephonhamrahKeyPress(Sender: TObject; var Key: Char);
    procedure e_motor_sale_sakhtKeyPress(Sender: TObject; var Key: Char);
    procedure e_motor_plak_balaKeyPress(Sender: TObject; var Key: Char);
    procedure e_motor_plak_paeinKeyPress(Sender: TObject; var Key: Char);
    procedure e_forosh_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_forosh_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_forosh_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_geytmatKeyPress(Sender: TObject; var Key: Char);
    procedure e_nagdKeyPress(Sender: TObject; var Key: Char);
    procedure e_bagimandeKeyPress(Sender: TObject; var Key: Char);
    procedure e_tedad_agsatKeyPress(Sender: TObject; var Key: Char);
    procedure e_darsadKeyPress(Sender: TObject; var Key: Char);
    procedure e_mablag_sodKeyPress(Sender: TObject; var Key: Char);
    procedure e_bagi_mande_kolKeyPress(Sender: TObject; var Key: Char);
    procedure e_mablagh_gestKeyPress(Sender: TObject; var Key: Char);
    procedure mohasebe_forosh;
    procedure e_tedad_agsatExit(Sender: TObject);
    procedure e_bagimandeEnter(Sender: TObject);
    procedure e_mablag_sodEnter(Sender: TObject);
    procedure e_nagdChange(Sender: TObject);
    procedure e_tedad_agsatChange(Sender: TObject);
    procedure e_darsadChange(Sender: TObject);
    procedure e_mablag_sodChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure e_check_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_check_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_jariKeyPress(Sender: TObject; var Key: Char);
    procedure e_mablagh_checkKeyPress(Sender: TObject; var Key: Char);
    function check_vorod_zemanat:boolean;
    procedure CheckBox1Click(Sender: TObject);
    procedure typ_tarikhe_pardakhte_gest;
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_roze_pardakhte_gestKeyPress(Sender: TObject;
      var Key: Char);
    procedure e_roze_pardakhte_gestExit(Sender: TObject);
    procedure e_forosh_rozChange(Sender: TObject);
    procedure e_forosh_rozExit(Sender: TObject);
    procedure e_forosh_mahExit(Sender: TObject);
    procedure e_forosh_salExit(Sender: TObject);
    procedure e_geytmatChange(Sender: TObject);
    procedure e_rozExit(Sender: TObject);
    procedure e_mahExit(Sender: TObject);
    procedure e_geytmatExit(Sender: TObject);
    procedure e_nagdExit(Sender: TObject);
    procedure e_darsadExit(Sender: TObject);
    procedure clear;
    procedure e_check_mahExit(Sender: TObject);
    procedure e_check_rozExit(Sender: TObject);
    procedure e_check_rozKeyPress(Sender: TObject; var Key: Char);
    procedure get_motor_from_motors_on_plake_bala;
    procedure get_motor_from_motors_on_plake_pain;
    procedure get_motor_from_motors_on_plake_shahr;
    procedure e_motor_plak_paeinExit(Sender: TObject);
    procedure e_motor_plak_shahrExit(Sender: TObject);
    procedure e_motor_plak_balaExit(Sender: TObject);
    procedure e_motor_tozihEnter(Sender: TObject);
    procedure e_motor_nameEnter(Sender: TObject);
    procedure e_code_postiKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_data_input: Tfrm_data_input;

implementation

uses Unt_datam_input_data, unt_data_input2, unt_show_forosh, Math,
  unt_DataM_tahvil_joz, unt_main, unt_check_dovom, unt_kharide_motor;

{$R *.dfm}
procedure Tfrm_data_input.get_motor_from_motors_on_plake_bala;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('?????? ????');
 DataM_input_data.ADOQ_kharid_motor.Open;

 if DataM_input_data.ADOQ_kharid_motor.RecordCount>0 then
 begin
  e_motor_name.text:=DataM_input_data.ADOQ_kharid_motormotor_name.AsString;
  e_motor_system.text:=DataM_input_data.ADOQ_kharid_motormotor_system.AsString;
  e_motor_model.text:=DataM_input_data.ADOQ_kharid_motormotor_model.AsString;
  e_motor_sale_sakht.text:=DataM_input_data.ADOQ_kharid_motormotor_sale_sakht.AsString;
  e_motor_sh_tane.text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_tane.AsString;
  e_motor_sh_motor.text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_motor.AsString;
  e_motor_rang.text:=DataM_input_data.ADOQ_kharid_motormotor_rang.AsString;
  e_motor_plak_bala.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_bala.AsString;
  e_motor_plak_shahr.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_shahr.AsString;
  e_motor_plak_paein.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_paein.AsString;
  L_forokhte.Caption:=DataM_input_data.ADOQ_kharid_motormotor_forosh.AsString;
 end
 else
 begin
 e_motor_name.Clear;
  e_motor_system.Clear;
  e_motor_model.Clear;
  e_motor_sale_sakht.Clear;
  e_motor_sh_tane.Clear;
  e_motor_sh_motor.Clear;
  e_motor_rang.Clear;
  e_motor_plak_bala.Clear;
  e_motor_plak_shahr.Clear;
  e_motor_plak_paein.Clear;
  L_forokhte.Caption:='';    
 end;
end;

procedure Tfrm_data_input.get_motor_from_motors_on_plake_pain;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('?????? ????');
 DataM_input_data.ADOQ_kharid_motor.Open;

 if DataM_input_data.ADOQ_kharid_motor.RecordCount>0 then
 begin
  e_motor_name.text:=DataM_input_data.ADOQ_kharid_motormotor_name.AsString;
  e_motor_system.text:=DataM_input_data.ADOQ_kharid_motormotor_system.AsString;
  e_motor_model.text:=DataM_input_data.ADOQ_kharid_motormotor_model.AsString;
  e_motor_sale_sakht.text:=DataM_input_data.ADOQ_kharid_motormotor_sale_sakht.AsString;
  e_motor_sh_tane.text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_tane.AsString;
  e_motor_sh_motor.text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_motor.AsString;
  e_motor_rang.text:=DataM_input_data.ADOQ_kharid_motormotor_rang.AsString;
  e_motor_plak_bala.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_bala.AsString;
  e_motor_plak_shahr.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_shahr.AsString;
  e_motor_plak_paein.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_paein.AsString;
  L_forokhte.Caption:=DataM_input_data.ADOQ_kharid_motormotor_forosh.AsString;
 end
 else
 begin
 e_motor_name.Clear;
  e_motor_system.Clear;
  e_motor_model.Clear;
  e_motor_sale_sakht.Clear;
  e_motor_sh_tane.Clear;
  e_motor_sh_motor.Clear;
  e_motor_rang.Clear;
  e_motor_plak_bala.Clear;
  e_motor_plak_shahr.Clear;
  e_motor_plak_paein.Clear;
  L_forokhte.Caption:='';
 end;
end;

procedure Tfrm_data_input.get_motor_from_motors_on_plake_shahr;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('?????? ????');
 DataM_input_data.ADOQ_kharid_motor.Open;

 if DataM_input_data.ADOQ_kharid_motor.RecordCount>0 then
 begin
  e_motor_name.text:=DataM_input_data.ADOQ_kharid_motormotor_name.AsString;
  e_motor_system.text:=DataM_input_data.ADOQ_kharid_motormotor_system.AsString;
  e_motor_model.text:=DataM_input_data.ADOQ_kharid_motormotor_model.AsString;
  e_motor_sale_sakht.text:=DataM_input_data.ADOQ_kharid_motormotor_sale_sakht.AsString;
  e_motor_sh_tane.text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_tane.AsString;
  e_motor_sh_motor.text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_motor.AsString;
  e_motor_rang.text:=DataM_input_data.ADOQ_kharid_motormotor_rang.AsString;
  e_motor_plak_bala.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_bala.AsString;
  e_motor_plak_shahr.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_shahr.AsString;
  e_motor_plak_paein.text:=DataM_input_data.ADOQ_kharid_motormotor_plak_paein.AsString;
  L_forokhte.Caption:=DataM_input_data.ADOQ_kharid_motormotor_forosh.AsString;
 end
 else
 begin
 e_motor_name.Clear;
  e_motor_system.Clear;
  e_motor_model.Clear;
  e_motor_sale_sakht.Clear;
  e_motor_sh_tane.Clear;
  e_motor_sh_motor.Clear;
  e_motor_rang.Clear;
  e_motor_plak_bala.Clear;
  e_motor_plak_shahr.Clear;
  e_motor_plak_paein.Clear;
  L_forokhte.Caption:='';
 end;
end;

procedure Tfrm_data_input.clear;
begin
  e_name.Clear;
  e_family.Clear;
  e_pedar.Clear;
  e_sh_sh.Clear;
  e_sadere.Clear;
  e_roz.Clear;
  e_mah.Clear;
  e_sal.Clear;
  e_code_meli.Clear;
  e_code_posti.Clear;
  e_telephon.Clear;
  e_telephonhamrah.Clear;
  e_adress.Clear;

  e_motor_name.Clear;
  e_motor_system.Clear;
  e_motor_model.Clear;
  e_motor_sale_sakht.Clear;
  e_motor_sh_tane.Clear;
  e_motor_sh_motor.Clear;
  e_motor_rang.Clear;
  e_motor_plak_bala.Clear;
  e_motor_plak_shahr.Clear;
  e_motor_plak_paein.Clear;
  e_motor_tozih.Clear;

  e_roze_pardakhte_gest.Clear;

  e_forosh_roz.Clear;
  e_forosh_mah.Clear;
  e_forosh_sal.Clear;
  e_geytmat.Text:='';
  e_nagd.Text:='';
  e_bagimande.Clear;
  e_tedad_agsat.Text:='';
  e_darsad.Text:='';
  e_mablag_sod.Clear;
  e_bagi_mande_kol.Clear;
  e_mablagh_gest.Clear;

  e_bank.Clear;
  e_jari.Clear;
  e_sabe_check.Clear;
  e_sabe_check.Clear;
  e_check_mah.Clear;
  e_check_sal.Clear;
  e_sh_check.Clear;
  e_mablagh_check.Clear;

  e_telephone_zamen.Clear; 
  e_geymate_nahaei.Clear;

end;
procedure Tfrm_data_input.typ_tarikhe_pardakhte_gest;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    e_roze_pardakhte_gest.Text:=e_forosh_roz.Text;
    e_roze_pardakhte_gest.Enabled:=false;
  end
  else
  begin
    e_roze_pardakhte_gest.Text:='';
    e_roze_pardakhte_gest.Enabled:=true;
  end;
end;
/////////////////////////
function Tfrm_data_input.check_vorod_zemanat:boolean;
var s:string;
begin
  check_vorod_zemanat:=true;
  s:='';

  if e_check_sal.Text='' then
  begin
    s:=s+' ??? ?? ????? ';
    e_check_sal.SetFocus;
  end;

  if e_check_mah.Text='' then
  begin
    s:=s+' ??? ?? ????? ';
    //e_check_mah.SetFocus;
  end;

  if e_check_roz.Text='' then
  begin
    s:=s+' ??? ?? ????? ';
    //e_check_roz.SetFocus;
  end;

  if e_mablagh_check.Text='' then
  begin
    s:=s+' ???? ?? ????? ';
    e_mablagh_check.SetFocus;
  end;
  if e_sabe_check.Text='' then
  begin
    s:=s+' ???? ?? ????? ';
    e_sabe_check.SetFocus;
  end;
  if e_shobe.Text='' then
  begin
    s:=s+' ???? ????  ';
    e_shobe.SetFocus;
  end;
  if e_sh_check.Text='' then
  begin
    s:=s+' ????? ?? ????? ';
    e_sh_check.SetFocus;
  end;
  if e_jari.Text='' then
  begin
    s:=s+' ????? ???? ???? ';
    e_jari.SetFocus;
  end;
  if e_bank.Text='' then
  begin
    s:=s+' ??? ???? ';
    e_bank.SetFocus;
  end;

    if s<>'' then
  begin
    check_vorod_zemanat:=false;
    MessageBox(Handle,pchar(s+' ???? ???? ???'),'!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;
////////////////////
procedure Tfrm_data_input.mohasebe_forosh;
var darsad_sod,mablagh_sod,bagi_mande_kol,bagimande,tedad_agsat,geymat,nagd:real;
begin

  if (trim(e_nagd.Text)='')or(trim(e_nagd.Text)='0')then
  begin
    nagd:=0;
  end
  else
    nagd:=StrToFloat(e_nagd.Text);

   if (trim(e_geytmat.Text)='')or(trim(e_geytmat.Text)='0')then
     geymat:=0
   else
    geymat:=StrToFloat(e_geytmat.Text);

  e_bagimande.Text:=FloatToStr(geymat-nagd);

  if (trim(e_tedad_agsat.Text)='')or(trim(e_tedad_agsat.Text)='0')then
  begin
    tedad_agsat:=0;
    e_tedad_agsat.Text:='0';
  end
  else
    tedad_agsat:=StrToFloat(e_tedad_agsat.Text);


  if (trim(e_bagimande.Text)='')or(trim(e_bagimande.Text)='0')then
  begin
    bagimande:=0;
    e_bagimande.Text:='0';
  end
  else
    bagimande:=StrToFloat(e_bagimande.Text);


  if (trim(e_darsad.Text)='')or(trim(e_darsad.Text)='0')then
  begin
    darsad_sod:=0;
    e_darsad.Text:='0';
    e_mablag_sod.Text:='0';
    mablagh_sod:=0;
  end
  else
  begin
    mablagh_sod:=0;
  end;

  darsad_sod:=StrToFloat(e_darsad.Text);

  e_mablag_sod.Text:=FloatToStr(round(StrToFloat(e_bagimande.Text)*darsad_sod/100*StrToFloat(e_tedad_agsat.Text)));

  bagi_mande_kol:=StrToFloat(e_bagimande.Text)+round((StrToFloat(e_tedad_agsat.Text)*darsad_sod*StrToFloat(e_bagimande.Text)/100));

  e_bagi_mande_kol.Text:=FloatToStr(bagi_mande_kol);

  e_geymate_nahaei.Text:=FloatToStr(bagi_mande_kol+nagd);

  if tedad_agsat >0 then
   e_mablagh_gest.Text:=FloatToStr(round(bagi_mande_kol/tedad_agsat))
  else
   e_mablagh_gest.Text:='0';
end;
///////////////
function Tfrm_data_input.get_tedad_kharidar_mojod:string;
begin
  {DataM_input_data.ADOQ_get_tedad_kharidar.SQL.Text:='select count(*) as tedad  from T_moshakhasate_kharidar';
  DataM_input_data.ADOQ_get_tedad_kharidar.Open;

  get_tedad_kharidar_mojod:=DataM_input_data.ADOQ_get_tedad_kharidartedad.AsString;}
end;

procedure Tfrm_data_input.insert_kharidar(s:string);
var mah,sal,temp:integer;
    tarikh_s,tarikhe_geste_badi,sal_,mah_,roz_,rr:string;
begin
  tarikh_s:=e_forosh_sal.Text+'/'+e_forosh_mah.Text+'/'+e_forosh_roz.Text;

  mah:=StrToInt(tarikh_s[6]+tarikh_s[7]);
  sal:=StrToInt(tarikh_s[1]+tarikh_s[2]+tarikh_s[3]+tarikh_s[4]);
  if mah<12 then
    mah:=mah+1
  else
  begin
    mah:=1;
    sal:=sal+1;
  end;

  sal_:=IntToStr(sal);
  mah_:=IntToStr(mah);
  if strlen(pchar(mah_))<=1 then
    mah_:='0'+mah_;

  rr:=e_roze_pardakhte_gest.Text;
  roz_:=rr[1]+rr[2];

  tarikhe_geste_badi:=sal_+'/'+mah_+'/'+roz_;

  //////////////////
  DataM_input_data.ADOQ_forosh.SQL.Text:=' insert into T_moshakhasate_forosh('+
  
  'kharidar_name,kharidar_family,kharidar_pedar,kharidar_sh_shenasname,kharidar_sadere,kharidar_tavalod,'+
  'kharidar_cod_meli,kharidar_tele_sabet,kharidar_tele_hamrah,kharidar_adress,'+

  'motor_name,motor_system,motor_model,motor_sale_sakht,motor_shomare_tane,motor_shomare_motor,motor_rang,'+
  'motor_plak_bala,motor_plak_shahr,motor_plak_paein,motor_tozihat,'+


  'forosh_geymat,forosh_nagd,forosh_bagimande,forosh_tedad_gest,forosh_mablagh_gest,forosh_tarikh,forosh_darsad_sod,'+
  'forosh_mablaghe_sod,forosh_bagimande_kol,'+

  'zemanat_bank,zemanat_shobe,zemanat_tarikh_check,zemanat_jari,zemanat_sab_check,zemanat_shomare_check,zemanat_mablagh_check,'+

  'tedad_gest_mande,'+

  'roze_pardakhte_gest,tarikh_pardakht_geste_badi,forosh_geymate_nahaei,zemanat_telephon,kharidar_code_posti)'+

  ' values('+
  QuotedStr(e_name.Text)+','+QuotedStr(e_family.Text)+','+QuotedStr(e_pedar.Text)+','+QuotedStr(e_sh_sh.Text)+','+
  QuotedStr(e_sadere.Text)+','+QuotedStr(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)+','+QuotedStr(e_code_meli.Text)+','+
  QuotedStr(e_telephon.Text)+','+QuotedStr(e_telephonhamrah.Text)+','+QuotedStr(e_adress.Text)+

  ','+QuotedStr(e_motor_name.Text)+','+QuotedStr(e_motor_system.Text)+','+QuotedStr(e_motor_model.Text)+','+QuotedStr(e_motor_sale_sakht.Text)+
  ','+QuotedStr(e_motor_sh_tane.Text)+','+QuotedStr(e_motor_sh_motor.Text)+','+QuotedStr(e_motor_rang.Text)+
  ','+QuotedStr(e_motor_plak_bala.Text)+','+QuotedStr(e_motor_plak_shahr.Text)+','+QuotedStr(e_motor_plak_paein.Text)+
  ','+QuotedStr(e_motor_tozih.Text)+


  ','+e_geytmat.Text+','+e_nagd.Text+','+e_bagimande.Text+','+e_tedad_agsat.Text+','+e_mablagh_gest.Text+
  ','+QuotedStr(e_forosh_sal.Text+'/'+e_forosh_mah.Text+'/'+e_forosh_roz.Text)+','+e_darsad.Text+','+e_mablag_sod.Text+
  ','+e_bagi_mande_kol.Text;



  if CheckBox1.Checked then
  begin
    DataM_input_data.ADOQ_forosh.SQL.Text:=DataM_input_data.ADOQ_forosh.SQL.Text+','+QuotedStr(e_bank.Text)+','+QuotedStr(e_shobe.Text)+','+QuotedStr(e_check_sal.Text+'/'+e_check_mah.Text+'/'+e_check_roz.Text)+
    ','+QuotedStr(e_jari.Text)+','+QuotedStr(e_sabe_check.Text)+','+QuotedStr(e_sh_check.Text)+','+e_mablagh_check.Text;
  end
  else
  begin
    DataM_input_data.ADOQ_forosh.SQL.Text:=DataM_input_data.ADOQ_forosh.SQL.Text+','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr('')+
    ','+QuotedStr('')+','+QuotedStr('')+','+QuotedStr('')+','+'0';
  end;

  DataM_input_data.ADOQ_forosh.SQL.Text:=DataM_input_data.ADOQ_forosh.SQL.Text+','+e_tedad_agsat.Text+','+

  QuotedStr(rr)+','+QuotedStr(tarikhe_geste_badi)+','+e_geymate_nahaei.Text+','+QuotedStr(e_telephone_zamen.Text)+
  ','+QuotedStr(e_code_posti.Text)+')';

   {'  update T_motors set motor_forosh='+QuotedStr('?????? ???')+
   '  where motor_plak_bala='+QuotedStr(trim(e_motor_plak_bala.Text))+
   '  and motor_plak_shahr='+QuotedStr(trim(e_motor_plak_shahr.Text))+
   '  and motor_plak_paein='+QuotedStr(trim(e_motor_plak_paein.Text))+';';}



  DataM_input_data.ADOQ_forosh.ExecSQL;

 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='update T_motors set motor_forosh='+QuotedStr('?????? ???')+
 ' where motor_plak_bala='+QuotedStr(trim(e_motor_plak_bala.Text))+
 ' and motor_plak_shahr='+QuotedStr(trim(e_motor_plak_shahr.Text))+' and motor_plak_paein='+QuotedStr(trim(e_motor_plak_paein.Text));
 DataM_input_data.ADOQ_kharid_motor.ExecSQL; 

 if  frm_check_dovom.L_select_ch_2.Caption='yes' then
    frm_check_dovom.insert_check_dovom;

end;
///////////
function Tfrm_data_input.check_vorod_moshakhasate_forosh:boolean;
var s:string;
begin
  check_vorod_moshakhasate_forosh:=true;
  s:='';
  if e_roze_pardakhte_gest.Text='' then
  begin
    s:=s+' ??? ?????? ??? ';
    //e_roze_pardakhte_gest.SetFocus;
  end;
  
  if e_mablagh_gest.Text='' then
  begin
    s:=s+' ???? ??? ';
    //e_mablagh_gest.SetFocus;
  end;
  if e_tedad_agsat.Text='' then
  begin
    s:=s+' ????? ??? ';
    e_tedad_agsat.SetFocus;
  end;
  if e_bagimande.Text='' then
  begin
    s:=s+' ???? ????? ';
    //e_bagimande.SetFocus;
  end;
  if e_nagd.Text='' then
  begin
    s:=s+' ?????? ??? ';
    e_nagd.SetFocus;
  end;
  if e_geytmat.Text='' then
  begin
    s:=s+' ???? ???? ';
    e_geytmat.SetFocus;
  end;
    if e_forosh_sal.Text='' then
  begin
    s:=s+' ??? ???? ';
    e_forosh_sal.SetFocus;
  end;

  if e_forosh_mah.Text='' then
  begin
    s:=s+' ??? ???? ';
    //e_forosh_mah.SetFocus;
  end;

  if e_forosh_roz.Text='' then
  begin
    s:=s+' ??? ???? ';
    //e_forosh_roz.SetFocus;
  end;

  if s<>'' then
  begin
    check_vorod_moshakhasate_forosh:=false;
    MessageBox(Handle,pchar(s+' ???? ???? ???'),'!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;
/////////////////
function Tfrm_data_input.check_vorod_moshakhasate_motor:boolean;
var s:string;
begin
  check_vorod_moshakhasate_motor:=true;
  s:='';

  if e_motor_plak_paein.Text='' then
  begin
    s:=s+' ?? ??? ????? ???? ';
    e_motor_plak_paein.SetFocus;
  end;
  if e_motor_plak_shahr.Text='' then
  begin
    s:=s+' ??? ???? ';
    e_motor_plak_shahr.SetFocus;
  end;
  if e_motor_plak_bala.Text='' then
  begin
    s:=s+' ????? ???? ';
    e_motor_plak_bala.SetFocus;
  end;
  if e_motor_rang.Text='' then
  begin
    s:=s+' ??? ????? ';
    e_motor_rang.SetFocus;
  end;
  if e_motor_sh_motor.Text='' then
  begin
    s:=s+' ????? ????? ';
    e_motor_sh_motor.SetFocus;
  end;
  if e_motor_sh_tane.Text='' then
  begin
    s:=s+' ????? ??? ';
    e_motor_sh_tane.SetFocus;
  end;
  if e_motor_sale_sakht.Text='' then
  begin
    s:=s+' ??? ???? ';
    e_motor_sale_sakht.SetFocus;
  end;
  if e_motor_model.Text='' then
  begin
    s:=s+' ??? ';
    e_motor_model.SetFocus;
  end;
  if e_motor_system.Text='' then
  begin
    s:=s+' ????? ';
    e_motor_system.SetFocus;
  end;
  if e_motor_name.Text='' then
  begin
    s:=s+' ??? ????? ????? ';
    e_motor_name.SetFocus;
  end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_motor:=false;
    MessageBox(Handle,pchar(s+' ???? ???? ???'),'!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;

//////////
function Tfrm_data_input.check_vorod_moshakhasate_kharida:boolean;
var s:string;
begin
  check_vorod_moshakhasate_kharida:=true;
  s:='';

  if e_adress.Text='' then
  begin  
    s:=s+' ???? ';
    e_adress.SetFocus;
  end;
  if e_telephon.Text='' then
  begin
    s:=s+' ???? ???? ';
    e_telephon.SetFocus;
  end;
  {if e_code_meli.Text='' then
  begin
    s:=s+' ????? ';
    e_code_meli.SetFocus;
  end;}
  if e_sal.Text='' then
  begin
    s:=s+' ??? ???? ';
    e_sal.SetFocus;
  end;
  if e_mah.Text='' then
  begin
    s:=s+' ??? ???? ';
    //e_mah.SetFocus;
  end;
  if e_roz.Text='' then
  begin
    s:=s+' ??? ???? ';
    //e_roz.SetFocus;
  end;
  if e_sadere.Text='' then
  begin
    s:=s+' ??? ???? ???????? ';
    e_sadere.SetFocus;
  end;
  if e_sh_sh.Text='' then
  begin
    s:=s+' ????? ???????? ';
    e_sh_sh.SetFocus;
  end;
  if e_pedar.Text='' then
  begin
    s:=s+' ??? ??? ';
    e_pedar.SetFocus;
  end;
  if e_family.Text='' then
  begin
    s:=s+' ??? ???????? ?????? ';
    e_family.SetFocus;
  end;
  if e_name.Text='' then
  begin
    s:=s+' ??? ?????? ';
    e_name.SetFocus;
  end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_kharida:=false;
    MessageBox(Handle,pchar(s+' ???? ???? ???'),'!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;

procedure Tfrm_data_input.FormShow(Sender: TObject);
begin
  CheckBox1.Checked:=false;
  G_zemanat.Visible:=False;
  //frm_data_input.WindowState:=wsMaximized;
  RadioGroup1.ItemIndex:=0;
  typ_tarikhe_pardakhte_gest;
    e_name.SetFocus;
end;

procedure Tfrm_data_input.e_bankEnter(Sender: TObject);
begin
  if check_vorod_moshakhasate_forosh then
end;

procedure Tfrm_data_input.BtClick(Sender: TObject);
var s,ss:string;
begin
  if (check_vorod_moshakhasate_kharida)and(check_vorod_moshakhasate_motor)and(check_vorod_moshakhasate_forosh) then
  begin
   if (CheckBox1.Checked)then
   begin
      if(check_vorod_zemanat)then
      begin
        if (e_roze_pardakhte_gest.Text='') then
          MessageBox(Handle,'??? ?????? ??? ???? ???? ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
        else
        begin
            ss:=e_roze_pardakhte_gest.Text;
            if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
            begin
              MessageBox(Handle,'??? ?????? ???? ??? 1 ? 31 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
              e_roze_pardakhte_gest.SetFocus;
            end
            else
            begin
              insert_kharidar(s);
              MessageBox(Handle,pchar(' ???? ????? ????? ??  '+e_name.Text+' '+e_family.Text+' ????? ?? '),'???? !',MB_OK or MB_RIGHT or MB_ICONINFORMATION);
              Close;
            end;
         end;
      end;
   end
   else
      begin
        if (e_roze_pardakhte_gest.Text='') then
          MessageBox(Handle,'??? ?????? ??? ???? ???? ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)        
        else
         begin
            ss:=e_roze_pardakhte_gest.Text;
            if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
            begin
              MessageBox(Handle,'??? ?????? ???? ??? 1 ? 31 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
              e_roze_pardakhte_gest.SetFocus;
            end
            else
            begin
              insert_kharidar(s);
              MessageBox(Handle,pchar(' ???? ????? ????? ??  '+e_name.Text+' '+e_family.Text+' ????? ?? '),'???? !',MB_OK or MB_RIGHT or MB_ICONINFORMATION);
              Close;
            end;
         end;
      end;
  end;
end;

procedure Tfrm_data_input.e_sh_shKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_rozKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_mahKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_salKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_code_meliKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_telephonKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_telephonhamrahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_motor_sale_sakhtKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_motor_plak_balaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_motor_plak_paeinKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_forosh_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_forosh_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_forosh_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_geytmatKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_nagdKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_bagimandeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_tedad_agsatKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_darsadKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_mablag_sodKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_bagi_mande_kolKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_mablagh_gestKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_tedad_agsatExit(Sender: TObject);
begin
if e_tedad_agsat.Text<>'' then
 mohasebe_forosh
else
 begin
  MessageBox(Handle,'????? ????? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_tedad_agsat.SetFocus;
 end;
end;

procedure Tfrm_data_input.e_bagimandeEnter(Sender: TObject);
begin
 mohasebe_forosh;
end;




procedure Tfrm_data_input.e_mablag_sodEnter(Sender: TObject);
begin
 mohasebe_forosh;
end;

procedure Tfrm_data_input.e_nagdChange(Sender: TObject);
begin
if trim(e_nagd.Text)<>'' then
begin
  if StrToFloat(e_nagd.Text)>StrToFloat(e_geytmat.Text)then
  begin
     MessageBox(Handle,'???? ??? ????? ?? ???? ????? ????? ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
     if frm_data_input.Showing then
      e_nagd.SetFocus;
  end
  else
    if frm_data_input.Showing then
      mohasebe_forosh;
end
else
 begin
  if frm_data_input.Showing then
  begin
    MessageBox(Handle,'???? ???????  ??? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_nagd.SetFocus;
  end;
 end;
end;

procedure Tfrm_data_input.e_tedad_agsatChange(Sender: TObject);
begin
if trim(e_tedad_agsat.Text)<>'' then
 mohasebe_forosh
else
 begin
  if frm_data_input.Showing then
  begin
    MessageBox(Handle,'????? ????? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_tedad_agsat.SetFocus;
  end;
 end;
end;

procedure Tfrm_data_input.e_darsadChange(Sender: TObject);
begin
if trim(e_darsad.Text)<>'' then
begin
  if frm_main.alamat_ashar(e_darsad.Text) then
    mohasebe_forosh
  else
    e_darsad.SetFocus;
end
else
 begin
  if frm_data_input.Showing then
  begin
    MessageBox(Handle,'???? ??? ????? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_darsad.SetFocus;
  end;
 end;
end;

procedure Tfrm_data_input.e_mablag_sodChange(Sender: TObject);
begin
 if frm_main.alamat_ashar(e_mablag_sod.Text) then
   mohasebe_forosh;
end;

procedure Tfrm_data_input.Button2Click(Sender: TObject);
begin
  frm_data_input2.ShowModal;
end;

procedure Tfrm_data_input.Button1Click(Sender: TObject);
begin
  if check_vorod_moshakhasate_kharida and check_vorod_moshakhasate_motor and check_vorod_moshakhasate_forosh and check_vorod_zemanat then
  begin
    frm_check_dovom.L_select_ch_2.Caption:='no';
    frm_check_dovom.l_type.Caption:='vorod';
    frm_check_dovom.L_kh_family.Caption:=e_family.Text;
    frm_check_dovom.l_kh_sh_sh.Caption:=e_sh_sh.Text;
    frm_check_dovom.L_forosh_tarikh.Caption:=e_forosh_sal.Text+'/'+e_forosh_mah.Text+'/'+e_forosh_roz.Text;
    frm_check_dovom.Caption:='???? ?????? ?? ???';
    frm_check_dovom.ShowModal;
  end;
end;



procedure Tfrm_data_input.e_check_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_check_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_jariKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_mablagh_checkKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
  G_zemanat.Visible:=true
 else
  G_zemanat.Visible:=false;
end;

procedure Tfrm_data_input.RadioGroup1Click(Sender: TObject);
begin
  typ_tarikhe_pardakhte_gest;
end;

procedure Tfrm_data_input.e_roze_pardakhte_gestKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_roze_pardakhte_gestExit(Sender: TObject);
var s:string;

begin
  if StrLen(pchar(e_roze_pardakhte_gest.Text))<=1 then
    e_roze_pardakhte_gest.Text:='0'+e_roze_pardakhte_gest.Text;

  if e_roze_pardakhte_gest.Text<>'' then
    s:=e_roze_pardakhte_gest.Text
  else
    s:='0';
  if (StrToFloat(s)>31) or(StrToFloat(s)<1) then
  begin
    MessageBox(Handle,'??? ?????? ???? ??? 1 ? 31 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_roze_pardakhte_gest.SetFocus;
  end;
end;

procedure Tfrm_data_input.e_forosh_rozChange(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    e_roze_pardakhte_gest.Text:=e_forosh_roz.Text;
    e_roze_pardakhte_gest.Enabled:=false;
  end
  else
  begin
    e_roze_pardakhte_gest.Text:='';
    e_roze_pardakhte_gest.Enabled:=true;
  end;
end;

procedure Tfrm_data_input.e_forosh_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_forosh_roz.Text))<=1 then
    e_forosh_roz.Text:='0'+e_forosh_roz.Text;

    ss:=e_forosh_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'??? ????  ???? ??? 1 ? 31 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_forosh_roz.SetFocus;
    end;
end;

procedure Tfrm_data_input.e_forosh_mahExit(Sender: TObject);
var sS:string;
begin
  if StrLen(pchar(e_forosh_mah.Text))<=1 then
    e_forosh_mah.Text:='0'+e_forosh_mah.Text;

    ss:=e_forosh_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'??? ????  ???? ??? 1 ? 12 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_forosh_mah.SetFocus;
    end;
end;

procedure Tfrm_data_input.e_forosh_salExit(Sender: TObject);
var s:string;
begin
  if e_forosh_sal.Text='' then
    s:='0'
  else
    s:=e_forosh_sal.Text;
  if StrToFloat(s)<1384 then
  begin
     e_forosh_sal.Text:='1384';
     MessageBox(Handle,'??? ???? ???? ??? ?? ??? 1384 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
     e_forosh_sal.SetFocus;
  end;
end;

procedure Tfrm_data_input.e_geytmatChange(Sender: TObject);
begin
 If trim(e_geytmat.Text)='' then
 begin
  if frm_data_input.Showing then
  begin
    MessageBox(Handle,'???? ????? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_geytmat.SetFocus;
  end;
 end
 else
 begin
   if frm_data_input.Showing then
      mohasebe_forosh;
 end;
end;

procedure Tfrm_data_input.e_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_roz.Text)))<=1 then
    e_roz.Text:='0'+e_roz.Text;

    ss:=e_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
     if frm_data_input.Showing then
     begin
      MessageBox(Handle,'??? ????  ???? ??? 1 ? 31 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_roz.SetFocus;
     end;
    end;
end;

procedure Tfrm_data_input.e_mahExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_mah.Text)))<=1 then
    e_mah.Text:='0'+e_mah.Text;

    ss:=e_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
     if frm_data_input.Showing then
     begin
      MessageBox(Handle,'??? ???? ???? ??? 1 ? 12 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_mah.SetFocus;
     end;
    end;

end;

procedure Tfrm_data_input.e_geytmatExit(Sender: TObject);
var s:string;
begin
if Trim(e_nagd.Text)='' then
  s:='0'
else
  s:=e_nagd.Text;
 if trim(e_geytmat.Text)='' then
 begin
  if frm_data_input.Showing then
  begin
    MessageBox(Handle,'???? ????? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_geytmat.SetFocus;
  end;
 end
 else
 begin
    if StrToFloat(s)>StrToFloat(e_geytmat.Text)then
    begin
      MessageBox(Handle,'???? ??? ????? ?? ???? ????? ????? ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_nagd.SetFocus;
    end
    else
       if frm_data_input.Showing then
          mohasebe_forosh;
  end;
end;

procedure Tfrm_data_input.e_nagdExit(Sender: TObject);
begin
if trim(e_nagd.Text)<>'' then
begin
  if StrToFloat(e_nagd.Text)>StrToFloat(e_geytmat.Text)then
  begin
     MessageBox(Handle,'???? ??? ????? ?? ???? ????? ????? ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
     e_nagd.SetFocus;
  end
  else
     if frm_data_input.Showing then
        mohasebe_forosh;
end
else
 begin
 if frm_data_input.Showing then
 begin
    MessageBox(Handle,'???? ???????  ??? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_nagd.SetFocus;
 end;
 end;
end;

procedure Tfrm_data_input.e_darsadExit(Sender: TObject);
begin
if trim(e_darsad.Text)<>'' then
begin
 mohasebe_forosh;
end
else
 begin
  if frm_data_input.Showing then
  begin
    MessageBox(Handle,'???? ??? ????? ???? ???? ???','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
    e_darsad.SetFocus;
  end;
 end;
end;

procedure Tfrm_data_input.e_check_mahExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_check_mah.Text)))<=1 then
    e_check_mah.Text:='0'+e_check_mah.Text;

    ss:=e_check_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'??? ?? ???? ??? 1 ? 12 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_check_mah.SetFocus;
    end;
end;

procedure Tfrm_data_input.e_check_rozExit(Sender: TObject);
var ss:string;
begin

  if StrLen(pchar(trim(e_check_roz.Text)))<=1 then
    e_check_roz.Text:='0'+e_check_roz.Text;

    ss:=e_check_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
    if frm_data_input.Showing then
     begin
      MessageBox(Handle,'??? ?? ???? ??? 1 ? 31 ????','!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_check_roz.SetFocus;
     end;
    end;
end;

procedure Tfrm_data_input.e_check_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input.e_motor_plak_paeinExit(Sender: TObject);
begin
  if (e_motor_plak_paein.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_pain;
end;

procedure Tfrm_data_input.e_motor_plak_shahrExit(Sender: TObject);
begin
  if (e_motor_plak_shahr.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_shahr;
end;

procedure Tfrm_data_input.e_motor_plak_balaExit(Sender: TObject);
begin
  if (e_motor_plak_bala.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_bala;
end;

procedure Tfrm_data_input.e_motor_tozihEnter(Sender: TObject);
begin
  check_vorod_moshakhasate_motor;
end;

procedure Tfrm_data_input.e_motor_nameEnter(Sender: TObject);
begin
  if check_vorod_moshakhasate_kharida then
end;

procedure Tfrm_data_input.e_code_postiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
