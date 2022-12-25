unit unt_DataM_agsat;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_agsat = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQ_pardakht_gest: TADOQuery;
    ADOQ_pardakht_gestpardakht_tarikh: TWideStringField;
    ADOQ_pardakht_gestpardakht_mablagh: TFloatField;
    ADOQ_pardakht_gestpardakht_tozih: TWideStringField;
    ADOQ_pardakht_gestpardakht_cod_forosh: TFloatField;
    ADOQ_pardakht_gestcod: TAutoIncField;
    ADOQ_jame_mabalegh_pardakh_shode_gest: TADOQuery;
    ADOQ_jame_mabalegh_pardakh_shode_gestkol_pardakht: TFloatField;
    ADOQ_pardakht_gesttedad_roze_takhir: TIntegerField;
    ADOQ_pardakht_gestjarime_baraye_har_roz: TFloatField;
    ADOQ_pardakht_gestjarime_takhir: TFloatField;
    ADOQ_show_pardakhthaye_gest: TADOQuery;
    WideStringField1: TWideStringField;
    FloatField1: TFloatField;
    WideStringField2: TWideStringField;
    FloatField2: TFloatField;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    ADOQ_pardakht_gestmablagh_bede_talab: TFloatField;
    ADOQ_pardakht_gestbede_talab: TWideStringField;
    ADOQ_show_pardakhthaye_gestmablagh_bede_talab: TFloatField;
    ADOQ_show_pardakhthaye_gestbede_talab: TWideStringField;
    ADOQ_find_moteakherin: TADOQuery;
    ADOQ_find_moteakherinkharidar_name: TWideStringField;
    ADOQ_find_moteakherinkharidar_family: TWideStringField;
    ADOQ_find_moteakherintarikh_pardakht_geste_badi: TWideStringField;
    ADOQ_find_moteakherinroze_pardakhte_gest: TWideStringField;
    ADOQ_find_moteakherintedad_gest_mande: TIntegerField;
    ADOQ_find_moteakherintedad_gest_pardakhti: TIntegerField;
    ADOQ_find_moteakherinforosh_tedad_gest: TSmallintField;
    ADOQ_insert_moteakherin: TADOQuery;
    ADOQ_insert_moteakherinkharidar_name: TWideStringField;
    ADOQ_insert_moteakherinkharidar_family: TWideStringField;
    ADOQ_insert_moteakherintarikh_pardakht_geste_badi: TWideStringField;
    ADOQ_insert_moteakherinroze_pardakhte_gest: TWideStringField;
    ADOQ_insert_moteakherintedad_gest_mande: TIntegerField;
    ADOQ_insert_moteakherintedad_gest_pardakhti: TIntegerField;
    ADOQ_insert_moteakherinforosh_tedad_gest: TIntegerField;
    ADOQ_insert_moteakherintedade_mahaye_takhir: TIntegerField;
    ADOQ_insert_moteakherincod: TAutoIncField;
    ADOQ_find_moteakherinforosh_tarikh: TWideStringField;
    ADOQ_insert_moteakherinforosh_tarikh: TWideStringField;
    ADOQ_insert_moteakherinkharidar_tele_sabet: TWideStringField;
    ADOQ_insert_moteakherinkharidar_tele_hamrah: TWideStringField;
    ADOQ_insert_moteakherinkharidar_adress: TWideStringField;
    ADOQ_find_moteakherinkharidar_tele_sabet: TWideStringField;
    ADOQ_find_moteakherinkharidar_tele_hamrah: TWideStringField;
    ADOQ_find_moteakherinkharidar_adress: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_agsat: TDataM_agsat;

implementation

{$R *.dfm}

end.
