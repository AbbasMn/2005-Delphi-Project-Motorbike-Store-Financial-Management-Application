unit unt_foroshe_nagdi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, SUIEdit;

type
  Tfrm_foroshe_nagdi = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label45: TLabel;
    e_name: TsuiEdit;
    e_family: TsuiEdit;
    e_adress: TTeMemo;
    e_telephon: TsuiEdit;
    e_telephonhamrah: TsuiEdit;
    e_pedar: TsuiEdit;
    e_sh_sh: TsuiEdit;
    e_sadere: TsuiEdit;
    e_roz: TsuiEdit;
    e_code_meli: TsuiEdit;
    e_mah: TsuiEdit;
    e_sal: TsuiEdit;
    e_code_posti: TsuiEdit;
    CheckBox4: TCheckBox;
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
    Label12: TLabel;
    L_forokhte: TLabel;
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
    e_motor_tozih: TTeMemo;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    e_geytmat: TsuiEdit;
    e_nagd: TsuiEdit;
    e_forosh_roz: TsuiEdit;
    e_forosh_mah: TsuiEdit;
    e_forosh_sal: TsuiEdit;
    Bt: TButton;
    procedure insert_kharidar(s:string);
    procedure get_motor_from_motors_on_plake_bala;
    procedure get_motor_from_motors_on_plake_pain;
    procedure get_motor_from_motors_on_plake_shahr;
    function check_vorod_moshakhasate_kharida:boolean;
    function check_vorod_moshakhasate_motor:boolean;
    function check_vorod_moshakhasate_forosh:boolean;
    procedure e_sh_shKeyPress(Sender: TObject; var Key: Char);
    procedure e_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_code_meliKeyPress(Sender: TObject; var Key: Char);
    procedure e_code_postiKeyPress(Sender: TObject; var Key: Char);
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
    procedure e_rozExit(Sender: TObject);
    procedure e_mahExit(Sender: TObject);
    procedure e_forosh_rozExit(Sender: TObject);
    procedure e_forosh_mahExit(Sender: TObject);
    procedure e_forosh_salExit(Sender: TObject);
    procedure BtClick(Sender: TObject);
    procedure e_motor_nameEnter(Sender: TObject);
    procedure e_motor_tozihEnter(Sender: TObject);
    procedure clear;
    procedure e_motor_plak_balaExit(Sender: TObject);
    procedure e_motor_plak_shahrExit(Sender: TObject);
    procedure e_motor_plak_paeinExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_foroshe_nagdi: Tfrm_foroshe_nagdi;

implementation

uses Unt_datam_input_data, unt_check_dovom, unt_forosh_namoaian;

{$R *.dfm}
procedure Tfrm_foroshe_nagdi.clear;
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

  e_forosh_roz.Clear;
  e_forosh_mah.Clear;
  e_forosh_sal.Clear;
  e_geytmat.Text:='';
  e_nagd.Text:='';

end;



