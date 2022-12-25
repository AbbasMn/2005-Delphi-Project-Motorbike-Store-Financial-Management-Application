unit unt_sabt_pardakht_gest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, SUIEdit, DB, ExtCtrls;

type
  Tfrm_sabt_pardakht_gest = class(TForm)
    DBText28: TDBText;
    Label29: TLabel;
    e_mablagh_pardakhti: TsuiEdit;
    Label1: TLabel;
    Button1: TButton;
    L_cod_forosh: TLabel;
    DataSource2: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    e_mablagh_jarime: TsuiEdit;
    L_mablagh_kol: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    DBText13: TDBText;
    Label19: TLabel;
    Label6: TLabel;
    L_tarikhe_emroz: TLabel;
    Label53: TLabel;
    DBText20: TDBText;
    Label8: TLabel;
    L_tarikh_geste_feli: TLabel;
    l_sh_gest: TLabel;
    Label9: TLabel;
    Label41: TLabel;
    DBText36: TDBText;
    RadioGroup1: TRadioGroup;
    l_sh_gest2: TLabel;
    Label5: TLabel;
    e_tedad_roz_takhir: TsuiEdit;
    DBText38: TDBText;
    CheckBox1: TCheckBox;
    DBText25: TDBText;
    m_tozihe_geste_akhar: TMemo;
    L_tozihe_geste_akhar: TLabel;
    procedure e_mablagh_pardakhtiKeyPress(Sender: TObject; var Key: Char);
    function check_mablagh_vorodi:string;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sabte_pardakht_gest(tozih,moed,bede_talab,mablafg_bede_talab:string);
    procedure e_mablagh_jarimeKeyPress(Sender: TObject; var Key: Char);
    procedure e_mablagh_jarimeChange(Sender: TObject);
    procedure e_mablagh_jarimeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure typ_tarikh;
    procedure RadioGroup1Click(Sender: TObject);
    procedure e_tedad_roz_takhirKeyPress(Sender: TObject; var Key: Char);
    procedure e_tedad_roz_takhirChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sabt_pardakht_gest: Tfrm_sabt_pardakht_gest;

implementation

uses unt_DataM_agsat, unt_main, Unt_datam_input_data, unt_pardakht_gest,
  unt_show_forosh, Taghvim, unt_login;

{$R *.dfm}
procedure Tfrm_sabt_pardakht_gest.typ_tarikh;
var t1,t2:string;
begin
  If RadioGroup1.ItemIndex=0 then
    L_tarikhe_emroz.Caption:=frm_main.L_tarikh_roz.Caption
  else
  begin
    _taghvim.Button11.Visible:=false;
    _taghvim.Button1.Visible:=false;
    _taghvim.Button3.Visible:=false;
    _taghvim.Button2.Visible:=true;
    _taghvim.Caption:='������ ����� ������ ���';

    _Taghvim.ShowModal;
    if _taghvim._str_date<>'' then
    begin
      L_tarikhe_emroz.Caption:=_taghvim._str_date;
    end;
  end;
        t1:=frm_sabt_pardakht_gest.L_tarikh_geste_feli.Caption;
        t2:=frm_sabt_pardakht_gest.L_tarikhe_emroz.Caption;
        e_tedad_roz_takhir.Text:=IntToStr(frm_main.tedad_roze_beine_do_tarikh(t1,t2));  
end;
procedure Tfrm_sabt_pardakht_gest.sabte_pardakht_gest(tozih,moed,bede_talab,mablafg_bede_talab:string);
var tarikh_pardakht,roz_,mah_,sal_,x,y,s,jarime,kol:string;
    roz,mah,sal:integer;
