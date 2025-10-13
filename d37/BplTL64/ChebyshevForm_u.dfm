object ChebyshevForm: TChebyshevForm
  Left = 330
  Top = 249
  HelpContext = 201
  ActiveControl = GraphControl1
  BorderStyle = bsDialog
  Caption = 'Chebyshev'
  ClientHeight = 671
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 442
    Width = 657
    Height = 229
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Locked = True
    TabOrder = 0
    DesignSize = (
      657
      229)
    object Shape1: TShape
      Left = 6
      Top = 6
      Width = 27
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Brush.Color = clYellow
    end
    object Label1: TLabel
      Left = 38
      Top = 6
      Width = 184
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = '|H| = |f(z)|;  z = Cos(2*PI*f) + i Sin(2*PI*f)'
    end
    object Shape2: TShape
      Left = 266
      Top = 6
      Width = 27
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Brush.Color = clNavy
    end
    object Label2: TLabel
      Left = 298
      Top = 6
      Width = 51
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Re.H = f(z)'
    end
    object Shape3: TShape
      Left = 394
      Top = 6
      Width = 27
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Brush.Color = clMaroon
    end
    object Label3: TLabel
      Left = 426
      Top = 6
      Width = 48
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Im.H = f(z)'
    end
    object Shape4: TShape
      Left = 514
      Top = 6
      Width = 27
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Brush.Color = clGreen
    end
    object Label4: TLabel
      Left = 546
      Top = 6
      Width = 99
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'ArcTan(Im.H / Re.H)'
    end
    object OkBtn: TBitBtn
      Left = 464
      Top = 199
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'Ok'
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
      TabOrder = 0
      OnClick = OkBtnClick
    end
    object FlatBitBtn2: TBitBtn
      Left = 557
      Top = 199
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
    end
    object RadioGroup1: TRadioGroup
      Left = 332
      Top = 32
      Width = 75
      Height = 131
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ItemIndex = 0
      Items.Strings = (
        'Linear'
        'dB'
        'dB / Oct')
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object GroupBox5: TGroupBox
      Left = 413
      Top = 26
      Width = 235
      Height = 137
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Filter'
      TabOrder = 3
      object Label14: TLabel
        Left = 4
        Top = 18
        Width = 21
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Typ:'
      end
      object Label15: TLabel
        Left = 122
        Top = 18
        Width = 36
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'fm [Hz]:'
      end
      object Label16: TLabel
        Left = 6
        Top = 72
        Width = 18
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'NP:'
      end
      object Label17: TLabel
        Left = 122
        Top = 72
        Width = 34
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'fc [Hz]:'
      end
      object Label19: TLabel
        Left = 6
        Top = 100
        Width = 35
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'PR [%]:'
      end
      object Label5: TLabel
        Left = 6
        Top = 120
        Width = 119
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'f'#252'r PR = 0% - Butterworth'
      end
      object Label6: TLabel
        Left = 122
        Top = 102
        Width = 34
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'fu [Hz]:'
      end
      object Label7: TLabel
        Left = 6
        Top = 45
        Width = 30
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Div D:'
      end
      object Label8: TLabel
        Left = 122
        Top = 46
        Width = 44
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'fm Div D:'
      end
      object ComboBox1: TComboBox
        Left = 28
        Top = 16
        Width = 81
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Style = csDropDownList
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object EditFM: TEdit
        Left = 162
        Top = 16
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 1
        Text = 'EditFM'
        OnEnter = EditFMEnter
        OnExit = EditFMExit
        OnKeyDown = EditFMKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditNP: TEdit
        Left = 44
        Top = 70
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 3
        Text = 'EditNP'
        OnEnter = EditFMEnter
        OnExit = EditNPExit
        OnKeyDown = EditNPKeyDown
        OnKeyPress = EditNPKeyPress
      end
      object EditFC: TEdit
        Left = 162
        Top = 70
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 4
        Text = 'EditFC'
        OnEnter = EditFMEnter
        OnExit = EditFCExit
        OnKeyDown = EditFCKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditPR: TEdit
        Left = 44
        Top = 98
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 5
        Text = 'EditPR'
        OnEnter = EditFMEnter
        OnExit = EditPRExit
        OnKeyDown = EditPRKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditFU: TEdit
        Left = 162
        Top = 100
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 6
        Text = 'EditFU'
        OnEnter = EditFMEnter
        OnExit = EditFUExit
        OnKeyDown = EditFUKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditDivD: TEdit
        Left = 44
        Top = 43
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 2
        Text = 'EditDivD'
        OnEnter = EditFMEnter
        OnExit = EditDivDExit
        OnKeyDown = EditDivDKeyDown
        OnKeyPress = EditNPKeyPress
      end
      object StaticText1: TStaticText
        Left = 169
        Top = 45
        Width = 57
        Height = 17
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'D'
        TabOrder = 7
      end
    end
    object StringGrid1: TStringGrid
      Left = 6
      Top = 30
      Width = 319
      Height = 190
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ColCount = 3
      DefaultColWidth = 150
      DefaultRowHeight = 18
      RowCount = 4
      TabOrder = 4
      ColWidths = (
        150
        150
        150)
      RowHeights = (
        18
        18
        18
        18)
    end
    object FlatBitBtn3: TBitBtn
      Left = 464
      Top = 171
      Width = 91
      Height = 26
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'Apply'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333300000003333333333333333300000003333330033333333300000003333
        33A303333333300000003333333A3033333330000000333333A3A30333333000
        00003333333A3A30333330000000333333A3A3A30333300000003333333A3A3A
        303330000000333333A3A3A3A333300000003333333A3A3A3333300000003333
        33A3A3A33333300000003333333A3A33333330000000333333A3A33333333000
        00003333333A3333333330000000333333A33333333330000000333333333333
        333330000000}
      TabOrder = 5
      OnClick = FlatBitBtn3Click
    end
    object FFTBtn: TBitBtn
      Left = 557
      Top = 171
      Width = 91
      Height = 26
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'FFT'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333300000033333333333333333300000030000000000000000000000030FF
        0FF0FF0FF0FF0300000030FF0FF0FF0FF0FF0300000030FF0FF0FF0FF0FF0300
        000030FF0FF0FF0FF0FF0300000030FF0FF0FF0FF0FF0300000030FF0FF0FF0F
        F0FF0300000030FF0FF0FF0FF0FF0300000030000FF0FF0FF000030000003333
        0FF0FF0FF0333300000033330FF0FF0FF0333300000033330FF0000FF0333300
        000033330FF0330FF0333300000033330000330FF03333000000333333333300
        003333000000333333333333333333000000}
      TabOrder = 6
      Visible = False
      OnClick = FFTBtnClick
    end
    object LibBtn: TBitBtn
      Left = 332
      Top = 171
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Library...'
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555501
        1000555500005555555555011990055500005555555555011999900500005555
        0BB005119999999000005500BBB330119999999000005020BBB3B0119B999990
        00000220BBB3301999BB990500000220BBB3B0199999B90500000220B0030119
        9B999905000002200BB3019999BB9055000002B0BBB300B99999905500000B20
        B0033B0BB9999555000002200BB3B3300BB9955500000220BBB33BB3B00BB555
        00000220BBB3B33B30500555000002A0B33B33B3B055555500000AA03BFFBB3B
        3055555500005550AA00BBFBB05555550000555500AA00B00055555500005555
        55000000555555550000}
      TabOrder = 7
      OnClick = LibBtnClick
    end
    object HelpBtn: TBitBtn
      Left = 332
      Top = 198
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Help'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333330000003333333333333333330000003333333644333333330000003333
        333E64333333330000003333333EE63333333300000033333333333333333300
        00003333333644333333330000003333333E64333333330000003333333E6643
        33333300000033333333E664333333000000333333333E664333330000003333
        644333E64333330000003333E66433E64333330000003333EE66446643333300
        000033333EE66666333333000000333333EEEEE3333333000000333333333333
        333333000000333333333333333333000000}
      TabOrder = 8
      OnClick = HelpBtnClick
    end
  end
  object GraphControl1: TLGraphControl
    Left = 0
    Top = 0
    Width = 657
    Height = 426
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoScale = False
    Parameters.MaxX = 100.000000000000000000
    Parameters.StepTicksX = 5.000000000000000000
    Parameters.StepLabelsX = 10.000000000000000000
    Parameters.Log10X = False
    Parameters.MinY = -1.600000023841858000
    Parameters.MaxY = 1.600000023841858000
    Parameters.StepTicksY = 0.100000001490116100
    Parameters.StepLabelsY = 0.200000002980232200
    Parameters.Log10Y = False
    Parameters.LoWarning = 10.000000000000000000
    Parameters.HiWarning = 90.000000000000000000
    Parameters.DigitsX = 0
    Parameters.DigitsX2 = 0
    Parameters.DigitsY = 1
    Parameters.DigitsY2 = 0
    Plus_Label_Color = clBlack
    Style = [gcTicks, gcGrid]
    GridColor = clSilver
    X2_Offset = 0.000000000000000000
    Y2_Offset = 0.000000000000000000
    Btn_Width = 20
    Dark = False
    Align = alClient
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Ctl3D = True
    ParentCtl3D = False
    OnPaintGraph = GraphControl1PaintGraph
    ParametersData = {
      000000000000C8420000A04000002041CDCCCCBFCDCCCC3FCDCCCC3DCDCC4C3E
      000020410000B442000001000000803F000000000000803F000000000000}
  end
  object StaticText2: TStaticText
    Left = 0
    Top = 426
    Width = 657
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    AutoSize = False
    BorderStyle = sbsSunken
    TabOrder = 2
  end
end
