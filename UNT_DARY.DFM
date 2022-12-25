object frm_daryafte_sode_tagsit: Tfrm_daryafte_sode_tagsit
  Left = 285
  Top = 419
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1583#1585#1610#1575#1601#1578' '#1587#1608#1583' '#1578#1602#1587#1610#1591' '#1576#1585#1575#1610' '#1601#1585#1608#1588' '#1576#1575' '#1578#1602#1587#1610#1591' '#1606#1575#1605#1593#1610#1606
  ClientHeight = 183
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label30: TLabel
    Left = 217
    Top = 79
    Width = 147
    Height = 16
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1576#1575#1602#1610' '#1605#1575#1606#1583#1607' '#1575#1586' '#1587#1608#1583' '#1578#1602#1587#1610#1591':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 251
    Top = 117
    Width = 79
    Height = 16
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578#1610':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_cod: TLabel
    Left = 6
    Top = 152
    Width = 30
    Height = 13
    Caption = 'L_cod'
    Visible = False
  end
  object Label6: TLabel
    Left = 127
    Top = 8
    Width = 118
    Height = 16
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1578#1575#1585#1610#1582' '#1583#1585#1610#1575#1601#1578' '#1662#1585#1583#1575#1582#1578' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_tarikhe_emroz: TLabel
    Left = 28
    Top = 38
    Width = 159
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    BiDiMode = bdRightToLeftReadingOnly
    Caption = 'l_tedad_roz_takhir'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object L_gabele_pardakht: TLabel
    Left = 13
    Top = 78
    Width = 189
    Height = 21
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdRightToLeftReadingOnly
    Caption = 'l_tedad_roz_takhir'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object btn_sabt_pardakht: TButton
    Left = 121
    Top = 153
    Width = 131
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn_sabt_pardakhtClick
  end
  object e_mablagh_pardakhti: TsuiEdit
    Left = 31
    Top = 114
    Width = 153
    Height = 23
    UIStyle = WinXP
    BorderColor = 6842472
    BiDiMode = bdRightToLeft
    Color = clMenu
    Ctl3D = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 9
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnKeyPress = e_mablagh_pardakhtiKeyPress
  end
  object RadioGroup1: TRadioGroup
    Left = 231
    Top = 32
    Width = 119
    Height = 33
    BiDiMode = bdRightToLeft
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1575#1605#1585#1608#1586
      #1594#1610#1585#1607)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup1Click
  end
  object DataSource2: TDataSource
    DataSet = DataM_input_data.ADOQ_show_hame_bar_asase_kholase
    Left = 18
    Top = 7
  end
end
