unit unt_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Menus, ExtCtrls, SUIForm,StdCtrls,dxCore, dxWinXPBar, dxContainer,
  dxButtons, SUIMgr, ImgList, SUIMainMenu, SUITabControl, SUIPageControl,
  ComCtrls, ToolWin, SUIToolBar, SUIStatusBar, SUIPopupMenu, jpeg, Buttons,
  ExtDlgs, DB, ADODB, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDClock, te_controls, te_db_controls,
  LMDBaseGraphicButton, LMDCustomSpeedButton, LMDSpeedButton,
  SUISideChannel, DBCtrls, Grids, DBGrids, SUIDBCtrls,shellapi, te_dialogs;

type
  Tfrm_main = class(TForm)
    suiForm1: TsuiForm;
    suiFileTheme1: TsuiFileTheme;
    cntWinXPBar: TdxContainer;
    ScrollBox2: TScrollBox;
    dxContainer2: TdxContainer;
    dxWinXbarforosh: TdxWinXPBar;
    suiToolBar1: TsuiToolBar;
    ToolButton12: TToolButton;
    ImageList1: TImageList;
    suiStatusBar1: TsuiStatusBar;
    OpenPictureDialog1: TOpenPictureDialog;
    ToolButton1: TToolButton;
    DataSource1: TDataSource;
    suiSideChannel1: TsuiSideChannel;
    GroupBox5: TGroupBox;
    Label3: TLabel;
    DBText5: TDBText;
    Label4: TLabel;
    TeDBMemo2: TTeDBMemo;
    GroupBox7: TGroupBox;
    LMDSpeedButton5: TLMDSpeedButton;
    LMDSpeedButton6: TLMDSpeedButton;
    Image2: TImage;
    l_adess_register2: TLabel;
    ToolButton2: TToolButton;
    dxContainer9: TdxContainer;
    dxWinXPBar_gozaresh_koli: TdxWinXPBar;
    LMDClock1: TLMDClock;
    GroupBox4: TGroupBox;
    Timer_back: TTimer;
    dxContainer1: TdxContainer;
    dxWinXPBar1: TdxWinXPBar;
    dxContainer3: TdxContainer;
    dxWinXPBar2: TdxWinXPBar;
    dxContainer4: TdxContainer;
    dxWinXPBar3: TdxWinXPBar;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOQuery1picname: TWideStringField;
    DBText1: TDBText;
    Label1: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    Label13: TLabel;
    DBText11: TDBText;
    Label14: TLabel;
    L_tedad_nafarat: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakarde: TADOQuery;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardeforosh_tarikh: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardekharidar_name: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardekharidar_family: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardekharidar_tele_sabet: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardekharidar_adress: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardeforosh_mablagh_gest: TFloatField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardeforosh_tedad_gest: TSmallintField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakarderoze_pardakhte_gest: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardetedad_gest_pardakhti: TIntegerField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardetarikh_pardakht_geste_badi: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardekharidar_tele_hamrah: TWideStringField;
    ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakardetedad_gest_mande: TIntegerField;
    TeDirectoryDialog1: TTeDirectoryDialog;
    ADOQ_name_poshtiban: TADOQuery;
    ADOQ_name_poshtibanname_file_poahtiban: TWideStringField;
    ADOQ_name_poshtibanid: TAutoIncField;
    L_roze_hafte: TLabel;
    L_tarikh_roz: TLabel;
    L_masire_poshtiban: TLabel;

    procedure FormActivate(Sender: TObject);
    procedure show_calc;
    procedure Button1Click(Sender: TObject);
    function tedad_roze_beine_do_tarikh(t1,t2:string):integer;
    procedure ToolButton12Click(Sender: TObject);
    procedure dxWinXbarforoshItems0Click(Sender: TObject);
    procedure dxWinXPBar2Items0Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems0Click(Sender: TObject);
    procedure dxWinXPBar2Items1Click(Sender: TObject);
    procedure dxWinXPBar2Items2Click(Sender: TObject);
    procedure dxWinXPBar2Items3Click(Sender: TObject);
    procedure dxWinXPBar2Items4Click(Sender: TObject);
    procedure dxWinXPBar1Items0Click(Sender: TObject);
    procedure dxWinXPBar1Items1Click(Sender: TObject);
    procedure dxWinXPBar1Items2Click(Sender: TObject);
    procedure dxWinXPBar1Items3Click(Sender: TObject);
    procedure dxWinXPBar1Items4Click(Sender: TObject);
    procedure dxWinXPBar1Items5Click(Sender: TObject);
    procedure dxWinXPBar1Items6Click(Sender: TObject);
    procedure dxWinXPBar1Items7Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure dxWinXPBar1Items8Click(Sender: TObject);
    procedure LMDSpeedButton5Click(Sender: TObject);
    procedure LMDSpeedButton6Click(Sender: TObject);
    procedure dxWinXPBar3Items0Click(Sender: TObject);
    procedure dxWinXbarforoshItems1Click(Sender: TObject);
    procedure suiSideChannel1MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dxWinXPBar2Items5Click(Sender: TObject);
    procedure dxWinXbarforoshItems2Click(Sender: TObject);
    procedure dxWinXPBar3Items1Click(Sender: TObject);
    procedure dxWinXPBar_gozaresh_koliItems2Click(Sender: TObject);
    procedure dxWinXPBar2Items6Click(Sender: TObject);
    procedure chang_path_of_backup;
    procedure dxWinXPBar1Items9Click(Sender: TObject);
    procedure autobackup;
    procedure Timer_backTimer(Sender: TObject);
    function format_for_naming_backup_file:string;
    procedure Button2Click(Sender: TObject);
    procedure dxWinXPBar3Items2Click(Sender: TObject);
    procedure dxWinXPBar1Items10Click(Sender: TObject);
    procedure dxWinXPBar2Items7Click(Sender: TObject);

    function alamat_ashar(s:string):boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

