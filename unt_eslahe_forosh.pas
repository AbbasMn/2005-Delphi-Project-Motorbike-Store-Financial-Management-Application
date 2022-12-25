unit unt_eslahe_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit, ExtCtrls;

type
  Tfrm_eslahe_forosh = class(TForm)
    GroupBox3: TGroupBox;
    Label24: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    e_geytmat: TsuiEdit;
    e_nagd: TsuiEdit;
    e_bagimande: TsuiEdit;
    e_tedad_agsat: TsuiEdit;
    e_mablagh_gest: TsuiEdit;
    e_forosh_roz: TsuiEdit;
    e_forosh_mah: TsuiEdit;
    e_forosh_sal: TsuiEdit;
    e_darsad: TsuiEdit;
    e_mablag_sod: TsuiEdit;
    e_bagi_mande_kol: TsuiEdit;
    Bt: TButton;
    L_cod: TLabel;
    RadioGroup1: TRadioGroup;
    Label44: TLabel;
    Label40: TLabel;
    e_roze_pardakhte_gest: TsuiEdit;
    Label41: TLabel;
    Label23: TLabel;
    procedure show_moshakhsat_feli;
    procedure FormShow(Sender: TObject);
    function check_vorod_moshakhasate_forosh:boolean;
    procedure BtClick(Sender: TObject);
    procedure update_forosh;
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_forosh_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_forosh_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_forosh_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_forosh_rozExit(Sender: TObject);
    procedure e_forosh_mahExit(Sender: TObject);
    procedure e_geytmatKeyPress(Sender: TObject; var Key: Char);
    procedure e_nagdKeyPress(Sender: TObject; var Key: Char);
    procedure e_darsadKeyPress(Sender: TObject; var Key: Char);
    procedure e_roze_pardakhte_gestKeyPress(Sender: TObject;
      var Key: Char);
    procedure e_geytmatChange(Sender: TObject);
    procedure e_nagdChange(Sender: TObject);
    procedure e_tedad_agsatChange(Sender: TObject);
    procedure e_darsadChange(Sender: TObject);
    procedure mohasebe_forosh;
    procedure e_geytmatExit(Sender: TObject);
    procedure e_nagdExit(Sender: TObject);
    procedure e_tedad_agsatExit(Sender: TObject);
    procedure e_darsadExit(Sender: TObject);
    procedure e_forosh_salExit(Sender: TObject);
    procedure e_mablag_sodKeyPress(Sender: TObject; var Key: Char);
    procedure e_bagi_mande_kolKeyPress(Sender: TObject; var Key: Char);
    procedure e_mablagh_gestKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_forosh: Tfrm_eslahe_forosh;

implementation

uses Unt_datam_input_data, unt_show_forosh, unt_main;

{$R *.dfm}
procedure Tfrm_eslahe_forosh.mohasebe_forosh;
var darsad_sod,mablagh_sod,bagi_mande_kol,bagimande,tedad_agsat,geymat,nagd:real;
begin

  if (e_nagd.Text='')or(e_nagd.Text='0')then
  begin
    nagd:=0;
    e_nagd.Text:='0';
  end
  else
    nagd:=StrToFloat(e_nagd.Text);


  e_bagimande.Text:=FloatToStr(StrToFloat(e_geytmat.Text)-nagd);

  if (e_tedad_agsat.Text='')or(e_tedad_agsat.Text='0')then
  begin
    tedad_agsat:=0;
    e_tedad_agsat.Text:='0';
  end
  else
    tedad_agsat:=StrToFloat(e_tedad_agsat.Text);


  if (e_bagimande.Text='')or(e_bagimande.Text='0')then
  begin
    bagimande:=0;
    e_bagimande.Text:='0';
  end
  else
    bagimande:=StrToFloat(e_bagimande.Text);


  if (e_darsad.Text='')or(e_darsad.Text='0')then
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

  e_mablag_sod.Text:=FloatToStr(StrToFloat(e_bagimande.Text)*darsad_sod/100*StrToFloat(e_tedad_agsat.Text));

  bagi_mande_kol:=StrToFloat(e_bagimande.Text)+(StrToFloat(e_tedad_agsat.Text)*darsad_sod*StrToFloat(e_bagimande.Text)/100);

  e_bagi_mande_kol.Text:=FloatToStr(bagi_mande_kol);

  if tedad_agsat >0 then
   e_mablagh_gest.Text:=FloatToStr(round(bagi_mande_kol/tedad_agsat))
  else
   e_mablagh_gest.Text:='0';
