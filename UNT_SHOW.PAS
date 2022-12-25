unit unt_show_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, SUIDBCtrls, StdCtrls, DBCtrls, ExtCtrls,
  SUIEdit;

type
  Tfrm_show_forosh = class(TForm)
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    DBText7: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText11: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DataSource2: TDataSource;
    DBText18: TDBText;
    DBText19: TDBText;
    Label53: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    Label14: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Label34: TLabel;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    Label1: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText8: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label17: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    DBText9: TDBText;
    Label20: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    g_kharidar_family: TGroupBox;
    Label38: TLabel;
    e_kharidar_family: TsuiEdit;
    Label41: TLabel;
    DBText36: TDBText;
    Label42: TLabel;
    Label28: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    DBText38: TDBText;
    Label45: TLabel;
    GroupBox2: TGroupBox;
    Btn_t_sanad: TButton;
    Btn_t_carte_motor: TButton;
    Btn_t_carte_sokht: TButton;
    Btn_t_bime_name: TButton;
    Btn_garardade_forosh: TButton;
    btn_gozaresh_pardakhte_gest: TButton;
    btn_pardakhte_gest: TButton;
    Label26: TLabel;
    DBText39: TDBText;
    Label39: TLabel;
    Btn_e_t_bime_name: TButton;
    Btn_e_t_sanad: TButton;
    Btn_e_t_carte_sokht: TButton;
    Btn_e_t_carte_motor: TButton;
    btn_e_kharidar: TButton;
    btn_e_mali: TButton;
    btn_e_zemanat: TButton;
    Btn_e_motor: TButton;
    DBText22: TDBText;
    Label40: TLabel;
    DBText37: TDBText;
    Label10: TLabel;
    Btn_hazfe_forosh: TButton;
    procedure FormShow(Sender: TObject);
    procedure show_kholase_foroshha;
    procedure show_hame_bar_asase_kholase_foroshha;
    procedure typ_search;
    procedure RadioGroup1Click(Sender: TObject);
    procedure show_kholase_foroshha_name_motor;
    procedure show_kholase_foroshha_system_motor;
    procedure e_motor_nameChange(Sender: TObject);
    procedure show_kholase_foroshha_kharidar_family;
    procedure show_kholase_foroshha_forosh_tarikh;
    procedure e_motor_systemChange(Sender: TObject);
    procedure e_kharidar_familyChange(Sender: TObject);
    procedure e_fo_rozChange(Sender: TObject);
    procedure e_fo_mahChange(Sender: TObject);
    procedure e_fo_salChange(Sender: TObject);
    procedure Btn_garardade_foroshClick(Sender: TObject);
    procedure Btn_t_sanadClick(Sender: TObject);
    procedure Btn_t_carte_motorClick(Sender: TObject);
    procedure Btn_t_carte_sokhtClick(Sender: TObject);
    procedure Btn_t_bime_nameClick(Sender: TObject);
    procedure btn_gozaresh_pardakhte_gestClick(Sender: TObject);
    procedure btn_pardakhte_gestClick(Sender: TObject);
    function find_tarikhe_akharin_pardakhte_geste:string;
    procedure show_joziat_forosh;
    procedure type_eslah;
    procedure Btn_e_t_bime_nameClick(Sender: TObject);
    procedure Btn_e_t_sanadClick(Sender: TObject);
    procedure Btn_e_t_carte_sokhtClick(Sender: TObject);
    procedure Btn_e_t_carte_motorClick(Sender: TObject);
    procedure Btn_e_motorClick(Sender: TObject);
    procedure btn_e_maliClick(Sender: TObject);
    procedure btn_e_kharidarClick(Sender: TObject);
    procedure btn_e_zemanatClick(Sender: TObject);
    procedure hazfe_forosh;
    procedure Btn_hazfe_foroshClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_forosh: Tfrm_show_forosh;

implementation

uses Unt_datam_input_data, unt_print_pardakhte_gest,
  unt_print_matne_forosh, unt_tahvil_sanad, unt_tahvil_karte_motor,
  unt_tahvil_karte_sokht, unt_data_input2, unt_pardakht_gest,
  unt_sabt_pardakht_gest, unt_DataM_agsat, unt_DataM_tahvil_joz,
  unt_eslahe_forosh, unt_eslahe_kharidar, unt_eslahe_motor,
  unt_eslahe_zemanat;



