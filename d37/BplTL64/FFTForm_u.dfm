object FFTForm: TFFTForm
  Left = 316
  Top = 271
  HelpContext = 203
  ActiveControl = GraphControl1
  BorderStyle = bsDialog
  Caption = 'FFT'
  ClientHeight = 416
  ClientWidth = 792
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
  object GraphControl1: TLGraphControl
    Left = 0
    Top = 0
    Width = 792
    Height = 352
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
    PopupMenu = PopupMenu1
    TabOrder = 0
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
  object Panel1: TPanel
    Left = 0
    Top = 352
    Width = 792
    Height = 64
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 1
    DesignSize = (
      792
      64)
    object Label1: TLabel
      Left = 6
      Top = 26
      Width = 18
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'M ='
    end
    object Label2: TLabel
      Left = 90
      Top = 26
      Width = 97
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      Caption = 'N = 2^M = 1024'
    end
    object Label3: TLabel
      Left = 198
      Top = 26
      Width = 26
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Time:'
    end
    object Label4: TLabel
      Left = 290
      Top = 26
      Width = 9
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'to'
    end
    object Label5: TLabel
      Left = 383
      Top = 26
      Width = 75
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Frequency [Hz]:'
    end
    object Label6: TLabel
      Left = 198
      Top = 46
      Width = 18
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Km:'
    end
    object Label7: TLabel
      Left = 290
      Top = 46
      Width = 9
      Height = 13
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'to'
    end
    object ScrollBar1: TScrollBar
      Left = 0
      Top = 0
      Width = 792
      Height = 17
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
    object Edit1: TEdit
      Left = 30
      Top = 24
      Width = 37
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 1
      Text = '10'
      OnEnter = Edit1Enter
      OnExit = Edit1Exit
      OnKeyDown = Edit1KeyDown
      OnKeyPress = Edit1KeyPress
    end
    object FlatBitBtn1: TBitBtn
      Left = 695
      Top = 24
      Width = 90
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 8
    end
    object StaticText1: TStaticText
      Left = 226
      Top = 26
      Width = 60
      Height = 17
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
      Left = 308
      Top = 26
      Width = 60
      Height = 17
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
      Left = 462
      Top = 26
      Width = 60
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 5
    end
    object UpDown1: TUpDown
      Left = 67
      Top = 24
      Width = 17
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Associate = Edit1
      Min = 1
      Position = 10
      TabOrder = 2
      Thousands = False
      OnClick = UpDown1Click
    end
    object CheckBox1: TCheckBox
      Left = 540
      Top = 26
      Width = 67
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'with 0Hz'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = ScrollBar1Change
    end
    object CheckBox2: TCheckBox
      Left = 614
      Top = 26
      Width = 45
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'PSD'
      TabOrder = 7
      OnClick = ScrollBar1Change
    end
    object StaticText4: TStaticText
      Left = 226
      Top = 46
      Width = 60
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      TabOrder = 9
    end
    object StaticText5: TStaticText
      Left = 308
      Top = 46
      Width = 60
      Height = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0'
      TabOrder = 10
    end
    object Filtered: TCheckBox
      Left = 540
      Top = 48
      Width = 65
      Height = 17
      Caption = 'Filtered'
      TabOrder = 11
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'wmf'
    Filter = 'Windows Metafile (*.wmf)|*.wmf'
    Left = 50
    Top = 34
  end
  object PopupMenu1: TPopupMenu
    Left = 90
    Top = 36
    object ExportWMF1: TMenuItem
      Caption = 'Export WMF...'
      OnClick = ExportWMF1Click
    end
  end
end
