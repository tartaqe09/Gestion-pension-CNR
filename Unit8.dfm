object Form8: TForm8
  Left = 347
  Top = 142
  Width = 904
  Height = 480
  Caption = 'Etat de pension'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid6: TDBGrid
    Left = 0
    Top = 96
    Width = 761
    Height = 345
    DataSource = DataSource4
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid6DrawColumnCell
  end
  object GroupBox1: TGroupBox
    Left = 728
    Top = 0
    Width = 153
    Height = 97
    Caption = 'Filtres'
    TabOrder = 1
    object Edit2: TEdit
      Left = 16
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit2Change
    end
  end
  object Panel1: TPanel
    Left = 768
    Top = 96
    Width = 113
    Height = 345
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 8
      Top = 88
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
      Top = 56
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
      Top = 120
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
      Top = 184
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
      Top = 304
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
      Top = 216
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
      Top = 248
      Width = 97
      Height = 25
      Caption = 'Ac&tualiser'
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 152
      Width = 96
      Height = 25
      DataSource = DataSource4
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 176
    Top = 0
    Width = 545
    Height = 97
    Caption = 'Insertion'
    TabOrder = 3
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Etat_pens'
      FocusControl = DBEdit1
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 40
      Width = 134
      Height = 21
      DataField = 'Etat_pens'
      DataSource = DataModule2.DataSource6
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 169
    Height = 97
    Caption = 'Recherche par'
    TabOrder = 4
    object Edit1: TEdit
      Left = 8
      Top = 68
      Width = 153
      Height = 21
      TabOrder = 0
    end
    object ComboBox2: TComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'ID_etat_pens'
        'Etat_pens')
    end
    object Button1: TButton
      Left = 40
      Top = 40
      Width = 75
      Height = 25
      Caption = 'rechercher'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object ADOTable4: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etat_pension'
    Left = 840
    Top = 104
  end
  object DataSource4: TDataSource
    DataSet = ADOTable4
    Left = 808
    Top = 104
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=trop_percu;Data Source=PC\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 776
    Top = 104
  end
end
