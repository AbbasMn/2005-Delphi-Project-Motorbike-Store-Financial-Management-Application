unit unt_eslahe_motor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, SUIEdit;

type
  Tfrm_eslahe_motor = class(TForm)
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
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
    e_motor_tozih: TTeMemo;
    Bt: TButton;
    L_cod: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    L_forokhte: TLabel;
    CheckBox4: TCheckBox;
    l_type: TLabel;
    procedure show_moshakhsat_feli;
    procedure FormShow(Sender: TObject);
    procedure BtClick(Sender: TObject);
    procedure update_motor;
    function check_vorod_moshakhasate_motor:boolean;
    procedure e_motor_sale_sakhtKeyPress(Sender: TObject; var Key: Char);
    procedure e_motor_plak_balaKeyPress(Sender: TObject; var Key: Char);
    procedure e_motor_plak_paeinKeyPress(Sender: TObject; var Key: Char);
    procedure get_motor_from_motors_on_plake_bala;
    procedure get_motor_from_motors_on_plake_pain;
    procedure get_motor_from_motors_on_plake_shahr;
    procedure e_motor_plak_balaExit(Sender: TObject);
    procedure e_motor_plak_shahrExit(Sender: TObject);
    procedure e_motor_plak_paeinExit(Sender: TObject);

    procedure update_motor_anbar;
  private
    { Private declarations }
  public
    { Public declarations }
  plak_bala:string;
  plak_shahr:string;
  plak_paein:string;
  end;

var
  frm_eslahe_motor: Tfrm_eslahe_motor;

implementation



uses Unt_datam_input_data, DB, unt_show_forosh;
{$R *.dfm}

