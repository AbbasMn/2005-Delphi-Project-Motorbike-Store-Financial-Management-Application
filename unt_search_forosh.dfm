object frm_search_forosh: Tfrm_search_forosh
  Left = 6
  Top = 29
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 708
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  DesignSize = (
    1008
    708)
  PixelsPerInch = 96
  TextHeight = 13
  object g_kharidar_family: TGroupBox
    Left = 592
    Top = 5
    Width = 410
    Height = 56
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608' '#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1608#1588' '#1605#1608#1578#1608#1585#1587#1610#1705#1604#1578'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      410
      56)
    object Label38: TLabel
      Left = 252
      Top = 27
      Width = 113
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1582#1585#1610#1583#1575#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_kharidar_family: TsuiEdit
      Left = 88
      Top = 24
      Width = 130
      Height = 23
      UIStyle = WinXP
      BorderColor = 6842472
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clMenu
      Ctl3D = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 15
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = e_kharidar_familyChange
    end
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 593
    Top = 109
    Width = 409
    Height = 595
    TabStop = False
    Anchors = [akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Color = clBtnFace
    Ctl3D = True
    DataSource = DataSource1
    FixedColor = clMenu
    Font.Charset = ARABIC_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    UIStyle = FromThemeFile
    BorderColor = clBlack
    FocusedColor = clNavy
    SelectedColor = clYellow
    FontColor = clBlack
    TitleFontColor = clBlack
    FixedBGColor = clMenu
    BGColor = clBtnFace
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kharidar_family'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1582#1585#1610#1583#1575#1585
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kharidar_name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1585#1610#1583#1575#1585
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'kharidar_pedar'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1662#1583#1585
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'forosh_tarikh'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1601#1585#1608#1588
        Width = 90
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 5
    Width = 586
    Height = 701
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    Caption = ' '#1605#1588#1582#1589#1575#1578' '#1601#1585#1608#1588'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      586
      701)
    object Label11: TLabel
      Left = 192
      Top = 197
      Width = 51
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1587#1610#1587#1578#1605':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label15: TLabel
      Left = 472
      Top = 224
      Width = 27
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1583#1604':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label18: TLabel
      Left = 192
      Top = 224
      Width = 72
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1587#1575#1604' '#1587#1575#1582#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label19: TLabel
      Left = 471
      Top = 253
      Width = 61
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1605#1575#1585#1607' '#1578#1606#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 192
      Top = 253
      Width = 73
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1605#1575#1585#1607' '#1605#1608#1578#1608#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label22: TLabel
      Left = 472
      Top = 290
      Width = 27
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1585#1606#1711':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label13: TLabel
      Left = 191
      Top = 294
      Width = 30
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1662#1604#1575#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 292
      Top = 195
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'motor_name'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText12: TDBText
      Left = 292
      Top = 222
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'motor_model'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText13: TDBText
      Left = 292
      Top = 251
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'motor_shomare_tane'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText14: TDBText
      Left = 292
      Top = 288
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'motor_rang'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText11: TDBText
      Left = 2
      Top = 195
      Width = 173
      Height = 21
      Color = clBtnFace
      DataField = 'motor_system'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText15: TDBText
      Left = 2
      Top = 222
      Width = 173
      Height = 21
      Color = clBtnFace
      DataField = 'motor_sale_sakht'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText16: TDBText
      Left = 2
      Top = 251
      Width = 173
      Height = 21
      Color = clBtnFace
      DataField = 'motor_shomare_motor'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText17: TDBText
      Left = 52
      Top = 280
      Width = 123
      Height = 21
      Alignment = taCenter
      Color = clYellow
      DataField = 'motor_plak_bala'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText18: TDBText
      Left = 80
      Top = 304
      Width = 95
      Height = 21
      Alignment = taCenter
      Color = clWhite
      DataField = 'motor_plak_shahr'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText19: TDBText
      Left = 52
      Top = 304
      Width = 24
      Height = 21
      Alignment = taCenter
      Color = clWhite
      DataField = 'motor_plak_paein'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label53: TLabel
      Left = 477
      Top = 333
      Width = 66
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1575#1585#1610#1582' '#1601#1585#1608#1588':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label23: TLabel
      Left = 192
      Top = 333
      Width = 103
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1602#1610#1605#1578' '#1601#1585#1608#1588' '#1606#1602#1583#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label24: TLabel
      Left = 477
      Top = 361
      Width = 63
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1583#1585#1610#1575#1601#1578' '#1606#1602#1583':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label27: TLabel
      Left = 192
      Top = 361
      Width = 75
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1602#1610#1605#1578'  '#1606#1607#1575#1610#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label25: TLabel
      Left = 198
      Top = 388
      Width = 117
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1583#1585#1589#1583#1587#1608#1583#1602#1587#1591' '#1576#1606#1583#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label30: TLabel
      Left = 199
      Top = 445
      Width = 82
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1576#1575#1602#1610' '#1605#1575#1606#1583#1607' '#1705#1604':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label29: TLabel
      Left = 192
      Top = 418
      Width = 62
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1576#1604#1594' '#1602#1587#1591':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText20: TDBText
      Left = 334
      Top = 331
      Width = 132
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'forosh_tarikh'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText21: TDBText
      Left = 287
      Top = 359
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'forosh_nagd'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText23: TDBText
      Left = 10
      Top = 331
      Width = 173
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      DataField = 'forosh_geymat'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText24: TDBText
      Left = 10
      Top = 359
      Width = 173
      Height = 21
      Alignment = taRightJustify
      Color = clBtnFace
      DataField = 'forosh_geymate_nahaei'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText25: TDBText
      Left = 13
      Top = 443
      Width = 173
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'forosh_bagimande_kol'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText26: TDBText
      Left = 287
      Top = 416
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'forosh_mablaghe_sod'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText27: TDBText
      Left = 82
      Top = 386
      Width = 100
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'forosh_darsad_sod'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText28: TDBText
      Left = 10
      Top = 418
      Width = 173
      Height = 17
      Alignment = taRightJustify
      Color = clBtnFace
      DataField = 'forosh_mablagh_gest'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label14: TLabel
      Left = 478
      Top = 418
      Width = 98
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1576#1604#1594' '#1587#1608#1583#1578#1602#1587#1610#1591':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label31: TLabel
      Left = 480
      Top = 520
      Width = 30
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1576#1575#1606#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label32: TLabel
      Left = 211
      Top = 519
      Width = 36
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1593#1576#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label35: TLabel
      Left = 480
      Top = 540
      Width = 57
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1575#1585#1610#1582' '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label33: TLabel
      Left = 211
      Top = 540
      Width = 34
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1580#1575#1585#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label37: TLabel
      Left = 480
      Top = 562
      Width = 70
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1589#1575#1581#1576'  '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label36: TLabel
      Left = 211
      Top = 562
      Width = 67
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1605#1575#1585#1607' '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label34: TLabel
      Left = 480
      Top = 582
      Width = 56
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1576#1604#1594' '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText29: TDBText
      Left = 287
      Top = 518
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_bank'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText30: TDBText
      Left = 287
      Top = 538
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_tarikh_check'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText31: TDBText
      Left = 287
      Top = 560
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_sab_check'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText32: TDBText
      Left = 287
      Top = 580
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_mablagh_check'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText33: TDBText
      Left = 4
      Top = 518
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_shobe'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText34: TDBText
      Left = 4
      Top = 538
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_jari'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText35: TDBText
      Left = 4
      Top = 560
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_shomare_check'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 473
      Top = 178
      Width = 98
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1588#1582#1589#1575#1578' '#1605#1608#1578#1608#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 430
      Top = 306
      Width = 141
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1588#1582#1589#1575#1578' '#1606#1602#1583' '#1608' '#1578#1602#1587#1610#1591
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label12: TLabel
      Left = 410
      Top = 502
      Width = 161
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1588#1582#1589#1575#1578' '#1670#1705' '#1590#1605#1575#1606#1578' '#1575#1608#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 478
      Top = 50
      Width = 25
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 292
      Top = 48
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'kharidar_name'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 192
      Top = 50
      Width = 76
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 2
      Top = 48
      Width = 173
      Height = 21
      Color = clBtnFace
      DataField = 'kharidar_family'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 477
      Top = 77
      Width = 41
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' '#1662#1583#1585':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 292
      Top = 75
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'kharidar_pedar'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label5: TLabel
      Left = 192
      Top = 77
      Width = 83
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588' '#1588#1606#1575#1587#1606#1575#1605#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 2
      Top = 75
      Width = 173
      Height = 21
      Color = clBtnFace
      DataField = 'kharidar_sh_shenasname'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 477
      Top = 105
      Width = 48
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1589#1575#1583#1585#1607' '#1575#1586':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 292
      Top = 103
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'kharidar_sadere'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 192
      Top = 105
      Width = 56
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 2
      Top = 103
      Width = 173
      Height = 21
      Color = clBtnFace
      DataField = 'kharidar_tavalod'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label17: TLabel
      Left = 192
      Top = 134
      Width = 59
      Height = 16
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1604#1601#1606' '#1579#1575#1576#1578':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 2
      Top = 132
      Width = 173
      Height = 21
      Color = clBtnFace
      DataField = 'kharidar_tele_sabet'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 477
      Top = 134
      Width = 47
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1705#1583' '#1605#1604#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 292
      Top = 132
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'kharidar_cod_meli'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label20: TLabel
      Left = 477
      Top = 161
      Width = 36
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1607#1605#1585#1575#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText10: TDBText
      Left = 292
      Top = 159
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'kharidar_tele_hamrah'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label16: TLabel
      Left = 467
      Top = 26
      Width = 104
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1588#1582#1589#1575#1578' '#1582#1585#1610#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 477
      Top = 467
      Width = 66
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1583' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText36: TDBText
      Left = 354
      Top = 481
      Width = 112
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'tedad_gest_pardakhti'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label28: TLabel
      Left = 477
      Top = 388
      Width = 70
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label44: TLabel
      Left = 477
      Top = 483
      Width = 74
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1662#1585#1583#1575#1582#1578' '#1588#1583#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label43: TLabel
      Left = 199
      Top = 483
      Width = 63
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1576#1575#1602#1610' '#1605#1575#1606#1583#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText38: TDBText
      Left = 79
      Top = 481
      Width = 112
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'tedad_gest_mande'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label45: TLabel
      Left = 199
      Top = 467
      Width = 66
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1583' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label26: TLabel
      Left = 478
      Top = 445
      Width = 95
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1585#1608#1586' '#1662#1585#1583#1575#1582#1578' '#1602#1587#1591':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText39: TDBText
      Left = 448
      Top = 443
      Width = 20
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'roze_pardakhte_gest'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label39: TLabel
      Left = 393
      Top = 445
      Width = 50
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1575#1605' '#1607#1585' '#1605#1575#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText22: TDBText
      Left = 354
      Top = 386
      Width = 112
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'forosh_tedad_gest'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label40: TLabel
      Left = 211
      Top = 582
      Width = 66
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1604#1601#1606' '#1590#1575#1605#1606':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText37: TDBText
      Left = 4
      Top = 580
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_telephon'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 475
      Top = 197
      Width = 104
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' '#1588#1585#1705#1578' '#1587#1575#1586#1606#1583#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label42: TLabel
      Left = 192
      Top = 166
      Width = 58
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1705#1583' '#1662#1587#1578#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText40: TDBText
      Left = 2
      Top = 164
      Width = 173
      Height = 21
      Anchors = [akTop]
      Color = clBtnFace
      DataField = 'kharidar_code_posti'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label46: TLabel
      Left = 408
      Top = 598
      Width = 163
      Height = 16
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1588#1582#1589#1575#1578' '#1670#1705' '#1590#1605#1575#1606#1578' '#1583#1608#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label47: TLabel
      Left = 488
      Top = 616
      Width = 30
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1576#1575#1606#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText41: TDBText
      Left = 295
      Top = 614
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_bank'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label48: TLabel
      Left = 219
      Top = 615
      Width = 36
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1593#1576#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText42: TDBText
      Left = 12
      Top = 614
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_shobe'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText43: TDBText
      Left = 12
      Top = 634
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_jari'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText44: TDBText
      Left = 12
      Top = 656
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_shomare_check'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText45: TDBText
      Left = 12
      Top = 676
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_telephon'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label49: TLabel
      Left = 219
      Top = 678
      Width = 66
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1604#1601#1606' '#1590#1575#1605#1606':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label50: TLabel
      Left = 219
      Top = 658
      Width = 67
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1588#1605#1575#1585#1607' '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label51: TLabel
      Left = 219
      Top = 636
      Width = 34
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1580#1575#1585#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object DBText46: TDBText
      Left = 295
      Top = 634
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_tarikh_check'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText47: TDBText
      Left = 295
      Top = 656
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_sab_check'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object DBText48: TDBText
      Left = 295
      Top = 676
      Width = 178
      Height = 21
      Alignment = taRightJustify
      Anchors = [akTop]
      BiDiMode = bdRightToLeftReadingOnly
      Color = clBtnFace
      DataField = 'zemanat_mablagh_check'
      DataSource = DataSource3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
    end
    object Label52: TLabel
      Left = 488
      Top = 678
      Width = 56
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1605#1576#1604#1594' '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label54: TLabel
      Left = 488
      Top = 658
      Width = 70
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1589#1575#1581#1576'  '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label55: TLabel
      Left = 488
      Top = 636
      Width = 57
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1578#1575#1585#1610#1582' '#1670#1705':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
  end
  object btn_gozaresh_pardakhte_gest: TButton
    Left = 808
    Top = 72
    Width = 160
    Height = 25
    Caption = #1711#1586#1575#1585#1588' '#1662#1585#1583#1575#1582#1578' '#1575#1602#1587#1575#1591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn_gozaresh_pardakhte_gestClick
  end
  object Btn_garardade_forosh: TButton
    Left = 633
    Top = 72
    Width = 160
    Height = 25
    Caption = #1605#1578#1606' '#1602#1585#1575#1585' '#1583#1575#1583' '#1601#1585#1608#1588
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Btn_garardade_foroshClick
  end
  object DataSource2: TDataSource
    DataSet = DataM_input_data.ADOQ_show_hame_bar_asase_kholase
    Left = 18
    Top = 23
  end
  object DataSource1: TDataSource
    DataSet = DataM_input_data.ADOQ_show_kholase_forosh
    Left = 702
    Top = 320
  end
  object DataSource3: TDataSource
    DataSet = DataM_input_data.ADOQ_check_dovom
    Left = 58
    Top = 629
  end
end
