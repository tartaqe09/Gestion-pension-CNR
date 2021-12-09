object Form3: TForm3
  Left = 192
  Top = 125
  Width = 651
  Height = 480
  Caption = 'Chargement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 40
    Top = 112
    Width = 593
    Height = 17
    TabOrder = 0
  end
  object Timer1: TTimer
    Interval = 20
    OnTimer = Timer1Timer
    Left = 72
    Top = 48
  end
end
