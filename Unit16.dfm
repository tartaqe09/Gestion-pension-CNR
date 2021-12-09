object Form16: TForm16
  Left = 290
  Top = 162
  Width = 928
  Height = 480
  Caption = 'Form16'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 281
    Width = 903
    Height = 169
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 320
    Top = 256
    Width = 210
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 32
    Top = 48
    Width = 113
    Height = 21
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 80
    Width = 113
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'janvier'
    Items.Strings = (
      'janvier'
      'f'#233'vrier'
      'mars'
      'avril'
      'mai'
      'juin'
      'juillet'
      'aout'
      'septembre'
      'octobre'
      'novembre'
      'decembre')
  end
  object Button1: TButton
    Left = 64
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object ComboBox2: TComboBox
    Left = 32
    Top = 112
    Width = 113
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 5
    Text = 'Normal'
    Items.Strings = (
      'Normal'
      'contentieux')
  end
  object Button2: TButton
    Left = 64
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOQuery1CalcFields
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
      'and sit_famil.id_sit_fami=assur'#233'.id_sit_fami'
      '')
    Left = 168
    Top = 48
    object ADOQuery1Num_TP: TAutoIncField
      FieldName = 'Num_TP'
      ReadOnly = True
    end
    object ADOQuery1ville_agence: TStringField
      FieldName = 'ville_agence'
      Size = 30
    end
    object ADOQuery1Num_pens: TStringField
      FieldName = 'Num_pens'
      Size = 9
    end
    object ADOQuery1Nom_ass: TStringField
      FieldName = 'Nom_ass'
    end
    object ADOQuery1Prenom_ass: TStringField
      FieldName = 'Prenom_ass'
    end
    object ADOQuery1sit_famil: TStringField
      FieldName = 'sit_famil'
      Size = 30
    end
    object ADOQuery1Date_TP: TWideStringField
      FieldName = 'Date_TP'
      Size = 10
    end
    object ADOQuery1Type_TP: TStringField
      FieldName = 'Type_TP'
      Size = 2
    end
    object ADOQuery1T_p: TFloatField
      FieldKind = fkLookup
      FieldName = 'T_p'
      LookupDataSet = ADOQuery2
      LookupKeyFields = 'num_pens'
      LookupResultField = 'Taux_de_pension'
      KeyFields = 'Num_pens'
      Visible = False
      Lookup = True
    end
    object ADOQuery1mont_t: TFloatField
      FieldKind = fkCalculated
      FieldName = 'mont_t'
      Calculated = True
    end
    object ADOQuery1Mod_TP: TStringField
      FieldName = 'Mod_TP'
      Visible = False
      Size = 15
    end
    object ADOQuery1Mois: TStringField
      FieldName = 'Mois'
      Visible = False
      Size = 15
    end
    object ADOQuery1Annee: TIntegerField
      FieldName = 'Annee'
      Visible = False
    end
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
      ''
      '')
    Left = 208
    Top = 16
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=trop_percu;Data Source=PC\SQLEXPRESS;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 289
    Top = 81
  end
end
