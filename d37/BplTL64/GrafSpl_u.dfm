object GrafSplForm: TGrafSplForm
  Left = 227
  Top = 149
  ActiveControl = GraphControl1
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Graph'
  ClientHeight = 448
  ClientWidth = 627
  Color = clBtnFace
  Constraints.MinHeight = 394
  Constraints.MinWidth = 590
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
    Top = 395
    Width = 627
    Height = 38
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    DesignSize = (
      627
      38)
    object FlatBitBtn1: TBitBtn
      Left = 538
      Top = 9
      Width = 89
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object GraphControl1: TLGraphControl
    Left = 0
    Top = 38
    Width = 627
    Height = 357
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoScale = False
    Parameters.MinX = -10.000000000000000000
    Parameters.MaxX = 10.000000000000000000
    Parameters.StepTicksX = 1.000000000000000000
    Parameters.StepLabelsX = 5.000000000000000000
    Parameters.Log10X = False
    Parameters.MinY = -10.000000000000000000
    Parameters.MaxY = 10.000000000000000000
    Parameters.StepTicksY = 1.000000000000000000
    Parameters.StepLabelsY = 5.000000000000000000
    Parameters.Log10Y = False
    Parameters.LoWarning = 10.000000000000000000
    Parameters.HiWarning = 90.000000000000000000
    Parameters.DigitsX = 0
    Parameters.DigitsX2 = 0
    Parameters.DigitsY = 0
    Parameters.DigitsY2 = 0
    Plus_Label_Color = clBlack
    Style = [gcTicks, gcScroll, gcGrid]
    GridColor = clGray
    Tracking = True
    X2_Offset = 0.000000000000000000
    Y2_Offset = 0.000000000000000000
    Btn_Width = 20
    Dark = False
    Align = alClient
    TabStop = True
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Ctl3D = True
    ParentCtl3D = False
    OnZoomChange = GraphControl1ZoomChange
    OnPaintGraph = GraphControl1PaintGraph
    OnCursorPos = GraphControl1CursorPos
    OnGraphMouseLeave = GraphControl1GraphMouseLeave
    ParametersData = {
      000020C1000020410000803F0000A040000020C1000020410000803F0000A040
      000020410000B442000000000000803F000000000000803F000000000000}
  end
  object DockPlus1: TLDock
    Left = 0
    Top = 0
    Width = 627
    Height = 38
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    object ToolbarPlus1: TLToolbar
      Left = 0
      Top = 0
      CloseButton = False
      DefaultDock = DockPlus1
      DockedTo = DockPlus1
      DockPos = 0
      TabOrder = 0
      object ZoomInBtn: TLToolbarBtn
        Left = 104
        Top = 0
        Width = 50
        Height = 34
        Hint = 'Zoom In'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AllowAllUp = True
        GroupIndex = 1
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33CC3300000033333333333333CC33000000333733333333CCCCCC0000003307
          73333333CCCCCC00000030007733333333CC330000000F000773333333CC3300
          000030F000777777733333000000330F000000007733330000003330F0078887
          077333000000333300788FF870773300000033330788888F8707330000003333
          08888888F80733000000333307888888F807330000003333078FF88888073300
          00003333777FF888877333000000333330778888703333000000333333077777
          033333000000333333370007333333000000}
        GlyphMask.Data = {00000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ZoomInBtnClick
      end
      object ZoomOutBtn: TLToolbarBtn
        Left = 154
        Top = 0
        Width = 49
        Height = 34
        Hint = 'Zoom Out'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Enabled = False
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333000000333333333333333333000000333733333333CCCCCC0000003307
          73333333CCCCCC0000003000773333333333330000000F000773333333333300
          000030F000777777733333000000330F000000007733330000003330F0078887
          077333000000333300788FF870773300000033330788888F8707330000003333
          08888888F80733000000333307888888F807330000003333078FF88888073300
          00003333777FF888877333000000333330778888703333000000333333077777
          033333000000333333370007333333000000}
        GlyphMask.Data = {00000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = ZoomOutBtnClick
      end
      object SaveBtn: TLToolbarBtn
        Left = 0
        Top = 0
        Width = 50
        Height = 34
        Hint = 'Export WMF'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333330000003333333333333333330000003333333333333333330000003333
          333CCFFFFFFFCC0000003333333CCFCCFFFFCC0000003333333CCFCCFFFFCC00
          00003333303CCFFFFFFFCC0000003333300CCCCCCCCCCC00000000000000CCCC
          CCCCCC000000000000000EEEEEEEEC000000000000000EEEEEEEEC0000000000
          0000EEEEEEEEEC0000003333300CEEEEEEEEEC0000003333303CEEEEEEEEEC00
          00003333333CEEEEEEEEEC000000333333333333333333000000333333333333
          333333000000333333333333333333000000}
        GlyphMask.Data = {00000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = SaveBtnClick
      end
      object ToolbarSepPlus2: TLToolbarSep
        Left = 98
        Top = 0
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
      end
      object PrintBtn: TLToolbarBtn
        Left = 50
        Top = 0
        Width = 48
        Height = 34
        Hint = 'Print'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333330000003333333333333333330000003700000000000007330000003088
          8888888880703300000030777777777770703300000070000000000000003300
          0000088888888888880703000000088888888888880703000000089998888888
          8807030000000888888888888807030000007000000000000000730000003333
          0FFFFFFFF03333000000333330F4F4F4FF0333000000333330FF4F4F4F033300
          00003333330FFFFFFFF033000000333333000000000033000000333333333333
          333333000000333333333333333333000000}
        GlyphMask.Data = {00000000}
        ParentShowHint = False
        ShowHint = True
        OnClick = PrintBtnClick
      end
    end
    object ToolWindowPlus1: TLToolWindow
      Left = 216
      Top = 0
      ClientHeight = 34
      ClientWidth = 76
      Caption = 'Koordinaten'
      CloseButton = False
      DefaultDock = DockPlus1
      DockedTo = DockPlus1
      DockPos = 216
      TabOrder = 1
      object Label1: TLabel
        Left = 6
        Top = 1
        Width = 10
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'X:'
      end
      object Label2: TLabel
        Left = 6
        Top = 18
        Width = 10
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Y:'
      end
      object StaticText1: TStaticText
        Left = 22
        Top = 0
        Width = 68
        Height = 17
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 0
      end
      object StaticText2: TStaticText
        Left = 22
        Top = 18
        Width = 68
        Height = 17
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = '0'
        TabOrder = 1
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 433
    Width = 627
    Height = 15
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Panels = <>
    SimplePanel = True
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'wmf'
    Filter = 
      'Windows Metafile, with Aldus header (*wmf)|*.wmf|Enhanced Window' +
      's Metafile (*.emf)|*.emf'
    Left = 636
    Top = 4
  end
  object PrintDialog1: TPrintDialog
    Left = 606
    Top = 4
  end
end
