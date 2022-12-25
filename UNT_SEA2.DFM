object frm_search: Tfrm_search
  Left = 182
  Top = 214
  Width = 486
  Height = 480
  Caption = 'frm_search'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    478
    446)
  PixelsPerInch = 96
  TextHeight = 13
  object G_motor_system: TGroupBox
    Left = 5
    Top = 7
    Width = 427
    Height = 79
    Anchors = [akLeft, akTop, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1587#1610#1587#1578#1605' '#1605#1608#1578#1608#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      427
      79)
    object Label40: TLabel
      Left = 269
      Top = 35
      Width = 87
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1587#1610#1587#1578#1605' '#1605#1608#1578#1608#1585' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_motor_system: TsuiEdit
      Left = 105
      Top = 32
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
    end
  end
  object G_tarikh_forosh: TGroupBox
    Left = 5
    Top = 263
    Width = 427
    Height = 79
    Anchors = [akLeft, akTop, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '#1601#1585#1608#1588'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      427
      79)
    object Label39: TLabel
      Left = 269
      Top = 35
      Width = 66
      Height = 16
      Anchors = [akTop, akRight]
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
    object Label54: TLabel
      Left = 230
      Top = 35
      Width = 5
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label56: TLabel
      Left = 188
      Top = 35
      Width = 5
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object e_fo_roz: TsuiEdit
      Left = 237
      Top = 32
      Width = 28
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
      MaxLength = 2
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object e_fo_mah: TsuiEdit
      Left = 194
      Top = 32
      Width = 28
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
      MaxLength = 2
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object e_fo_sal: TsuiEdit
      Left = 135
      Top = 32
      Width = 47
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
      MaxLength = 4
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 45
    Top = 369
    Width = 427
    Height = 70
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1608#1593' '#1580#1587#1578#1580#1608' '#1583#1585' '#1601#1585#1608#1588#1607#1575#1610' '#1579#1576#1578' '#1588#1583#1607'  '
    Columns = 2
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 4
    Items.Strings = (
      #1576#1585#1575#1587#1575#1587' '#1606#1575#1605' '#1605#1608#1578#1608#1585
      #1576#1585#1575#1587#1575#1587' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1582#1585#1610#1583#1575#1585
      #1576#1585#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '#1601#1585#1608#1588
      #1576#1585#1575#1587#1575#1587' '#1587#1610#1587#1578#1605' '#1605#1608#1578#1608#1585
      #1607#1605#1607' '#1601#1585#1608#1588#1607#1575)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
  end
  object g_kharidar_family: TGroupBox
    Left = 5
    Top = 87
    Width = 427
    Height = 79
    Anchors = [akLeft, akTop, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1582#1585#1610#1583#1575#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      427
      79)
    object Label38: TLabel
      Left = 269
      Top = 35
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
      Left = 105
      Top = 32
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
    end
  end
  object G_motor_nam: TGroupBox
    Left = 5
    Top = 175
    Width = 427
    Height = 79
    Anchors = [akLeft, akTop, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1605#1608#1578#1608#1585'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 4
    DesignSize = (
      427
      79)
    object Label55: TLabel
      Left = 269
      Top = 35
      Width = 57
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = #1606#1575#1605' '#1605#1608#1578#1608#1585' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_motor_name: TsuiEdit
      Left = 105
      Top = 32
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
    end
  end
end
