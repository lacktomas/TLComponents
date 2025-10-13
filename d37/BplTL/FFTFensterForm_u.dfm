object FFTFensterForm: TFFTFensterForm
  Left = 0
  Top = 0
  Anchors = [akTop, akRight]
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'FFT Window'
  ClientHeight = 450
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 304
    Width = 722
    Height = 146
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    DesignSize = (
      722
      146)
    object Label1: TLabel
      Left = 10
      Top = 68
      Width = 18
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'M ='
    end
    object Label2: TLabel
      Left = 89
      Top = 68
      Width = 90
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      Caption = 'N = 2^M = 1024'
    end
    object Label4: TLabel
      Left = 211
      Top = 45
      Width = 25
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Time:'
    end
    object Label5: TLabel
      Left = 329
      Top = 45
      Width = 9
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'to'
    end
    object Label6: TLabel
      Left = 580
      Top = 20
      Width = 75
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'Frequency [Hz]:'
    end
    object Label7: TLabel
      Left = 211
      Top = 94
      Width = 37
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Rel. Km:'
    end
    object Label8: TLabel
      Left = 329
      Top = 94
      Width = 9
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'to'
    end
    object LabelF: TLabel
      Left = 8
      Top = 21
      Width = 42
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Window:'
    end
    object Label3: TLabel
      Left = 211
      Top = 20
      Width = 40
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'From Ix:'
    end
    object Label9: TLabel
      Left = 10
      Top = 45
      Width = 84
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Window step [%]:'
    end
    object Label10: TLabel
      Left = 8
      Top = 95
      Width = 41
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Kenwert:'
    end
    object Label11: TLabel
      Left = 211
      Top = 123
      Width = 18
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Km:'
    end
    object Label12: TLabel
      Left = 329
      Top = 122
      Width = 9
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'to'
    end
    object Label13: TLabel
      Left = 329
      Top = 20
      Width = 9
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'to'
    end
    object Label14: TLabel
      Left = 211
      Top = 67
      Width = 40
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Time [s]:'
    end
    object Label15: TLabel
      Left = 329
      Top = 67
      Width = 9
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'to'
    end
    object Label16: TLabel
      Left = 423
      Top = 69
      Width = 46
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Width [s]:'
    end
    object Label17: TLabel
      Left = 423
      Top = 94
      Width = 56
      Height = 12
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Width [km]:'
    end
    object ScrollBar1: TScrollBar
      Left = 0
      Top = 0
      Width = 722
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      LargeChange = 10
      PageSize = 10
      TabOrder = 0
      OnChange = ScrollBar1Change
    end
    object EditM: TEdit
      Left = 34
      Top = 66
      Width = 34
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 1
      Text = '10'
      OnEnter = EditMEnter
      OnExit = EditMExit
      OnKeyDown = EditMKeyDown
      OnKeyPress = EditMKeyPress
    end
    object StaticText1: TStaticText
      Left = 254
      Top = 45
      Width = 68
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0:00:00'
      TabOrder = 3
    end
    object StaticText2: TStaticText
      Left = 346
      Top = 45
      Width = 67
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0:00:00'
      TabOrder = 4
    end
    object StaticText3: TStaticText
      Left = 659
      Top = 20
      Width = 55
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 5
    end
    object UpDown1: TUpDown
      Left = 68
      Top = 66
      Width = 15
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Associate = EditM
      Min = 1
      Position = 10
      TabOrder = 2
      Thousands = False
      OnClick = UpDown1Click
    end
    object CheckBox2: TCheckBox
      Left = 603
      Top = 54
      Width = 41
      Height = 15
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'PSD'
      TabOrder = 6
      OnClick = ScrollBar1Change
    end
    object OkBtn: TBitBtn
      Left = 603
      Top = 85
      Width = 116
      Height = 24
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
      TabOrder = 7
      OnClick = OkBtnClick
    end
    object FlatBitBtn2: TBitBtn
      Left = 603
      Top = 114
      Width = 116
      Height = 24
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 8
    end
    object FensterCB: TComboBox
      Left = 53
      Top = 18
      Width = 108
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Style = csDropDownList
      TabOrder = 9
      OnChange = FensterCBChange
    end
    object EditvonIx: TEdit
      Left = 254
      Top = 18
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 10
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditvonIxExit
      OnKeyDown = EditvonIxKeyDown
      OnKeyPress = EditMKeyPress
    end
    object EditSchritt: TEdit
      Left = 96
      Top = 43
      Width = 65
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 11
      Text = '100'
      OnEnter = EditMEnter
      OnExit = EditSchrittExit
      OnKeyDown = EditSchrittKeyDown
      OnKeyPress = EditSchrittKeyPress
    end
    object EditKm: TEdit
      Left = 254
      Top = 92
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 12
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditKmExit
      OnKeyDown = EditKmKeyDown
      OnKeyPress = EditSchrittKeyPress
    end
    object KenwertCB: TComboBox
      Left = 53
      Top = 92
      Width = 108
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Style = csDropDownList
      TabOrder = 13
      OnChange = KenwertCBChange
    end
    object EditbisIx: TEdit
      Left = 346
      Top = 18
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 14
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditbisIxExit
      OnKeyDown = EditbisIxKeyDown
      OnKeyPress = EditMKeyPress
    end
    object EditEndKm: TEdit
      Left = 346
      Top = 92
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 15
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditEndKmExit
      OnKeyDown = EditEndKmKeyDown
      OnKeyPress = EditSchrittKeyPress
    end
    object EditZeit: TEdit
      Left = 254
      Top = 65
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 16
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditZeitExit
      OnKeyDown = EditZeitKeyDown
      OnKeyPress = EditSchrittKeyPress
    end
    object EditEndZeit: TEdit
      Left = 346
      Top = 65
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 17
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditEndZeitExit
      OnKeyDown = EditEndZeitKeyDown
      OnKeyPress = EditSchrittKeyPress
    end
    object StaticText4: TStaticText
      Left = 484
      Top = 69
      Width = 67
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      TabOrder = 18
    end
    object StaticText5: TStaticText
      Left = 484
      Top = 94
      Width = 67
      Height = 16
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      TabOrder = 19
    end
    object EditAKm: TEdit
      Left = 254
      Top = 120
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 20
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditAKmExit
      OnKeyDown = EditAKmKeyDown
      OnKeyPress = EditSchrittKeyPress
    end
    object EditEndAKm: TEdit
      Left = 346
      Top = 120
      Width = 68
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 21
      Text = '0'
      OnEnter = EditMEnter
      OnExit = EditEndAKmExit
      OnKeyDown = EditEndAKmKeyDown
      OnKeyPress = EditSchrittKeyPress
    end
    object Filtered: TCheckBox
      Left = 8
      Top = 122
      Width = 97
      Height = 17
      Caption = 'Filtered'
      TabOrder = 22
      OnClick = ScrollBar1Change
    end
  end
  object GraphControl1: TLGraphControl
    Left = 0
    Top = 0
    Width = 722
    Height = 304
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoScale = False
    Parameters.MaxX = 55.000000000000000000
    Parameters.StepTicksX = 1.000000000000000000
    Parameters.StepLabelsX = 5.000000000000000000
    Parameters.Log10X = False
    Parameters.MaxY = 1.100000023841858000
    Parameters.StepTicksY = 0.050000000745058060
    Parameters.StepLabelsY = 0.100000001490116100
    Parameters.Log10Y = False
    Parameters.LoWarning = 10.000000000000000000
    Parameters.HiWarning = 1.000000000000000000
    Parameters.DigitsX = 0
    Parameters.DigitsX2 = 0
    Parameters.DigitsY = 1
    Parameters.DigitsY2 = 0
    Plus_Label_Color = clBlack
    Style = [gcTicks, gcScroll]
    LoWarningColor = clBlack
    HiWarningColor = clBlack
    X2_Offset = 0.000000000000000000
    Y2_Offset = 0.000000000000000000
    Btn_Width = 20
    Dark = False
    Align = alClient
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Ctl3D = True
    ParentCtl3D = False
    OnPaintGraph = GraphControl1PaintGraph
    OnCursorPos = GraphControl1CursorPos
    OnGraphMouseLeave = GraphControl1GraphMouseLeave
    ParametersData = {
      0000000000005C420000803F0000A04000000000CDCC8C3FCDCC4C3DCDCCCC3D
      000020410000803F000001000000803F000000000000803F000000000000}
  end
end