uses Taghvim, unt_login, unt_data_input, unt_show_forosh,
  Unt_datam_input_data, unt_dabare, Unt_login_change, unt_DataM_agsat,
  unt_moteakherin, unt_forosh_namoaian, unt_kharide_motor,
  unt_foroshe_nagdi, unt_search_forosh, unt_tedad_motor_bar_system,
  unt_view_anbar_motor;

{$R *.dfm}

function Tfrm_main.alamat_ashar(s:string):boolean;
var i,j:integer;
begin
   j:=0;
   alamat_ashar:=true;
   for i:=1 to StrLen(PChar(s)) do
     begin
        if s[i]='.' then
          j:=j+1;
     end;
   if j>1 then
     begin
       MessageBox(Handle,'⁄·«„  ‰ﬁÿÂ «⁄‘«—Ì ›ﬁÿ Ìò »«— »«Ìœ Ê«—œ ‘Êœ.',' ÊÃÂ! ',MB_OK or MB_ICONEXCLAMATION or MB_RTLREADING or MB_RIGHT );
       alamat_ashar:=false;
     end;
end;



function Tfrm_main.format_for_naming_backup_file:string;
var tarikh,time_:string;
begin
  tarikh:=L_tarikh_roz.Caption;
  tarikh[5]:='-';
  tarikh[8]:='-';
  format_for_naming_backup_file:=L_roze_hafte.Caption+' '+tarikh;

end;

