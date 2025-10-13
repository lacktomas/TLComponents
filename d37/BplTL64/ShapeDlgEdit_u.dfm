object ShapeEditDlg: TShapeEditDlg
  Left = 431
  Top = 294
  BorderStyle = bsDialog
  Caption = 'Edit Shape'
  ClientHeight = 680
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    437
    680)
  TextHeight = 13
  object AllChapters: TCheckBox
    Left = 332
    Top = 8
    Width = 101
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'for all Chapters'
    TabOrder = 0
    Visible = False
  end
  object FlatBitBtn1: TBitBtn
    Left = 336
    Top = 58
    Width = 89
    Height = 24
    Anchors = [akTop, akRight]
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
  end
  object FlatBitBtn2: TBitBtn
    Left = 336
    Top = 90
    Width = 89
    Height = 24
    Anchors = [akTop, akRight]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 12
    Top = 8
    Width = 313
    Height = 657
    TabOrder = 3
    object Label2: TLabel
      Left = 20
      Top = 313
      Width = 26
      Height = 13
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Style:'
    end
    object RxLabel: TLabel
      Left = 22
      Top = 345
      Width = 16
      Height = 13
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Rx:'
    end
    object RyLabel: TLabel
      Left = 121
      Top = 345
      Width = 16
      Height = 13
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Ry:'
    end
    object Rpt1: TLRpt
      Left = 2
      Top = 15
      Width = 309
      Height = 276
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      HorzScrollBar.Increment = 15
      VertScrollBar.Increment = 13
      Align = alTop
      TabOrder = 0
      IsPaintFormat = False
      FormatOrientation = foPortrait
      FormatSize = fsUser
      FormatWidth = 3000
      FormatHeight = 3000
      ShadowWidth = 0
      ZoomWarning = 'Zoom is out of range!'
      Frame.Visible = False
      Frame.Pen.Width = 4
      PageNr.LeftPosition = 1970
      PageNr.TopPosition = 120
      PageNr.Font.Charset = DEFAULT_CHARSET
      PageNr.Font.Color = clWindowText
      PageNr.Font.Height = -45
      PageNr.Font.Name = 'Segoe UI'
      PageNr.Font.Style = [fsBold]
      SendItemMouseDown = False
      object TLRptChapters
        AInt = 0
      end
      object TLRptComponents
      end
    end
    object GroupBox2: TGroupBox
      Left = 20
      Top = 402
      Width = 279
      Height = 114
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Brush'
      TabOrder = 4
      object Label1: TLabel
        Left = 12
        Top = 25
        Width = 27
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Color:'
      end
      object Label3: TLabel
        Left = 12
        Top = 59
        Width = 26
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Style:'
      end
      object ColorBoxDE1: TColorBox
        Left = 57
        Top = 21
        Width = 208
        Height = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        NoneColorColor = clNone
        Selected = clWhite
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor, cbPrettyNames]
        TabOrder = 0
        OnChange = ColorBoxDE1Change
      end
      object ComboBox2: TComboBox
        Left = 57
        Top = 57
        Width = 208
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Style = csDropDownList
        TabOrder = 1
        OnChange = ComboBox2Change
        Items.Strings = (
          'Filled'#10
          'Empty'
          #10'Horizontal'
          #10'Vertical'
          #10'L Diagonal'
          #10'R Diagonal'
          #10'Grid'
          #10'Skewed Grid')
      end
      object CheckBox1: TCheckBox
        Left = 12
        Top = 86
        Width = 102
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Transparent'
        TabOrder = 2
        OnClick = CheckBox1Click
      end
    end
    object ComboBox1: TComboBox
      Left = 47
      Top = 310
      Width = 252
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Style = csDropDownList
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        'Rectangle'
        #10'Square'
        #10'Round Rectangle'
        #10'Round Square'
        #10'Ellipse'
        #10'Circle'
        #10'Horizontal Line'#10
        'Vertical Line'
        #10'L Diagonal Line'
        #10'R Diagonal Line')
    end
    object GroupBox3: TGroupBox
      Left = 20
      Top = 527
      Width = 279
      Height = 127
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Pen'
      TabOrder = 5
      object Label4: TLabel
        Left = 12
        Top = 25
        Width = 27
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Color:'
      end
      object Label5: TLabel
        Left = 12
        Top = 59
        Width = 26
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Style:'
      end
      object Label6: TLabel
        Left = 12
        Top = 96
        Width = 31
        Height = 13
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Width:'
      end
      object ColorBoxDE2: TColorBox
        Left = 57
        Top = 21
        Width = 208
        Height = 22
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        NoneColorColor = clNone
        Selected = clWhite
        Style = [cbStandardColors, cbExtendedColors, cbSystemColors, cbIncludeNone, cbCustomColor, cbPrettyNames]
        TabOrder = 0
        OnChange = ColorBoxDE2Change
      end
      object ComboBox3: TComboBox
        Left = 57
        Top = 57
        Width = 208
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Style = csDropDownList
        TabOrder = 1
        OnChange = ComboBox3Change
        Items.Strings = (
          'Solid'#10
          'Dashed line'
          #10'Dotted'
          #10'DashDot'
          #10'DashDotDot'
          #10'No'
          #10'Border')
      end
      object EditW: TEdit
        Left = 57
        Top = 91
        Width = 55
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        TabOrder = 2
        Text = 'EditW'
        OnChange = EditWChange
      end
    end
    object EditRx: TEdit
      Left = 47
      Top = 342
      Width = 55
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 2
      Text = 'EditRx'
      OnChange = EditRxChange
    end
    object EditRy: TEdit
      Left = 145
      Top = 342
      Width = 56
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      TabOrder = 3
      Text = 'EditRy'
      OnChange = EditRyChange
    end
    object StartChB: TCheckBox
      Left = 47
      Top = 373
      Width = 75
      Height = 17
      Caption = 'Start arrow'
      TabOrder = 6
      OnClick = StartChBClick
    end
    object EndeChB: TCheckBox
      Left = 145
      Top = 373
      Width = 75
      Height = 17
      Caption = 'End arrow'
      TabOrder = 7
      OnClick = StartChBClick
    end
  end
  object AllPages: TCheckBox
    Left = 332
    Top = 32
    Width = 100
    Height = 17
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Anchors = [akTop, akRight]
    Caption = 'for all Pages'
    TabOrder = 4
    Visible = False
  end
end
