object SetupLRtfForm: TSetupLRtfForm
  Left = 360
  Top = 263
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Edit RTF'
  ClientHeight = 358
  ClientWidth = 837
  Color = clBtnFace
  Constraints.MinHeight = 339
  Constraints.MinWidth = 575
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 288
    Width = 837
    Height = 70
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    DesignSize = (
      837
      70)
    object FlatBitBtn1: TBitBtn
      Left = 650
      Top = 36
      Width = 90
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 2
    end
    object FlatBitBtn2: TBitBtn
      Left = 743
      Top = 36
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 3
    end
    object AllChapters: TCheckBox
      Left = 602
      Top = 4
      Width = 98
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'for all Chapters'
      TabOrder = 1
      Visible = False
    end
    object RadioGroup1: TRadioGroup
      Left = 2
      Top = 2
      Width = 325
      Height = 67
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Orientation'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Horizontally to the left'#10
        'Vertically up'
        #10'Vertically down'
        #10'Horizontally to the right')
      TabOrder = 0
    end
    object AllPages: TCheckBox
      Left = 720
      Top = 5
      Width = 112
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'for all Pages'
      TabOrder = 4
      Visible = False
    end
  end
  inline LRtfFrame1: TLRtfFrame
    Left = 0
    Top = 0
    Width = 837
    Height = 288
    Align = alClient
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 837
    ExplicitHeight = 288
    inherited Panel1: TPanel
      Width = 837
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 837
      inherited Label1: TLabel
        Width = 32
        Height = 13
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 32
        ExplicitHeight = 13
      end
      inherited ComboBox1: TComboBox
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited ComboBox2: TComboBox
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited ColorBox1: TColorBox
        Height = 24
        StyleElements = [seFont, seClient, seBorder]
        ExplicitHeight = 24
      end
      inherited ColorBox2: TColorBox
        Height = 24
        StyleElements = [seFont, seClient, seBorder]
        ExplicitHeight = 24
      end
    end
    inherited RichEdit: TRichEdit
      Width = 837
      Height = 258
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 837
      ExplicitHeight = 258
    end
  end
end
