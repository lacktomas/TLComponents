object SelChapterForm: TSelChapterForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Chapter'
  ClientHeight = 572
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 531
    Width = 316
    Height = 41
    Align = alBottom
    BevelOuter = bvSpace
    Caption = 'Panel1'
    Locked = True
    ShowCaption = False
    TabOrder = 0
    object OkBtn: TBitBtn
      Left = 70
      Top = 6
      Width = 89
      Height = 25
      Enabled = False
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object CancelBtn: TBitBtn
      Left = 165
      Top = 6
      Width = 90
      Height = 25
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object ChaptersListBox: TListBox
    Left = 0
    Top = 0
    Width = 316
    Height = 531
    Style = lbOwnerDrawFixed
    Align = alClient
    ItemHeight = 64
    TabOrder = 1
    OnClick = ChaptersListBoxClick
    OnDrawItem = ChaptersListBoxDrawItem
  end
end
