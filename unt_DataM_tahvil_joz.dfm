object DataM_tahvil_joz: TDataM_tahvil_joz
  OldCreateOrder = False
  Left = 327
  Top = 271
  Height = 184
  Width = 265
  object ADOQ_sanad: TADOQuery
    Active = True
    Connection = DataM_input_data.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_tahvile_sanad')
    Left = 32
    Top = 16
    object ADOQ_sanadcod_forosh: TIntegerField
      FieldName = 'cod_forosh'
    end
    object ADOQ_sanadcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_sanadsanad_tarikh: TWideStringField
      FieldName = 'sanad_tarikh'
      Size = 12
    end
    object ADOQ_sanadsanad_shomare: TWideStringField
      FieldName = 'sanad_shomare'
      Size = 10
    end
    object ADOQ_sanadsanad_tahvil_girande: TWideStringField
      FieldName = 'sanad_tahvil_girande'
      Size = 36
    end
  end
  object ADOQ_carte_sokht: TADOQuery
    Active = True
    Connection = DataM_input_data.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_tahvile_carte_sokht')
    Left = 136
    Top = 16
    object ADOQ_carte_sokhtcod_forosh: TIntegerField
      FieldName = 'cod_forosh'
    end
    object ADOQ_carte_sokhtcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_carte_sokhtcarte_sokht_tarikh: TWideStringField
      FieldName = 'carte_sokht_tarikh'
      Size = 12
    end
    object ADOQ_carte_sokhtcarte_sokht_shomare: TWideStringField
      FieldName = 'carte_sokht_shomare'
    end
    object ADOQ_carte_sokhtcarte_sokht_tahvil_girande: TWideStringField
      FieldName = 'carte_sokht_tahvil_girande'
      Size = 36
    end
  end
  object ADOQ_carte_motor: TADOQuery
    Active = True
    Connection = DataM_input_data.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_tahvile_carte_motor')
    Left = 40
    Top = 88
    object ADOQ_carte_motorcod_forosh: TIntegerField
      FieldName = 'cod_forosh'
    end
    object ADOQ_carte_motorcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_carte_motorcart_tarikh: TWideStringField
      FieldName = 'cart_tarikh'
      Size = 12
    end
    object ADOQ_carte_motorcart_shomare: TWideStringField
      FieldName = 'cart_shomare'
    end
    object ADOQ_carte_motorcart_tahvil_girande: TWideStringField
      FieldName = 'cart_tahvil_girande'
      Size = 36
    end
  end
  object ADOQ_bime: TADOQuery
    Active = True
    Connection = DataM_input_data.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_tahvil_bime')
    Left = 152
    Top = 80
    object ADOQ_bimecod_forosh: TIntegerField
      FieldName = 'cod_forosh'
    end
    object ADOQ_bimecod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_bimebime_tahvil: TWideStringField
      FieldName = 'bime_tahvil'
    end
    object ADOQ_bimebim_tahvigir: TWideStringField
      FieldName = 'bim_tahvigir'
      Size = 36
    end
    object ADOQ_bimebim_tarikh: TWideStringField
      FieldName = 'bim_tarikh'
      Size = 12
    end
    object ADOQ_bimebim_mablagh: TFloatField
      FieldName = 'bim_mablagh'
    end
  end
end