function Tfrm_foroshe_nagdi.check_vorod_moshakhasate_forosh:boolean;
var s:string;
begin
  check_vorod_moshakhasate_forosh:=true;
  s:='';

  if e_nagd.Text='' then
  begin
    s:=s+' œ—Ì«›  ‰ﬁœ ';
    e_nagd.SetFocus;
  end;
  if e_geytmat.Text='' then
  begin
    s:=s+' ﬁÌ„  ›—Ê‘ ';
    e_geytmat.SetFocus;
  end;
    if e_forosh_sal.Text='' then
  begin
    s:=s+' ”«· ›—Ê‘ ';
    e_forosh_sal.SetFocus;
  end;

  if e_forosh_mah.Text='' then
  begin
    s:=s+' „«Â ›—Ê‘ ';
    //e_forosh_mah.SetFocus;
  end;

  if e_forosh_roz.Text='' then
  begin
    s:=s+' —Ê“ ›—Ê‘ ';
    //e_forosh_roz.SetFocus;
  end;

  if s<>'' then
  begin
    check_vorod_moshakhasate_forosh:=false;
    MessageBox(Handle,pchar(s+' »«Ìœ Ê«—œ ‘Êœ'),'!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;


function Tfrm_foroshe_nagdi.check_vorod_moshakhasate_motor:boolean;
var s:string;
begin
  check_vorod_moshakhasate_motor:=true;
  s:='';

  if e_motor_plak_paein.Text='' then
  begin
    s:=s+' œÊ —ﬁ„ Å«ÌÌ‰ Å·«ò ';
    e_motor_plak_paein.SetFocus;
  end;
  if e_motor_plak_shahr.Text='' then
  begin
    s:=s+' ‘Â— Å·«ò ';
    e_motor_plak_shahr.SetFocus;
  end;
  if e_motor_plak_bala.Text='' then
  begin
    s:=s+' ‘„«—Â Å·«ò ';
    e_motor_plak_bala.SetFocus;
  end;
  if e_motor_rang.Text='' then
  begin
    s:=s+' —‰ê „Ê Ê— ';
    e_motor_rang.SetFocus;
  end;
  if e_motor_sh_motor.Text='' then
  begin
    s:=s+' ‘„«—Â „Ê Ê— ';
    e_motor_sh_motor.SetFocus;
  end;
  if e_motor_sh_tane.Text='' then
  begin
    s:=s+' ‘„«—Â  ‰Â ';
    e_motor_sh_tane.SetFocus;
  end;
  if e_motor_sale_sakht.Text='' then
  begin
    s:=s+' ”«· ”«Œ  ';
    e_motor_sale_sakht.SetFocus;
  end;
  if e_motor_model.Text='' then
  begin
    s:=s+' „œ· ';
    e_motor_model.SetFocus;
  end;
  if e_motor_system.Text='' then
  begin
    s:=s+' ”Ì” „ ';
    e_motor_system.SetFocus;
  end;
  if e_motor_name.Text='' then
  begin
    s:=s+' ‰«„ „Ê Ê— ”Ìò·  ';
    e_motor_name.SetFocus;
  end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_motor:=false;
    MessageBox(Handle,pchar(s+' »«Ìœ Ê«—œ ‘Êœ'),'!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;

function Tfrm_foroshe_nagdi.check_vorod_moshakhasate_kharida:boolean;
var s:string;
begin
  check_vorod_moshakhasate_kharida:=true;
  s:='';

  if e_adress.Text='' then
  begin  
    s:=s+' ¬œ—” ';
    e_adress.SetFocus;
  end;
  if e_telephon.Text='' then
  begin
    s:=s+'  ·›‰ À«»  ';
    e_telephon.SetFocus;
  end;
  {if e_code_meli.Text='' then
  begin
    s:=s+' òœ„·Ì ';
    e_code_meli.SetFocus;
  end;}
  if e_sal.Text='' then
  begin
    s:=s+' ”«·  Ê·œ ';
    e_sal.SetFocus;
  end;
  if e_mah.Text='' then
  begin
    s:=s+' „«Â  Ê·œ ';
    //e_mah.SetFocus;
  end;
  if e_roz.Text='' then
  begin
    s:=s+' —Ê“  Ê·œ ';
    //e_roz.SetFocus;
  end;
  if e_sadere.Text='' then
  begin
    s:=s+' „Õ· ’œÊ— ‘‰«”‰«„Â ';
    e_sadere.SetFocus;
  end;
  if e_sh_sh.Text='' then
  begin
    s:=s+' ‘„«—Â ‘‰«”‰«„Â ';
    e_sh_sh.SetFocus;
  end;
  if e_pedar.Text='' then
  begin
    s:=s+' ‰«„ Åœ— ';
    e_pedar.SetFocus;
  end;
  if e_family.Text='' then
  begin
    s:=s+' ‰«„ Œ«‰Ê«œêÌ Œ—Ìœ«— ';
    e_family.SetFocus;
  end;
  if e_name.Text='' then
  begin
    s:=s+' ‰«„ Œ—Ìœ«— ';
    e_name.SetFocus;
  end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_kharida:=false;
    MessageBox(Handle,pchar(s+' »«Ìœ Ê«—œ ‘Êœ'),'!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;


procedure Tfrm_foroshe_nagdi.insert_kharidar(s:string);
var mah,sal,temp:integer;
    tarikh_s,sal_,mah_,roz_,rr:string;
begin
  tarikh_s:=e_forosh_sal.Text+'/'+e_forosh_mah.Text+'/'+e_forosh_roz.Text;

   //////////////////
  DataM_input_data.ADOQ_forosh.SQL.Text:=' insert into T_moshakhasate_forosh('+
  
  'kharidar_name,kharidar_family,kharidar_pedar,kharidar_sh_shenasname,kharidar_sadere,kharidar_tavalod,'+
  'kharidar_cod_meli,kharidar_tele_sabet,kharidar_tele_hamrah,kharidar_adress,'+

  'motor_name,motor_system,motor_model,motor_sale_sakht,motor_shomare_tane,motor_shomare_motor,motor_rang,'+
  'motor_plak_bala,motor_plak_shahr,motor_plak_paein,motor_tozihat,'+


  'forosh_geymat,forosh_nagd,forosh_tarikh,forosh_geymate_nahaei,kharidar_code_posti)'+

  ' values('+
  QuotedStr(e_name.Text)+','+QuotedStr(e_family.Text)+','+QuotedStr(e_pedar.Text)+','+QuotedStr(e_sh_sh.Text)+','+
  QuotedStr(e_sadere.Text)+','+QuotedStr(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)+','+QuotedStr(e_code_meli.Text)+','+
  QuotedStr(e_telephon.Text)+','+QuotedStr(e_telephonhamrah.Text)+','+QuotedStr(e_adress.Text)+

  ','+QuotedStr(e_motor_name.Text)+','+QuotedStr(e_motor_system.Text)+','+QuotedStr(e_motor_model.Text)+','+QuotedStr(e_motor_sale_sakht.Text)+
  ','+QuotedStr(e_motor_sh_tane.Text)+','+QuotedStr(e_motor_sh_motor.Text)+','+QuotedStr(e_motor_rang.Text)+
  ','+QuotedStr(e_motor_plak_bala.Text)+','+QuotedStr(e_motor_plak_shahr.Text)+','+QuotedStr(e_motor_plak_paein.Text)+
  ','+QuotedStr(e_motor_tozih.Text)+


  ','+e_geytmat.Text+','+e_nagd.Text+','+QuotedStr(e_forosh_sal.Text+'/'+e_forosh_mah.Text+'/'+e_forosh_roz.Text)+

  ','+e_geytmat.Text+','+QuotedStr(e_code_posti.Text)+')';

  {' update T_motors set motor_forosh='+QuotedStr('›—ÊŒ Â ‘œÂ')+
  ' where motor_plak_bala='+QuotedStr(trim(e_motor_plak_bala.Text))+
  ' and motor_plak_shahr='+QuotedStr(trim(e_motor_plak_shahr.Text))+' and motor_plak_paein='+QuotedStr(trim(e_motor_plak_paein.Text));}


  DataM_input_data.ADOQ_forosh.ExecSQL;

 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='update T_motors set motor_forosh='+QuotedStr('›—ÊŒ Â ‘œÂ')+
 ' where motor_plak_bala='+QuotedStr(trim(e_motor_plak_bala.Text))+
 ' and motor_plak_shahr='+QuotedStr(trim(e_motor_plak_shahr.Text))+' and motor_plak_paein='+QuotedStr(trim(e_motor_plak_paein.Text));
 DataM_input_data.ADOQ_kharid_motor.ExecSQL;

 if  frm_check_dovom.L_select_ch_2.Caption='yes' then
    frm_check_dovom.insert_check_dovom;

end;


procedure Tfrm_foroshe_nagdi.get_motor_from_motors_on_plake_bala;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('›—ÊŒ Â ‰‘œÂ');
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

procedure Tfrm_foroshe_nagdi.get_motor_from_motors_on_plake_pain;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('›—ÊŒ Â ‰‘œÂ');
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

procedure Tfrm_foroshe_nagdi.get_motor_from_motors_on_plake_shahr;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('›—ÊŒ Â ‰‘œÂ');
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



procedure Tfrm_foroshe_nagdi.e_sh_shKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_rozKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_mahKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_salKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_code_meliKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_code_postiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_telephonKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_telephonhamrahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_motor_sale_sakhtKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_motor_plak_balaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_motor_plak_paeinKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_forosh_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_forosh_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_forosh_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_geytmatKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_nagdKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_foroshe_nagdi.e_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_roz.Text)))<=1 then
    e_roz.Text:='0'+e_roz.Text;

    ss:=e_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
     if frm_forosh_namoaian.Showing then
     begin
      MessageBox(Handle,'—Ê“  Ê·œ  »«Ìœ »Ì‰ 1 Ê 31 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_roz.SetFocus;
     end;
    end;
end;

procedure Tfrm_foroshe_nagdi.e_mahExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_mah.Text)))<=1 then
    e_mah.Text:='0'+e_mah.Text;

    ss:=e_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
     if frm_forosh_namoaian.Showing then
     begin
      MessageBox(Handle,'„«Â  Ê·œ »«Ìœ »Ì‰ 1 Ê 12 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_mah.SetFocus;
     end;
    end;
end;

procedure Tfrm_foroshe_nagdi.e_forosh_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_forosh_roz.Text))<=1 then
    e_forosh_roz.Text:='0'+e_forosh_roz.Text;

    ss:=e_forosh_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'—Ê“ ›—Ê‘  »«Ìœ »Ì‰ 1 Ê 31 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_forosh_roz.SetFocus;
    end;
