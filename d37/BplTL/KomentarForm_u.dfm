object KomentarForm: TKomentarForm
  Left = 249
  Top = 245
  BorderStyle = bsDialog
  Caption = 'Kommentar'
  ClientHeight = 457
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    775
    457)
  TextHeight = 13
  object OkButton: TBitBtn
    Left = 560
    Top = 420
    Width = 100
    Height = 27
    Anchors = [akRight, akBottom]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object CancelButton: TBitBtn
    Left = 666
    Top = 420
    Width = 100
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = 'Abbrechen'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 0
  end
  inline RtfFrameTL1: TRtfFrameTL
    Left = 0
    Top = 0
    Width = 776
    Height = 414
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    TabStop = True
    ExplicitWidth = 776
    ExplicitHeight = 414
    inherited Panel1: TPanel
      Width = 776
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 776
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
    end
    inherited RichEdit: TRichEdit
      Width = 776
      Height = 384
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 776
      ExplicitHeight = 384
    end
  end
end