{$R *.dfm}
procedure Tfrm_show_forosh.hazfe_forosh;
var s:string;
begin
  s:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasecod.AsString;

  DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors '+
  ' where motor_plak_bala='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_bala.AsString)+
  ' and motor_plak_shahr='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_shahr.AsString)+
  ' and motor_plak_paein='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_paein.AsString);
  DataM_input_data.ADOQ_kharid_motor.Open;

   if DataM_input_data.ADOQ_kharid_motor.RecordCount=0 then
   begin

     DataM_input_data.ADOQ_kharid_motor.SQL.Text:=' insert into T_motors(motor_name,motor_system,motor_model,motor_sale_sakht,motor_shomare_tane,motor_shomare_motor,motor_rang,'+
     'motor_plak_bala,motor_plak_shahr,motor_plak_paein) values('+QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_name.AsString))+
     ','+QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_system.AsString))+','+
     QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_model.AsString))+
     ','+QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_sale_sakht.AsString))+
     ','+QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_shomare_tane.AsString))+
     ','+QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_shomare_motor.AsString))+','+
     QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_rang.AsString))+
     ','+QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_bala.AsString))+
     ','+QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_shahr.AsString))+','+
     QuotedStr(trim(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_paein.AsString))+')';

     {'  delete from t_cecke_dovome_zemanat '+
     ' where kharidar_family='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_family.AsString)+
     '  and kharidar_sh_shenasname='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_sh_shenasname.AsString)+
     '  and forosh_tarikh='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString)+

     '  delete from T_moshakhasate_forosh where cod='+s+
     ' delete from T_pardakht_gest where pardakht_cod_forosh='+s+
     ' '; }


    DataM_input_data.ADOQ_kharid_motor.ExecSQL;
    
   end
   else
   begin

     DataM_input_data.ADOQ_kharid_motor.SQL.Text:=' update T_motors set motor_forosh='+QuotedStr('›—ÊŒ Â ‰‘œÂ')+
     ' where motor_plak_bala='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_bala.AsString)+
     ' and motor_plak_shahr='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_shahr.AsString)+
     ' and motor_plak_paein='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_paein.AsString);


     {'  delete from t_cecke_dovome_zemanat '+
     '  where kharidar_family='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_family.AsString)+
     '  and kharidar_sh_shenasname='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_sh_shenasname.AsString)+
     '  and forosh_tarikh='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString)+

     '  delete from T_moshakhasate_forosh where cod='+s+
     ' delete from T_pardakht_gest where pardakht_cod_forosh='+s+
     ' '; }


    DataM_input_data.ADOQ_kharid_motor.ExecSQL;
   end;

  DataM_input_data.ADOQ_check_dovom.SQL.Text:='delete from t_cecke_dovome_zemanat '+
  ' where kharidar_family='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_family.AsString)+
  '  and kharidar_sh_shenasname='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_sh_shenasname.AsString)+
  '  and forosh_tarikh='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString);
  DataM_input_data.ADOQ_check_dovom.ExecSQL;

  DataM_input_data.ADOQ_show_hame_bar_asase_kholase.SQL.Text:='delete from T_moshakhasate_forosh where cod='+s;
  DataM_input_data.ADOQ_show_hame_bar_asase_kholase.ExecSQL;

  DataM_agsat.ADOQ_show_pardakhthaye_gest.SQL.Text:='delete from T_pardakht_gest where pardakht_cod_forosh='+s;
  DataM_agsat.ADOQ_show_pardakhthaye_gest.ExecSQL;

  MessageBox(Handle,'›—Ê‘ «‰ Œ«» ‘œÂ Õ–› ‘œÂ Ê „‘Œ’«  „Ê Ê— »Â „‘Œ’«  „Ê Ê—Â«Ì ›—ÊŒ Â ‰‘œÂ «÷«›Â ê—œÌœ',' ÊÃÂ !',MB_OK or MB_RIGHT or MB_ICONINFORMATION);

  show_kholase_foroshha;
  show_hame_bar_asase_kholase_foroshha;


end;

