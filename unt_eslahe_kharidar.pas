unit unt_eslahe_kharidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, te_controls, SUIEdit;

type
  Tfrm_eslahe_kharidar = class(TForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    e_name: TsuiEdit;
    e_family: TsuiEdit;
    e_adress: TTeMemo;
    e_telephon: TsuiEdit;
    e_telephonhamrah: TsuiEdit;
    e_pedar: TsuiEdit;
    e_sh_sh: TsuiEdit;
    e_sadere: TsuiEdit;
    e_roz: TsuiEdit;
    e_code_meli: TsuiEdit;
    e_mah: TsuiEdit;
    e_sal: TsuiEdit;
    Bt: TButton;
    L_cod: TLabel;
    Label45: TLabel;
    e_code_posti: TsuiEdit;
    procedure show_moshakhsat_feli;
    procedure FormShow(Sender: TObject);
    procedure BtClick(Sender: TObject);
    function check_vorod_moshakhasate_kharida:boolean;
    procedure update_shakhs;
    procedure e_sh_shKeyPress(Sender: TObject; var Key: Char);
    procedure e_rozKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahKeyPress(Sender: TObject; var Key: Char);
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_code_meliKeyPress(Sender: TObject; var Key: Char);
    procedure e_telephonKeyPress(Sender: TObject; var Key: Char);
    procedure e_telephonhamrahKeyPress(Sender: TObject; var Key: Char);
    procedure e_mahExit(Sender: TObject);
    procedure e_rozExit(Sender: TObject);
    procedure e_code_postiKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslahe_kharidar: Tfrm_eslahe_kharidar;

implementation

uses Unt_datam_input_data, DB, unt_show_forosh, unt_data_input;

{$R *.dfm}
procedure Tfrm_eslahe_kharidar.update_shakhs;
begin
  DataM_input_data.ADOQ_forosh.SQL.Text:=' update T_moshakhasate_forosh set '+
  
  'kharidar_name='+QuotedStr(e_name.Text)+
  ',kharidar_family='+QuotedStr(e_family.Text)+
  ',kharidar_pedar='+QuotedStr(e_pedar.Text)+
  ',kharidar_sh_shenasname='+QuotedStr(e_sh_sh.Text)+
  ',kharidar_sadere='+QuotedStr(e_sadere.Text)+
  ',kharidar_tavalod='+QuotedStr(e_sal.Text+'/'+e_mah.Text+'/'+e_roz.Text)+
  ',kharidar_cod_meli='+QuotedStr(e_code_meli.Text)+
  ',kharidar_tele_sabet='+QuotedStr(e_telephon.Text)+
  ',kharidar_tele_hamrah='+QuotedStr(e_telephonhamrah.Text)+
  ',kharidar_adress='+QuotedStr(e_adress.Text)+
  ',kharidar_code_posti='+QuotedStr(e_code_posti.Text)+
  '  where cod='+L_cod.Caption+
  ' ';
   DataM_input_data.ADOQ_forosh.ExecSQL;

  frm_show_forosh.show_kholase_foroshha;
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('cod',L_cod.Caption,[loPartialKey]);
end;

function Tfrm_eslahe_kharidar.check_vorod_moshakhasate_kharida:boolean;
var s:string;
begin
  check_vorod_moshakhasate_kharida:=true;
  s:='';

  if e_adress.Text='' then
  begin  
    s:=s+' ���� ';
    e_adress.SetFocus;
  end;
  if e_telephon.Text='' then
  begin
    s:=s+' ���� ���� ';
    e_telephon.SetFocus;
  end;
 { if e_code_meli.Text='' then
  begin
    s:=s+' ����� ';
    e_code_meli.SetFocus;
  end;}
  if e_sal.Text='' then
  begin
    s:=s+' ��� ���� ';
    e_sal.SetFocus;
  end;
  if e_mah.Text='' then
  begin
    s:=s+' ��� ���� ';
    e_mah.SetFocus;
  end;
  if e_roz.Text='' then
  begin
    s:=s+' ��� ���� ';
    e_roz.SetFocus;
  end;
  if e_sadere.Text='' then
  begin
    s:=s+' ��� ���� �������� ';
    e_sadere.SetFocus;
  end;
  if e_sh_sh.Text='' then
  begin
    s:=s+' ����� �������� ';
    e_sh_sh.SetFocus;
  end;
  if e_pedar.Text='' then
  begin
    s:=s+' ��� ��� ';
    e_pedar.SetFocus;
  end;
  if e_family.Text='' then
  begin
    s:=s+' ��� �����ϐ� ������ ';
    e_family.SetFocus;
  end;
  if e_name.Text='' then
  begin
    s:=s+' ��� ������ ';
    e_name.SetFocus;
  end;
  if s<>'' then
  begin
    check_vorod_moshakhasate_kharida:=false;
    MessageBox(Handle,pchar(s+' ���� ���� ���'),'!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
  end;

end;
/////////////////////////////
procedure Tfrm_eslahe_kharidar.show_moshakhsat_feli;
begin
  e_name.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_name.AsString;
  e_family.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_family.AsString;
  e_pedar.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_pedar.AsString;
  e_sh_sh.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_sh_shenasname.AsString;
  e_sadere.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_sadere.AsString;

  e_roz.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[9]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[10];

  e_mah.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[6]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[7];

  e_sal.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[1]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[2]+
              DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[3]+DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tavalod.AsString[4];

  e_code_meli.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_cod_meli.AsString;
  e_telephon.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tele_sabet.AsString;
  e_telephonhamrah.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_tele_hamrah.AsString;
  e_adress.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_adress.AsString;
  e_code_posti.Text:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasekharidar_code_posti.AsString;
  L_cod.Caption:=DataM_input_data.ADOQ_show_hame_bar_asase_kholasecod.AsString;
end;

procedure Tfrm_eslahe_kharidar.FormShow(Sender: TObject);
begin
  show_moshakhsat_feli;
end;

procedure Tfrm_eslahe_kharidar.BtClick(Sender: TObject);
begin
  if check_vorod_moshakhasate_kharida then
  begin
    if  MessageBox(Handle,' ������ ���� ��� ����� ��Ͽ ','?',MB_YESNO or MB_RIGHT or MB_RTLREADING or MB_ICONQUESTION)=idyes then
    begin
      update_shakhs;
      MessageBox(Handle,'������ ���� �����ѡ����� ��','����!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
      close;
    end;
  end;
end;

procedure Tfrm_eslahe_kharidar.e_sh_shKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharidar.e_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharidar.e_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharidar.e_salKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharidar.e_code_meliKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharidar.e_telephonKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslahe_kharidar.e_telephonhamrahKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;



procedure Tfrm_eslahe_kharidar.e_mahExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_mah.Text)))<=1 then
    e_mah.Text:='0'+e_mah.Text;

    ss:=e_mah.Text;
    if (StrToFloat(ss)>12) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'��� ���� ���� ��� 1 � 12 ����','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_mah.SetFocus;
    end;
end;

procedure Tfrm_eslahe_kharidar.e_rozExit(Sender: TObject);
var ss:string;
begin
  if StrLen(pchar(trim(e_roz.Text)))<=1 then
    e_roz.Text:='0'+e_roz.Text;

    ss:=e_roz.Text;
    if (StrToFloat(ss)>31) or(StrToFloat(ss)<1) then
    begin
      MessageBox(Handle,'��� ����  ���� ��� 1 � 31 ����','!���',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION);
      e_roz.SetFocus;
    end;
end;

procedure Tfrm_eslahe_kharidar.e_code_postiKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
