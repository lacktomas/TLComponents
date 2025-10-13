object WaForm: TWaForm
  Left = 369
  Top = 251
  ActiveControl = GraphControl1
  BorderStyle = bsDialog
  Caption = 'Wa'
  ClientHeight = 408
  ClientWidth = 567
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
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 312
    Width = 567
    Height = 96
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    DesignSize = (
      567
      96)
    object Label3: TLabel
      Left = 10
      Top = 7
      Width = 12
      Height = 13
      Caption = 'f1:'
    end
    object Label4: TLabel
      Left = 10
      Top = 39
      Width = 12
      Height = 13
      Caption = 'f2:'
    end
    object Label5: TLabel
      Left = 10
      Top = 71
      Width = 17
      Height = 13
      Caption = 'Q1:'
    end
    object Editf1: TEdit
      Left = 34
      Top = 5
      Width = 88
      Height = 21
      TabOrder = 0
      Text = 'Editf1'
      OnEnter = Editf1Enter
      OnExit = Editf1Exit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object Editf2: TEdit
      Left = 34
      Top = 37
      Width = 88
      Height = 21
      TabOrder = 1
      Text = 'Editf2'
      OnEnter = Editf1Enter
      OnExit = Editf2Exit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object EditQ1: TEdit
      Left = 34
      Top = 69
      Width = 88
      Height = 21
      TabOrder = 2
      Text = 'EditQ1'
      OnEnter = Editf1Enter
      OnExit = EditQ1Exit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object OkBtn: TBitBtn
      Left = 444
      Top = 28
      Width = 112
      Height = 31
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
      TabOrder = 3
      OnClick = OkBtnClick
    end
    object FlatBitBtn2: TBitBtn
      Left = 444
      Top = 61
      Width = 112
      Height = 31
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 4
    end
    object C116: TCheckBox
      Left = 444
      Top = 5
      Width = 119
      Height = 21
      Anchors = [akTop, akRight]
      Caption = '* C116 Tp12Hz'
      TabOrder = 5
      Visible = False
      OnClick = C116Click
    end
  end
  object GraphControl1: TLGraphControl
    Left = 0
    Top = 25
    Width = 567
    Height = 287
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoScale = False
    Parameters.MinX = -1.000000000000000000
    Parameters.MaxX = 2.500000000000000000
    Parameters.StepTicksX = 1.000000000000000000
    Parameters.StepLabelsX = 1.000000000000000000
    Parameters.Log10X = False
    Parameters.MinY = -3.000000000000000000
    Parameters.MaxY = 0.500000000000000000
    Parameters.StepTicksY = 1.000000000000000000
    Parameters.StepLabelsY = 1.000000000000000000
    Parameters.Log10Y = False
    Parameters.LoWarning = 10.000000000000000000
    Parameters.HiWarning = 90.000000000000000000
    Parameters.DigitsX = 1
    Parameters.DigitsX2 = 0
    Parameters.DigitsY = 1
    Parameters.DigitsY2 = 0
    Plus_Label_Color = clBlack
    Style = [gcTicks]
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
    OnCursorPos = GraphControl1CursorPos
    OnGraphMouseLeave = GraphControl1GraphMouseLeave
    OnPaintTickX = GraphControl1PaintTickX
    OnPaintTickY = GraphControl1PaintTickY
    OnPaintLabelX = GraphControl1PaintLabelX
    OnPaintLabelY = GraphControl1PaintLabelY
    ParametersData = {
      000080BF000020400000803F0000803F000040C00000003F0000803F0000803F
      000020410000B442010001000000803F000000000000803F000000000000}
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 567
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    BevelOuter = bvNone
    Locked = True
    TabOrder = 2
    object Label1: TLabel
      Left = 10
      Top = 7
      Width = 28
      Height = 13
      Caption = 'f [Hz]:'
    end
    object Label2: TLabel
      Left = 138
      Top = 7
      Width = 23
      Height = 13
      Caption = 'H [-]:'
    end
    object Label11: TLabel
      Left = 266
      Top = 7
      Width = 16
      Height = 13
      Caption = 'dB:'
    end
    object Label12: TLabel
      Left = 416
      Top = 7
      Width = 154
      Height = 16
      AutoSize = False
    end
    object StaticText1: TStaticText
      Left = 47
      Top = 7
      Width = 71
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 0
    end
    object StaticText2: TStaticText
      Left = 170
      Top = 7
      Width = 71
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 293
      Top = 7
      Width = 71
      Height = 21
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 2
    end
  end
end