procedure Tfrm_show_forosh.type_eslah;
begin

    frm_eslahe_kharidar.ShowModal;

    frm_eslahe_motor.ShowModal;

    frm_eslahe_forosh.ShowModal;


    frm_eslahe_zemanat.ShowModal;



    frm_tahvil_sanad.Caption:='«’·«Õ  ÕÊÌ· ”‰œ';
    frm_tahvil_sanad.L_type.Caption:='eslah';
    frm_tahvil_sanad.ShowModal;



    frm_tahvil_karte_motor.Caption:='«’·«Õ  ÕÊÌ· ò«—  „Ê Ê—';
    frm_tahvil_karte_motor.L_type.Caption:='eslah';
    frm_tahvil_karte_motor.ShowModal;



    frm_tahvil_karte_sokht.Caption:='«’·«Õ  ÕÊÌ· ò«—  ”ÊŒ ';
    frm_tahvil_karte_sokht.L_type.Caption:='eslah';
    frm_tahvil_karte_sokht.ShowModal;



    frm_data_input2.Caption:='«’·«Õ ’œÊ— »Ì„Â ‰«„Â';
    frm_data_input2.L_type.Caption:='eslah';
    frm_data_input2.ShowModal;


end;

procedure Tfrm_show_forosh.show_joziat_forosh;
begin
  DataM_tahvil_joz.ADOQ_sanad.SQL.Text:='select * from T_tahvile_sanad  where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
  DataM_tahvil_joz.ADOQ_sanad.Open;

  DataM_tahvil_joz.ADOQ_carte_sokht.SQL.Text:='select * from t_tahvile_carte_sokht  where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
  DataM_tahvil_joz.ADOQ_carte_sokht.Open;

  DataM_tahvil_joz.ADOQ_carte_motor.SQL.Text:='select * from  t_tahvile_carte_motor where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
  DataM_tahvil_joz.ADOQ_carte_motor.Open;

  DataM_tahvil_joz.ADOQ_bime.SQL.Text:='select * from  T_tahvil_bime where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
  DataM_tahvil_joz.ADOQ_bime.Open;

  DataM_input_data.ADOQ_check_dovom.SQL.Text:='select * from t_cecke_dovome_zemanat where '+
  'kharidar_family='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_family.AsString)+
  ' and kharidar_sh_shenasname='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_sh_shenasname.AsString)+
  ' and forosh_tarikh='+QuotedStr(DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString);
  DataM_input_data.ADOQ_check_dovom.Open;
end;

function Tfrm_show_forosh.find_tarikhe_akharin_pardakhte_geste:string;
begin
   DataM_agsat.ADOQ_pardakht_gest.SQL.Text:='select * from T_pardakht_gest where pardakht_cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString+
   ' order by pardakht_tarikh';
   DataM_agsat.ADOQ_pardakht_gest.Open;
   if DataM_agsat.ADOQ_pardakht_gest.RecordCount >0 then
   begin
    DataM_agsat.ADOQ_pardakht_gest.Last;
    find_tarikhe_akharin_pardakhte_geste:=DataM_agsat.ADOQ_pardakht_gestpardakht_tarikh.AsString;
   end
   else
     find_tarikhe_akharin_pardakhte_geste:='Å—œ«Œ Ì «‰Ã«„ ‰‘œÂ';
end;
//////////////////
procedure Tfrm_show_forosh.show_kholase_foroshha_forosh_tarikh;
begin
  {DataM_input_data.ADOQ_show_kholase_forosh.SQL.Text:='select kharidar_name,kharidar_family,kharidar_pedar,motor_name,forosh_tarikh,cod'+
  ' from T_moshakhasate_forosh  where forosh_tarikh like ' +QuotedStr('%'+e_fo_sal.Text+'/'+e_fo_mah.Text+'/'+e_fo_roz.Text+'%')+' order by kharidar_family,kharidar_name,forosh_tarikh';
  DataM_input_data.ADOQ_show_kholase_forosh.Open; }
end;
///////////////////

procedure Tfrm_show_forosh.show_kholase_foroshha_kharidar_family;
begin
  DataM_input_data.ADOQ_show_kholase_forosh.SQL.Text:='select kharidar_name,kharidar_family,kharidar_pedar,motor_name,forosh_tarikh,cod'+
  ' from T_moshakhasate_forosh  where kharidar_family like ' +QuotedStr('%'+e_kharidar_family.Text+'%')+' order by kharidar_family,kharidar_name,forosh_tarikh';
  DataM_input_data.ADOQ_show_kholase_forosh.Open;
end;
///////////////////
procedure Tfrm_show_forosh.show_kholase_foroshha_system_motor;
begin
  {DataM_input_data.ADOQ_show_kholase_forosh.SQL.Text:='select kharidar_name,kharidar_family,kharidar_pedar,motor_name,forosh_tarikh,cod'+
  ' from T_moshakhasate_forosh  where motor_system like ' +QuotedStr('%'+e_motor_system.Text+'%')+' order by kharidar_family,kharidar_name,forosh_tarikh';
  DataM_input_data.ADOQ_show_kholase_forosh.Open; }
