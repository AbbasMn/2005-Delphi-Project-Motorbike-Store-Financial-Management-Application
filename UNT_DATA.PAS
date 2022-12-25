unit unt_data_input2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SUIEdit;

type
  Tfrm_data_input2 = class(TForm)
    GroupBox8: TGroupBox;
    Label55: TLabel;
    e_bime: TsuiEdit;
    Button11: TButton;
    L_cod: TLabel;
    L_type: TLabel;
    Label38: TLabel;
    e_bimename_tahvilgir: TsuiEdit;
    Label40: TLabel;
    e_roz: TsuiEdit;
    Label41: TLabel;
    e_mah: TsuiEdit;
    Label42: TLabel;
    e_sal: TsuiEdit;
    Label1: TLabel;
    e_bimename_mablagh: TsuiEdit;
    function check:boolean;
    procedure insert_bime;
    function check_exist:boolean;
    procedure Button11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure e_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_rozExit(Sender: TObject);
    procedure e_mahExit(Sender: TObject);
    procedure show_moshakhsat_feli;
    procedure update_bime;
    procedure e_bimename_mablaghKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_data_input2: Tfrm_data_input2;

implementation

uses unt_DataM_tahvil_joz, DB;

{$R *.dfm}
procedure Tfrm_data_input2.update_bime;
begin
  DataM_tahvil_joz.ADOQ_bime.SQL.Text:=' update T_tahvil_bime set '+
  'bime_tahvil='+QuotedStr(e_bime.Text)+
  ',bim_tahvigir='+QuotedStr(e_bimename_tahvilgir.Text)+
  ',bim_tarikh='+QuotedStr(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)+
  ',bim_mablagh='+e_bimename_mablagh.Text+
  ' where cod='+L_cod.Caption+

  ' ';

  DataM_tahvil_joz.ADOQ_bime.ExecSQL;

  MessageBox(Handle,'„‘Œ’«  ÃœÌœ »Ì„Â ‰«„Â „Ê Ê— ”Ìò·  –ŒÌ—Â ‘œ',' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
end;

procedure Tfrm_data_input2.show_moshakhsat_feli;
begin
  e_bimename_mablagh.Text:=DataM_tahvil_joz.ADOQ_bimebim_mablagh.AsString;
  
  e_roz.Text:=DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[9]+DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[10];

  e_mah.Text:=DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[6]+DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[7];

  e_sal.Text:=DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[1]+DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[2]+

  DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[3]+DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString[4];

  e_bimename_tahvilgir.Text:=DataM_tahvil_joz.ADOQ_bimebim_tahvigir.AsString;

  e_bime.Text:=DataM_tahvil_joz.ADOQ_bimebime_tahvil.AsString;

  L_cod.Caption:=DataM_tahvil_joz.ADOQ_bimecod.AsString;
end;

//////////////
function Tfrm_data_input2.check_exist:boolean;
var s:string;
begin
  check_exist:=true;
  DataM_tahvil_joz.ADOQ_bime.SQL.Text:='select * from T_tahvil_bime where cod_forosh='+L_cod.Caption;
  DataM_tahvil_joz.ADOQ_bime.Open;

  if DataM_tahvil_joz.ADOQ_bime.RecordCount >0 then
  begin
      s:=' »Ì„Â ‰«„Â „Ê Ê— ”Ìò·  œ—  «—ÌŒ ' +DataM_tahvil_joz.ADOQ_bimebim_tarikh.AsString+' »Â '+DataM_tahvil_joz.ADOQ_bimebim_tahvigir.AsString+' '+DataM_tahvil_joz.ADOQ_bimebime_tahvil.AsString;
      MessageBox(Handle,pchar(s),'!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
      check_exist:=false;
  end;
end;
procedure Tfrm_data_input2.insert_bime;
begin
  DataM_tahvil_joz.ADOQ_bime.SQL.Text:=' insert into T_tahvil_bime(bime_tahvil,bim_tahvigir,bim_tarikh,cod_forosh,bim_mablagh)'+
  ' values('+QuotedStr(e_bime.Text)+','+QuotedStr(e_bimename_tahvilgir.Text)+
  ','+QuotedStr(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)+','+L_cod.Caption+','+e_bimename_mablagh.Text+')'+

  ' ';
  DataM_tahvil_joz.ADOQ_bime.ExecSQL;

  MessageBox(Handle,'„‘Œ’«  »Ì„Â ‰«„Â „Ê Ê— ”Ìò·  –ŒÌ—Â ‘œ',' ÊÃÂ!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
end;
function Tfrm_data_input2.check:boolean;
begin
  check:=true;
  if (trim(e_bimename_mablagh.Text)='') then
  begin
    MessageBox(Handle,'„»·€ »Ì„Â ‰«„Â »«Ìœ Ê«—œ ‘Êœ ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_bimename_mablagh.SetFocus;
    Exit;
  end;
 
  if (trim(e_bimename_tahvilgir.Text)='') then
  begin
    MessageBox(Handle,'  ÕÊÌ· êÌ—‰œÂ »Ì„Â ‰«„Â »«Ìœ Ê«—œ ‘Êœ ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_bimename_tahvilgir.SetFocus;
    Exit;
  end;

 if (trim(e_bime.Text)='') then
  begin
    MessageBox(Handle,'  ÕÊÌ· Ì« ⁄œ„  ÕÊÌ· »Ì„Â ‰«„Â »«Ìœ Ê«—œ ‘Êœ ','!Œÿ«',MB_OK or MB_RIGHT or  MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_bime.SetFocus;
    Exit;
  end;

  if (trim(e_roz.Text)='') then
  begin
    MessageBox(Handle,'—Ê“  ÕÊÌ· »Ì„Â ‰«„Â »«Ìœ Ê«—œ ‘Êœ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_roz.SetFocus;
    Exit;
  end;

  if (trim(e_mah.Text)='') then
  begin
    MessageBox(Handle,'„«Â  ÕÊÌ· »Ì„Â ‰«„Â »«Ìœ Ê«—œ ‘Êœ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_mah.SetFocus;
    Exit;
  end;

  if (trim(e_sal.Text)='') then
  begin
    MessageBox(Handle,'”«·  ÕÊÌ· »Ì„Â ‰«„Â »«Ìœ Ê«—œ ‘Êœ','!Œÿ«',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
    check:=false;
    e_sal.SetFocus;
    Exit;
  end;

end;



procedure Tfrm_data_input2.Button11Click(Sender: TObject);
begin
  if check then
  begin
    if L_type.Caption='vorod' then
    begin
      insert_bime;
      close;
    end
    else
    if  MessageBox(Handle,'„‘Œ’«  ÃœÌœ »Ì„Â ‰«„Â –ŒÌ—Â ‘Êœø ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin
      update_bime;
      close;
    end;
  end;
end;

procedure Tfrm_data_input2.FormShow(Sender: TObject);
begin
  if L_type.Caption='vorod' then
  begin
    e_bimename_mablagh.Text:='';
    e_bime.Text:=' ÕÊÌ· ';
    e_bimename_tahvilgir.Text:='';
    e_roz.Text:='';
    e_mah.Text:='';
    e_sal.Text:='';
  end
  else
   show_moshakhsat_feli;
end;

procedure Tfrm_data_input2.e_rozKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input2.e_mahKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input2.e_salKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_data_input2.e_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(e_roz.Text))<=1 then
    e_roz.Text:='0'+e_roz.Text;

    ss:=e_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'—Ê“ »«Ìœ »Ì‰ 1 Ê 31 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_roz.SetFocus;
    end;
end;
procedure Tfrm_data_input2.e_mahExit(Sender: TObject);
var sS:string;
begin
  if StrLen(pchar(e_mah.Text))<=1 then
    e_mah.Text:='0'+e_mah.Text;

    ss:=e_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'„«Â »«Ìœ »Ì‰ 1 Ê 12 »«‘œ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_mah.SetFocus;
    end;
end;

procedure Tfrm_data_input2.e_bimename_mablaghKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