procedure Tfrm_eslahe_motor.update_motor_anbar;
begin
  DataM_input_data.ADOQ_kharid_motor.SQL.Text:=' update T_motors set '+

  'motor_name='+QuotedStr(e_motor_name.Text)+
  ',motor_system='+QuotedStr(e_motor_system.Text)+
  ',motor_model='+QuotedStr(e_motor_model.Text)+
  ',motor_sale_sakht='+QuotedStr(e_motor_sale_sakht.Text)+
  ',motor_shomare_tane='+QuotedStr(e_motor_sh_tane.Text)+
  ',motor_shomare_motor='+QuotedStr(e_motor_sh_motor.Text)+
  ',motor_rang='+QuotedStr(e_motor_rang.Text)+
  ',motor_plak_bala='+QuotedStr(e_motor_plak_bala.Text)+
  ',motor_plak_shahr='+QuotedStr(e_motor_plak_shahr.Text)+
  ',motor_plak_paein='+QuotedStr(e_motor_plak_paein.Text)+
  ' where cod='+L_cod.Caption+
  ' ';
   DataM_input_data.ADOQ_kharid_motor.ExecSQL;

   DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors order by motor_forosh,motor_plak_shahr,motor_plak_bala';
   DataM_input_data.ADOQ_kharid_motor.Open;

   DataM_input_data.ADOQ_kharid_motor.Locate('cod',L_cod.Caption,[loPartialKey]);


   MessageBox(Handle,'?????? ???? ????? ????? ????? ??','????!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;


procedure Tfrm_eslahe_motor.get_motor_from_motors_on_plake_bala;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('?????? ????');
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

procedure Tfrm_eslahe_motor.get_motor_from_motors_on_plake_pain;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('?????? ????');
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

procedure Tfrm_eslahe_motor.get_motor_from_motors_on_plake_shahr;
begin
 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='select * from T_motors where motor_plak_bala like '+QuotedStr(trim(e_motor_plak_bala.Text)+'%')+
 ' and motor_plak_shahr like '+QuotedStr(trim(e_motor_plak_shahr.Text)+'%')+' and motor_plak_paein like '+QuotedStr(trim(e_motor_plak_paein.Text)+'%')+
 ' and motor_forosh='+QuotedStr('?????? ????');
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



procedure Tfrm_eslahe_motor.update_motor;
begin
  DataM_input_data.ADOQ_forosh.SQL.Text:=' update T_moshakhasate_forosh set '+

  'motor_name='+QuotedStr(e_motor_name.Text)+
  ',motor_system='+QuotedStr(e_motor_system.Text)+
  ',motor_model='+QuotedStr(e_motor_model.Text)+
  ',motor_sale_sakht='+QuotedStr(e_motor_sale_sakht.Text)+
  ',motor_shomare_tane='+QuotedStr(e_motor_sh_tane.Text)+
  ',motor_shomare_motor='+QuotedStr(e_motor_sh_motor.Text)+
  ',motor_rang='+QuotedStr(e_motor_rang.Text)+
  ',motor_plak_bala='+QuotedStr(e_motor_plak_bala.Text)+
  ',motor_plak_shahr='+QuotedStr(e_motor_plak_shahr.Text)+
  ',motor_plak_paein='+QuotedStr(e_motor_plak_paein.Text)+
  ',motor_tozihat='+QuotedStr(e_motor_tozih.Text)+
  ' where cod='+L_cod.Caption;

  {' update T_motors set motor_forosh='+QuotedStr('?????? ????')+
  ' where motor_plak_bala='+QuotedStr(trim(plak_bala))+
   ' and motor_plak_shahr='+QuotedStr(trim(plak_shahr))+' and motor_plak_paein='+QuotedStr(trim(plak_paein))+

  ' update T_motors set motor_forosh='+QuotedStr('?????? ???')+
  ' where motor_plak_bala='+QuotedStr(trim(e_motor_plak_bala.Text))+
  ' and motor_plak_shahr='+QuotedStr(trim(e_motor_plak_shahr.Text))+' and motor_plak_paein='+QuotedStr(trim(e_motor_plak_paein.Text))+

  ' ';}



   DataM_input_data.ADOQ_forosh.ExecSQL;

  frm_show_forosh.show_kholase_foroshha;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod.Caption,[loPartialKey]);

  DataM_input_data.ADOQ_kharid_motor.SQL.Text:='update T_motors set motor_forosh='+QuotedStr('?????? ????')+
 ' where motor_plak_bala='+QuotedStr(trim(plak_bala))+
 ' and motor_plak_shahr='+QuotedStr(trim(plak_shahr))+' and motor_plak_paein='+QuotedStr(trim(plak_paein));
 DataM_input_data.ADOQ_kharid_motor.ExecSQL;

 DataM_input_data.ADOQ_kharid_motor.SQL.Text:='update T_motors set motor_forosh='+QuotedStr('?????? ???')+
 ' where motor_plak_bala='+QuotedStr(trim(e_motor_plak_bala.Text))+
 ' and motor_plak_shahr='+QuotedStr(trim(e_motor_plak_shahr.Text))+' and motor_plak_paein='+QuotedStr(trim(e_motor_plak_paein.Text));
 DataM_input_data.ADOQ_kharid_motor.ExecSQL;

  MessageBox(Handle,'?????? ???? ????? ????? ????? ??','????!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
end;
//////////////
function Tfrm_eslahe_motor.check_vorod_moshakhasate_motor:boolean;
var s:string;
begin
  check_vorod_moshakhasate_motor:=true;
  s:='';

  if e_motor_plak_paein.Text='' then
  begin
    s:=s+' ?? ??? ????? ???? ';
    e_motor_plak_paein.SetFocus;
  end;
  if e_motor_plak_shahr.Text='' then
  begin
    s:=s+' ??? ???? ';
    e_motor_plak_shahr.SetFocus;
  end;
  if e_motor_plak_bala.Text='' then
  begin
    s:=s+' ????? ???? ';
    e_motor_plak_bala.SetFocus;
  end;
  if e_motor_rang.Text='' then
  begin
    s:=s+' ??? ????? ';
    e_motor_rang.SetFocus;
  end;
  if e_motor_sh_motor.Text='' then
  begin
    s:=s+' ????? ????? ';
    e_motor_sh_motor.SetFocus;
  end;
  if e_motor_sh_tane.Text='' then
  begin
    s:=s+' ????? ??? ';
    e_motor_sh_tane.SetFocus;
  end;
  if e_motor_sale_sakht.Text='' then
  begin
    s:=s+' ??? ???? ';
    e_motor_sale_sakht.SetFocus;
  end;
  if e_motor_model.Text='' then
  begin
    s:=s+' ??? ';
    e_motor_model.SetFocus;
  end;
  if e_motor_system.Text='' then
  begin
    s:=s+' ????? ';
    e_motor_system.SetFocus;
  end;
  if e_motor_name.Text='' then
  begin
    s:=s+' ??? ????? ????? ';
    e_motor_name.SetFocus;
  end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_motor:=false;
    MessageBox(Handle,pchar(s+' ???? ???? ???'),'!???',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;
/////////////
procedure Tfrm_eslahe_motor.show_moshakhsat_feli;
begin
 if  frm_eslahe_motor.l_type.Caption='forosh' then
 begin
  e_motor_name.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_name.AsString;
  e_motor_system.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_system.AsString;
  e_motor_model.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_model.AsString;
  e_motor_sale_sakht.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_sale_sakht.AsString;
  e_motor_sh_tane.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_shomare_tane.AsString;
  e_motor_sh_motor.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_shomare_motor.AsString;
  e_motor_rang.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_rang.AsString;
  e_motor_plak_bala.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_bala.AsString;
  e_motor_plak_shahr.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_shahr.AsString;
  e_motor_plak_paein.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_plak_paein.AsString;
  e_motor_tozih.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasemotor_tozihat.AsString;
  L_cod.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasecod.AsString;

  e_motor_tozih.Visible:=true;
  Label14.Visible:=true;
 end
 else
 begin
  e_motor_name.Text:=DataM_input_data.ADOQ_kharid_motormotor_name.AsString;
  e_motor_system.Text:=DataM_input_data.ADOQ_kharid_motormotor_system.AsString;
  e_motor_model.Text:=DataM_input_data.ADOQ_kharid_motormotor_model.AsString;
  e_motor_sale_sakht.Text:=DataM_input_data.ADOQ_kharid_motormotor_sale_sakht.AsString;
  e_motor_sh_tane.Text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_tane.AsString;
  e_motor_sh_motor.Text:=DataM_input_data.ADOQ_kharid_motormotor_shomare_motor.AsString;
  e_motor_rang.Text:=DataM_input_data.ADOQ_kharid_motormotor_rang.AsString;
  e_motor_plak_bala.Text:=DataM_input_data.ADOQ_kharid_motormotor_plak_bala.AsString;
  e_motor_plak_shahr.Text:=DataM_input_data.ADOQ_kharid_motormotor_plak_shahr.AsString;
  e_motor_plak_paein.Text:=DataM_input_data.ADOQ_kharid_motormotor_plak_paein.AsString;
  L_cod.Caption:=DataM_input_data.ADOQ_kharid_motorcod.AsString;
  e_motor_tozih.Visible:=false;
  Label14.Visible:=false;
 end
end;


procedure Tfrm_eslahe_motor.FormShow(Sender: TObject);
begin
  show_moshakhsat_feli;
  plak_bala:=e_motor_plak_bala.Text;
  plak_shahr:=e_motor_plak_shahr.Text;
  plak_paein:=e_motor_plak_paein.Text;

  if l_type.Caption='anbar' then
  begin
    CheckBox4.Visible:=false;
    CheckBox4.Checked:=false;
  end;

  if l_type.Caption='forosh' then
  begin
    CheckBox4.Visible:=true;
    CheckBox4.Checked:=False;
  end;
end;

procedure Tfrm_eslahe_motor.BtClick(Sender: TObject);
begin
  if check_vorod_moshakhasate_motor then
  begin
    if  MessageBox(Handle,'?????? ???? ????? ????? ???? ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin
      if l_type.Caption='forosh' then
        update_motor
      else
        begin
          update_motor_anbar;
        end;
      close;
    end;
  end;
end;

procedure Tfrm_eslahe_motor.e_motor_sale_sakhtKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_motor.e_motor_plak_balaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_motor.e_motor_plak_paeinKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_motor.e_motor_plak_balaExit(Sender: TObject);
begin
  if (e_motor_plak_bala.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_bala;
end;

procedure Tfrm_eslahe_motor.e_motor_plak_shahrExit(Sender: TObject);
begin
  if (e_motor_plak_shahr.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_shahr;
end;

procedure Tfrm_eslahe_motor.e_motor_plak_paeinExit(Sender: TObject);
begin
  if (e_motor_plak_paein.Text<>'') and (CheckBox4.Checked) then
    get_motor_from_motors_on_plake_pain;
end;

end.
