object FilterForm: TFilterForm
  Left = 393
  Top = 247
  HelpContext = 202
  ActiveControl = GraphControl1
  BorderStyle = bsDialog
  Caption = 'Filter'
  ClientHeight = 488
  ClientWidth = 434
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
    Top = 314
    Width = 434
    Height = 174
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    object GroupBox5: TGroupBox
      Left = 87
      Top = 0
      Width = 239
      Height = 157
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Filter'
      TabOrder = 1
      object Label14: TLabel
        Left = 8
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
        Left = 124
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
        Left = 10
        Top = 74
        Width = 34
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'fu [Hz]:'
      end
      object Label17: TLabel
        Left = 124
        Top = 74
        Width = 34
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'fo [Hz]:'
      end
      object Label18: TLabel
        Left = 10
        Top = 102
        Width = 50
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Delta [Hz]:'
      end
      object Label19: TLabel
        Left = 10
        Top = 130
        Width = 37
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Epsilon:'
      end
      object Label20: TLabel
        Left = 164
        Top = 104
        Width = 70
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        Caption = 'N ='
      end
      object Label21: TLabel
        Left = 164
        Top = 132
        Width = 70
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        Caption = 'L='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 12
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
        Left = 124
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
        Left = 34
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
        Left = 166
        Top = 16
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'EditFM'
        OnEnter = EditFMEnter
        OnExit = EditFMExit
        OnKeyDown = EditFMKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditFU: TEdit
        Left = 50
        Top = 72
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 3
        Text = 'EditFU'
        OnEnter = EditFMEnter
        OnExit = EditFUExit
        OnKeyDown = EditFUKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditFO: TEdit
        Left = 166
        Top = 71
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 4
        Text = 'EditFO'
        OnEnter = EditFMEnter
        OnExit = EditFOExit
        OnKeyDown = EditFOKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditDelta: TEdit
        Left = 64
        Top = 100
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 5
        Text = 'EditDelta'
        OnEnter = EditFMEnter
        OnExit = EditDeltaExit
        OnKeyDown = EditDeltaKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditEpsilon: TEdit
        Left = 64
        Top = 128
        Width = 65
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        TabOrder = 6
        Text = 'EditEpsilon'
        OnEnter = EditFMEnter
        OnExit = EditEpsilonExit
        OnKeyDown = EditEpsilonKeyDown
        OnKeyPress = EditFMKeyPress
      end
      object EditDivD: TEdit
        Left = 50
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
        OnKeyPress = EditDivDKeyPress
      end
      object StaticText1: TStaticText
        Left = 172
        Top = 45
        Width = 59
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
    object RadioGroup1: TRadioGroup
      Left = 7
      Top = 6
      Width = 76
      Height = 151
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ItemIndex = 0
      Items.Strings = (
        'Linear'
        'dB'
        'dB / Oct')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object OkBtn: TBitBtn
      Left = 336
      Top = 115
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
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
      Left = 336
      Top = 143
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
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
      TabOrder = 4
      OnClick = FlatBitBtn2Click
    end
    object FlatBitBtn3: TBitBtn
      Left = 336
      Top = 6
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
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
      TabOrder = 2
      OnClick = FlatBitBtn3Click
    end
    object FFTBtn: TBitBtn
      Left = 336
      Top = 34
      Width = 91
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
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
      TabOrder = 5
      Visible = False
      OnClick = FFTBtnClick
    end
    object LibBtn: TBitBtn
      Left = 336
      Top = 62
      Width = 91
      Height = 24
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
      TabOrder = 6
      OnClick = LibBtnClick
    end
    object HelpBtn: TBitBtn
      Left = 336
      Top = 89
      Width = 91
      Height = 24
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
      TabOrder = 7
      OnClick = HelpBtnClick
    end
  end
  object GraphControl1: TLGraphControl
    Left = 0
    Top = 0
    Width = 434
    Height = 297
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoScale = False
    Parameters.MaxX = 110.000000000000000000
    Parameters.StepTicksX = 10.000000000000000000
    Parameters.StepLabelsX = 50.000000000000000000
    Parameters.Log10X = False
    Parameters.MinY = -0.250000000000000000
    Parameters.MaxY = 1.250000000000000000
    Parameters.StepTicksY = 0.100000001490116100
    Parameters.StepLabelsY = 0.200000002980232200
    Parameters.Log10Y = False
    Parameters.LoWarning = 10.000000000000000000
    Parameters.HiWarning = 1.000000000000000000
    Parameters.DigitsX = 0
    Parameters.DigitsX2 = 0
    Parameters.DigitsY = 1
    Parameters.DigitsY2 = 0
    Plus_Label_Color = clBlack
    Style = [gcTicks]
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
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Ctl3D = True
    ParentCtl3D = False
    OnPaintGraph = GraphControl1PaintGraph
    ParametersData = {
      000000000000DC420000204100004842000080BE0000A03FCDCCCC3DCDCC4C3E
      000020410000803F000001000000803F000000000000803F000000000000}
  end
  object StaticText2: TStaticText
    Left = 0
    Top = 297
    Width = 434
    Height = 17
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