end;
//////////////
procedure Tfrm_eslahe_forosh.update_forosh;
begin
    DataM_input_data.ADOQ_forosh.SQL.Text:='update T_moshakhasate_forosh set '+

  'forosh_geymat='+e_geytmat.Text+
  ',forosh_nagd='+e_nagd.Text+
  ',forosh_bagimande='+e_bagimande.Text+
  ',forosh_tedad_gest='+e_tedad_agsat.Text+
  ',forosh_mablagh_gest='+e_mablagh_gest.Text+
  ',forosh_tarikh='+QuotedStr(e_forosh_sal.Text+'/'+e_forosh_mah.Text+'/'+e_forosh_roz.Text)+
  ',forosh_darsad_sod='+e_darsad.Text+
  ',forosh_mablaghe_sod='+e_mablag_sod.Text+
  ',forosh_bagimande_kol='+e_bagi_mande_kol.Text+

  ',roze_pardakhte_gest='+QuotedStr(e_roze_pardakhte_gest.Text);

  DataM_input_data.ADOQ_forosh.ExecSQL;
  frm_show_forosh.show_kholase_foroshha;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod.Caption,[]);

end;
///////////////
function Tfrm_eslahe_forosh.check_vorod_moshakhasate_forosh:boolean;
var s:string;
begin
  check_vorod_moshakhasate_forosh:=true;
  s:='';
  if e_roze_pardakhte_gest.Text='' then
  begin
    s:=s+' —Ê“ Å—œ«Œ  ﬁ”ÿ ';
    e_roze_pardakhte_gest.SetFocus;
  end;

  if e_mablagh_gest.Text='' then
  begin
    s:=s+' „»·€ ﬁ”ÿ ';
    e_mablagh_gest.SetFocus;
  end;
  if e_tedad_agsat.Text='' then
  begin
    s:=s+'  ⁄œ«œ ﬁ”ÿ ';
    e_tedad_agsat.SetFocus;
  end;
  if e_bagimande.Text='' then
  begin
    s:=s+' »«ﬁÌ „«‰œÂ ';
    e_bagimande.SetFocus;
  end;
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
    e_forosh_mah.SetFocus;
  end;

  if e_forosh_roz.Text='' then
  begin
    s:=s+' —Ê“ ›—Ê‘ ';
    e_forosh_roz.SetFocus;
  end;

  if s<>'' then
  begin
    check_vorod_moshakhasate_forosh:=false;
    MessageBox(Handle,pchar(s+' »«Ìœ Ê«—œ ‘Êœ'),'!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;
////////////
procedure Tfrm_eslahe_forosh.show_moshakhsat_feli;
begin

  e_forosh_roz.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[9]+DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[10];

  e_forosh_mah.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[6]+DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[7];

  e_forosh_sal.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[1]+DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[2]+
  DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[3]+DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tarikh.AsString[4];

  e_geytmat.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_geymat.AsString;
  e_nagd.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_nagd.AsString;
  e_bagimande.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_bagimande.AsString;
  e_bagi_mande_kol.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_bagimande_kol.AsString;
  e_tedad_agsat.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_tedad_gest.AsString;
  e_darsad.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_darsad_sod.AsString;
  e_mablagh_gest.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_mablagh_gest.AsString;
  e_mablag_sod.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseforosh_mablaghe_sod.AsString;
  e_roze_pardakhte_gest.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholaseroze_pardakhte_gest.AsString;
  L_cod.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasecod.AsString;
end;
/////////////

procedure Tfrm_eslahe_forosh.FormShow(Sender: TObject);
begin
  show_moshakhsat_feli;
  RadioGroup1.ItemIndex:=-1;
end;

procedure Tfrm_eslahe_forosh.BtClick(Sender: TObject);
begin
  if check_vorod_moshakhasate_forosh then
  begin
    if  MessageBox(Handle,'„‘Œ’«  ÃœÌœ ›—Ê‘ –ŒÌ—Â ‘Êœø ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin
      update_forosh;
      MessageBox(Handle,'„‘Œ’«  „«·Ì ÃœÌœ –ŒÌ—Â ‘œ',' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
      close;
    end;
  end;
end;

procedure Tfrm_eslahe_forosh.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=1 then
    e_roze_pardakhte_gest.Text:=''
  else
    e_roze_pardakhte_gest.Text:=e_forosh_roz.Text;
end;

procedure Tfrm_eslahe_forosh.e_forosh_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_forosh_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_forosh_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_forosh_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_forosh_roz.Text))=1 then
    e_forosh_roz.Text:='0'+e_forosh_roz.Text;

    ss:=e_forosh_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'—Ê“ ›—Ê‘  »«Ìœ »Ì‰ 1 Ê 31 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_forosh_roz.SetFocus;
    end;
end;

procedure Tfrm_eslahe_forosh.e_forosh_mahExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_forosh_mah.Text))=1 then
    e_forosh_mah.Text:='0'+e_forosh_mah.Text;

    ss:=e_forosh_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'„«Â ›—Ê‘  »«Ìœ »Ì‰ 1 Ê 12 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_forosh_mah.SetFocus;
    end;
