object frm_data_input2: Tfrm_data_input2
  Left = 278
  Top = 300
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1581#1608#1610#1604' '#1576#1610#1605#1607' '#1606#1575#1605#1607
  ClientHeight = 193
  ClientWidth = 365
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
    365
    193)
  PixelsPerInch = 96
  TextHeight = 13
  object L_cod: TLabel
    Left = 280
    Top = 152
    Width = 30
    Height = 13
    Caption = 'L_cod'
    Visible = False
  end
  object L_type: TLabel
    Left = 296
    Top = 136
    Width = 32
    Height = 13
    Caption = 'L_type'
    Visible = False
  end
  object GroupBox8: TGroupBox
    Left = 7
    Top = 11
    Width = 351
    Height = 152
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Caption = '  '#1588#1585#1575#1610#1591' '#1576#1610#1605#1607' '#1606#1575#1605#1607'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clActiveCaption
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      351
      152)
    object Label55: TLabel
      Left = 241
      Top = 88
      Width = 99
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1578#1581#1608#1610#1604' '#1588#1583'/'#1606#1588#1583':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label38: TLabel
      Left = 241
      Top = 56
      Width = 82
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1578#1581#1608#1610#1604' '#1711#1610#1585#1606#1583#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label40: TLabel
      Left = 241
      Top = 120
      Width = 83
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1578#1575#1585#1610#1582'           :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label41: TLabel
      Left = 150
      Top = 122
      Width = 8
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label42: TLabel
      Left = 86
      Top = 122
      Width = 8
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label1: TLabel
      Left = 241
      Top = 26
      Width = 92
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1605#1576#1604#1594' '#1576#1610#1605#1607' '#1606#1575#1605#1607':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object e_bime: TsuiEdit
      Left = 23
      Top = 85
      Width = 179
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
      MaxLength = 20
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object e_bimename_tahvilgir: TsuiEdit
      Left = 23
      Top = 54
      Width = 179
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
      MaxLength = 35
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object e_roz: TsuiEdit
      Left = 174
      Top = 119
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
      TabOrder = 3
      OnExit = e_rozExit
      OnKeyPress = e_rozKeyPress
    end
    object e_mah: TsuiEdit
      Left = 108
      Top = 119
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
      TabOrder = 4
      OnExit = e_mahExit
      OnKeyPress = e_mahKeyPress
    end
    object e_sal: TsuiEdit
      Left = 23
      Top = 119
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
      TabOrder = 5
      OnKeyPress = e_salKeyPress
    end
    object e_bimename_mablagh: TsuiEdit
      Left = 23
      Top = 23
      Width = 179
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
      MaxLength = 6
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = e_bimename_mablaghKeyPress
    end
  end
  object Button11: TButton
    Left = 126
    Top = 167
    Width = 113
    Height = 25
    Anchors = [akTop]
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button11Click
  end
end