procedure Tfrm_main.autobackup;
var path,s,nn,time_:string;
begin
  time_:=LMDClock1.Digital.Caption;

  time_[3]:='-';
  time_[6]:='-';

 frm_login.ADOlogin.SQL.Text:='select * from  t_login';
 frm_login.ADOlogin.Open;
 if frm_login.ADOloginback.AsString='' then
 begin
  if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>=255 then
    begin
      MessageBox(Handle,pchar('ÿÊ· „”Ì— «‰ Œ«»Ì << '+s +' >> »Ì‘ — «“ 255 ò«—«ò — „Ì »«‘œ ° „”Ì— œÌê—Ì —« «‰ Œ«» ‰„«ÌÌœ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end;
      frm_login.ADOlogin.SQL.Text:='update t_login set back='+QuotedStr(s);
      frm_login.ADOlogin.ExecSQL;
 end
  else
    s:=frm_login.ADOloginback.AsString;
    
  if s<> 'no' then
  begin
    Path:=ExtractFilePath(Application.ExeName);
    
    Path:=Path+'motocycel.mdb';

    nn:=format_for_naming_backup_file;

    CreateDirectory(pchar('\\?\'+s+'\'+nn),0);
    
    nn:=nn+'\'+' ”«⁄  '+time_;

    CreateDirectory(pchar('\\?\'+s+'\'+nn),0);
    
    s:=s+'\'+nn+'\motocycel.mdb';

    CopyFile(PChar(Path),PChar(s),LongBool(0));
  end;
 end;
procedure Tfrm_main.chang_path_of_backup;
var s:string;
begin
 if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>=255 then
    begin
      MessageBox(Handle,pchar('ÿÊ· „”Ì— «‰ Œ«»Ì << '+s +' >> »Ì‘ — «“ 255 ò«—«ò — „Ì »«‘œ ° „”Ì— œÌê—Ì —« «‰ Œ«» ‰„«ÌÌœ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end
    else
    begin
      if s<>'' then
      begin
        frm_login.ADOlogin.SQL.Text:='update t_login set back='+QuotedStr(s);
        frm_login.ADOlogin.ExecSQL;

        frm_main.L_masire_poshtiban.Caption:='„”Ì— –ŒÌ—Â Å‘ Ì»«‰ : '+s;
      end
      else
        MessageBox(Handle,pchar('„”Ì— «‰ Œ«» ‰‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
end;
function Tfrm_main.tedad_roze_beine_do_tarikh(t1,t2:string):integer;
var sal1,sal2,mah1,mah2,roz1,roz2,aval,dovom:integer;
begin
if t1>t2 then
tedad_roze_beine_do_tarikh:=0
else
begin
 sal1:=StrToInt(t1[1]+t1[2]+t1[3]+t1[4]);
 sal2:=StrToInt(t2[1]+t2[2]+t2[3]+t2[4]);

 mah1:=StrToInt(t1[6]+t1[7]);
 mah2:=StrToInt(t2[6]+t2[7]);

 roz1:=StrToInt(t1[9]+t1[10]);
 roz2:=StrToInt(t2[9]+t2[10]);

 if (sal1=sal2) then
 begin
   aval:=((mah1-1)*30+roz1);
   dovom:=((mah2-1)*30+roz2);
 end;

 if (sal1<sal2)then
 begin
  if (mah1>=mah2) then
  begin
   aval:=((sal1-1380)*360)+((mah1-1)*30+roz1);
   dovom:=((sal2-1380)*360)+((mah2-1)*30+roz2);
  end
  else
  begin
   aval:=((sal1-1380)*360)+((mah1)*30+roz1);
   dovom:=((sal2-1380)*360)+((mah2)*30+roz2);
  end;
 end;
 tedad_roze_beine_do_tarikh:=(abs(dovom-aval));
end;
end;

procedure Tfrm_main.show_calc;
var path:string;
    s:pchar;
begin
    {Path:=ExtractFilePath(Application.ExeName);
    Path:=Path+'calc.exe;
    s:=pchar(path); }
    ShellExecute(Handle,'open','calc.exe','','',SW_SHOWMAXIMIZED);
end;




procedure Tfrm_main.FormActivate(Sender: TObject);
begin
  ADOQuery1.SQL.Text:='select * from t_pic';
  ADOQuery1.Open;
  Image2.Picture.LoadFromFile(ADOQuery1picname.Text);
  frm_main.WindowState:=wsMaximized;
  Frm_login.ShowModal;
  if Frm_login.Edit1.Text='nr' then
    close;

  frm_moteakherin.insert_moteakherin;
end;

{var path :string;
begin
  path:=ExtractFilePath(Application.ExeName);
  path:=path;
  OpenPictureDialog1.InitialDir:=path;
  If OpenPictureDialog1.Execute then
   begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    {ADOQuery1.SQL.Text:='update t_pic set picname='+QuotedStr(OpenPictureDialog1.FileName);
    ADOQuery1.ExecSQL;
   end;}



procedure Tfrm_main.Button1Click(Sender: TObject);
begin
  _taghvim.Label1.Caption:='bbbbb';
  _taghvim.Button2.Visible:=false;
  _taghvim.Button1.Visible:=false;
  _taghvim.Button11.Visible:=false;  
  _taghvim.Button3.Visible:=true;
_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  Frm_login.Egettarikh.Text:=_Taghvim._str_date;
  L_tarikh_roz.Caption:=_Taghvim._str_date;

  L_roze_hafte.Caption:=_Taghvim.roz_hafte;

   MessageBox(Handle,pchar('  «—ÌŒ << '+L_tarikh_roz.Caption+' >> ° »Â ⁄‰Ê«‰  «—ÌŒ «„—Ê“ –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
   frm_moteakherin.empty_moteakherin;
   sleep(5000);
   frm_moteakherin.insert_moteakherin;
end;
end;



procedure Tfrm_main.ToolButton12Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_main.dxWinXbarforoshItems0Click(Sender: TObject);
begin
  frm_data_input.clear;
  frm_data_input.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items0Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=true;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;
  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;

  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems0Click(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=true;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;
  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;
  frm_show_forosh.ShowModal;
  end;
end;

procedure Tfrm_main.dxWinXPBar2Items1Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=true;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

    frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;
  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;

  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items2Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=true;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

    frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;


  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items3Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=true;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

    frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

    frm_show_forosh.Btn_hazfe_forosh.Visible:=false;


  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items4Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=true;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

    frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;  


  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items0Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=true;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;
  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;

  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items1Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=true;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;
  
  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items2Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=true;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;

  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items3Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=true;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;

  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items4Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;

  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=true;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;

  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items5Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;

  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=true;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;
  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items6Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;

  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=true;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;
  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items7Click(Sender: TObject);
begin
  frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;

  frm_show_forosh.Btn_e_t_bime_name.Visible:=true;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;
  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;

  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems1Click(Sender: TObject);
begin
 frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=true;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;
  frm_show_forosh.Btn_hazfe_forosh.Visible:=false;  
  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.ToolButton1Click(Sender: TObject);
var path :string;
begin
  path:=ExtractFilePath(Application.ExeName);
  path:=path;
  OpenPictureDialog1.InitialDir:=path;
  If OpenPictureDialog1.Execute then
   begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    ADOQuery1.SQL.Text:='update t_pic set picname='+QuotedStr(OpenPictureDialog1.FileName);
    ADOQuery1.ExecSQL;
   end;
     
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  ADOQuery1.SQL.Text:='select * from t_pic';
  ADOQuery1.Open;
  Image2.Picture.LoadFromFile(ADOQuery1picname.Text);
end;

procedure Tfrm_main.ToolButton2Click(Sender: TObject);
begin
  frm_dabare.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items8Click(Sender: TObject);
begin
  Frm_login_change.ShowModal;
end;

procedure Tfrm_main.LMDSpeedButton5Click(Sender: TObject);
begin
  ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakarde.Next;
end;

procedure Tfrm_main.LMDSpeedButton6Click(Sender: TObject);
begin
  ADOQ_show_kasani_ke_az_aval_borj_ta_emroz_gest_pardakht_nakarde.Prior;
end;

procedure Tfrm_main.dxWinXPBar3Items0Click(Sender: TObject);
begin
  frm_moteakherin.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems1Click(Sender: TObject);
begin
  frm_forosh_namoaian.clear;
  frm_forosh_namoaian.ShowModal;
end;

procedure Tfrm_main.suiSideChannel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 Frm_login.show_az_avae_borj;
end;

procedure Tfrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_moteakherin.empty_moteakherin;
end;

procedure Tfrm_main.dxWinXPBar2Items5Click(Sender: TObject);
begin
  frm_kharide_motor.ShowModal;
end;

procedure Tfrm_main.dxWinXbarforoshItems2Click(Sender: TObject);
begin
  frm_foroshe_nagdi.clear;
  frm_foroshe_nagdi.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar3Items1Click(Sender: TObject);
begin
  frm_search_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar_gozaresh_koliItems2Click(Sender: TObject);
begin
   Frm_tedad_motor_bar_system.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar2Items6Click(Sender: TObject);
begin
 frm_show_forosh.btn_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_t_sanad.Visible:=false;
  frm_show_forosh.Btn_t_carte_motor.Visible:=false;
  frm_show_forosh.Btn_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_garardade_forosh.Visible:=false;

  frm_show_forosh.btn_gozaresh_pardakhte_gest.Visible:=false;
  frm_show_forosh.Btn_e_t_bime_name.Visible:=false;
  frm_show_forosh.Btn_e_t_sanad.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_sokht.Visible:=false;
  frm_show_forosh.Btn_e_t_carte_motor.Visible:=false;

  frm_show_forosh.btn_e_kharidar.Visible:=false;
  frm_show_forosh.Btn_e_motor.Visible:=false;
  frm_show_forosh.btn_e_mali.Visible:=false;
  frm_show_forosh.btn_e_zemanat.Visible:=false;

  frm_show_forosh.Btn_hazfe_forosh.Visible:=true;  
  frm_show_forosh.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items9Click(Sender: TObject);
begin
 chang_path_of_backup;
end;

procedure Tfrm_main.Timer_backTimer(Sender: TObject);
begin
 autobackup;
end;

procedure Tfrm_main.Button2Click(Sender: TObject);
begin
  autobackup;
end;

procedure Tfrm_main.dxWinXPBar3Items2Click(Sender: TObject);
begin
  frm_view_anbar_motor.ShowModal;
end;

procedure Tfrm_main.dxWinXPBar1Items10Click(Sender: TObject);
begin
  _taghvim.Label1.Caption:='bbbbb';
  _taghvim.Button2.Visible:=false;
  _taghvim.Button1.Visible:=false;
  _taghvim.Button11.Visible:=false;  
  _taghvim.Button3.Visible:=true;
_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  Frm_login.Egettarikh.Text:=_Taghvim._str_date;
  L_tarikh_roz.Caption:=_Taghvim._str_date;

  L_roze_hafte.Caption:=_Taghvim.roz_hafte;

   MessageBox(Handle,pchar('  «—ÌŒ << '+L_tarikh_roz.Caption+' >> ° »Â ⁄‰Ê«‰  «—ÌŒ «„—Ê“ –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
   frm_moteakherin.empty_moteakherin;
   sleep(5000);
   frm_moteakherin.insert_moteakherin;
end;
end;

procedure Tfrm_main.dxWinXPBar2Items7Click(Sender: TObject);
begin
 autobackup;
 MessageBox(Handle,'⁄„·Ì«   ÂÌÂ Å‘ Ì»«‰ «‰Ã«„ ‘œ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

end.