end;

procedure Tfrm_eslahe_forosh.e_geytmatKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_nagdKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_darsadKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_roze_pardakhte_gestKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_geytmatChange(Sender: TObject);
begin
 If e_geytmat.Text='' then
 begin
  MessageBox(Handle,'ﬁÌ„  „Ê Ê— Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_geytmat.SetFocus;
 end
 else
 begin
  mohasebe_forosh;
  e_geytmat.SetFocus;
 end;
end;

procedure Tfrm_eslahe_forosh.e_nagdChange(Sender: TObject);
begin
if e_nagd.Text<>'' then
begin
  if StrToFloat(e_nagd.Text)>StrToFloat(e_geytmat.Text)then
  begin
     MessageBox(Handle,'„»·€ ‰ﬁœ ‰»«Ìœ «“ ﬁÌ„  „Ê Ê— »Ì‘ — »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
     e_nagd.SetFocus;
  end
  else
    mohasebe_forosh;
end
else
 begin
  MessageBox(Handle,'„»·€ œ—Ì«› Ì  ‰ﬁœ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_nagd.SetFocus;
 end;
end;

procedure Tfrm_eslahe_forosh.e_tedad_agsatChange(Sender: TObject);
begin
if e_tedad_agsat.Text<>'' then
 mohasebe_forosh
else
 begin
  MessageBox(Handle,' ⁄œ«œ «ﬁ”«ÿ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_tedad_agsat.SetFocus;
 end;
end;

procedure Tfrm_eslahe_forosh.e_darsadChange(Sender: TObject);
begin
if e_darsad.Text<>'' then
begin
  if frm_main.alamat_ashar(e_darsad.Text) then
    mohasebe_forosh
  else
    e_darsad.SetFocus;
end
else
 begin
  MessageBox(Handle,'œ—’œ ”Êœ  ﬁ”Ìÿ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_darsad.SetFocus;
 end;
end;

procedure Tfrm_eslahe_forosh.e_geytmatExit(Sender: TObject);
begin
 if e_geytmat.Text='' then
 begin
  MessageBox(Handle,'ﬁÌ„  „Ê Ê— Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_geytmat.SetFocus;
 end
 else
 begin
    if StrToFloat(e_nagd.Text)>StrToFloat(e_geytmat.Text)then
    begin
      MessageBox(Handle,'„»·€ ‰ﬁœ ‰»«Ìœ «“ ﬁÌ„  „Ê Ê— »Ì‘ — »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_nagd.SetFocus;
    end
    else
      mohasebe_forosh;
  end;
end;

procedure Tfrm_eslahe_forosh.e_nagdExit(Sender: TObject);
begin
if e_nagd.Text<>'' then
begin
  if StrToFloat(e_nagd.Text)>StrToFloat(e_geytmat.Text)then
  begin
     MessageBox(Handle,'„»·€ ‰ﬁœ ‰»«Ìœ «“ ﬁÌ„  „Ê Ê— »Ì‘ — »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
     e_nagd.SetFocus;
  end
  else
    mohasebe_forosh;
end
else
 begin
  MessageBox(Handle,'„»·€ œ—Ì«› Ì  ‰ﬁœ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_nagd.SetFocus;
 end;
end;

procedure Tfrm_eslahe_forosh.e_tedad_agsatExit(Sender: TObject);
begin
if e_tedad_agsat.Text<>'' then
 mohasebe_forosh
else
 begin
  MessageBox(Handle,' ⁄œ«œ «ﬁ”«ÿ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_tedad_agsat.SetFocus;
 end;
end;

procedure Tfrm_eslahe_forosh.e_darsadExit(Sender: TObject);
begin
if e_darsad.Text<>'' then
begin
 mohasebe_forosh;
end
else
 begin
  MessageBox(Handle,'œ—’œ ”Êœ  ﬁ”Ìÿ Ê«—œ ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  e_darsad.SetFocus;
 end;
end;

procedure Tfrm_eslahe_forosh.e_forosh_salExit(Sender: TObject);
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

procedure Tfrm_eslahe_forosh.e_mablag_sodKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_bagi_mande_kolKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_forosh.e_mablagh_gestKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