begin
  if trim(e_tedad_roz_takhir.Text)='' then
    X:='0'
  else
    x:=e_tedad_roz_takhir.Text;


  if trim(e_mablagh_jarime.Text)='' then
    y:='0'
  else
    y:=e_mablagh_jarime.Text;

  if moed='zm' then
  begin
    s:=L_tarikh_geste_feli.Caption;
    tarikh_pardakht:=s;
    y:='0';
    x:='0';
  end
  else
  begin
    s:=L_tarikhe_emroz.Caption;
    tarikh_pardakht:=s;
  end;

  s:='';
  s:=trim(tozih);
  tozih:=s;

  tarikh_pardakht:=L_tarikh_geste_feli.Caption;

  mah:=StrToInt(tarikh_pardakht[6]+tarikh_pardakht[7]);
  sal:=StrToInt(tarikh_pardakht[1]+tarikh_pardakht[2]+tarikh_pardakht[3]+tarikh_pardakht[4]);
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
  roz_:=tarikh_pardakht[9]+tarikh_pardakht[10];

  tarikh_pardakht:=sal_+'/'+mah_+'/'+roz_;

  //////////////////

  jarime:=FloatToStr(StrToFloat(x)*StrToFloat(y));

  kol:=e_mablagh_pardakhti.Text;


  if StrToInt(DBText38.Caption)=1 then
    tarikh_pardakht:='��� ����� ������ ��� ���';

  DataM_input_data.ADOQ_forosh.SQL.Text:=' update T_moshakhasate_forosh set tarikh_pardakht_geste_badi='+QuotedStr(tarikh_pardakht)+
  ',tedad_gest_pardakhti=tedad_gest_pardakhti+1,'+
  'tedad_gest_mande=tedad_gest_mande-1,forosh_bagimande_kol=forosh_bagimande_kol-'+kol+',jarime_kol=jarime_kol+'+jarime+
  ' where cod='+L_cod_forosh.Caption;

  {'  insert into T_pardakht_gest(pardakht_tarikh,pardakht_mablagh,pardakht_cod_forosh,'+

  ' tedad_roze_takhir,jarime_baraye_har_roz,jarime_takhir,pardakht_tozih,mablagh_bede_talab,bede_talab)'+

  ' values ('+QuotedStr(tarikh_pardakht)+','+e_mablagh_pardakhti.Text+','+L_cod_forosh.Caption+
  ','+x+','+y+','+FloatToStr(StrToFloat(x)*StrToFloat(y))+
  ','+QuotedStr(tozih)+','+mablafg_bede_talab+','+QuotedStr(bede_talab)+')'+
  ' '; }

  DataM_input_data.ADOQ_forosh.ExecSQL;




  DataM_agsat.ADOQ_pardakht_gest.SQL.Text:='insert into T_pardakht_gest(pardakht_tarikh,pardakht_mablagh,pardakht_cod_forosh,'+

  'tedad_roze_takhir,jarime_baraye_har_roz,jarime_takhir,pardakht_tozih,mablagh_bede_talab,bede_talab)'+

  ' values ('+QuotedStr(tarikh_pardakht)+','+e_mablagh_pardakhti.Text+','+L_cod_forosh.Caption+
  ','+x+','+y+','+FloatToStr(StrToFloat(x)*StrToFloat(y))+
  ','+QuotedStr(tozih)+','+mablafg_bede_talab+','+QuotedStr(bede_talab)+')';


  DataM_agsat.ADOQ_pardakht_gest.ExecSQL;



          frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
          DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
end;
///////////

function Tfrm_sabt_pardakht_gest.check_mablagh_vorodi:string;
begin
  if StrToFloat(L_mablagh_kol.Caption)>StrToFloat(e_mablagh_pardakhti.Text)then
    check_mablagh_vorodi:='kamtar';

  if StrToFloat(L_mablagh_kol.Caption)<(StrToFloat(e_mablagh_pardakhti.Text))then
    check_mablagh_vorodi:='bishtar';

  if StrToFloat(L_mablagh_kol.Caption)=(StrToFloat(e_mablagh_pardakhti.Text))then
    check_mablagh_vorodi:='mosavi';
end;
procedure Tfrm_sabt_pardakht_gest.e_mablagh_pardakhtiKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sabt_pardakht_gest.Button1Click(Sender: TObject);
var s,ss,sal_f,sal_par,mah_f,mah_par,t,sp:string;

