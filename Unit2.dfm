object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 591
  Top = 154
  Height = 532
  Width = 282
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=trop_percu;Data Source=PC\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 88
    Top = 360
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Mode_retenu'
    Left = 184
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 136
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 136
    Top = 64
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 136
    Top = 112
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 136
    Top = 160
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Type_TP'
    Left = 184
    Top = 64
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etat_TP'
    Left = 192
    Top = 112
  end
  object ADOTable4: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etat_pension'
    Left = 192
    Top = 160
  end
  object ADOTable5: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Avantage'
    Left = 192
    Top = 208
  end
  object ADOTable6: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'groupe'
    Left = 192
    Top = 256
  end
  object ADOTable7: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Regime'
    Left = 192
    Top = 304
  end
  object ADOTable8: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Agence'
    Left = 192
    Top = 352
  end
  object DataSource5: TDataSource
    DataSet = ADOTable5
    Left = 144
    Top = 208
  end
  object DataSource6: TDataSource
    DataSet = ADOTable6
    Left = 144
    Top = 256
  end
  object DataSource7: TDataSource
    DataSet = ADOTable7
    Left = 144
    Top = 312
  end
  object DataSource8: TDataSource
    DataSet = ADOTable8
    Left = 144
    Top = 360
  end
end