end;
///////////////////
procedure Tfrm_show_forosh.show_kholase_foroshha_name_motor;
begin
  {DataM_input_data.ADOQ_show_kholase_forosh.SQL.Text:='select kharidar_name,kharidar_family,kharidar_pedar,motor_name,forosh_tarikh,cod'+
  ' from T_moshakhasate_forosh  where motor_name like ' +QuotedStr('%'+e_motor_name.Text+'%')+' order by kharidar_family,kharidar_name,forosh_tarikh';
  DataM_input_data.ADOQ_show_kholase_forosh.Open;}
end;

///////////////////
procedure Tfrm_show_forosh.typ_search;
begin
  {if RadioGroup1.ItemIndex=0 then
  begin
    g_kharidar_family.Visible:=false;
    G_tarikh_forosh.Visible:=false;
    G_motor_system.Visible:=false;
    G_motor_nam.Visible:=true;
    e_motor_name.SetFocus;
    show_kholase_foroshha_name_motor;
  end;
  if RadioGroup1.ItemIndex=1 then
  begin
    g_kharidar_family.Visible:=true;
    e_kharidar_family.SetFocus;
    G_tarikh_forosh.Visible:=false;
    G_motor_system.Visible:=false;
    G_motor_nam.Visible:=false;
    show_kholase_foroshha_kharidar_family;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
    g_kharidar_family.Visible:=false;
    G_tarikh_forosh.Visible:=true;
    e_fo_roz.SetFocus;
    G_motor_system.Visible:=false;
    G_motor_nam.Visible:=false;
    show_kholase_foroshha_forosh_tarikh;
  end;
  if RadioGroup1.ItemIndex=3 then
  begin
    g_kharidar_family.Visible:=false;
    G_tarikh_forosh.Visible:=false;
    G_motor_system.Visible:=true;
    e_motor_system.SetFocus;
    G_motor_nam.Visible:=false;
    show_kholase_foroshha_system_motor;
  end;
  if RadioGroup1.ItemIndex=4 then
  begin
      show_kholase_foroshha;
    g_kharidar_family.Visible:=false;
    G_tarikh_forosh.Visible:=false;
    G_motor_system.Visible:=false;
    G_motor_nam.Visible:=false;
  end;}
end;

procedure Tfrm_show_forosh.show_hame_bar_asase_kholase_foroshha;
var cod:string;
begin
if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount>0 then
begin
   cod:=DataM_input_data.ADOQ_show_kholase_foroshcod.asstring;
   DataM_input_data.ADOQ_show_hame_bar_asase_kholase.SQL.Text:='select *'+
  ' from T_moshakhasate_forosh where cod='+cod+
  ' order by forosh_tarikh,kharidar_family,kharidar_name';
  DataM_input_data.ADOQ_show_hame_bar_asase_kholase.Open;
end;
end;
procedure Tfrm_show_forosh.show_kholase_foroshha;
begin
  DataM_input_data.ADOQ_show_kholase_forosh.SQL.Text:='select kharidar_name,kharidar_family,kharidar_pedar,motor_name,forosh_tarikh,cod'+
  ' from T_moshakhasate_forosh order by kharidar_family,kharidar_name,forosh_tarikh';
  DataM_input_data.ADOQ_show_kholase_forosh.Open;
end;

procedure Tfrm_show_forosh.FormShow(Sender: TObject);
begin
 frm_show_forosh.WindowState:=wsMaximized;
 show_kholase_foroshha;
 if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount>0 then
  show_hame_bar_asase_kholase_foroshha;

end;

procedure Tfrm_show_forosh.RadioGroup1Click(Sender: TObject);
begin
  type_eslah;
end;

procedure Tfrm_show_forosh.e_motor_nameChange(Sender: TObject);
begin
  show_kholase_foroshha_name_motor;
end;

procedure Tfrm_show_forosh.e_motor_systemChange(Sender: TObject);
begin
  show_kholase_foroshha_system_motor;
end;

procedure Tfrm_show_forosh.e_kharidar_familyChange(Sender: TObject);
begin
  //show_kholase_foroshha_kharidar_family;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('kharidar_family',e_kharidar_family.Text,[loPartialKey]);
end;

procedure Tfrm_show_forosh.e_fo_rozChange(Sender: TObject);
begin
  show_kholase_foroshha_forosh_tarikh;
end;

