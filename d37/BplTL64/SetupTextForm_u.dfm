object SetupTextForm: TSetupTextForm
  Left = 323
  Top = 250
  ActiveControl = Memo1
  BorderStyle = bsDialog
  Caption = 'Edit Text'
  ClientHeight = 434
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 366
    Width = 727
    Height = 68
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      727
      68)
    object OkBtn: TBitBtn
      Left = 495
      Top = 32
      Width = 111
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object CancelBtn: TBitBtn
      Left = 611
      Top = 31
      Width = 111
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object AllChapters: TCheckBox
      Left = 394
      Top = 12
      Width = 95
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'for all chapters'
      TabOrder = 2
      Visible = False
    end
    object AllPages: TCheckBox
      Left = 394
      Top = 44
      Width = 94
      Height = 17
      Caption = 'for all pages'
      TabOrder = 3
      Visible = False
    end
    object ConvertBtn: TBitBtn
      Left = 4
      Top = 8
      Width = 117
      Height = 31
      Caption = 'Rtf Converter'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00000300000037FFFFFFFFFFFFFF0300000037F444444444444F0300000037FF
        FFFFFFFFFFFF0300000037F44444444444FF0300000037FFFFFFFFFFFFFF0300
        000037F444444444444F0300000037FFFFFFFFFFFFFF0300000037F444444444
        44FF0300000037FFFFFFFFFFFFFF0300000037F9FFF9F444444F0300000037F9
        9999FFFFFFFF0300000037FF9FF9FFFFFFFF0300000037FFF9F9FFFFFFFF0300
        000037FFFF99FFFFFFFF0300000037FFFFF9FFFFFFFF0300000037FFFFFFFFFF
        FFFF03000000377777777777777773000000}
      ModalResult = 10
      TabOrder = 4
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 488
    Top = 0
    Width = 239
    Height = 366
    Align = alRight
    BevelOuter = bvNone
    Locked = True
    ParentBackground = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 5
      Top = 47
      Width = 225
      Height = 90
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Font'
      TabOrder = 2
      object Label1: TLabel
        Left = 7
        Top = 22
        Width = 31
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Name:'
        FocusControl = ComboBox1
      end
      object Label2: TLabel
        Left = 10
        Top = 57
        Width = 23
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Size:'
        FocusControl = Edit1
      end
      object ComboBox1: TComboBox
        Left = 62
        Top = 20
        Width = 156
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Style = csDropDownList
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object Edit1: TEdit
        Left = 62
        Top = 52
        Width = 33
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 1
        Text = '36'
        OnEnter = Edit1Enter
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object UpDown1: TUpDown
        Left = 95
        Top = 52
        Width = 18
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Associate = Edit1
        Min = 10
        Max = 128
        Position = 36
        TabOrder = 2
        OnClick = UpDown1Click
      end
      object FlatBitBtn4: TBitBtn
        Left = 128
        Top = 52
        Width = 87
        Height = 31
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '...'
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333330000003333333333333333330000003333333333333333330000003333
          3333333333333300000033330003300000333300000033333033330003333300
          0000333330733300033333000000333337000000733333000000333333033000
          3333330000003333330730003333330000003333337030073333330000003333
          3330000333333300000033333330000333333300000033333337007333333300
          0000333333330033333333000000333333330333333333000000333333333333
          333333000000333333333333333333000000}
        TabOrder = 3
        OnClick = FlatBitBtn4Click
      end
    end
    object RadioGroup1: TRadioGroup
      Left = 5
      Top = 145
      Width = 107
      Height = 93
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Alignment'
      ItemIndex = 0
      Items.Strings = (
        'Left'
        'Right'
        'Center')
      TabOrder = 3
      OnClick = RadioGroup1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 5
      Top = 249
      Width = 225
      Height = 117
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Orientation'
      ItemIndex = 0
      Items.Strings = (
        'Horizontally to the left'#10
        'Vertically up'
        #10'Vertically down'#10
        'Horizontally to the right')
      TabOrder = 4
    end
    object OpenBtn: TBitBtn
      Left = 5
      Top = 10
      Width = 111
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Open...'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333000000333333333333333333000000333333333333333333000000CCFF
        FFFFFCC3333333000000CCFCCFFFFCC3333333000000CCFCCFFFFCC333333300
        0000CCFFFFFFFCC3330333000000CCCCCCCCCCC3330033000000CCCCCCCCC000
        000003000000CEEEEEEEE000000000000000CEEEEEEEE000000000000000CEEE
        EEEEE000000003000000CEEEEEEEEEC3330033000000CEEEEEEEEEC333033300
        0000CEEEEEEEEEC3333333000000333333333333333333000000333333333333
        333333000000333333333333333333000000}
      TabOrder = 0
      OnClick = OpenBtnClick
    end
    object SaveBtn: TBitBtn
      Left = 118
      Top = 10
      Width = 111
      Height = 31
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Save...'
      Enabled = False
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000003333333333333333330000003333333333333333330000003333
        333CCFFFFFFFCC0000003333333CCFCCFFFFCC0000003333333CCFCCFFFFCC00
        00003333303CCFFFFFFFCC0000003333300CCCCCCCCCCC00000000000000CCCC
        CCCCCC000000000000000EEEEEEEEC000000000000000EEEEEEEEC0000000000
        0000EEEEEEEEEC0000003333300CEEEEEEEEEC0000003333303CEEEEEEEEEC00
        00003333333CEEEEEEEEEC000000333333333333333333000000333333333333
        333333000000333333333333333333000000}
      TabOrder = 1
      OnClick = SaveBtnClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 488
    Height = 366
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -14
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
    OnChange = Memo1Change
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 2
    Top = 302
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Text Daten (*.txt)|*.txt'
    Left = 38
    Top = 300
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text Daten (*.txt)|*.txt'
    Left = 74
    Top = 300
  end
end
