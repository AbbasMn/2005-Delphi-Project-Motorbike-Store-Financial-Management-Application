unit unt_pardakht_gest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, SUIEdit, Grids, DBGrids, SUIDBCtrls, DB;

type
  Tfrm_pardakht_gest = class(TForm)
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    DBText7: TDBText;
    DBText12: TDBText;
    DBText11: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    Label53: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText28: TDBText;
    Label1: TLabel;
    Label9: TLabel;
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
    Label8: TLabel;
    DBText9: TDBText;
    Label16: TLabel;
    Label41: TLabel;
    DBText36: TDBText;
    Label28: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    DBText38: TDBText;
    Label45: TLabel;
    DataSource2: TDataSource;
    Label30: TLabel;
    DataSource1: TDataSource;
    Label14: TLabel;
    DBText26: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    btn_sabt_pardakht: TButton;
    DataSource3: TDataSource;
    Label18: TLabel;
    DBText13: TDBText;
    Label19: TLabel;
    DataSource4: TDataSource;
    btn_nemayesh_pardakhtha: TButton;
    L_cod: TLabel;
    Label20: TLabel;
    DBText10: TDBText;
    procedure show_bedehkaran_dar_gesat;
    procedure FormShow(Sender: TObject);
    procedure show_bedehkare_gest_bar_asase_kholase_bedehkarha;
    procedure btn_sabt_pardakhtClick(Sender: TObject);
    procedure show_jame_pardakht_gest;
    procedure btn_nemayesh_pardakhthaClick(Sender: TObject);
    procedure show_pardakhthaye_gest;
    procedure find_tedad_gest_pardakhti_va_tarikh_pardakhte_gest(var sh:string;var tarikh:string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pardakht_gest: Tfrm_pardakht_gest;

implementation

uses Unt_datam_input_data, unt_sabt_pardakht_gest, unt_DataM_agsat,
  unt_print_pardakhte_gest, unt_zabte_pardakhte_namoaian,
  unt_namoaian_mohasebe_sod, unt_daryafte_sode_tagsit;

{$R *.dfm}
procedure Tfrm_pardakht_gest.find_tedad_gest_pardakhti_va_tarikh_pardakhte_gest(var sh:string;var tarikh:string);
begin
  sh:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasetedad_gest_pardakhti.AsString;
end;


///////////////////
procedure Tfrm_pardakht_gest.show_pardakhthaye_gest;
begin
   DataM_agsat.ADOQ_show_pardakhthaye_gest.SQL.Text:='select * from T_pardakht_gest where pardakht_cod_forosh='+L_cod.Caption+
   ' order by cod,pardakht_tarikh';
   DataM_agsat.ADOQ_show_pardakhthaye_gest.Open;
end;

///////////////
procedure Tfrm_pardakht_gest.show_jame_pardakht_gest;
begin
  DataM_agsat.ADOQ_jame_mabalegh_pardakh_shode_gest.SQL.Text:='select sum(pardakht_mablagh) as kol_pardakht'+
  ' from T_pardakht_gest where pardakht_cod_forosh='+L_cod.Caption;
  DataM_agsat.ADOQ_jame_mabalegh_pardakh_shode_gest.Open;
end;
//////////////////
procedure Tfrm_pardakht_gest.show_bedehkare_gest_bar_asase_kholase_bedehkarha;
begin
  DataM_input_data.show_bedehkare_gest_bar_asase_kholase_bedehkarha.SQL.Text:='select *'+
  ' from T_moshakhasate_forosh where cod='+L_cod.Caption;
  DataM_input_data.show_bedehkare_gest_bar_asase_kholase_bedehkarha.Open;
end;
///////////////
procedure Tfrm_pardakht_gest.show_bedehkaran_dar_gesat;
begin
  DataM_input_data.ADOQ_show_kholase_forosh_vase_pardakht_gest.SQL.Text:='select kharidar_family,forosh_tarikh,'+
  'tedad_gest_pardakhti,tedad_gest_mande,cod from T_moshakhasate_forosh where tedad_gest_mande >0 order by kharidar_family,forosh_tarikh';
  DataM_input_data.ADOQ_show_kholase_forosh_vase_pardakht_gest.open;

  if  DataM_input_data.ADOQ_show_kholase_forosh_vase_pardakht_gest.RecordCount > 0 then
    L_cod.Caption:=DataM_input_data.ADOQ_show_kholase_forosh_vase_pardakht_gestcod.asstring
  else
    L_cod.Caption:='-1';
end;


procedure Tfrm_pardakht_gest.FormShow(Sender: TObject);
begin
   if DBText22.Caption='0' then
   begin
     Label20.Visible:=false;
     Label18.Visible:=false;
     Label19.Visible:=false;
     DBText10.Visible:=false;
     DBText13.Visible:=false;
   end
   else
   begin
     Label20.Visible:=true;
     Label19.Visible:=true;
     Label18.Visible:=true;     
     DBText10.Visible:=true;
     DBText13.Visible:=true;
   end;

    if L_cod.Caption<>'-1'then
    begin
      frm_pardakht_gest.show_pardakhthaye_gest;
      frm_pardakht_gest.show_jame_pardakht_gest;
    end;

end;

procedure Tfrm_pardakht_gest.btn_sabt_pardakhtClick(Sender: TObject);
begin
if DBText23.Caption=DBText21.Caption then
    MessageBox(Handle,'›—Ê‘ »Â ’Ê—  ‰ﬁœÌ «‰Ã«„ ‘œÂ «”  Ê ò· „»·€ ﬁÌ„  ‰ﬁœÌ „Ê Ê—”Ìò·  œ—Ì«›  ‘œÂ «” .','! ÊÃÂ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION)
else
begin

if DBText22.Caption<>'0' then
begin
  if (DataM_input_data.ADOQ_show_hame_bar_asase_kholasetedad_gest_mande.AsInteger =0) and(DBText25.Caption='0') then
    MessageBox(Handle,' „«„Ì «ﬁ”«ÿ  Ê”ÿ Œ—Ìœ«— Å—œ«Œ  ‘œÂ «”  Ê »œÂÌ «Ê ’›— „Ì »«‘œ','! ÊÃÂ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION)
  else
  begin
    frm_sabt_pardakht_gest.L_cod_forosh.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasecod.AsString;
    frm_sabt_pardakht_gest.L_tarikh_geste_feli.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasetarikh_pardakht_geste_badi.AsString;
    frm_sabt_pardakht_gest.l_sh_gest.Caption:=inttostr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasetedad_gest_pardakhti.AsInteger+1);
    frm_sabt_pardakht_gest.l_sh_gest2.Caption:=inttostr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasetedad_gest_pardakhti.AsInteger+1);


      if DBText38.Caption='1' then
      begin
        frm_sabt_pardakht_gest.m_tozihe_geste_akhar.Visible:=true;
        frm_sabt_pardakht_gest.L_tozihe_geste_akhar.Visible:=true;
        frm_sabt_pardakht_gest.m_tozihe_geste_akhar.Clear;
      end
      else
      begin
        frm_sabt_pardakht_gest.m_tozihe_geste_akhar.Visible:=false;
        frm_sabt_pardakht_gest.L_tozihe_geste_akhar.Visible:=false;
        frm_sabt_pardakht_gest.m_tozihe_geste_akhar.Clear;                
      end;

    frm_sabt_pardakht_gest.ShowModal;
  end;
end
else
begin
  if DBText25.Caption='0' then
  begin
    if DBText26.Caption='0' then
    begin
      frm_namoaian_mohasebe_sod.L_cod.Caption:=L_cod.Caption;
      frm_namoaian_mohasebe_sod.ShowModal;
    end
    else
    begin
      MessageBox(Handle,' „«„Ì «ﬁ”«ÿ  Ê”ÿ Œ—Ìœ«— Å—œ«Œ  ‘œÂ «”  Ê »œÂÌ «Ê ’›— „Ì »«‘œ','! ÊÃÂ',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
    end;
  end
  else
  begin
    if StrToFloat(DBText25.Caption)<=StrToFloat(DBText26.Caption) then
    begin
      frm_daryafte_sode_tagsit.L_gabele_pardakht.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_bagimande_kol.AsString;
      frm_daryafte_sode_tagsit.e_mablagh_pardakhti.Text:='';
      frm_daryafte_sode_tagsit.L_cod.Caption:=L_cod.Caption;
      frm_daryafte_sode_tagsit.ShowModal;
    end
    else
    begin
      frm_zabte_pardakhte_namoaian.L_cod_forosh.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasecod.AsString;
      frm_zabte_pardakhte_namoaian.l_sh_gest2.Caption:=inttostr(DataM_input_data.ADOQ_show_hame_bar_asase_kholasetedad_gest_pardakhti.AsInteger+1);
      frm_zabte_pardakhte_namoaian.ShowModal;
    end;
  end;
end;
end;
end;

procedure Tfrm_pardakht_gest.btn_nemayesh_pardakhthaClick(Sender: TObject);
begin
    if L_cod.Caption<>'-1'then
    begin
      frm_pardakht_gest.show_pardakhthaye_gest;
      frm_pardakht_gest.show_jame_pardakht_gest;
      frm_sabt_pardakht_gest.m_tozihe_geste_akhar.Lines.Text:='';
       
      frm_print_pardakhte_gest.QuickRep1.Preview;
    end;
end;

end.

