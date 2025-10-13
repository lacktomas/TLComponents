object VariablesStrForm: TVariablesStrForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Variables'
  ClientHeight = 324
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object ValueListEditor1: TValueListEditor
    Left = 0
    Top = 0
    Width = 297
    Height = 288
    Align = alClient
    TabOrder = 0
    TitleCaptions.Strings = (
      'Variable'
      'Value')
    ColWidths = (
      150
      141)
  end
  object Panel1: TPanel
    Left = 0
    Top = 288
    Width = 297
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Locked = True
    ShowCaption = False
    TabOrder = 1
    object FlatBitBtn1: TBitBtn
      Left = 52
      Top = 6
      Width = 87
      Height = 25
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object FlatBitBtn2: TBitBtn
      Left = 148
      Top = 6
      Width = 87
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
