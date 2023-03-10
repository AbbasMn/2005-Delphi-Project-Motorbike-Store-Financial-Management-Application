unit unt_daryafte_sode_tagsit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, DB, SUIEdit, ExtCtrls;

type
  Tfrm_daryafte_sode_tagsit = class(TForm)
    DataSource2: TDataSource;
    Label30: TLabel;
    btn_sabt_pardakht: TButton;
    Label1: TLabel;
    e_mablagh_pardakhti: TsuiEdit;
    L_cod: TLabel;
    Label6: TLabel;
    RadioGroup1: TRadioGroup;
    L_tarikhe_emroz: TLabel;
    L_gabele_pardakht: TLabel;
    procedure e_mablagh_pardakhtiKeyPress(Sender: TObject; var Key: Char);
    procedure btn_sabt_pardakhtClick(Sender: TObject);
    procedure typ_tarikh;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_daryafte_sode_tagsit: Tfrm_daryafte_sode_tagsit;

implementation

uses Unt_datam_input_data, unt_show_forosh, unt_main, Taghvim,
  unt_DataM_agsat;

{$R *.dfm}
procedure Tfrm_daryafte_sode_tagsit.typ_tarikh;
begin
  If RadioGroup1.ItemIndex=0 then
    L_tarikhe_emroz.Caption:=frm_main.L_tarikh_roz.Caption
  else
  begin
    _taghvim.Button11.Visible:=false;
    _taghvim.Button1.Visible:=false;
    _taghvim.Button3.Visible:=false;
    _taghvim.Button2.Visible:=true;
    _taghvim.Caption:='?????? ????? ?????? ???';

    _Taghvim.ShowModal;
    if _taghvim._str_date<>'' then
    begin
      L_tarikhe_emroz.Caption:=_taghvim._str_date;
    end;
  end;
end;
procedure Tfrm_daryafte_sode_tagsit.e_mablagh_pardakhtiKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_daryafte_sode_tagsit.btn_sabt_pardakhtClick(
  Sender: TObject);
begin
if e_mablagh_pardakhti.Text='' then
    MessageBox(Handle,'???? ??????? ?? ???? ??????','!???',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
else
begin
  if StrToFloat(e_mablagh_pardakhti.Text)>StrToFloat(L_gabele_pardakht.Caption) then
    MessageBox(Handle,'???? ??????? ???? ???? ?? ????? ???? ????? ?? ????','!???',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
  else
  begin
   //forosh_mablaghe_sod=0
    DataM_input_data.ADOQ_forosh.SQL.Text:=' update T_moshakhasate_forosh set forosh_bagimande_kol=forosh_bagimande_kol-'+
    e_mablagh_pardakhti.Text+'  where cod='+L_cod.Caption;

  { ' insert into T_pardakht_gest(pardakht_tarikh,pardakht_mablagh,pardakht_cod_forosh,'+

  'tedad_roze_takhir,jarime_baraye_har_roz,jarime_takhir,pardakht_tozih,mablagh_bede_talab,bede_talab)'+

  ' values ('+QuotedStr(L_tarikhe_emroz.Caption)+','+e_mablagh_pardakhti.Text+','+L_cod.Caption+
  ','+QuotedStr('0')+','+QuotedStr('0')+','+QuotedStr('0')+
   ','+QuotedStr('??? ????? ???? ???? ?? ????? ??????')+','+QuotedStr('0')+','+QuotedStr('')+')'+

   ' ';}


    DataM_input_data.ADOQ_forosh.ExecSQL;

  DataM_agsat.ADOQ_pardakht_gest.SQL.Text:='insert into T_pardakht_gest(pardakht_tarikh,pardakht_mablagh,pardakht_cod_forosh,'+

  'tedad_roze_takhir,jarime_baraye_har_roz,jarime_takhir,pardakht_tozih,mablagh_bede_talab,bede_talab)'+

  ' values ('+QuotedStr(L_tarikhe_emroz.Caption)+','+e_mablagh_pardakhti.Text+','+L_cod.Caption+
  ','+QuotedStr('0')+','+QuotedStr('0')+','+QuotedStr('0')+
  ','+QuotedStr('??? ????? ???? ???? ?? ????? ??????')+','+QuotedStr('0')+','+QuotedStr('')+')';


  DataM_agsat.ADOQ_pardakht_gest.ExecSQL;

    frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
    DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod.Caption,[loPartialKey]);
    MessageBox(Handle,'???? ??? ????? ?????? ??? ????? ??','????!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
    close;
  end;
end;
end;

procedure Tfrm_daryafte_sode_tagsit.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  typ_tarikh;
end;

procedure Tfrm_daryafte_sode_tagsit.RadioGroup1Click(Sender: TObject);
begin
  typ_tarikh;
end;

end.
