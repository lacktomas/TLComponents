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
end
