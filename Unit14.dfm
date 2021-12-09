object Form14: TForm14
  Left = 236
  Top = 120
  Width = 1066
  Height = 665
  Caption = 'Cr'#233'ation de l'#39'assur'#233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 75
    Height = 13
    Caption = 'Nom de l'#39'assur'#233
  end
  object Label3: TLabel
    Left = 8
    Top = 80
    Width = 89
    Height = 13
    Caption = 'Prenom de l'#39'assur'#233
  end
  object Label4: TLabel
    Left = 8
    Top = 112
    Width = 142
    Height = 13
    Caption = 'Date de naissance de l'#39'assur'#233
  end
  object Label5: TLabel
    Left = 8
    Top = 136
    Width = 91
    Height = 13
    Caption = 'Adresse de l'#39'assur'#233
  end
  object Label6: TLabel
    Left = 8
    Top = 168
    Width = 106
    Height = 13
    Caption = 'Numero de Telephone'
  end
  object Label9: TLabel
    Left = 8
    Top = 200
    Width = 81
    Height = 13
    Caption = 'Situation familiale'
  end
  object Label10: TLabel
    Left = 8
    Top = 232
    Width = 101
    Height = 13
    Caption = 'Regime de liquidation'
  end
  object Label11: TLabel
    Left = 8
    Top = 336
    Width = 74
    Height = 13
    Caption = 'Etat de pension'
  end
  object Label12: TLabel
    Left = 8
    Top = 304
    Width = 111
    Height = 13
    Caption = 'Avantage de liquidation'
  end
  object Label13: TLabel
    Left = 16
    Top = 280
    Width = 35
    Height = 13
    Caption = 'Groupe'
  end
  object Label7: TLabel
    Left = 32
    Top = 8
    Width = 18
    Height = 13
    Caption = 'ville'
  end
  object Label8: TLabel
    Left = 272
    Top = 8
    Width = 48
    Height = 13
    Caption = 'Net_mens'
    FocusControl = DBEdit9
  end
  object DBEdit4: TDBEdit
    Left = 160
    Top = 104
    Width = 134
    Height = 21
    DataField = 'Date_naiss_ass'
    DataSource = DataSource1
    TabOrder = 12
  end
  object Panel1: TPanel
    Left = 5
    Top = 376
    Width = 372
    Height = 129
    TabOrder = 0
    object Label14: TLabel
      Left = 8
      Top = 20
      Width = 120
      Height = 13
      Caption = 'Date du debut de service'
    end
    object Label15: TLabel
      Left = 8
      Top = 44
      Width = 104
      Height = 13
      Caption = 'Date du fin de service'
    end
    object Label1: TLabel
      Left = 16
      Top = 84
      Width = 92
      Height = 13
      Caption = 'Numero de pension'
    end
    object DBEdit7: TDBEdit
      Left = 144
      Top = 16
      Width = 134
      Height = 21
      DataField = 'D_serv'
      DataSource = DataSource1
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 208
      Top = 80
      Width = 41
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 3
      Visible = False
      OnChange = Edit1Change
    end
    object DBEdit8: TDBEdit
      Left = 144
      Top = 40
      Width = 134
      Height = 21
      DataField = 'F_serv'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 80
      Width = 121
      Height = 21
      DataField = 'Num_pens'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 160
      Top = 16
      Width = 186
      Height = 21
      Date = 44451.508712071760000000
      Time = 44451.508712071760000000
      TabOrder = 4
      OnChange = DateTimePicker2Change
    end
    object DateTimePicker3: TDateTimePicker
      Left = 168
      Top = 40
      Width = 186
      Height = 21
      Date = 44451.508949212960000000
      Time = 44451.508949212960000000
      TabOrder = 5
      OnChange = DateTimePicker3Change
    end
  end
  object Edit7: TEdit
    Left = 376
    Top = 256
    Width = 33
    Height = 21
    TabOrder = 1
    Text = '623583'
    Visible = False
  end
  object Panel2: TPanel
    Left = 377
    Top = 40
    Width = 113
    Height = 465
    TabOrder = 2
    object Label17: TLabel
      Left = 8
      Top = 360
      Width = 3
      Height = 13
      Caption = ' '
      FocusControl = BitBtn1
    end
    object Label18: TLabel
      Left = 8
      Top = 336
      Width = 99
      Height = 13
      Caption = 'Nombre des assur'#233's '
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 32
      Width = 97
      Height = 25
      Caption = '&Supprimer'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 0
      Width = 97
      Height = 25
      Caption = '&Nouveau'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666660000000000666666668888888888666
        00006666687777777706666666687777777786660000666668FFFFFFF7066666
        6668F7F7F7F786660000666668FFFFFFF706666666687F7F7F77866600006666
        68FFFFFFF70666666668F7F7F7F786660000666668FFFFFFF706666666687F7F
        7F7786660000666668FFFFFFF70666666668F7F7F7F786660000666668FFFFFF
        F706666666687F7F7F778666000066F668FFFFFFF7066666F668F7F7F7F78666
        0000668F88FF8FF0000666668F887F8F7888866600006668B8F8FFF7F8666666
        6878F8F7F7F86666000066FF8FBFFFF786666666FF8F7F7F7786666600006668
        8BFF8888666666666887FF888866666600006668B8B8F66666666666687878F6
        666666660000668F68F66666666666668F68F66666666666000066F668F668F6
        66666666F668F668F66666660000666668F66666666666666668F66666666666
        0000}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 64
      Width = 97
      Height = 25
      Caption = '&Valider'
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000666666886666666666666666666666666666000066666CC8866666666666
        666888666666666600006666C22C88666666666666888886666666660000666A
        2222C886666666666888888866666666000066A222222C886666666668888888
        86666666000066A222A222C8866666666888688888666666000066A22C8A222C
        866666666888868888866666000066A22C86A22C886666666888866888866666
        0000666A2C666A22C8866666668866668888666600006666AA6666A22C886666
        6666666668888666000066666666666A22C88666666666666688886600006666
        66666666A22C8666666666666668888600006666666666666A2C866666666666
        66668886000066666666666666AC666666666666666668660000666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
    end
    object BitBtn4: TBitBtn
      Left = 8
      Top = 128
      Width = 97
      Height = 25
      Caption = '&Modifier'
      TabOrder = 3
      OnClick = BitBtn4Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777770000777777777777777777777777777777777777
        00007777777777777777777777777777777FF7FF000077777777777700700777
        77777777778878870000711111111111170777788888888888878F7700007111
        11111111170777788888888888878F770000718FFF1FFF81170777788FFF8FFF
        88878F77000071F11F1F11F117077778F88F8F88F8878F770000718FFF1F11F1
        170777788FFF8F88F8878F77000071111F1F11F117077778888F8F88F8878F77
        0000711FF81FFF81170777788FF88FFF88878F7700007111111F111117077778
        88888F8888878F7700007111111F11111707777888888F8888878F7700007111
        111111111707777888888888888F87FF0000711111111111E070077888888888
        8888788700007777777777777777777777777777777777770000777777777777
        7777777777777777777777770000777777777777777777777777777777777777
        0000}
      NumGlyphs = 2
    end
    object BitBtn5: TBitBtn
      Left = 8
      Top = 424
      Width = 97
      Height = 25
      Caption = '&Fermer'
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF006FF00FF00FF0
        07700766666666666F6666660000F00FF00FF000800880666666666688F66666
        00000FF00FF00F0700800866666666668F8F66660000F00FF00FF007800880FF
        FFFFFFF68F68FFFF000000000000070788000088888888868F66888800006666
        660770078880666666668F668F6668F600006666660000078880666666668F66
        8F6668F600006666660888078880666666668F668F6668F60000666666088807
        888066666FFFFFF68F6668F6000066000000080708806666888888868F6668F6
        0000660999990807888066668F666F868F6668F6000060999990880788806668
        F6F6F8668F6668F6000060909908880788806668F8FF8F668F6668F600006000
        900888078880666888F88F668F6668F600006660060888807880666668868F66
        68F668F600006666660888880780666666668F66668F68F60000666666088888
        8070666666668FFFFFF8F8F60000666666000000000066666666888888888866
        0000}
      NumGlyphs = 2
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 160
      Width = 97
      Height = 25
      Caption = '&Annuler'
      TabOrder = 5
      OnClick = BitBtn6Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000666666666666661F66666666666666668F66000066661F66666666666666
        668F6666666666660000666111F6666661F666666888F6666668F66600006661
        11F666661F6666666888F666668F666600006666111F66611F66666666888F66
        688F6666000066666111F611F6666666666888F688F66666000066666611111F
        66666666666688888F66666600006666666111F66666666666666888F6666666
        000066666611111F66666666666688888F666666000066666111F61F66666666
        666888F68F66666600006661111F66611F66666668888F66688F666600006611
        11F6666611F666668888F6666688F66600006611F6666666611F666688F66666
        66688F6600006666666666666666666666666666666666660000666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        0000}
      NumGlyphs = 2
    end
    object BitBtn7: TBitBtn
      Left = 8
      Top = 192
      Width = 97
      Height = 25
      Caption = 'Ac&tualiser'
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object Button1: TButton
      Left = 16
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Afficher la liste '
      TabOrder = 7
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 16
      Top = 304
      Width = 75
      Height = 25
      Caption = 'masquer la liste'
      TabOrder = 8
      OnClick = Button2Click
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 96
      Width = 96
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 9
    end
  end
  object DBGrid1: TDBGrid
    Left = 496
    Top = 200
    Width = 545
    Height = 224
    DataSource = DataSource9
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Ville_Agence'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_pens'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom_ass'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prenom_ass'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sit_famil'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etat_pens'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Taux_de_pension'
        Visible = True
      end>
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 128
    Top = 200
    Width = 145
    Height = 21
    DataField = 'ID_sit_fami'
    DataSource = DataSource1
    KeyField = 'ID_sit_fami'
    ListField = 'sit_famil'
    ListSource = DataSource2
    TabOrder = 4
    OnClick = DBLookupComboBox1Click
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 136
    Top = 232
    Width = 145
    Height = 21
    DataField = 'ID_regime'
    DataSource = DataSource1
    KeyField = 'ID_regime'
    ListField = 'Type_regime'
    ListSource = DataSource3
    TabOrder = 5
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 128
    Top = 272
    Width = 145
    Height = 21
    DataField = 'ID_groupe'
    DataSource = DataSource1
    KeyField = 'ID_groupe'
    ListField = 'groupe'
    ListSource = DataSource6
    TabOrder = 6
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 136
    Top = 304
    Width = 145
    Height = 21
    DataField = 'ID_avt'
    DataSource = DataSource1
    KeyField = 'ID_avt'
    ListField = 'Type_avt'
    ListSource = DataSource5
    TabOrder = 7
    OnClick = DBLookupComboBox4Click
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 136
    Top = 336
    Width = 145
    Height = 21
    DataField = 'ID_etat_pens'
    DataSource = DataSource1
    KeyField = 'ID_etat_pens'
    ListField = 'Etat_pens'
    ListSource = DataSource4
    TabOrder = 8
    OnClick = DBLookupComboBox5Click
  end
  object DBLookupComboBox6: TDBLookupComboBox
    Left = 112
    Top = 8
    Width = 145
    Height = 21
    DataField = 'ID_agence'
    DataSource = DataSource1
    KeyField = 'ID_agence'
    ListField = 'ville_agence'
    ListSource = DataSource7
    TabOrder = 9
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 40
    Width = 264
    Height = 21
    DataField = 'Nom_ass'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit3: TDBEdit
    Left = 112
    Top = 72
    Width = 264
    Height = 21
    DataField = 'Prenom_ass'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit5: TDBEdit
    Left = 120
    Top = 136
    Width = 201
    Height = 21
    DataField = 'Adrs_ass'
    DataSource = DataSource1
    TabOrder = 13
  end
  object DBEdit6: TDBEdit
    Left = 128
    Top = 168
    Width = 193
    Height = 21
    DataField = 'Num_Tel'
    DataSource = DataSource1
    TabOrder = 14
  end
  object DBEdit9: TDBEdit
    Left = 328
    Top = 8
    Width = 216
    Height = 21
    DataField = 'Net_mens'
    DataSource = DataSource1
    TabOrder = 15
  end
  object DateTimePicker1: TDateTimePicker
    Left = 184
    Top = 104
    Width = 186
    Height = 21
    Date = 44451.508531967590000000
    Time = 44451.508531967590000000
    TabOrder = 16
    OnChange = DateTimePicker1Change
  end
  object Button3: TButton
    Left = 584
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 17
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=trop_percu;Data Source=PC\SQLEXPRESS;Us' +
      'e Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;W' +
      'orkstation ID=PC;Use Encryption for Data=False;Tag with column c' +
      'ollation when possible=False;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 528
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOTable1AfterScroll
    OnCalcFields = ADOTable1CalcFields
    IndexFieldNames = 'Num_pens'
    MasterFields = 'Num_pens'
    MasterSource = DataSource8
    TableName = 'Assur'#233
    Left = 512
    Top = 32
    object ADOTable1ID_ass: TAutoIncField
      FieldName = 'ID_ass'
      ReadOnly = True
    end
    object ADOTable1Num_pens: TStringField
      FieldName = 'Num_pens'
      Size = 9
    end
    object ADOTable1Nom_ass: TStringField
      FieldName = 'Nom_ass'
    end
    object ADOTable1Prenom_ass: TStringField
      FieldName = 'Prenom_ass'
    end
    object ADOTable1Date_naiss_ass: TWideStringField
      FieldName = 'Date_naiss_ass'
      Size = 10
    end
    object ADOTable1Adrs_ass: TStringField
      FieldName = 'Adrs_ass'
      Size = 50
    end
    object ADOTable1Num_Tel: TIntegerField
      FieldName = 'Num_Tel'
    end
    object ADOTable1D_serv: TWideStringField
      FieldName = 'D_serv'
      Size = 10
    end
    object ADOTable1F_serv: TWideStringField
      FieldName = 'F_serv'
      Size = 10
    end
    object ADOTable1Net_mens: TBCDField
      FieldName = 'Net_mens'
      Precision = 19
    end
    object ADOTable1Taux_de_pension: TFloatField
      FieldName = 'Taux_de_pension'
    end
    object ADOTable1ID_sit_fami: TIntegerField
      FieldName = 'ID_sit_fami'
    end
    object ADOTable1ID_regime: TIntegerField
      FieldName = 'ID_regime'
    end
    object ADOTable1ID_etat_pens: TIntegerField
      FieldName = 'ID_etat_pens'
    end
    object ADOTable1ID_groupe: TIntegerField
      FieldName = 'ID_groupe'
    end
    object ADOTable1ID_avt: TIntegerField
      FieldName = 'ID_avt'
    end
    object ADOTable1ID_agence: TIntegerField
      FieldName = 'ID_agence'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 544
    Top = 32
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'sit_famil'
    Left = 512
    Top = 64
    object ADOTable2ID_sit_fami: TAutoIncField
      FieldName = 'ID_sit_fami'
      ReadOnly = True
    end
    object ADOTable2sit_famil: TStringField
      FieldName = 'sit_famil'
      Size = 30
    end
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Regime'
    Left = 512
    Top = 96
    object ADOTable3ID_regime: TAutoIncField
      FieldName = 'ID_regime'
      ReadOnly = True
    end
    object ADOTable3Type_regime: TStringField
      FieldName = 'Type_regime'
      Size = 2
    end
  end
  object ADOTable4: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etat_pension'
    Left = 512
    Top = 128
    object ADOTable4ID_etat_pens: TAutoIncField
      FieldName = 'ID_etat_pens'
      ReadOnly = True
    end
    object ADOTable4Etat_pens: TStringField
      FieldName = 'Etat_pens'
      Size = 10
    end
  end
  object ADOTable5: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Avantage'
    Left = 512
    Top = 160
    object ADOTable5ID_avt: TAutoIncField
      FieldName = 'ID_avt'
      ReadOnly = True
    end
    object ADOTable5Type_avt: TStringField
      FieldName = 'Type_avt'
      Size = 1
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 544
    Top = 64
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 544
    Top = 96
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 544
    Top = 128
  end
  object DataSource5: TDataSource
    DataSet = ADOTable5
    Left = 544
    Top = 160
  end
  object ADOTable6: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'groupe'
    Left = 512
    Top = 192
    object ADOTable6ID_groupe: TAutoIncField
      FieldName = 'ID_groupe'
      ReadOnly = True
    end
    object ADOTable6groupe: TIntegerField
      FieldName = 'groupe'
    end
  end
  object DataSource6: TDataSource
    DataSet = ADOTable6
    Left = 544
    Top = 192
  end
  object ADOTable7: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Agence'
    Left = 512
    Top = 232
    object ADOTable7ID_agence: TAutoIncField
      FieldName = 'ID_agence'
      ReadOnly = True
    end
    object ADOTable7Nom_agence: TStringField
      FieldName = 'Nom_agence'
      Size = 30
    end
    object ADOTable7ville_agence: TStringField
      FieldName = 'ville_agence'
      Size = 30
    end
    object ADOTable7Cod_postal: TIntegerField
      FieldName = 'Cod_postal'
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOTable7
    Left = 552
    Top = 232
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select Ville_Agence,Num_pens,Nom_ass,Prenom_ass,sit_famil,etat_p' +
        'ens ,DATEDIFF(YY,D_serv,F_serv)  * 2.5 as [Taux_de_pension]'
      'from Assur'#233',Agence, sit_famil,Etat_pension'
      'where  Assur'#233'.ID_agence=Agence.ID_agence '
      ' and Assur'#233'.ID_sit_fami=sit_famil.ID_sit_fami'
      'and Assur'#233'.ID_etat_pens=Etat_pension.ID_etat_pens')
    Left = 552
    Top = 384
    object ADOQuery2Ville_Agence: TStringField
      FieldName = 'Ville_Agence'
      Size = 30
    end
    object ADOQuery2Num_pens: TStringField
      FieldName = 'Num_pens'
      Size = 9
    end
    object ADOQuery2Nom_ass: TStringField
      FieldName = 'Nom_ass'
    end
    object ADOQuery2Prenom_ass: TStringField
      FieldName = 'Prenom_ass'
    end
    object ADOQuery2sit_famil: TStringField
      FieldName = 'sit_famil'
      Size = 30
    end
    object ADOQuery2etat_pens: TStringField
      FieldName = 'etat_pens'
      Size = 10
    end
    object ADOQuery2Taux_de_pension: TBCDField
      FieldName = 'Taux_de_pension'
      ReadOnly = True
      Precision = 13
      Size = 1
    end
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery2
    Left = 520
    Top = 384
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      
        'from Assur'#233', Avantage,Regime,Agence,groupe,sit_famil,Etat_pensio' +
        'n'
      'where Assur'#233'.ID_agence=Agence.ID_agence and'
      'Assur'#233'.ID_avt=Avantage.ID_avt'
      'and Assur'#233'.ID_groupe=groupe.ID_groupe'
      'and Assur'#233'.ID_regime=Regime.ID_regime'
      ' and Assur'#233'.ID_sit_fami=sit_famil.ID_sit_fami'
      'and Assur'#233'.ID_etat_pens=Etat_pension.ID_etat_pens')
    Left = 760
    Top = 152
  end
  object DataSource8: TDataSource
    DataSet = ADOQuery1
    Left = 728
    Top = 152
  end
end