procedure Tfrm_show_forosh.e_fo_mahChange(Sender: TObject);
begin
  show_kholase_foroshha_forosh_tarikh;
end;

procedure Tfrm_show_forosh.e_fo_salChange(Sender: TObject);
begin
  show_kholase_foroshha_forosh_tarikh;
end;

procedure Tfrm_show_forosh.Btn_garardade_foroshClick(Sender: TObject);
begin
  frm_print_matne_forosh.QuickRep1.Preview;
end;

procedure Tfrm_show_forosh.Btn_t_sanadClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    frm_tahvil_sanad.L_cod.Caption:=DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
    if frm_tahvil_sanad.check_exist then
    begin
      frm_tahvil_sanad.L_type.Caption:='vorod';
      frm_tahvil_sanad.Caption:='  ÕÊÌ· ”‰œ „Ê Ê— ”Ìò· ';
      frm_tahvil_sanad.ShowModal;
    end;
  end;
end;

procedure Tfrm_show_forosh.Btn_t_carte_motorClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    frm_tahvil_karte_motor.L_cod.Caption:=DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
    if frm_tahvil_karte_motor.check_exist then
    begin
      frm_tahvil_karte_motor.L_type.Caption:='vorod';
      frm_tahvil_karte_motor.Caption:=' ÕÊÌ· ò«—  „Ê Ê—”Ìò· ';
      frm_tahvil_karte_motor.ShowModal;
    end;
  end;

end;

procedure Tfrm_show_forosh.Btn_t_carte_sokhtClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    frm_tahvil_karte_sokht.L_cod.Caption:=DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
    if frm_tahvil_karte_sokht.check_exist then
    begin
      frm_tahvil_karte_sokht.L_type.Caption:='vorod';
      frm_tahvil_karte_sokht.Caption:=' ÕÊÌ· ò«—  ”ÊŒ ';
      frm_tahvil_karte_sokht.ShowModal;
    end;
  end;
end;

procedure Tfrm_show_forosh.Btn_t_bime_nameClick(Sender: TObject);
var  i:integer;
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    frm_data_input2.L_cod.Caption:=DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
    if frm_data_input2.check_exist then
    begin
      frm_data_input2.Caption:=' ÕÊÌ· »Ì„Â ‰«„Â';
      frm_data_input2.L_type.Caption:='vorod';
      frm_data_input2.ShowModal;
    end;
  end;
end;

procedure Tfrm_show_forosh.btn_gozaresh_pardakhte_gestClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    frm_pardakht_gest.L_cod.Caption:=DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;

//    frm_sabt_pardakht_gest.L_tarikhe_akharin_pardakht.Caption:=find_tarikhe_akharin_pardakhte_geste;

   // frm_pardakht_gest.l_tarikh_akharin_pardakht.Caption:=frm_sabt_pardakht_gest.L_tarikhe_akharin_pardakht.Caption;

    frm_pardakht_gest.btn_nemayesh_pardakhtha.Visible:=true;

    frm_pardakht_gest.btn_sabt_pardakht.Visible:=false;

    frm_pardakht_gest.ShowModal;
  end;
end;

procedure Tfrm_show_forosh.btn_pardakhte_gestClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    frm_pardakht_gest.L_cod.Caption:=DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;

    //frm_sabt_pardakht_gest.L_tarikhe_akharin_pardakht.Caption:=find_tarikhe_akharin_pardakhte_geste;

    //frm_pardakht_gest.l_tarikh_akharin_pardakht.Caption:=frm_sabt_pardakht_gest.L_tarikhe_akharin_pardakht.Caption;

    frm_pardakht_gest.btn_nemayesh_pardakhtha.Visible:=false;

    frm_pardakht_gest.btn_sabt_pardakht.Visible:=true;
    
    frm_pardakht_gest.ShowModal;
  end;
end;