begin
  if e_mablagh_pardakhti.Text='' then
    MessageBox(Handle,'���� ������� �� ���� ������','!���',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
  else
  begin
  if (DBText38.Caption='1')and(e_mablagh_pardakhti.Text<>DBText25.Caption) then  ////////geste akhar
  begin
    MessageBox(Handle,pchar(' �� ������ ����� ��� ����� ������� ���� ������ ����� �� ���� ���� ����� �� ����:: '+DBText25.Caption+' :: ����'),'!���',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
  end
  else
  begin  ////////bagie agsat
    if L_tarikh_geste_feli.Caption <= L_tarikhe_emroz.Caption then
    begin
        s:=check_mablagh_vorodi;
        if s='kamtar' then
        begin
          if MessageBox(Handle,'���� ������� �� ���� �� ���� ������ ���� �� ���ϡ������ �� ����� ����Ͽ','!����',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
          begin
           ss:=FloatToStr(StrToFloat(L_mablagh_kol.Caption)-StrToFloat(e_mablagh_pardakhti.Text));

           sabte_pardakht_gest(m_tozihe_geste_akhar.Text,'m','�����',ss);
           MessageBox(Handle,'���� ������� ��� �����','!����',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

           frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
           frm_pardakht_gest.show_jame_pardakht_gest;           
           DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
           Close;
          end;
        end;
        if s='bishtar' then
        begin
          if MessageBox(Handle,'���� ������� �� ���� �� ���� ������ ����� �� ���ϡ������ �� ����� ����Ͽ','!����',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
            begin
              ss:=FloatToStr(StrToFloat(e_mablagh_pardakhti.Text)-StrToFloat(L_mablagh_kol.Caption));
              sabte_pardakht_gest(m_tozihe_geste_akhar.Text,'m','��Ș��',ss);

              MessageBox(Handle,'���� ������� ��� �����','!����',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

              frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
              DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
              Close;
            end;
        end;
        if s='mosavi' then
        begin
          sabte_pardakht_gest(m_tozihe_geste_akhar.Text,'m','','0');
          MessageBox(Handle,'���� ������� ��� �����','!����',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
          
          frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
          DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
          Close;
        end;
    end
    else




    begin ///// pardakht zodtar az moed
     s:=L_tarikh_geste_feli.Caption;
     sal_f:=s[1]+s[2]+s[3]+s[4];
     mah_f:=s[6]+s[7];

     s:=L_tarikhe_emroz.Caption;
     sal_par:=s[1]+s[2]+s[3]+s[4];
     mah_par:=s[6]+s[7];

     if (sal_par<sal_f) or ((sal_f=sal_par)and(mah_par<mah_f))  then
        MessageBox(Handle,'������ ��� �� �� ���� ���� �� ���� ��� ���� ��� ���� ���� ��� ���� ��� ����� ��ϡ �� �� ������ ��� �� �� �� !!!','!���',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION)
     else
     begin
          if MessageBox(Handle,'����� ������ ��� ���� ������ ��� ���� ������ ��� �� �� ���� ��� �� ���ϡ������� ���� ���� ������ ��� �� ����� ����� ������ ����� �� ���ϡ������ �� ����� ����Ͽ','!����',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
          begin

            t:=IntToStr(frm_main.tedad_roze_beine_do_tarikh(L_tarikhe_emroz.Caption,L_tarikh_geste_feli.Caption));

            s:=check_mablagh_vorodi;
            if s='kamtar' then
            begin
              if MessageBox(Handle,'���� ������� �� ���� �� ���� ������ ���� �� ���ϡ������ �� ����� ����Ͽ','!����',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
              begin
                sp:=' ������ '+t+'��� ����� �� ���� ';
                ss:=FloatToStr(StrToFloat(L_mablagh_kol.Caption)-StrToFloat(e_mablagh_pardakhti.Text));

                sabte_pardakht_gest(sp,'zm','�����',ss);
                MessageBox(Handle,'���� ������� ��� �����','!����',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
                Close;
            end;
          end;
          if s='bishtar' then
          begin
            if MessageBox(Handle,'���� ������� �� ���� �� ���� ������ ����� �� ���ϡ������ �� ����� ����Ͽ','!����',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
            begin
              sp:=' ������ '+t+'��� ����� �� ���� ';
              ss:=FloatToStr(StrToFloat(e_mablagh_pardakhti.Text)-StrToFloat(L_mablagh_kol.Caption));

              sabte_pardakht_gest(sp,'zm','��Ș��',ss);

              MessageBox(Handle,'���� ������� ��� �����','!����',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
              frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
              DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
              Close;
            end;
          end;
          if s='mosavi' then
          begin
           sp:=' ������ '+t+'��� ����� �� ���� ';
           sabte_pardakht_gest(sp,'zm','','0');
           MessageBox(Handle,'���� ������� ��� �����','!����',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);

           frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
           DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);
           Close;
          end;
          end;
     end;
    end;
  end;
  end;
end;

procedure Tfrm_sabt_pardakht_gest.FormShow(Sender: TObject);
  var s,t1,t2:string;
begin
  CheckBox1.Checked:=false;
  RadioGroup1.ItemIndex:=0;
  typ_tarikh;
  e_mablagh_pardakhti.Text:='';
  L_mablagh_kol.Caption:=DBText28.Caption;

  /////////////////
        t1:=frm_sabt_pardakht_gest.L_tarikh_geste_feli.Caption;
        t2:=frm_sabt_pardakht_gest.L_tarikhe_emroz.Caption;
        e_tedad_roz_takhir.Text:=IntToStr(frm_main.tedad_roze_beine_do_tarikh(t1,t2));

  ////////////////
end;

procedure Tfrm_sabt_pardakht_gest.e_mablagh_jarimeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sabt_pardakht_gest.e_mablagh_jarimeChange(Sender: TObject);
  var x,y:string;
  begin
    if trim(e_tedad_roz_takhir.Text)='' then
      x:='0'
    else
      x:=e_tedad_roz_takhir.Text;

  if trim(e_mablagh_jarime.Text)='' then
    y:='0'
  else
    y:=e_mablagh_jarime.Text;
    
  if CheckBox1.Checked then
    L_mablagh_kol.Caption:=FloatToStr(StrToFloat(x)*StrToFloat(y)+StrToFloat(DBText28.Caption))
  else
     L_mablagh_kol.Caption:=DBText28.Caption;
end;

procedure Tfrm_sabt_pardakht_gest.e_mablagh_jarimeExit(Sender: TObject);
  var x,y:string;
  begin
    if trim(e_tedad_roz_takhir.Text)='' then
      x:='0'
    else
      x:=e_tedad_roz_takhir.Text;

  if trim(e_mablagh_jarime.Text)='' then
    y:='0'
  else
    y:=e_mablagh_jarime.Text;

  if CheckBox1.Checked then
    L_mablagh_kol.Caption:=FloatToStr(StrToFloat(x)*StrToFloat(y)+StrToFloat(DBText28.Caption))
  else
     L_mablagh_kol.Caption:=DBText28.Caption;
end;

procedure Tfrm_sabt_pardakht_gest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod_forosh.Caption,[loPartialKey]);

end;

procedure Tfrm_sabt_pardakht_gest.RadioGroup1Click(Sender: TObject);
begin
  typ_tarikh;
end;

procedure Tfrm_sabt_pardakht_gest.e_tedad_roz_takhirKeyPress(
  Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sabt_pardakht_gest.e_tedad_roz_takhirChange(
  Sender: TObject);
  var x,y:string;
  begin
    if trim(e_tedad_roz_takhir.Text)='' then
      x:='0'
    else
      x:=e_tedad_roz_takhir.Text;

  if trim(e_mablagh_jarime.Text)='' then
    y:='0'
  else
    y:=e_mablagh_jarime.Text;
    
  if CheckBox1.Checked then
    L_mablagh_kol.Caption:=FloatToStr(StrToFloat(x)*StrToFloat(y)+StrToFloat(DBText28.Caption))
  else
     L_mablagh_kol.Caption:=DBText28.Caption;
end;

procedure Tfrm_sabt_pardakht_gest.CheckBox1Click(Sender: TObject);
  var x,y:string;
  begin
    if trim(e_tedad_roz_takhir.Text)='' then
      x:='0'
    else
      x:=e_tedad_roz_takhir.Text;

  if trim(e_mablagh_jarime.Text)='' then
    y:='0'
  else
    y:=e_mablagh_jarime.Text;
    
  if CheckBox1.Checked then
    L_mablagh_kol.Caption:=FloatToStr(StrToFloat(x)*StrToFloat(y)+StrToFloat(DBText28.Caption))
  else
     L_mablagh_kol.Caption:=DBText28.Caption;
end;

end.
