object ProgressForm: TProgressForm
  Left = 320
  Top = 277
  BorderStyle = bsDialog
  Caption = 'Progress'
  ClientHeight = 145
  ClientWidth = 301
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  DesignSize = (
    301
    145)
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 7
    Top = 82
    Width = 288
    Height = 23
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object StornoBtn: TBitBtn
    Left = 91
    Top = 114
    Width = 119
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Abbrechen'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 1
    OnClick = StornoBtnClick
  end
  object Animate1: TAnimate
    Left = 0
    Top = 15
    Width = 300
    Height = 54
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    CommonAVI = aviCopyFiles
    StopFrame = 34
  end
end