procedure Tfrm_show_forosh.Btn_e_t_bime_nameClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  DataM_tahvil_joz.ADOQ_bime.SQL.Text:='select * from T_tahvil_bime where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
  DataM_tahvil_joz.ADOQ_bime.Open;

  if DataM_tahvil_joz.ADOQ_bime.RecordCount >0 then
  begin
    frm_data_input2.L_type.Caption:='eslah';
    frm_data_input2.Caption:='«’·«Õ  ÕÊÌ· »Ì„Â ‰«„Â';
    frm_data_input2.L_cod.Caption:=DataM_tahvil_joz.ADOQ_bimecod.AsString;
    frm_data_input2.ShowModal;
  end
  else
    MessageBox(Handle,'„‘Œ’«  »Ì„Â ‰«„Â «Ì‰ ›—Ê‘ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
  end;
    
end;

procedure Tfrm_show_forosh.Btn_e_t_sanadClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    DataM_tahvil_joz.ADOQ_sanad.SQL.Text:='select * from T_tahvile_sanad where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
    DataM_tahvil_joz.ADOQ_sanad.Open;

    if DataM_tahvil_joz.ADOQ_sanad.RecordCount >0 then
    begin
      frm_tahvil_sanad.L_cod.Caption:=DataM_tahvil_joz.ADOQ_sanadcod.AsString;
      frm_tahvil_sanad.Caption:='«’·«Õ  ÕÊÌ· ”‰œ „Ê Ê— ”Ìò· ';
      frm_tahvil_sanad.L_type.Caption:='eslah';
      frm_tahvil_sanad.ShowModal;
    end
      else
    MessageBox(Handle,'„‘Œ’«  ”‰œ „Ê Ê— ”Ìò·  «Ì‰ ›—Ê‘ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
  end;
end;

procedure Tfrm_show_forosh.Btn_e_t_carte_sokhtClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  DataM_tahvil_joz.ADOQ_carte_sokht.SQL.Text:='select * from t_tahvile_carte_sokht where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
  DataM_tahvil_joz.ADOQ_carte_sokht.Open;

  if DataM_tahvil_joz.ADOQ_carte_sokht.RecordCount >0 then
  begin
    frm_tahvil_karte_sokht.L_cod.Caption:=DataM_tahvil_joz.ADOQ_carte_sokhtcod.AsString;
          frm_tahvil_karte_sokht.Caption:='«’·«Õ  ÕÊÌ· ò«—  ”ÊŒ ';
    frm_tahvil_karte_sokht.L_type.Caption:='eslah';
    frm_tahvil_karte_sokht.ShowModal;
  end
  else
    MessageBox(Handle,'„‘Œ’«  ò«—  ”ÊŒ  „Ê Ê— ”Ìò·  «Ì‰ ›—Ê‘ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
  end;
end;

procedure Tfrm_show_forosh.Btn_e_t_carte_motorClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  DataM_tahvil_joz.ADOQ_carte_motor.SQL.Text:='select * from t_tahvile_carte_motor where cod_forosh='+DataM_input_data.ADOQ_show_kholase_foroshcod.AsString;
  DataM_tahvil_joz.ADOQ_carte_motor.Open;

  if DataM_tahvil_joz.ADOQ_carte_motor.RecordCount >0 then
  begin
    frm_tahvil_karte_motor.L_cod.Caption:=DataM_tahvil_joz.ADOQ_carte_motorcod.AsString;
    frm_tahvil_karte_motor.Caption:='«’·«Õ  ÕÊÌ· ò«—  „Ê Ê—”Ìò· ';
    frm_tahvil_karte_motor.L_type.Caption:='eslah';
    frm_tahvil_karte_motor.ShowModal;
  end
  else
    MessageBox(Handle,'„‘Œ’«  ò«—  „Ê Ê— ”Ìò·  «Ì‰ ›—Ê‘ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
  end;
end;

procedure Tfrm_show_forosh.Btn_e_motorClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
    frm_eslahe_motor.l_type.Caption:='forosh';
    frm_eslahe_motor.ShowModal;
  end;
end;

procedure Tfrm_show_forosh.btn_e_maliClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  frm_eslahe_forosh.ShowModal;
  end;
end;

procedure Tfrm_show_forosh.btn_e_kharidarClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  frm_eslahe_kharidar.ShowModal;
  end;
end;

procedure Tfrm_show_forosh.btn_e_zemanatClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  frm_eslahe_zemanat.L_kh_family.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_family.AsString;
  frm_eslahe_zemanat.l_kh_sh_sh.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_sh_shenasname.AsString;
  frm_eslahe_zemanat.L_forosh_tarikh.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString;

  frm_eslahe_zemanat.ShowModal;
  end;
end;

procedure Tfrm_show_forosh.Btn_hazfe_foroshClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  if MessageBox(Handle,'Õ–› ›—Ê‘ «‰ Œ«» ‘œÂ —«  «ÌÌœ „Ì ‰„«ÌÌœø',' «ÌÌœ Õ–› ›—Ê‘ !!!',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=id_yes then
    hazfe_forosh;
  end;
end;

end.

