unit unt_namoaian_mohasebe_sod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls, SUIEdit;

type
  Tfrm_namoaian_mohasebe_sod = class(TForm)
    Label53: TLabel;
    DBText20: TDBText;
    Label41: TLabel;
    DBText36: TDBText;
    Label23: TLabel;
    DBText23: TDBText;
    DataSource3: TDataSource;
    Label24: TLabel;
    DBText21: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    DataSource2: TDataSource;
    Label25: TLabel;
    e_darsad: TsuiEdit;
    Label26: TLabel;
    e_mablag_sod: TsuiEdit;
    Label1: TLabel;
    Button1: TButton;
    L_cod: TLabel;
    l_tedad_mahe_fasele: TLabel;
    btn_nemayesh_pardakhtha: TButton;
    DBText24: TDBText;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_nemayesh_pardakhthaClick(Sender: TObject);
    procedure e_darsadKeyPress(Sender: TObject; var Key: Char);
    procedure e_mablag_sodKeyPress(Sender: TObject; var Key: Char);
    procedure e_darsadChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_namoaian_mohasebe_sod: Tfrm_namoaian_mohasebe_sod;

implementation

uses unt_DataM_agsat, unt_pardakht_gest, unt_print_pardakhte_gest,
  unt_main, Unt_datam_input_data, unt_show_forosh;

{$R *.dfm}

procedure Tfrm_namoaian_mohasebe_sod.Button1Click(Sender: TObject);
begin
      frm_pardakht_gest.show_pardakhthaye_gest;
      frm_pardakht_gest.show_jame_pardakht_gest;
      frm_print_pardakhte_gest.QuickRep1.Preview;
end;

procedure Tfrm_namoaian_mohasebe_sod.FormShow(Sender: TObject);
begin
  l_tedad_mahe_fasele.Caption:=IntToStr(round(frm_main.tedad_roze_beine_do_tarikh(DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString,DataM_input_data.ADOQ_show_hame_bar_asase_kholasetarikh_pardakht_geste_badi.AsString)/30));
    e_darsad.Text:='';
    e_mablag_sod.Text:='';  
end;

procedure Tfrm_namoaian_mohasebe_sod.btn_nemayesh_pardakhthaClick(
  Sender: TObject);
begin
  if (e_darsad.Text='') or(e_mablag_sod.Text='') then
    MessageBox(Handle,'œ—’œ ”Êœ Ê „»·€ ò· ”Êœ —« Ê«—œ ‰„«ÌÌœ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
  else
  begin
    DataM_input_data.ADOQ_forosh.SQL.Text:=' update T_moshakhasate_forosh set forosh_darsad_sod='+e_darsad.Text+
    ',forosh_mablaghe_sod='+e_mablag_sod.Text+',forosh_bagimande_kol='+e_mablag_sod.Text+
    ',forosh_geymate_nahaei=forosh_geymate_nahaei+'+e_mablag_sod.Text+
    ' where cod='+L_cod.Caption;

    {'  insert into T_pardakht_gest(pardakht_tarikh,pardakht_cod_forosh,pardakht_tozih)'+

    ' values ('+QuotedStr(frm_main.L_tarikh_roz.Caption)+','+
    L_cod.Caption+','+
    QuotedStr(e_darsad.Text+' œ—’œ ”Êœ «“ „»·€ »«ﬁÌ„«‰œÂ „⁄«œ· »« '+e_mablag_sod.Text+' »Â ⁄‰Ê«‰ ”Êœ Å—œ«Œ  «ﬁ”«ÿ ‰«„⁄Ì‰ »Â »«ﬁÌ „«‰œÂ ò· «÷«›Â ‘œ. ')+')'+
    ' ';}

    DataM_input_data.ADOQ_forosh.ExecSQL;



    DataM_agsat.ADOQ_pardakht_gest.SQL.Text:='insert into T_pardakht_gest(pardakht_tarikh,pardakht_cod_forosh,pardakht_tozih)'+

    ' values ('+QuotedStr(frm_main.L_tarikh_roz.Caption)+','+L_cod.Caption+','+QuotedStr(e_darsad.Text+' œ—’œ ”Êœ «“ „»·€ »«ﬁÌ„«‰œÂ „⁄«œ· »« '+e_mablag_sod.Text+' »Â ⁄‰Ê«‰ ”Êœ Å—œ«Œ  «ﬁ”«ÿ ‰«„⁄Ì‰ »Â »«ﬁÌ „«‰œÂ ò· «÷«›Â ‘œ. ')+')';


  DataM_agsat.ADOQ_pardakht_gest.ExecSQL;

    frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
    DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod.Caption,[loPartialKey]);
    MessageBox(Handle,'„»·€ ”Êœ  ﬁ”Ìÿ »Â »«ﬁÌ „«‰œÂ ò· «÷«›Â ‘œ',' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
    close;
  end;
end;

procedure Tfrm_namoaian_mohasebe_sod.e_darsadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_namoaian_mohasebe_sod.e_mablag_sodKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_namoaian_mohasebe_sod.e_darsadChange(Sender: TObject);
begin
  if e_darsad.Text<>'' then
  begin
    if frm_main.alamat_ashar(e_darsad.Text) then
      e_mablag_sod.Text:=FloatToStr(StrToFloat(e_darsad.Text)*StrToFloat(l_tedad_mahe_fasele.Caption)*StrToFloat(DBText24.Caption)/100);
  end
  else
    e_mablag_sod.Text:='';
end;

end.
