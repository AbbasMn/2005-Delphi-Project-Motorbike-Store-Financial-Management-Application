unit unt_search_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, Grids, DBGrids, SUIDBCtrls, StdCtrls, SUIEdit;

type
  Tfrm_search_forosh = class(TForm)
    g_kharidar_family: TGroupBox;
    Label38: TLabel;
    e_kharidar_family: TsuiEdit;
    suiDBGrid1: TsuiDBGrid;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    DBText7: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText11: TDBText;
    DBText15: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    Label53: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    Label14: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    Label36: TLabel;
    Label34: TLabel;
    DBText29: TDBText;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    Label1: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    Label5: TLabel;
    DBText4: TDBText;
    Label6: TLabel;
    DBText8: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label17: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    DBText9: TDBText;
    Label20: TLabel;
    DBText10: TDBText;
    Label16: TLabel;
    Label41: TLabel;
    DBText36: TDBText;
    Label28: TLabel;
    Label44: TLabel;
    Label43: TLabel;
    DBText38: TDBText;
    Label45: TLabel;
    Label26: TLabel;
    DBText39: TDBText;
    Label39: TLabel;
    DBText22: TDBText;
    Label40: TLabel;
    DBText37: TDBText;
    Label10: TLabel;
    DataSource2: TDataSource;
    Label42: TLabel;
    DBText40: TDBText;
    Label46: TLabel;
    Label47: TLabel;
    DBText41: TDBText;
    Label48: TLabel;
    DBText42: TDBText;
    DBText43: TDBText;
    DBText44: TDBText;
    DBText45: TDBText;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBText46: TDBText;
    DBText47: TDBText;
    DBText48: TDBText;
    Label52: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    btn_gozaresh_pardakhte_gest: TButton;
    Btn_garardade_forosh: TButton;
    procedure FormShow(Sender: TObject);
    procedure e_kharidar_familyChange(Sender: TObject);
    procedure Btn_garardade_foroshClick(Sender: TObject);
    procedure btn_gozaresh_pardakhte_gestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_search_forosh: Tfrm_search_forosh;

implementation

uses Unt_datam_input_data, unt_show_forosh, unt_print_matne_forosh,
  unt_print_pardakhte_gest, unt_pardakht_gest;

{$R *.dfm}

procedure Tfrm_search_forosh.FormShow(Sender: TObject);
begin
 frm_search_forosh.WindowState:=wsMaximized;
 frm_show_forosh.show_kholase_foroshha;
 if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount>0 then
  frm_show_forosh.show_hame_bar_asase_kholase_foroshha;
end;

procedure Tfrm_search_forosh.e_kharidar_familyChange(Sender: TObject);
begin
  DataM_input_data.ADOQ_show_kholase_forosh.Locate('kharidar_family',e_kharidar_family.Text,[loPartialKey]);
end;

procedure Tfrm_search_forosh.Btn_garardade_foroshClick(Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
  frm_print_matne_forosh.QuickRep1.Preview;
  end;
end;

procedure Tfrm_search_forosh.btn_gozaresh_pardakhte_gestClick(
  Sender: TObject);
begin
  if DataM_input_data.ADOQ_show_kholase_forosh.RecordCount=0 then
     MessageBox(Handle,'›—Ê‘ „Ê Ê— ”Ìò·  «‰ Œ«» ‰‘œÂ «” ','!Œÿ«',MB_OK or MB_RIGHT or MB_ICONEXCLAMATION)
  else
  begin
      frm_print_pardakhte_gest.QuickRep1.Preview;
  end;
end;

end.
