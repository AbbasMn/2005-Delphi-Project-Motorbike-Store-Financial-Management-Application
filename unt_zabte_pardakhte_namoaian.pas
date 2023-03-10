unit unt_zabte_pardakhte_namoaian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ExtCtrls, SUIEdit, DBCtrls;

type
  Tfrm_zabte_pardakhte_namoaian = class(TForm)
    Label1: TLabel;
    L_cod_forosh: TLabel;
    Label6: TLabel;
    L_tarikhe_emroz: TLabel;
    Label53: TLabel;
    DBText20: TDBText;
    Label41: TLabel;
    DBText36: TDBText;
    L_tozihe_geste_akhar: TLabel;
    e_mablagh_pardakhti: TsuiEdit;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    m_tozihe_geste_akhar: TMemo;
    DataSource2: TDataSource;
    Label5: TLabel;
    l_sh_gest2: TLabel;
    Label12: TLabel;
    DBText6: TDBText;
    DataSource3: TDataSource;
    Label23: TLabel;
    DBText23: TDBText;
    Label24: TLabel;
    DBText21: TDBText;
    DBText25: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure typ_tarikh;
    procedure Button1Click(Sender: TObject);
    procedure sabte_pardakht_gest(tozih,moed,bede_talab,mablafg_bede_talab:string);
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_mablagh_pardakhtiKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_zabte_pardakhte_namoaian: Tfrm_zabte_pardakhte_namoaian;

implementation

uses unt_show_forosh, Unt_datam_input_data, unt_main,
  unt_sabt_pardakht_gest, Taghvim, unt_DataM_agsat, unt_pardakht_gest;

{$R *.dfm}
procedure Tfrm_zabte_pardakhte_namoaian.sabte_pardakht_gest(tozih,moed,bede_talab,mablafg_bede_talab:string);
begin

  DataM_agsat.ADOQ_pardakht_gest.SQL.Text:=' insert into T_pardakht_gest(pardakht_tarikh,pardakht_mablagh,pardakht_cod_forosh,'+

  'tedad_roze_takhir,jarime_baraye_har_roz,jarime_takhir,pardakht_tozih,mablagh_bede_talab,bede_talab)'+

  ' values ('+QuotedStr(L_tarikhe_emroz.Caption)+','+e_mablagh_pardakhti.Text+','+L_cod_forosh.Caption+
  ','+QuotedStr('0')+','+QuotedStr('0')+','+QuotedStr('0')+
  ','+QuotedStr(tozih)+','+QuotedStr('0')+','+QuotedStr('')+')';


 { DataM_agsat.ADOQ_pardakht_gest.SQL.Text:=DataM_agsat.ADOQ_pardakht_gest.SQL.Text+' update T_moshakhasate_forosh set tedad_gest_pardakhti=tedad_gest_pardakhti+1,'+
  'forosh_bagimande_kol=forosh_bagimande_kol-'+e_mablagh_pardakhti.Text+
  ',tarikh_pardakht_geste_badi='+QuotedStr(L_tarikhe_emroz.Caption)+
  ' where cod='+L_cod_forosh.Caption+' ';}

  DataM_agsat.ADOQ_pardakht_gest.ExecSQL;

  DataM_input_data.ADOQ_forosh.SQL.Text:='update T_moshakhasate_forosh set tedad_gest_pardakhti=tedad_gest_pardakhti+1,'+
  'forosh_bagimande_kol=forosh_bagimande_kol-'+e_mablagh_pardakhti.Text+
  ',tarikh_pardakht_geste_badi='+QuotedStr(L_tarikhe_emroz.Caption)+
  ' where cod='+L_cod_forosh.Caption;
  DataM_input_data.ADOQ_forosh.ExecSQL;

  frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
end;
///////////


procedure Tfrm_zabte_pardakhte_namoaian.typ_tarikh;
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
procedure Tfrm_zabte_pardakhte_namoaian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
end;

procedure Tfrm_zabte_pardakhte_namoaian.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  typ_tarikh;
  e_mablagh_pardakhti.Text:='';
end;

procedure Tfrm_zabte_pardakhte_namoaian.Button1Click(Sender: TObject);
begin
  if e_mablagh_pardakhti.Text='' then
    MessageBox(Handle,'???? ??????? ?? ???? ??????','!???',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
  else
  begin
   if L_tarikhe_emroz.Caption < DBText20.Caption then
    MessageBox(Handle,'????? ?????? ??? ??? ????? ????? ?? ????? ???? ???? !!','!???',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
   else
    begin
           if StrToFloat(e_mablagh_pardakhti.Text) >StrToFloat(DBText25.Caption) then
            MessageBox(Handle,'???? ??????? ????? ?? ???? ????????? ?? ????? ????','!???',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
           else
           begin
            sabte_pardakht_gest(m_tozihe_geste_akhar.Text,'zm','','0');
            MessageBox(Handle,'???? ??????? ??? ?????','!????',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

            frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
            frm_pardakht_gest.show_jame_pardakht_gest;
            DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
            close;
           end;
    end;
  end;
end;
procedure Tfrm_zabte_pardakhte_namoaian.RadioGroup1Click(Sender: TObject);
begin
  typ_tarikh;
end;

procedure Tfrm_zabte_pardakhte_namoaian.e_mablagh_pardakhtiKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
