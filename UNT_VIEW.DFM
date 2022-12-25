object frm_view_anbar_motor: Tfrm_view_anbar_motor
  Left = 230
  Top = 180
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1605#1588#1575#1607#1583#1607' '#1604#1610#1587#1578' '#1605#1608#1578#1608#1585#1607#1575
  ClientHeight = 446
  ClientWidth = 688
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
    688
    446)
  PixelsPerInch = 96
  TextHeight = 13
  object Label13: TLabel
    Left = 203
    Top = 20
    Width = 190
    Height = 16
    Anchors = [akTop]
    BiDiMode = bdRightToLeftReadingOnly
    Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1662#1604#1575#1705' '#1576#1575#1604#1575':'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object suiDBGrid1: TsuiDBGrid
    Left = 3
    Top = 87
    Width = 681
    Height = 358
    TabStop = False
    Anchors = [akLeft, akTop, akRight, akBottom]
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
    TabOrder = 0
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
        FieldName = 'motor_name'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1605#1608#1578#1608#1585
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_system'
        Title.Alignment = taCenter
        Title.Caption = #1587#1610#1587#1578#1605' '#1605#1608#1578#1608#1585
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_plak_shahr'
        Title.Alignment = taCenter
        Title.Caption = #1662#1604#1575#1705'-'#1588#1607#1585
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_plak_bala'
        Title.Alignment = taCenter
        Title.Caption = #1662#1604#1575#1705'-'#1576#1575#1604#1575
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_plak_paein'
        Title.Alignment = taCenter
        Title.Caption = #1662#1604#1575#1705'-'#1662#1575#1610#1610#1606
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_rang'
        Title.Alignment = taCenter
        Title.Caption = #1585#1606#1711
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_shomare_motor'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1605#1608#1578#1608#1585
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_shomare_tane'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1606#1607
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_sale_sakht'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1604' '#1587#1575#1582#1578
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_model'
        Title.Alignment = taCenter
        Title.Caption = #1605#1583#1604
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'motor_forosh'
        Title.Alignment = taCenter
        Title.Caption = #1608#1590#1593#1610#1578' '#1601#1585#1608#1588
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 425
    Top = 8
    Width = 257
    Height = 76
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '  '#1575#1606#1578#1582#1575#1576' '#1606#1581#1608#1607' '#1606#1605#1575#1610#1588' '#1604#1610#1587#1578' '#1605#1608#1578#1608#1585#1607#1575'  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      #1606#1605#1575#1610#1588' '#1605#1608#1578#1608#1585#1607#1575#1610' '#1601#1585#1608#1582#1578#1607' '#1588#1583#1607' / '#1606#1588#1583#1607
      #1606#1605#1575#1610#1588' '#1605#1608#1578#1608#1585#1607#1575#1610' '#1601#1585#1608#1582#1578#1607' '#1588#1583#1607' '
      #1606#1605#1575#1610#1588' '#1605#1608#1578#1608#1585#1607#1575#1610' '#1601#1585#1608#1582#1578#1607' '#1606#1588#1583#1607)
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object e_motor_plak_bala: TsuiEdit
    Left = 233
    Top = 50
    Width = 130
    Height = 23
    UIStyle = WinXP
    BorderColor = 6842472
    Anchors = [akTop]
    BiDiMode = bdRightToLeft
    Color = clYellow
    Ctl3D = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 5
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnChange = e_motor_plak_balaChange
    OnKeyPress = e_motor_plak_balaKeyPress
  end
  object Bt: TButton
    Left = 8
    Top = 8
    Width = 161
    Height = 25
    Caption = #1575#1589#1604#1575#1581' '#1605#1588#1582#1589#1575#1578' '#1605#1608#1578#1608#1585' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BtClick
  end
  object Button1: TButton
    Left = 8
    Top = 59
    Width = 161
    Height = 25
    Caption = #1581#1584#1601' '#1605#1588#1582#1589#1575#1578' '#1605#1608#1578#1608#1585' '#1575#1606#1578#1582#1575#1576#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object DataSource1: TDataSource
    DataSet = DataM_input_data.ADOQ_kharid_motor
    Left = 312
    Top = 144
  end
end
