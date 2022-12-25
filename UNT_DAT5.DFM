object DataM_agsat: TDataM_agsat
  OldCreateOrder = False
  Left = 263
  Top = 252
  Height = 268
  Width = 663
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=motocycel.mdb;Persi' +
      'st Security Info=False;Jet OLEDB:Database Password=8045370492413' +
      '36'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 16
  end
  object ADOQ_pardakht_gest: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_gest')
    Left = 144
    Top = 16
    object ADOQ_pardakht_gestpardakht_tarikh: TWideStringField
      FieldName = 'pardakht_tarikh'
      Size = 12
    end
    object ADOQ_pardakht_gestpardakht_mablagh: TFloatField
      FieldName = 'pardakht_mablagh'
    end
    object ADOQ_pardakht_gestpardakht_tozih: TWideStringField
      FieldName = 'pardakht_tozih'
      Size = 100
    end
    object ADOQ_pardakht_gestpardakht_cod_forosh: TFloatField
      FieldName = 'pardakht_cod_forosh'
    end
    object ADOQ_pardakht_gestcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_pardakht_gesttedad_roze_takhir: TIntegerField
      FieldName = 'tedad_roze_takhir'
    end
    object ADOQ_pardakht_gestjarime_baraye_har_roz: TFloatField
      FieldName = 'jarime_baraye_har_roz'
    end
    object ADOQ_pardakht_gestjarime_takhir: TFloatField
      FieldName = 'jarime_takhir'
    end
    object ADOQ_pardakht_gestmablagh_bede_talab: TFloatField
      FieldName = 'mablagh_bede_talab'
    end
    object ADOQ_pardakht_gestbede_talab: TWideStringField
      FieldName = 'bede_talab'
      Size = 7
    end
  end
  object ADOQ_jame_mabalegh_pardakh_shode_gest: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(pardakht_mablagh) as kol_pardakht'
      ' from T_pardakht_gest')
    Left = 112
    Top = 72
    object ADOQ_jame_mabalegh_pardakh_shode_gestkol_pardakht: TFloatField
      FieldName = 'kol_pardakht'
    end
  end
  object ADOQ_show_pardakhthaye_gest: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_pardakht_gest')
    Left = 88
    Top = 152
    object WideStringField1: TWideStringField
      FieldName = 'pardakht_tarikh'
      Size = 12
    end
    object FloatField1: TFloatField
      FieldName = 'pardakht_mablagh'
    end
    object WideStringField2: TWideStringField
      FieldName = 'pardakht_tozih'
      Size = 100
    end
    object FloatField2: TFloatField
      FieldName = 'pardakht_cod_forosh'
    end
    object AutoIncField1: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'tedad_roze_takhir'
    end
    object FloatField3: TFloatField
      FieldName = 'jarime_baraye_har_roz'
    end
    object FloatField4: TFloatField
      FieldName = 'jarime_takhir'
    end
    object ADOQ_show_pardakhthaye_gestmablagh_bede_talab: TFloatField
      FieldName = 'mablagh_bede_talab'
    end
    object ADOQ_show_pardakhthaye_gestbede_talab: TWideStringField
      FieldName = 'bede_talab'
      Size = 7
    end
  end
  object ADOQ_find_moteakherin: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'kharidar_name,'
      'kharidar_family,'
      'tarikh_pardakht_geste_badi,'
      'roze_pardakhte_gest,'
      'tedad_gest_mande,'
      'tedad_gest_pardakhti,'
      'forosh_tedad_gest,'
      'forosh_tarikh,'
      'kharidar_tele_sabet,'
      'kharidar_tele_hamrah,'
      'kharidar_adress'
      ''
      ' from T_moshakhasate_forosh')
    Left = 456
    Top = 40
    object ADOQ_find_moteakherinkharidar_name: TWideStringField
      FieldName = 'kharidar_name'
      Size = 15
    end
    object ADOQ_find_moteakherinkharidar_family: TWideStringField
      FieldName = 'kharidar_family'
    end
    object ADOQ_find_moteakherintarikh_pardakht_geste_badi: TWideStringField
      FieldName = 'tarikh_pardakht_geste_badi'
      Size = 30
    end
    object ADOQ_find_moteakherinroze_pardakhte_gest: TWideStringField
      FieldName = 'roze_pardakhte_gest'
      Size = 2
    end
    object ADOQ_find_moteakherintedad_gest_mande: TIntegerField
      FieldName = 'tedad_gest_mande'
    end
    object ADOQ_find_moteakherintedad_gest_pardakhti: TIntegerField
      FieldName = 'tedad_gest_pardakhti'
    end
    object ADOQ_find_moteakherinforosh_tedad_gest: TSmallintField
      FieldName = 'forosh_tedad_gest'
    end
    object ADOQ_find_moteakherinforosh_tarikh: TWideStringField
      FieldName = 'forosh_tarikh'
      Size = 12
    end
    object ADOQ_find_moteakherinkharidar_tele_sabet: TWideStringField
      FieldName = 'kharidar_tele_sabet'
      Size = 12
    end
    object ADOQ_find_moteakherinkharidar_tele_hamrah: TWideStringField
      FieldName = 'kharidar_tele_hamrah'
      Size = 12
    end
    object ADOQ_find_moteakherinkharidar_adress: TWideStringField
      FieldName = 'kharidar_adress'
      Size = 100
    end
  end
  object ADOQ_insert_moteakherin: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  * from t_moteakherin')
    Left = 448
    Top = 160
    object ADOQ_insert_moteakherinkharidar_name: TWideStringField
      FieldName = 'kharidar_name'
      Size = 15
    end
    object ADOQ_insert_moteakherinkharidar_family: TWideStringField
      FieldName = 'kharidar_family'
    end
    object ADOQ_insert_moteakherintarikh_pardakht_geste_badi: TWideStringField
      FieldName = 'tarikh_pardakht_geste_badi'
      Size = 12
    end
    object ADOQ_insert_moteakherinroze_pardakhte_gest: TWideStringField
      FieldName = 'roze_pardakhte_gest'
      Size = 2
    end
    object ADOQ_insert_moteakherintedad_gest_mande: TIntegerField
      FieldName = 'tedad_gest_mande'
    end
    object ADOQ_insert_moteakherintedad_gest_pardakhti: TIntegerField
      FieldName = 'tedad_gest_pardakhti'
    end
    object ADOQ_insert_moteakherinforosh_tedad_gest: TIntegerField
      FieldName = 'forosh_tedad_gest'
    end
    object ADOQ_insert_moteakherintedade_mahaye_takhir: TIntegerField
      FieldName = 'tedade_mahaye_takhir'
    end
    object ADOQ_insert_moteakherincod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_insert_moteakherinforosh_tarikh: TWideStringField
      FieldName = 'forosh_tarikh'
      Size = 12
    end
    object ADOQ_insert_moteakherinkharidar_tele_sabet: TWideStringField
      FieldName = 'kharidar_tele_sabet'
      Size = 12
    end
    object ADOQ_insert_moteakherinkharidar_tele_hamrah: TWideStringField
      FieldName = 'kharidar_tele_hamrah'
      Size = 12
    end
    object ADOQ_insert_moteakherinkharidar_adress: TWideStringField
      FieldName = 'kharidar_adress'
      Size = 100
    end
  end
end
