object EqLineFrame: TEqLineFrame
  Left = 0
  Top = 0
  Width = 571
  Height = 373
  TabOrder = 0
  OnExit = FrameExit
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 373
    Align = alClient
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    object ResultLabel: TLabel
      Left = 0
      Top = 360
      Width = 571
      Height = 13
      Align = alBottom
      AutoSize = False
      Caption = ' ='
      ExplicitLeft = 2
      ExplicitTop = 363
      ExplicitWidth = 539
    end
    object Panel3: TPanel
      Left = 0
      Top = 212
      Width = 571
      Height = 148
      Align = alBottom
      BevelOuter = bvNone
      Locked = True
      TabOrder = 0
      DesignSize = (
        571
        148)
      object BackBtn: TLToolbarBtn
        Left = 551
        Top = 4
        Width = 20
        Height = 20
        Hint = 'Back'
        Anchors = [akTop, akRight]
        Caption = '<-'
        ParentShowHint = False
        Repeating = True
        ShowHint = True
        OnClick = BackBtnClick
        ExplicitLeft = 519
      end
      object Edit: TLMathMemo
        Left = 0
        Top = -2
        Width = 548
        Height = 149
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'Edit')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        OnChange = EditChange
        OnEnter = EditEnter
        OnExit = EditExit
        OnKeyDown = EditKeyDown
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 166
      Width = 571
      Height = 46
      Align = alBottom
      Locked = True
      TabOrder = 1
      object SpeedButton2: TSpeedButton
        Left = 2
        Top = 2
        Width = 20
        Height = 20
        Caption = '+'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton3: TSpeedButton
        Left = 24
        Top = 2
        Width = 20
        Height = 20
        Caption = '-'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton4: TSpeedButton
        Left = 46
        Top = 2
        Width = 20
        Height = 20
        Caption = '*'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton5: TSpeedButton
        Left = 68
        Top = 2
        Width = 20
        Height = 20
        Caption = '/'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton6: TSpeedButton
        Left = 178
        Top = 2
        Width = 20
        Height = 20
        Caption = '('
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton7: TSpeedButton
        Left = 200
        Top = 2
        Width = 20
        Height = 20
        Caption = ')'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton8: TSpeedButton
        Left = 112
        Top = 2
        Width = 20
        Height = 20
        Caption = '<'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton9: TSpeedButton
        Left = 156
        Top = 2
        Width = 20
        Height = 20
        Caption = '>'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton10: TSpeedButton
        Left = 134
        Top = 2
        Width = 20
        Height = 20
        Caption = '='
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton11: TSpeedButton
        Left = 222
        Top = 2
        Width = 20
        Height = 20
        Caption = '['
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton12: TSpeedButton
        Left = 244
        Top = 2
        Width = 20
        Height = 20
        Caption = ','
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton13: TSpeedButton
        Left = 266
        Top = 2
        Width = 20
        Height = 20
        Caption = ']'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton14: TSpeedButton
        Left = 90
        Top = 2
        Width = 20
        Height = 20
        Caption = '^'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object FuncBtn: TLToolbarBtn
        Left = 288
        Top = 2
        Width = 91
        Height = 20
        DropdownCombo = True
        DropdownMenu = PopupMenu1
        Caption = 'SIN('
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = FuncBtnClick
      end
      object SpeedButton16: TSpeedButton
        Left = 2
        Top = 24
        Width = 20
        Height = 20
        Caption = '0'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton17: TSpeedButton
        Left = 24
        Top = 24
        Width = 20
        Height = 20
        Caption = '.'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton18: TSpeedButton
        Left = 46
        Top = 24
        Width = 20
        Height = 20
        Caption = '1'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton19: TSpeedButton
        Left = 68
        Top = 24
        Width = 20
        Height = 20
        Caption = '2'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton20: TSpeedButton
        Left = 90
        Top = 24
        Width = 20
        Height = 20
        Caption = '3'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton21: TSpeedButton
        Left = 112
        Top = 24
        Width = 20
        Height = 20
        Caption = '4'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton22: TSpeedButton
        Left = 134
        Top = 24
        Width = 20
        Height = 20
        Caption = '5'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton23: TSpeedButton
        Left = 156
        Top = 24
        Width = 20
        Height = 20
        Caption = '6'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton24: TSpeedButton
        Left = 178
        Top = 24
        Width = 20
        Height = 20
        Caption = '7'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton25: TSpeedButton
        Left = 200
        Top = 24
        Width = 20
        Height = 20
        Caption = '8'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton26: TSpeedButton
        Left = 222
        Top = 24
        Width = 20
        Height = 20
        Caption = '9'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton27: TSpeedButton
        Left = 244
        Top = 24
        Width = 20
        Height = 20
        Caption = 'E'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton15: TSpeedButton
        Left = 266
        Top = 24
        Width = 20
        Height = 20
        Caption = 'PI'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
    end
    object VarList: TListView
      Left = 0
      Top = 0
      Width = 571
      Height = 166
      Align = alClient
      Columns = <
        item
          Caption = 'Variable'
          Width = 160
        end
        item
          Caption = 'Value ='
          Width = 100
        end
        item
          Caption = 'Description'
          Width = 300
        end>
      HideSelection = False
      ReadOnly = True
      RowSelect = True
      SortType = stData
      TabOrder = 2
      ViewStyle = vsReport
      OnColumnClick = VarListColumnClick
      OnCompare = VarListCompare
      OnCreateItemClass = VarListCreateItemClass
      OnDblClick = VarListDblClick
    end
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 399
    Top = 208
    object SIN1: TMenuItem
      Caption = 'SIN'
      OnClick = SIN1Click
    end
    object COS1: TMenuItem
      Caption = 'COS'
      OnClick = SIN1Click
    end
    object TAN1: TMenuItem
      Caption = 'TAN'
      OnClick = SIN1Click
    end
    object COTAN1: TMenuItem
      Caption = 'COTAN'
      OnClick = SIN1Click
    end
    object ARCSIN1: TMenuItem
      Caption = 'ARCSIN'
      OnClick = SIN1Click
    end
    object ARCCOS1: TMenuItem
      Caption = 'ARCCOS'
      OnClick = SIN1Click
    end
    object ARCTAN1: TMenuItem
      Caption = 'ARCTAN'
      OnClick = SIN1Click
    end
    object SINH1: TMenuItem
      Caption = 'SINH'
      OnClick = SIN1Click
    end
    object COSH1: TMenuItem
      Caption = 'COSH'
      OnClick = SIN1Click
    end
    object TANH1: TMenuItem
      Caption = 'TANH'
      OnClick = SIN1Click
    end
    object ARCSINH1: TMenuItem
      Caption = 'ARCSINH'
      OnClick = SIN1Click
    end
    object ARCCOSH1: TMenuItem
      Caption = 'ARCCOSH'
      OnClick = SIN1Click
    end
    object ARCTANH1: TMenuItem
      Caption = 'ARCTANH'
      OnClick = SIN1Click
    end
    object EXP1: TMenuItem
      Caption = 'EXP'
      OnClick = SIN1Click
    end
    object LN1: TMenuItem
      Caption = 'LN'
      OnClick = SIN1Click
    end
    object LOG1: TMenuItem
      Caption = 'LOG'
      OnClick = SIN1Click
    end
    object ABS1: TMenuItem
      Caption = 'ABS'
      OnClick = SIN1Click
    end
    object dT1: TMenuItem
      Caption = 'dT'
      OnClick = SIN1Click
    end
    object ddT1: TMenuItem
      Caption = 'ddT'
      OnClick = SIN1Click
    end
    object IntegralDT1: TMenuItem
      Caption = 'IntegralDT'
      OnClick = SIN1Click
    end
  end
end