end;

procedure Tfrm_foroshe_nagdi.e_forosh_mahExit(Sender: TObject);
var sS:string;
begin
  if StrLen(pchar(e_forosh_mah.Text))<=1 then
    e_forosh_mah.Text:='0'+e_forosh_mah.Text;

    ss:=e_forosh_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'„«Â ›—Ê‘  »«Ìœ »Ì‰ 1 Ê 12 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_forosh_mah.SetFocus;
    end;
end;

procedure Tfrm_foroshe_nagdi.e_forosh_salExit(Sender: TObject);
var s:string;
begin
  if e_forosh_sal.Text='' then
    s:='0'
  else
    s:=e_forosh_sal.Text;
  if StrToFloat(s)<1384 then
  begin
     e_forosh_sal.Text:='1384';
     MessageBox(Handle,'”«· ›—Ê‘ »«Ìœ »⁄œ «“ ”«· 1384 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
     e_forosh_sal.SetFocus;
  end;
end;

procedure Tfrm_foroshe_nagdi.BtClick(Sender: TObject);
var s:string;
begin
  if (check_vorod_moshakhasate_kharida)and(check_vorod_moshakhasate_motor)and(check_vorod_moshakhasate_forosh) then
  begin
   if trim(e_geytmat.Text)='' then
    e_geytmat.Text:='0';
   if trim(e_nagd.Text)='' then
    e_nagd.Text:='0';

   if StrToFloat(e_nagd.Text)<>StrToFloat(e_geytmat.Text)then
     MessageBox(Handle,'„»·€ œ—Ì«›  ‰ﬁœÌ »«Ìœ œﬁÌﬁ« »—«»— »« ﬁÌ„  ‰ﬁœÌ »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
   else
   begin
    insert_kharidar(s);
    MessageBox(Handle,pchar(' ›—Ê‘ „Ê Ê— ”Ìò·  »Â  '+e_name.Text+' '+e_family.Text+' «‰Ã«„ ‘œ '),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_ICONINFORMATION);
    Close;
   end;
  end;
end;

procedure Tfrm_foroshe_nagdi.e_motor_nameEnter(Sender: TObject);
begin
 if check_vorod_moshakhasate_kharida then
end;

procedure Tfrm_foroshe_nagdi.e_motor_tozihEnter(Sender: TObject);
begin
  check_vorod_moshakhasate_motor;
end;

procedure Tfrm_foroshe_nagdi.e_motor_plak_balaExit(Sender: TObject);
begin
  if (e_motor_plak_bala.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_bala;
end;

procedure Tfrm_foroshe_nagdi.e_motor_plak_shahrExit(Sender: TObject);
begin
  if (e_motor_plak_shahr.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_shahr;
end;

procedure Tfrm_foroshe_nagdi.e_motor_plak_paeinExit(Sender: TObject);
begin
  if (e_motor_plak_paein.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_pain;
end;

procedure Tfrm_foroshe_nagdi.FormShow(Sender: TObject);
begin
e_name.SetFocus;
end;

end.

