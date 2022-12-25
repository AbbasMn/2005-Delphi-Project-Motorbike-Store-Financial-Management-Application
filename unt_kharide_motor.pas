unit unt_kharide_motor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, SUIEdit;

type
  Tfrm_kharide_motor = class(TForm)
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label12: TLabel;
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
    Bt: TButton;
    function check_vorod_moshakhasate_motor:boolean;
    procedure BtClick(Sender: TObject);
    procedure insert_motor;
    function check_motor_exist:boolean;
    procedure e_motor_plak_balaKeyPress(Sender: TObject; var Key: Char);
    procedure e_motor_plak_paeinKeyPress(Sender: TObject; var Key: Char);
    procedure show_motorhaye_kharidari_shode_forokhte_nashode;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_kharide_motor: Tfrm_kharide_motor;

implementation

uses Unt_datam_input_data;

{$R *.dfm}
procedure Tfrm_kharide_motor.show_motorhaye_kharidari_shode_forokhte_nashode;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_forosh='+QuotedStr('›—ÊŒ Â ‰‘œÂ');
 DataM_input_data.ADOQ_kharid_motor.Open;
end;

function Tfrm_kharide_motor.check_motor_exist:boolean;
begin
 check_motor_exist:=false;

 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala='+QuotedStr(trim(e_motor_plak_bala.Text))+
 ' and motor_plak_shahr='+QuotedStr(trim(e_motor_plak_shahr.Text))+' and motor_plak_paein='+QuotedStr(trim(e_motor_plak_paein.Text));
 DataM_input_data.ADOQ_kharid_motor.Open;

 if DataM_input_data.ADOQ_kharid_motor.RecordCount>0 then
 begin
  check_motor_exist:=true;
  MessageBox(Handle,'„‘Œ’«  „Ê Ê— ”Ìò·  »« «Ì‰ Å·«ò ﬁ»·« Ê«—œ ‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  Exit;
 end;

 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_shomare_tane='+QuotedStr(trim(e_motor_sh_tane.Text));
 DataM_input_data.ADOQ_kharid_motor.Open;

 if DataM_input_data.ADOQ_kharid_motor.RecordCount>0 then
 begin
  check_motor_exist:=true;
  MessageBox(Handle,'„‘Œ’«  „Ê Ê— ”Ìò·  »« «Ì‰ ‘„«—Â  ‰Â ﬁ»·« Ê«—œ ‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  Exit;
 end;


 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_shomare_motor='+QuotedStr(trim(e_motor_sh_motor.Text));
 DataM_input_data.ADOQ_kharid_motor.Open;

 if DataM_input_data.ADOQ_kharid_motor.RecordCount>0 then
 begin
  check_motor_exist:=true;
  MessageBox(Handle,'„‘Œ’«  „Ê Ê— ”Ìò·  »« «Ì‰ ‘„«—Â „Ê Ê— ﬁ»·« Ê«—œ ‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  Exit;
 end;
end;

procedure Tfrm_kharide_motor.insert_motor;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:=' insert into T_motors(motor_name,motor_system,motor_model,motor_sale_sakht,motor_shomare_tane,motor_shomare_motor,motor_rang,'+
 'motor_plak_bala,motor_plak_shahr,motor_plak_paein) values('+QuotedStr(trim(e_motor_name.Text))+','+QuotedStr(trim(e_motor_system.Text))+','+
 QuotedStr(trim(e_motor_model.Text))+','+QuotedStr(trim(e_motor_sale_sakht.Text))+
  ','+QuotedStr(trim(e_motor_sh_tane.Text))+','+QuotedStr(trim(e_motor_sh_motor.Text))+','+
  QuotedStr(trim(e_motor_rang.Text))+
  ','+QuotedStr(trim(e_motor_plak_bala.Text))+','+QuotedStr(trim(e_motor_plak_shahr.Text))+','+
  QuotedStr(trim(e_motor_plak_paein.Text))+')'+
  ' ';
 DataM_input_data.ADOQ_kharid_motor.ExecSQL;

 MessageBox(Handle,pchar('„‘Œ’«  „Ê Ê—”Ìò·  –ŒÌ—Â ‘œ'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_ICONINFORMATION);

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
  e_motor_name.Text:='«—” —«‰ ŒÊœ—Ê'; 
end;

function Tfrm_kharide_motor.check_vorod_moshakhasate_motor:boolean;
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


procedure Tfrm_kharide_motor.BtClick(Sender: TObject);
begin
  if check_vorod_moshakhasate_motor then
    if not check_motor_exist then
      insert_motor;
end;

procedure Tfrm_kharide_motor.e_motor_plak_balaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_kharide_motor.e_motor_plak_paeinKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_kharide_motor.FormShow(Sender: TObject);
begin
  e_motor_name.Text:='«—” —«‰ ŒÊœ—Ê';
end;

end.
