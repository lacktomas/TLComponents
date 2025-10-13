object EquationEditForm: TEquationEditForm
  Left = 0
  Top = 0
  Caption = 'Equation Lines Editor'
  ClientHeight = 357
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 0
    Top = 187
    Width = 714
    Height = 15
    Align = alBottom
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitLeft = -8
    ExplicitTop = 186
  end
  object Panel1: TPanel
    Left = 0
    Top = 327
    Width = 714
    Height = 30
    Align = alBottom
    BevelOuter = bvSpace
    Caption = 'Panel1'
    Locked = True
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      714
      30)
    object OkBtn: TBitBtn
      Left = 537
      Top = 2
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 628
      Top = 2
      Width = 84
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object BreakLineChB: TCheckBox
      Left = 2
      Top = 6
      Width = 86
      Height = 17
      Caption = 'BreakLine'
      TabOrder = 2
      OnClick = BreakLineChBClick
    end
  end
  inline EquationFrame1: TEquationFrame
    Left = 0
    Top = 0
    Width = 714
    Height = 187
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 714
    ExplicitHeight = 187
    inherited Panel3: TPanel
      Width = 714
      Height = 141
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 714
      ExplicitHeight = 141
      inherited BackBtn: TLToolbarBtn
        Left = 694
        ExplicitLeft = 524
      end
      inherited Edit: TLMathMemo
        Width = 691
        Height = 141
        StyleElements = [seFont, seClient, seBorder]
        OnChange = EquationFrame1EditChange
        ExplicitWidth = 691
        ExplicitHeight = 141
      end
    end
    inherited Panel4: TPanel
      Width = 714
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 714
      inherited CalcBtn: TBitBtn
        Left = 628
        ExplicitLeft = 628
      end
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 202
    Width = 714
    Height = 125
    HorzScrollBar.Visible = False
    VertScrollBar.Tracking = True
    Align = alBottom
    TabOrder = 2
    UseWheelForScrolling = True
    DesignSize = (
      710
      121)
    object PaintBox1: TPaintBox
      Left = 0
      Top = 0
      Width = 689
      Height = 120
      Anchors = [akLeft, akTop, akRight]
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      PopupMenu = PopupMenu1
      OnPaint = PaintBox1Paint
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 340
    Top = 329
    object ExportEMFWMF1: TMenuItem
      Caption = 'Export EMF/WMF...'
      OnClick = ExportEMFWMF1Click
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = 'emf'
    Filter = 'Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Left = 388
    Top = 329
  end
end
