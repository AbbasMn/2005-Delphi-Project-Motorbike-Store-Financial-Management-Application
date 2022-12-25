unit unt_moteakherin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SUIDBCtrls, DB, StdCtrls, ExtCtrls, DBCtrls;

type
  Tfrm_moteakherin = class(TForm)
    suiDBGrid1: TsuiDBGrid;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    Label10: TLabel;
    DBText7: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    procedure insert_moteakherin;
    procedure FormShow(Sender: TObject);
    procedure show_moteakherin_with_family;
    procedure show_moteakherin_with_tedad_mahe_takhir_decrese;
    procedure show_moteakherin_with_tedad_mahe_takhir_increse;
    procedure type_show;
    procedure RadioGroup1Click(Sender: TObject);
    procedure empty_moteakherin;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_moteakherin: Tfrm_moteakherin;

implementation

uses unt_DataM_agsat, unt_main;

{$R *.dfm}
procedure Tfrm_moteakherin.empty_moteakherin;
begin
   DataM_agsat.ADOQ_insert_moteakherin.SQL.Text:='delete from t_moteakherin ';
  DataM_agsat.ADOQ_insert_moteakherin.ExecSQL;
end;
procedure Tfrm_moteakherin.type_show;
begin
  if RadioGroup1.ItemIndex=0 then
    show_moteakherin_with_tedad_mahe_takhir_increse;

  if RadioGroup1.ItemIndex=1 then
    show_moteakherin_with_tedad_mahe_takhir_decrese;

  if RadioGroup1.ItemIndex=2 then
    show_moteakherin_with_family;
end;
procedure Tfrm_moteakherin.show_moteakherin_with_family;
begin
  DataM_agsat.ADOQ_insert_moteakherin.SQL.Text:='select * from t_moteakherin where tedade_mahaye_takhir>0 order by kharidar_family,kharidar_name';
  DataM_agsat.ADOQ_insert_moteakherin.open;
end;
procedure Tfrm_moteakherin.show_moteakherin_with_tedad_mahe_takhir_increse;
begin
  DataM_agsat.ADOQ_insert_moteakherin.SQL.Text:='select * from t_moteakherin where tedade_mahaye_takhir>0 order by tedade_mahaye_takhir desc';
  DataM_agsat.ADOQ_insert_moteakherin.open;
end;
procedure Tfrm_moteakherin.show_moteakherin_with_tedad_mahe_takhir_decrese;
begin
  DataM_agsat.ADOQ_insert_moteakherin.SQL.Text:='select * from t_moteakherin where tedade_mahaye_takhir>0 order by tedade_mahaye_takhir ';
  DataM_agsat.ADOQ_insert_moteakherin.open;
end;
procedure Tfrm_moteakherin.insert_moteakherin;
begin
   DataM_agsat.ADOQ_find_moteakherin.SQL.Text:='select '+
  'kharidar_name,kharidar_family,tarikh_pardakht_geste_badi,roze_pardakhte_gest,tedad_gest_mande,tedad_gest_pardakhti,forosh_tarikh,'+
  'forosh_tedad_gest,kharidar_adress,kharidar_tele_hamrah,kharidar_tele_sabet'+
  ' from T_moshakhasate_forosh where tarikh_pardakht_geste_badi<='+QuotedStr(frm_main.L_tarikh_roz.Caption)+' and tedad_gest_mande > 0 ';
  DataM_agsat.ADOQ_find_moteakherin.Open;

  if DataM_agsat.ADOQ_find_moteakherin.recordcount >0 then
  begin
    DataM_agsat.ADOQ_find_moteakherin.first;
    while not DataM_agsat.ADOQ_find_moteakherin.Eof do
    begin
      DataM_agsat.ADOQ_insert_moteakherin.SQL.Text:='insert into t_moteakherin(kharidar_name,'+
      'kharidar_family,tarikh_pardakht_geste_badi'+
      ',roze_pardakhte_gest,tedad_gest_mande,'+
      'tedad_gest_pardakhti,forosh_tedad_gest,tedade_mahaye_takhir,'+
      'forosh_tarikh,kharidar_adress,kharidar_tele_hamrah,kharidar_tele_sabet)'+

      ' values('+QuotedStr(DataM_agsat.ADOQ_find_moteakherinkharidar_name.AsString)+','+QuotedStr(DataM_agsat.ADOQ_find_moteakherinkharidar_family.AsString)+
      ','+QuotedStr(DataM_agsat.ADOQ_find_moteakherintarikh_pardakht_geste_badi.AsString)+','+QuotedStr(DataM_agsat.ADOQ_find_moteakherinroze_pardakhte_gest.AsString)+
      ','+DataM_agsat.ADOQ_find_moteakherintedad_gest_mande.AsString+','+DataM_agsat.ADOQ_find_moteakherintedad_gest_pardakhti.AsString+
      ','+DataM_agsat.ADOQ_find_moteakherinforosh_tedad_gest.AsString+

      ','+IntToStr(round(frm_main.tedad_roze_beine_do_tarikh(DataM_agsat.ADOQ_find_moteakherintarikh_pardakht_geste_badi.AsString,frm_main.L_tarikh_roz.Caption)/30))+
      ','+QuotedStr(DataM_agsat.ADOQ_find_moteakherinforosh_tarikh.AsString)+
      ','+QuotedStr(DataM_agsat.ADOQ_find_moteakherinkharidar_adress.AsString)+
      ','+QuotedStr(DataM_agsat.ADOQ_find_moteakherinkharidar_tele_hamrah.AsString)+
      ','+QuotedStr(DataM_agsat.ADOQ_find_moteakherinkharidar_tele_sabet.AsString)+
      ')';
      DataM_agsat.ADOQ_insert_moteakherin.ExecSQL;
      DataM_agsat.ADOQ_find_moteakherin.Next;

    end;
  end;
end;

procedure Tfrm_moteakherin.FormShow(Sender: TObject);
begin
  frm_moteakherin.WindowState:=wsMaximized;
  RadioGroup1.ItemIndex:=0;
  type_show;
end;

procedure Tfrm_moteakherin.RadioGroup1Click(Sender: TObject);
begin
type_show;
end;

end.

