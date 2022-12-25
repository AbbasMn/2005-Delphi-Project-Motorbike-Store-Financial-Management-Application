unit unt_DataM_tahvil_joz;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_tahvil_joz = class(TDataModule)
    ADOQ_sanad: TADOQuery;
    ADOQ_sanadcod_forosh: TIntegerField;
    ADOQ_sanadcod: TAutoIncField;
    ADOQ_sanadsanad_tarikh: TWideStringField;
    ADOQ_sanadsanad_shomare: TWideStringField;
    ADOQ_sanadsanad_tahvil_girande: TWideStringField;
    ADOQ_carte_sokht: TADOQuery;
    ADOQ_carte_sokhtcod_forosh: TIntegerField;
    ADOQ_carte_sokhtcod: TAutoIncField;
    ADOQ_carte_sokhtcarte_sokht_tarikh: TWideStringField;
    ADOQ_carte_sokhtcarte_sokht_shomare: TWideStringField;
    ADOQ_carte_sokhtcarte_sokht_tahvil_girande: TWideStringField;
    ADOQ_carte_motor: TADOQuery;
    ADOQ_bime: TADOQuery;
    ADOQ_bimecod_forosh: TIntegerField;
    ADOQ_bimecod: TAutoIncField;
    ADOQ_bimebime_tahvil: TWideStringField;
    ADOQ_carte_motorcod_forosh: TIntegerField;
    ADOQ_carte_motorcod: TAutoIncField;
    ADOQ_carte_motorcart_tarikh: TWideStringField;
    ADOQ_carte_motorcart_shomare: TWideStringField;
    ADOQ_carte_motorcart_tahvil_girande: TWideStringField;
    ADOQ_bimebim_tahvigir: TWideStringField;
    ADOQ_bimebim_tarikh: TWideStringField;
    ADOQ_bimebim_mablagh: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_tahvil_joz: TDataM_tahvil_joz;

implementation

uses Unt_datam_input_data;

{$R *.dfm}

end.
