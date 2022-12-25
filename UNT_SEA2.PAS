unit unt_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, SUIEdit;

type
  Tfrm_search = class(TForm)
    G_motor_system: TGroupBox;
    Label40: TLabel;
    e_motor_system: TsuiEdit;
    G_tarikh_forosh: TGroupBox;
    Label39: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    e_fo_roz: TsuiEdit;
    e_fo_mah: TsuiEdit;
    e_fo_sal: TsuiEdit;
    RadioGroup1: TRadioGroup;
    g_kharidar_family: TGroupBox;
    Label38: TLabel;
    e_kharidar_family: TsuiEdit;
    G_motor_nam: TGroupBox;
    Label55: TLabel;
    e_motor_name: TsuiEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_search: Tfrm_search;

implementation

{$R *.dfm}

end.
