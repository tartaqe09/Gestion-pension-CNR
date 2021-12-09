object Form15: TForm15
  Left = 222
  Top = 157
  Width = 971
  Height = 480
  Caption = 'Creation TP '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 449
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 961
      Height = 312
      Align = alTop
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 233
        Height = 105
        Caption = 'GroupBox1'
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 16
          Width = 60
          Height = 13
          Caption = 'ville_agence'
        end
        object Edit4: TEdit
          Left = 72
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox2: TGroupBox
        Left = 256
        Top = 8
        Width = 281
        Height = 105
        Caption = 'GroupBox2'
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 24
          Width = 43
          Height = 13
          Caption = 'Date_TP'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 8
          Top = 56
          Width = 41
          Height = 13
          Caption = 'Type TP'
        end
        object Label2: TLabel
          Left = 8
          Top = 80
          Width = 37
          Height = 13
          Caption = 'Date_D'
          FocusControl = DBEdit3
        end
        object DBEdit3: TDBEdit
          Left = 64
          Top = 24
          Width = 134
          Height = 21
          DataField = 'Date_TP'
          DataSource = DataSource5
          TabOrder = 0
        end
        object DateTimePicker1: TDateTimePicker
          Left = 64
          Top = 24
          Width = 186
          Height = 21
          Date = 44449.966570405090000000
          Time = 44449.966570405090000000
          TabOrder = 1
          OnChange = DateTimePicker1Change
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 64
          Top = 48
          Width = 145
          Height = 21
          KeyField = 'ID_Type_TP'
          ListField = 'Type_TP'
          ListSource = DataSource6
          TabOrder = 2
        end
        object DateTimePicker2: TDateTimePicker
          Left = 64
          Top = 72
          Width = 186
          Height = 21
          Date = 44449.966570405090000000
          Time = 44449.966570405090000000
          TabOrder = 3
          OnChange = DateTimePicker1Change
        end
      end
      object GroupBox5: TGroupBox
        Left = 560
        Top = 8
        Width = 289
        Height = 105
        Caption = 'Recherche dans la table Assur'#233
        TabOrder = 2
        object Label1: TLabel
          Left = 8
          Top = 40
          Width = 95
          Height = 13
          Caption = 'NOM ET PRENOM '
        end
        object BitBtn1: TBitBtn
          Left = 136
          Top = 16
          Width = 113
          Height = 33
          Caption = 'RECHERCHE'
          TabOrder = 0
          OnClick = BitBtn1Click
          Glyph.Data = {
            36080000424D3608000000000000360400002800000020000000200000000100
            0800000000000004000000000000000000000001000000010000827F7D00EDA1
            8100CAC9C80023447900FCCDA30043536D00FFEEC300325C9500F8F8F800AB80
            6F00EBEAEA00FED8C000A2A09F003F84D200B4B1AF00FDBC9100FFDFAD008E8D
            8D00499DF300AC978900637594004390E20098979600A0A2A700D8D8D8007E8A
            A100ACA8A600336CB0006D6C6D00C1BDBC003A7AC400FFFFFF00808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
            FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
            800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
            FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
            800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
            FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
            800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
            FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
            800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00
            FF00FFFF0000FFFFFF0000000000000080000080000000808000800000008000
            800080800000C0C0C000C0DCC000F0CAA600F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A600F0FBFF00A4A0A000808080000000FF0000FF000000FFFF001F1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F080A
            0202180A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A1105
            050505130A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D050303
            030303051A0A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0205030303
            071B0703051A081F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F0A070307071B
            1B1E1B03031C02081F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F17031B1B1B1E
            0D0D1E0303031C02081F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F141B1E1E0D0D
            15121B03030303001A020A1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F070D0D151512
            1215070703030305001C0E081F080A18021D1D020A081F1F1F1F071215121212
            121B07070707030317161C020216001C1C1C1C1C1102081F1F1F141512121215
            1E1B1B070707030307181C1C00111616111111001C00181F1F1F18071512150D
            1E1E1E1B07070703070A110C0E1A0C1616110000001C17081F1F1F18071E1215
            0D0D1E1B1B1B0703190A000E0E1A0C0C1611110000001C021F1F1F1F08141B12
            150D0D1E1E1B1B03021D1A160E1A1A0C1616111100001C16081F1F1F1F1F191B
            12150D0D1E1E0319180C080C0E0E1A0C0C16111100001C1C021F1F1F1F1F1F17
            071512151E0314021118080C0E1D1A0C110009000909001C160A1F1F1F1F1F08
            1C031B0705190E110E0A1D0C021711131A04100610011A111C181F1F1F1F1F1F
            1D1C1C001616001A1D02160E161304060606060606060F021C181F1F1F1F1F1F
            1F1D11111C00161A1A1616130F101010101006060606040B00021F1F1F1F1F1F
            1F021D0A1600001116131304101010101010101010060F0A00181F1F1F1F1F1F
            1F0C0A080818021816130404040404041004101010100F18000A1F1F1F1F1F1F
            1F1A180A0808080C010F0F0F040F0404040404100604040C0E1F1F1F1F1F1F1F
            1F1A180A0A080E090F0F0F0F0F0F0F0404100B060B0F1D11081F1F1F1F1F1F1F
            1F181A1808020901010F0F0F0404040B0B0B060B011D11181F1F1F1F1F1F1F1F
            1F1F0C180A13010F0F040B040B0B0B0B0B0A0B011D11181F1F1F1F1F1F1F1F1F
            1F1F1817020901040404040B0B0B0B0B0B04010E11021F1F1F1F1F1F1F1F1F1F
            1F1F1F0E16090F0B040B0B0B0B0B0B0B0F010C11181F1F1F1F1F1F1F1F1F1F1F
            1F1F1F0A0009010B0B0B0B0B0B0B0F01131617081F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F0E0009010F04040F0101131116021F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F080C1C0009090909111116021F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F1F081D0C1111161A1D181F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F
            1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F}
        end
        object Edit1: TEdit
          Left = 8
          Top = 16
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 8
          Top = 56
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 8
          Top = 80
          Width = 121
          Height = 21
          TabOrder = 3
        end
      end
      object Button1: TButton
        Left = 16
        Top = 160
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 3
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 16
        Top = 192
        Width = 75
        Height = 25
        Caption = 'Button2'
        TabOrder = 4
        OnClick = Button2Click
      end
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 320
      Width = 929
      Height = 120
      DataSource = DataSource9
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Agence'
    Left = 49
    Top = 49
    object ADOTable1ID_agence: TAutoIncField
      FieldName = 'ID_agence'
      ReadOnly = True
    end
    object ADOTable1Nom_agence: TStringField
      FieldName = 'Nom_agence'
      Size = 30
    end
    object ADOTable1ville_agence: TStringField
      FieldName = 'ville_agence'
      Size = 30
    end
    object ADOTable1Cod_postal: TIntegerField
      FieldName = 'Cod_postal'
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=trop_percu;Data Source=PC\SQLEXPRESS;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 881
    Top = 17
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 17
    Top = 49
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 857
    Top = 57
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ID_ass'
    MasterFields = 'ID_ass'
    MasterSource = DataSource3
    TableName = 'avoir2'
    Left = 889
    Top = 57
    object ADOTable2Num_TP: TIntegerField
      FieldName = 'Num_TP'
    end
    object ADOTable2ID_ass: TIntegerField
      FieldName = 'ID_ass'
    end
    object ADOTable2Date_D: TWideStringField
      FieldName = 'Date_D'
      Size = 10
    end
    object ADOTable2Date_F: TWideStringField
      FieldName = 'Date_F'
      Size = 10
    end
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Assur'#233
    Left = 817
    Top = 25
    object ADOTable3ID_ass: TAutoIncField
      FieldName = 'ID_ass'
      ReadOnly = True
    end
    object ADOTable3Num_pens: TStringField
      FieldName = 'Num_pens'
      Size = 9
    end
    object ADOTable3Nom_ass: TStringField
      FieldName = 'Nom_ass'
    end
    object ADOTable3Prenom_ass: TStringField
      FieldName = 'Prenom_ass'
    end
    object ADOTable3Date_naiss_ass: TWideStringField
      FieldName = 'Date_naiss_ass'
      Size = 10
    end
    object ADOTable3Adrs_ass: TStringField
      FieldName = 'Adrs_ass'
      Size = 50
    end
    object ADOTable3Num_Tel: TIntegerField
      FieldName = 'Num_Tel'
    end
    object ADOTable3D_serv: TWideStringField
      FieldName = 'D_serv'
      Size = 10
    end
    object ADOTable3F_serv: TWideStringField
      FieldName = 'F_serv'
      Size = 10
    end
    object ADOTable3ID_sit_fami: TIntegerField
      FieldName = 'ID_sit_fami'
    end
    object ADOTable3ID_regime: TIntegerField
      FieldName = 'ID_regime'
    end
    object ADOTable3ID_etat_pens: TIntegerField
      FieldName = 'ID_etat_pens'
    end
    object ADOTable3ID_groupe: TIntegerField
      FieldName = 'ID_groupe'
    end
    object ADOTable3ID_avt: TIntegerField
      FieldName = 'ID_avt'
    end
    object ADOTable3ID_agence: TIntegerField
      FieldName = 'ID_agence'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 817
    Top = 57
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Num'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      'select  Nom_ass,Prenom_ass,ville_agence '
      'from Agence, Assur'#233
      'where assur'#233'.ID_agence=Agence.ID_agence'
      'and  Assur'#233'.Num_pens=:Num')
    Left = 889
    Top = 89
  end
  object DataSource4: TDataSource
    Left = 857
    Top = 89
  end
  object ADOTable4: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Type_TP'
    Left = 505
    Top = 73
    object ADOTable4ID_Type_TP: TAutoIncField
      FieldName = 'ID_Type_TP'
      ReadOnly = True
    end
    object ADOTable4Type_TP: TStringField
      FieldName = 'Type_TP'
      Size = 2
    end
  end
  object DataSource6: TDataSource
    DataSet = ADOTable4
    Left = 472
    Top = 72
  end
  object DataSource5: TDataSource
    DataSet = ADOTable5
    Left = 505
    Top = 49
  end
  object ADOTable5: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    MasterSource = DataSource2
    TableName = 'TP'
    Left = 505
    Top = 17
    object ADOTable5Date_TP: TWideStringField
      FieldName = 'Date_TP'
      Size = 10
    end
    object ADOTable5ID_etat_TP: TIntegerField
      FieldName = 'ID_etat_TP'
    end
    object ADOTable5ID_Type_TP: TIntegerField
      FieldName = 'ID_Type_TP'
    end
    object ADOTable5ID_FV: TIntegerField
      FieldName = 'ID_FV'
    end
    object ADOTable5Num_TP: TAutoIncField
      FieldName = 'Num_TP'
      ReadOnly = True
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOTable6
    Left = 353
    Top = 169
  end
  object ADOTable6: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'avoir2'
    Left = 353
    Top = 137
    object ADOTable6Num_TP: TIntegerField
      FieldName = 'Num_TP'
    end
    object ADOTable6ID_ass: TIntegerField
      FieldName = 'ID_ass'
    end
    object ADOTable6Date_D: TWideStringField
      FieldName = 'Date_D'
      Size = 10
    end
    object ADOTable6Date_F: TWideStringField
      FieldName = 'Date_F'
      Size = 10
    end
  end
  object ADOTable7: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Fiche_ventilation'
    Left = 185
    Top = 129
    object ADOTable7ID_FV: TAutoIncField
      FieldName = 'ID_FV'
      ReadOnly = True
    end
    object ADOTable7Mois: TStringField
      FieldName = 'Mois'
      Size = 15
    end
    object ADOTable7Annee: TIntegerField
      FieldName = 'Annee'
    end
    object ADOTable7Mod_TP: TStringField
      FieldName = 'Mod_TP'
      Size = 15
    end
  end
  object ADOTable9: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Type_TP'
    Left = 185
    Top = 169
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select num_pens,DATEDIFF(YY,D_serv,F_serv)  * 2.5 as [Taux_de_pe' +
        'nsion]'
      'from Assur'#233',Agence, sit_famil,Etat_pension'
      'where  Assur'#233'.ID_agence=Agence.ID_agence '
      ' and Assur'#233'.ID_sit_fami=sit_famil.ID_sit_fami'
      'and Assur'#233'.ID_etat_pens=Etat_pension.ID_etat_pens'
      '')
    Left = 593
    Top = 153
    object ADOQuery2Taux_de_pension: TBCDField
      FieldName = 'Taux_de_pension'
      ReadOnly = True
      Precision = 13
      Size = 1
    end
    object ADOQuery2num_pens: TStringField
      FieldName = 'num_pens'
      Size = 9
    end
  end
  object DataSource8: TDataSource
    DataSet = ADOQuery2
    Left = 561
    Top = 153
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOQuery3CalcFields
    Parameters = <>
    SQL.Strings = (
      
        'select*from tp,agence,Assur'#233',Type_TP,Fiche_ventilation,Etat_TP,a' +
        'voir2,etat_pension,sit_famil'
      
        'where TP.ID_FV=Fiche_ventilation.ID_FV and Type_TP.ID_Type_TP=tp' +
        '.ID_Type_TP'
      
        'and Etat_TP.ID_etat_TP=TP.ID_etat_TP and avoir2.ID_ass=Assur'#233'.ID' +
        '_ass'
      
        'and avoir2.Num_TP=TP.Num_TP and agence.ID_agence=Assur'#233'.ID_agenc' +
        'e'
      'and etat_pension.id_etat_pens=assur'#233'.id_etat_pens'
      'and sit_famil.id_sit_fami=assur'#233'.id_sit_fami')
    Left = 313
    Top = 281
    object ADOQuery3Num_TP: TAutoIncField
      FieldName = 'Num_TP'
      ReadOnly = True
    end
    object ADOQuery3ville_agence: TStringField
      FieldName = 'ville_agence'
      Size = 30
    end
    object ADOQuery3Num_pens: TStringField
      FieldName = 'Num_pens'
      Size = 9
    end
    object ADOQuery3Nom_ass: TStringField
      FieldName = 'Nom_ass'
    end
    object ADOQuery3Prenom_ass: TStringField
      FieldName = 'Prenom_ass'
    end
    object ADOQuery3sit_famil: TStringField
      FieldName = 'sit_famil'
      Size = 30
    end
    object ADOQuery3Date_TP: TWideStringField
      FieldName = 'Date_TP'
      Size = 10
    end
    object ADOQuery3Type_TP: TStringField
      FieldName = 'Type_TP'
      Size = 2
    end
    object ADOQuery3to: TFloatField
      FieldKind = fkLookup
      FieldName = 'T_p'
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'num_pens'
      LookupResultField = 'Taux_de_pension'
      KeyFields = 'Num_pens'
      Lookup = True
    end
    object ADOQuery3Mont_TP: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Mont_TP'
      Calculated = True
    end
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery3
    Left = 345
    Top = 281
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'n'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = Null
      end>
    SQL.Strings = (
      
        'select num_pens,DATEDIFF(YY,D_serv,F_serv)  * 2.5 as [Taux_de_pe' +
        'nsion]'
      'from Assur'#233',Agence, sit_famil,Etat_pension'
      'where  Assur'#233'.ID_agence=Agence.ID_agence '
      ' and Assur'#233'.ID_sit_fami=sit_famil.ID_sit_fami'
      'and Assur'#233'.ID_etat_pens=Etat_pension.ID_etat_pens'
      'and num_pens=:n')
    Left = 665
    Top = 145
    object BCDField1: TBCDField
      FieldName = 'Taux_de_pension'
      ReadOnly = True
      Precision = 13
      Size = 1
    end
    object StringField1: TStringField
      FieldName = 'num_pens'
      Size = 9
    end
  end
end
