object SetupMyRtfForm: TSetupMyRtfForm
  Left = 360
  Top = 263
  ActiveControl = RtfFrame1.RichEdit
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Edit RTF'
  ClientHeight = 346
  ClientWidth = 612
  Color = clBtnFace
  Constraints.MinHeight = 339
  Constraints.MinWidth = 575
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 290
    Width = 612
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    ExplicitTop = 250
    DesignSize = (
      612
      56)
    object Label1: TLabel
      Left = 382
      Top = 10
      Width = 61
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Background:'
    end
    object FlatBitBtn1: TFlatBitBtn
      Left = 423
      Top = 28
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      TabOrder = 2
      Kind = bkOK
    end
    object FlatBitBtn2: TFlatBitBtn
      Left = 519
      Top = 28
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      TabOrder = 3
      Kind = bkCancel
    end
    object AlleChB: TCheckBox
      Left = 272
      Top = 9
      Width = 87
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'for all pages'
      TabOrder = 1
      Visible = False
    end
    object RadioGroup1: TRadioGroup
      Left = 2
      Top = 2
      Width = 245
      Height = 50
      Caption = 'Orientation'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Horizontal left'
        'Vertical up'
        'Vertikal down'
        'Horizontal right')
      TabOrder = 0
    end
    object AlleSubChB: TCheckBox
      Left = 272
      Top = 32
      Width = 98
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'for all subpages'
      TabOrder = 4
      Visible = False
    end
    object ColorBoxEN1: TColorBoxEN
      Left = 449
      Top = 4
      Width = 160
      Height = 22
      Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbCustomColor, cbPrettyNames]
      Anchors = [akTop, akRight]
      ItemHeight = 16
      TabOrder = 5
      OnChange = ColorBoxEN1Change
    end
  end
  inline RtfFrame1: TMyRtfFrame
    Left = 0
    Top = 0
    Width = 612
    Height = 290
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 612
    ExplicitHeight = 250
    inherited Panel1: TPanel
      Width = 612
      ExplicitWidth = 612
    end
    inherited RichEdit: TMyRichEdit
      Width = 612
      Height = 239
      ExplicitTop = 51
      ExplicitWidth = 612
      ExplicitHeight = 199
    end
  end
end
