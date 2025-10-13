object VariablesForm: TVariablesForm
  Left = 257
  Top = 184
  Caption = 'Edit'
  ClientHeight = 625
  ClientWidth = 710
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 400
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
  object PaintBox1: TPaintBox
    Left = 0
    Top = 482
    Width = 710
    Height = 113
    Align = alBottom
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    OnClick = PaintBox1Click
    OnPaint = PaintBox1Paint
    ExplicitTop = 496
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 27
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Locked = True
    TabOrder = 0
    object DeleteBtn: TLToolbarBtn
      Left = 94
      Top = 4
      Width = 85
      Height = 23
      Caption = 'Delete'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      GlyphMask.Data = {00000000}
      NumGlyphs = 2
      OnClick = DeleteBtnClick
    end
    object InsertBtn: TLToolbarBtn
      Left = 8
      Top = 4
      Width = 85
      Height = 23
      Caption = 'Add'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      GlyphMask.Data = {00000000}
      NumGlyphs = 2
      OnClick = InsertBtnClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 595
    Width = 710
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 1
    DesignSize = (
      710
      30)
    object CancelBtn: TBitBtn
      Left = 619
      Top = 4
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Cancel'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = CancelBtnClick
    end
    object OkBtn: TBitBtn
      Left = 524
      Top = 4
      Width = 89
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Ok'
      Default = True
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = OkBtnClick
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
  object StringGrid1: TLColorStringGrid
    Left = 0
    Top = 27
    Width = 710
    Height = 130
    Align = alTop
    ColCount = 4
    DefaultRowHeight = 22
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing, goThumbTracking]
    ParentFont = False
    TabOrder = 3
    OnExit = StringGrid1Exit
    OnGetEditMask = StringGrid1GetEditMask
    OnKeyDown = StringGrid1KeyDown
    OnKeyPress = StringGrid1KeyPress
    OnMouseUp = StringGrid1MouseUp
    OnSelectCell = StringGrid1SelectCell
    OnTopLeftChanged = StringGrid1TopLeftChanged
    Dark = False
    ColWidths = (
      64
      64
      64
      64)
    RowHeights = (
      22
      22)
  end
  inline EqLineFrame1: TEqLineFrame
    Left = 0
    Top = 157
    Width = 710
    Height = 325
    Align = alClient
    TabOrder = 2
    ExplicitTop = 157
    ExplicitWidth = 710
    ExplicitHeight = 325
    inherited Panel2: TPanel
      Width = 710
      Height = 325
      ExplicitWidth = 710
      ExplicitHeight = 325
      inherited ResultLabel: TLabel
        Top = 192
        Width = 710
        ExplicitTop = 266
        ExplicitWidth = 568
      end
      inherited Panel3: TPanel
        Top = 205
        Width = 710
        Height = 120
        ExplicitTop = 205
        ExplicitWidth = 710
        ExplicitHeight = 120
        inherited BackBtn: TLToolbarBtn
          Left = 689
          Top = 2
          ExplicitLeft = 624
          ExplicitTop = 2
        end
        inherited Edit: TLMathMemo
          Width = 687
          ExplicitWidth = 687
        end
      end
      inherited Panel4: TPanel
        Top = 145
        Width = 710
        Height = 47
        ExplicitTop = 145
        ExplicitWidth = 710
        ExplicitHeight = 47
        inherited SpeedButton2: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton3: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton4: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton5: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton6: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton7: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton8: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton9: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton10: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton11: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton12: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton13: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton14: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton16: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton17: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton18: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton19: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton20: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton21: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton22: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton23: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton24: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton25: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton26: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton27: TSpeedButton
          Font.Height = -12
        end
        inherited SpeedButton15: TSpeedButton
          Font.Height = -12
        end
      end
      inherited VarList: TListView
        Width = 710
        Height = 145
        ExplicitWidth = 710
        ExplicitHeight = 145
      end
    end
    inherited PopupMenu1: TPopupMenu
      Left = 427
      Top = 114
    end
  end
end
