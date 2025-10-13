object TableEditForm: TTableEditForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Table'
  ClientHeight = 478
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 437
    Width = 578
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Locked = True
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      578
      41)
    object FlatBitBtn1: TBitBtn
      Left = 349
      Top = 10
      Width = 109
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object FlatBitBtn2: TBitBtn
      Left = 461
      Top = 10
      Width = 109
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object FlatBitBtn3: TBitBtn
      Left = 234
      Top = 10
      Width = 109
      Height = 25
      Caption = 'Clear'
      ModalResult = 6
      TabOrder = 2
    end
  end
  object ColorStringGrid1: TLColorStringGrid
    Left = 0
    Top = 0
    Width = 578
    Height = 437
    Align = alClient
    DefaultColWidth = 100
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 1
    OnKeyDown = ColorStringGrid1KeyDown
    Dark = False
  end
end
