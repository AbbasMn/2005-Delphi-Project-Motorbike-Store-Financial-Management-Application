object frm_tahvil_sanad: Tfrm_tahvil_sanad
  Left = 356
  Top = 301
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1578#1581#1608#1610#1604' '#1587#1606#1583' '#1605#1608#1578#1608#1585' '#1587#1610#1705#1604#1578
  ClientHeight = 170
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
    170)
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
  object GroupBox5: TGroupBox
    Left = 7
    Top = 11
    Width = 351
    Height = 124
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    Caption = '  '#1585#1587#1610#1583' '#1587#1606#1583' '#1605#1608#1578#1608#1585' '#1587#1610#1705#1604#1578'  '
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
      124)
    object Label39: TLabel
      Left = 254
      Top = 63
      Width = 82
      Height = 16
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      Caption = '*'#1588#1605#1575#1585#1607' '#1587#1606#1583' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label40: TLabel
      Left = 254
      Top = 95
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
    object Label38: TLabel
      Left = 254
      Top = 31
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
    object Label41: TLabel
      Left = 150
      Top = 97
      Width = 8
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object Label42: TLabel
      Left = 86
      Top = 97
      Width = 8
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '/'
    end
    object e_sanad_shomare: TsuiEdit
      Left = 23
      Top = 60
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
      MaxLength = 10
      ParentBiDiMode = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object e_sanad_tahvilgir: TsuiEdit
      Left = 23
      Top = 29
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
      TabOrder = 0
      Text = #1578#1581#1608#1610#1604' '#1583#1575#1583#1607' '#1606#1588#1583#1607
    end
    object e_sanad_roz: TsuiEdit
      Left = 174
      Top = 94
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
      TabOrder = 2
      OnExit = e_sanad_rozExit
      OnKeyPress = e_sanad_rozKeyPress
    end
    object e_sanad_mah: TsuiEdit
      Left = 108
      Top = 94
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
      OnExit = e_sanad_mahExit
      OnKeyPress = e_sanad_mahKeyPress
    end
    object e_sanad_sal: TsuiEdit
      Left = 23
      Top = 94
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
      TabOrder = 4
      OnExit = e_sanad_salExit
      OnKeyPress = e_sanad_salKeyPress
    end
  end
  object Button11: TButton
    Left = 126
    Top = 142
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
