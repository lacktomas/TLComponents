object DemoForm: TDemoForm
  Left = 0
  Top = 0
  Caption = 'Demo'
  ClientHeight = 841
  ClientWidth = 1292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 972
    Top = 0
    Width = 320
    Height = 787
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel1'
    Locked = True
    ShowCaption = False
    TabOrder = 0
    object ListBox1: TListBox
      Left = 0
      Top = 0
      Width = 320
      Height = 157
      Align = alTop
      ItemHeight = 15
      MultiSelect = True
      TabOrder = 0
      OnClick = ListBox1Click
      OnDblClick = ListBox1DblClick
    end
    object PropertyTreeView1: TPropertyTreeView
      Left = 0
      Top = 157
      Width = 320
      Height = 630
      Align = alClient
      ParentColor = False
      Color = clBtnFace
      LicenceComponent = LicenceComponent1
      Div_Line = 160
      Category = True
      CategoriesColors.Level0 = clSkyBlue
      CategoriesColors.Level1 = clMoneyGreen
      CategoriesColors.Level2 = 13297407
      CategoriesColors.Level3 = 12632319
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 787
    Width = 1292
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'DEMO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Locked = True
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      1292
      35)
    object CloseBtn: TBitBtn
      Left = 1184
      Top = 6
      Width = 105
      Height = 25
      Action = CloseActn
      Anchors = [akTop, akRight]
      Caption = 'Close'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 822
    Width = 1292
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Panels = <>
    SimplePanel = True
    UseSystemFont = False
    StyleElements = [seClient, seBorder]
  end
  object PageControlV1: TLPageControlV
    Left = 0
    Top = 0
    Width = 972
    Height = 787
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 3
    TabPosition = tpLeft
    TabFont_N = 1.000000000000000000
    object TabSheet1: TTabSheet
      Caption = 'Equation'
      inline EquationFrame1: TAppEquationFrame
        Left = 0
        Top = 651
        Width = 941
        Height = 128
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 651
        ExplicitWidth = 941
        ExplicitHeight = 128
        inherited Panel3: TPanel
          Width = 941
          Height = 82
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          ExplicitHeight = 82
          inherited BackBtn: TLToolbarBtn
            Left = 921
            ExplicitLeft = 687
          end
          inherited Edit: TLMathMemo
            Width = 918
            Height = 82
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 918
            ExplicitHeight = 82
          end
        end
        inherited Panel4: TPanel
          Width = 941
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          inherited CalcBtn: TBitBtn
            Left = 843
            Top = 4
            ExplicitLeft = 843
            ExplicitTop = 4
          end
        end
      end
      inline GraphFrame1: TGraphFrame
        Left = 0
        Top = 0
        Width = 941
        Height = 651
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 941
        ExplicitHeight = 651
        inherited ToolBar1: TToolBar
          Width = 941
          ExplicitLeft = 0
          ExplicitWidth = 941
        end
        inherited GraphControl1: TLGraphControl
          Width = 941
          Height = 622
          ParentColor = False
          LicenceComponent = LicenceComponent1
          OnPaintGraph = GraphFrame1GraphControl1PaintGraph
          ExplicitLeft = 0
          ExplicitTop = 29
          ExplicitWidth = 941
          ExplicitHeight = 622
          ParametersData = {
            000020C1000020410000803F00000040000020C1000020410000803F00000040
            000020410000B442000000000000803F000000000000803F00000000803F}
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Equation - 3D Graph'
      ImageIndex = 7
      DesignSize = (
        941
        779)
      inline EquationFrame3: TAppEquationFrame
        Left = 0
        Top = 558
        Width = 941
        Height = 111
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 558
        ExplicitWidth = 941
        ExplicitHeight = 111
        inherited Panel3: TPanel
          Width = 941
          Height = 65
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          ExplicitHeight = 65
          inherited BackBtn: TLToolbarBtn
            Left = 921
            ExplicitLeft = 797
          end
          inherited Edit: TLMathMemo
            Width = 918
            Height = 65
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 918
            ExplicitHeight = 65
          end
        end
        inherited Panel4: TPanel
          Width = 941
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          inherited CalcBtn: TBitBtn
            Left = 855
            ExplicitLeft = 855
          end
        end
      end
      object L3DGraph1: TL3DGraph
        Left = 0
        Top = 0
        Width = 611
        Height = 558
        Align = alLeft
        TabStop = True
        Background_Farbe = clCream
        Frame_Color = clBlack
        Frame_Width = 1
        Rotate = '120; 180; 40'
        Translate = '-6; -20; 0'
        TranslateStep = 3.000000000000000000
        Scale = 0.649999976158142100
        Color_range = True
        LightAmbient = '0,2; 0,2; 0,2; 0'
        LightDiffuse = '0,4; 0,4; 0,4; 0'
        LightSpecular = '0,5; 0,5; 0,5; 0,1'
        LightPosition = '0; 500; 500'
        x_Min = -1.000000000000000000
        x_Max = 1.200000047683716000
        x_StepTicks = 0.100000001490116100
        x_StepLabels = 0.200000002980232200
        x_Caption = 'X'
        y_Min = -1.000000000000000000
        y_Max = 1.200000047683716000
        y_StepTicks = 0.100000001490116100
        y_StepLabels = 0.200000002980232200
        y_Caption = 'Y'
        z_Min = -0.200000002980232200
        z_Max = 1.000000000000000000
        z_StepTicks = 0.100000001490116100
        z_StepLabels = 0.200000002980232200
        z_Caption = 'Z'
        xy_Plane.Visible = True
        xy_Plane.Color = clBlack
        xy_Plane.Alpha = 0.400000005960464500
        xy_Plane.Brush_Color = clYellow
        yz_Plane.Visible = True
        yz_Plane.Color = clBlack
        yz_Plane.Alpha = 0.400000005960464500
        yz_Plane.Brush_Color = clLime
        yz_Plane.Position = -1.000000000000000000
        zx_Plane.Visible = True
        zx_Plane.Color = clBlack
        zx_Plane.Alpha = 0.400000005960464500
        zx_Plane.Brush_Color = clAqua
        zx_Plane.Position = -1.000000000000000000
        LicenceComponent = LicenceComponent1
        OnBuildGL = L3DGraph1BuildGL
      end
      inline EquationFrame4: TAppEquationFrame
        Left = 0
        Top = 669
        Width = 941
        Height = 110
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 669
        ExplicitWidth = 941
        ExplicitHeight = 110
        inherited Panel3: TPanel
          Width = 941
          Height = 64
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          ExplicitHeight = 64
          inherited BackBtn: TLToolbarBtn
            Left = 921
            ExplicitLeft = 921
          end
          inherited Edit: TLMathMemo
            Width = 918
            Height = 64
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 918
            ExplicitHeight = 64
          end
        end
        inherited Panel4: TPanel
          Width = 941
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          inherited CalcBtn: TBitBtn
            Left = 855
            ExplicitLeft = 855
          end
        end
      end
      object Eq3Visible: TCheckBox
        Left = 574
        Top = 573
        Width = 77
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Visible'
        Checked = True
        State = cbChecked
        TabOrder = 3
        OnClick = Equation3Change
      end
      object Eq4Visible: TCheckBox
        Left = 574
        Top = 679
        Width = 77
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Visible'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = Equation3Change
      end
      object Eq3Colors: TCheckBox
        Left = 672
        Top = 573
        Width = 69
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Colors'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = Equation3Change
      end
      object Eq4Colors: TCheckBox
        Left = 672
        Top = 679
        Width = 69
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'Colors'
        Checked = True
        State = cbChecked
        TabOrder = 6
        OnClick = Equation3Change
      end
      object Panel6: TPanel
        Left = 611
        Top = 0
        Width = 330
        Height = 558
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel6'
        Constraints.MinWidth = 300
        Locked = True
        ShowCaption = False
        TabOrder = 7
        object PaintBox1: TPaintBox
          Left = 0
          Top = 380
          Width = 330
          Height = 178
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          OnPaint = PaintBox1Paint
          ExplicitTop = 328
        end
        object LRichEdit1: TLRichEdit
          Left = 0
          Top = 0
          Width = 330
          Height = 380
          Align = alClient
          Color = clBtnFace
          Enabled = False
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LicenceComponent = LicenceComponent1
          RtfText = {
            4E0600007B5C727466315C616E73695C616E7369637067313235305C64656666
            305C6E6F7569636F6D7061745C6465666C616E67313032397B5C666F6E747462
            6C7B5C66305C666E696C5C66636861727365743020417269616C3B7D7B5C6631
            5C666E696C5C666368617273657432333820417269616C3B7D7D0D0A7B5C636F
            6C6F7274626C203B5C726564305C677265656E305C626C7565303B5C72656430
            5C677265656E305C626C75653132383B5C7265643132385C677265656E305C62
            6C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368656432302031
            302E302E32363130307D5C766965776B696E64345C756331200D0A5C70617264
            5C6366315C625C667332345C6C616E6731303333204B6579626F6172643A5C70
            61720D0A5C62305C66315C667331385C6C616E6731303239204C656674202F20
            5269676874206172726F775C6366305C7461625C7461625C636632206D6F7665
            205C66305C6C616E673130333320696E20646972656374696F6E5C66315C6C61
            6E67313032392020646973706C617920782D617869735C6366305C7061720D0A
            5C636631205570202F20446F776E206172726F775C6366305C7461625C746162
            5C636632206D6F7665205C66305C6C616E673130333320696E20646972656374
            696F6E5C66315C6C616E67313032392020646973706C617920792D617869735C
            6366305C7061720D0A5C6366335C7061720D0A5C62204374726C5C6366305C62
            3020205C636631202B204C656674202F205269676874206172726F775C636630
            5C7461625C63663220726F746174696F6E20615C66305C6C616E673130333320
            726F756E645C66315C6C616E67313032392020646973706C617920792D617869
            735C6366305C7061720D0A5C6366335C62204374726C5C6366305C623020205C
            636631202B205570202F20446F776E206172726F775C6366305C7461625C6366
            3220726F746174696F6E20615C66305C6C616E673130333320726F756E645C66
            315C6C616E67313032392020646973706C617920782D617869735C7061720D0A
            5C7061720D0A5C6366335C625C66305C6C616E67313033332053686966745C63
            66325C623020202D205C636631204C656674202F205269676874206172726F77
            5C7461625C6366325C66315C6C616E673130323920726F746174696F6E20615C
            66305C6C616E673130333320726F756E645C66315C6C616E6731303239202064
            6973706C6179205C66305C6C616E6731303333207A5C66315C6C616E67313032
            39202D617869735C6366315C66305C6C616E67313033335C7061720D0A5C6366
            335C622053686966745C6366325C623020202D2055705C63663120202F20446F
            776E206172726F775C7461625C636632207A6F6F6D2D696E202F207A6F6F6D2D
            6F75745C7061720D0A5C7061720D0A5C6366315C625C66733234204D6F757365
            20627574746F6E20646F776E3A5C62305C667331385C7061720D0A5C62204C65
            66743A5C62305C7461625C636632206D6F7665206F6E20646973706C61792070
            6C616E6520782D795C7061720D0A5C6366315C622052696768743A5C62305C74
            6162202D205C63663220637572736F72206D6F76656D656E7420696E20646972
            656374696F6E20646973706C617920782D617869733A5C7061720D0A5C746162
            5C74616220726F746174696F6E2061726F756E6420646973706C617920617869
            732D795C7061720D0A5C746162202D20637572736F72206D6F76656D656E7420
            696E20646972656374696F6E20646973706C617920792D617869733A5C706172
            0D0A5C7461625C74616220726F746174696F6E2061726F756E6420646973706C
            617920617869732D785C7061720D0A5C6366315C62204D6964646C653A5C6230
            5C746162202D205C63663220637572736F72206D6F76656D656E7420696E2064
            6972656374696F6E20646973706C617920792D617869733A5C7061720D0A5C74
            61625C74616220726F746174696F6E2061726F756E6420646973706C61792061
            7869732D7A5C7061720D0A5C746162202D205C636633204374726C5C63663220
            202B20637572736F72206D6F76656D656E7420696E20646972656374696F6E20
            646973706C617920792D617869733A5C7061720D0A5C7461625C746162207A6F
            6F6D2D696E202F207A6F6F6D2D6F75745C6366315C625C66315C6C616E673130
            32395C7061720D0A5C7061720D0A7D0D0A00}
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Complex Equation'
      ImageIndex = 2
      inline EquationFrame2: TAppEquationFrame
        Left = 0
        Top = 643
        Width = 941
        Height = 136
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 643
        ExplicitWidth = 941
        inherited Panel3: TPanel
          Width = 941
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          inherited BackBtn: TLToolbarBtn
            Left = 921
            ExplicitLeft = 798
          end
          inherited Edit: TLMathMemo
            Width = 918
            StyleElements = [seFont, seClient, seBorder]
            ExplicitWidth = 918
          end
        end
        inherited Panel4: TPanel
          Width = 941
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 941
          inherited CalcBtn: TBitBtn
            Left = 855
            ExplicitLeft = 855
          end
        end
      end
      inline GraphFrame2: TGraphFrame
        Left = 0
        Top = 0
        Width = 941
        Height = 643
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 941
        ExplicitHeight = 643
        inherited ToolBar1: TToolBar
          Width = 941
          ExplicitLeft = 0
          ExplicitWidth = 941
        end
        inherited GraphControl1: TLGraphControl
          Width = 941
          Height = 614
          LicenceComponent = LicenceComponent1
          Parameters.MinX = -1.000000000000000000
          Parameters.MaxX = 3.000000000000000000
          Parameters.StepLabelsX = 1.000000000000000000
          Parameters.Log10X = True
          Parameters.MinY = -3.000000000000000000
          Parameters.MaxY = 0.500000000000000000
          Parameters.StepLabelsY = 1.000000000000000000
          Parameters.Log10Y = True
          Parameters.DigitsY = 3
          OnPaintGraph = GraphFrame2GraphControl1PaintGraph
          ExplicitLeft = 0
          ExplicitTop = 29
          ExplicitWidth = 941
          ExplicitHeight = 614
          ParametersData = {
            000080BF000040400000803F0000803F000040C00000003F0000803F0000803F
            000020410000B442000003000101803F000000000000803F00000000803F}
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Display vector'
      ImageIndex = 1
      inline GraphVFrame1: TGraphVFrame
        Left = 0
        Top = 0
        Width = 941
        Height = 779
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 941
        ExplicitHeight = 779
        inherited GraphVLegend1: TGraphVLegend
          Width = 941
          Graph = GraphVFrame1.GraphControlV1
          Orientation = loHorizontal
          Texts.Strings = (
            'Sin(PI * T)'
            'dT(Sin(PI*T))')
          ExplicitWidth = 817
        end
        inherited ToolBar1: TToolBar
          Width = 941
          ExplicitWidth = 941
        end
        inherited GraphControlV1: TLGraphControlV
          Width = 941
          Height = 724
          LicenceComponent = LicenceComponent1
          Vectors = <
            item
              Color = clYellow
              Filtered = False
              Vector = FloatVector1
              Scale = 1.000000000000000000
              Parallel_Min = -10.000000000000000000
              Parallel_Max = 10.000000000000000000
            end
            item
              Color = clFuchsia
              Filtered = False
              Vector = FloatVector2
              Scale = 1.000000000000000000
              Parallel_Min = -10.000000000000000000
              Parallel_Max = 10.000000000000000000
            end>
          Parameters.DigitsX = 3
          Parallel = True
          ExplicitWidth = 941
          ExplicitHeight = 724
        end
      end
    end
    object Beam: TTabSheet
      Caption = 'Beams'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 0
        Top = 738
        Width = 941
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel2'
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          941
          41)
        object UpDown1: TUpDown
          Left = 913
          Top = 14
          Width = 16
          Height = 23
          Anchors = [akTop, akRight]
          Associate = Edit1
          Min = -10000
          Max = 10000
          Increment = 500
          Position = -5000
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 844
          Top = 14
          Width = 69
          Height = 23
          Anchors = [akTop, akRight]
          TabOrder = 1
          Text = '-5'#160'000'
          OnChange = Edit1Change
        end
      end
      inline GraphFrame3: TGraphFrame
        Left = 0
        Top = 0
        Width = 941
        Height = 738
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 941
        ExplicitHeight = 738
        inherited ToolBar1: TToolBar
          Width = 941
          ExplicitLeft = 0
          ExplicitWidth = 941
        end
        inherited GraphControl1: TLGraphControl
          Width = 941
          Height = 709
          LicenceComponent = LicenceComponent1
          Parameters.MinX = 0.000000000000000000
          Parameters.MaxX = 1000.000000000000000000
          Parameters.StepTicksX = 50.000000000000000000
          Parameters.StepLabelsX = 100.000000000000000000
          Parameters.MinY = -400.000000000000000000
          Parameters.MaxY = 400.000000000000000000
          Parameters.StepTicksY = 50.000000000000000000
          Parameters.StepLabelsY = 100.000000000000000000
          OnPaintGraph = GraphFrame3GraphControl1PaintGraph
          ExplicitLeft = 0
          ExplicitTop = 29
          ExplicitWidth = 941
          ExplicitHeight = 709
          ParametersData = {
            0000000000007A44000048420000C8420000C8C30000C843000048420000C842
            000020410000B442000000000000803F000000000000803F00000000803F}
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Eigen'
      ImageIndex = 4
      object Panel4: TPanel
        Left = 0
        Top = 742
        Width = 941
        Height = 37
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel4'
        Locked = True
        ShowCaption = False
        TabOrder = 0
        object ComboBox1: TComboBox
          Left = 678
          Top = 12
          Width = 131
          Height = 23
          Style = csDropDownList
          TabOrder = 0
          OnChange = ComboBox1Change
        end
      end
      inline GraphFrame4: TGraphFrame
        Left = 0
        Top = 0
        Width = 941
        Height = 742
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 941
        ExplicitHeight = 742
        inherited ToolBar1: TToolBar
          Width = 941
          ExplicitLeft = 0
          ExplicitWidth = 941
        end
        inherited GraphControl1: TLGraphControl
          Width = 941
          Height = 713
          LicenceComponent = LicenceComponent1
          Parameters.MinX = 0.000000000000000000
          Parameters.MaxX = 1000.000000000000000000
          Parameters.StepTicksX = 50.000000000000000000
          Parameters.StepLabelsX = 100.000000000000000000
          Parameters.MinY = -2.000000000000000000
          Parameters.MaxY = 2.000000000000000000
          Parameters.StepTicksY = 0.100000001490116100
          Parameters.StepLabelsY = 0.500000000000000000
          Parameters.DigitsY = 1
          X2_Offset = 0.000000000000000000
          Y2_Offset = 0.000000000000000000
          OnPaintGraph = GraphFrame4GraphControl1PaintGraph
          ExplicitLeft = 0
          ExplicitTop = 29
          ExplicitWidth = 941
          ExplicitHeight = 713
          ParametersData = {
            0000000000007A44000048420000C842000000C000000040CDCCCC3D0000003F
            000020410000B4420000010000000000000000000000000000000000803F}
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Differential dynamics'
      ImageIndex = 5
      object Panel5: TPanel
        Left = 0
        Top = 738
        Width = 941
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Caption = 'Panel5'
        Locked = True
        ShowCaption = False
        TabOrder = 0
        object TimeLabel: TLabel
          Left = 626
          Top = 14
          Width = 80
          Height = 15
          AutoSize = False
          Caption = 'Time = 0'
        end
        object StartBtn: TBitBtn
          Left = 712
          Top = 10
          Width = 89
          Height = 25
          Caption = 'Start'
          TabOrder = 0
          OnClick = StartBtnClick
        end
      end
      inline GraphFrame5: TGraphFrame
        Left = 0
        Top = 0
        Width = 941
        Height = 438
        Align = alClient
        TabOrder = 1
        ExplicitWidth = 941
        ExplicitHeight = 438
        inherited ToolBar1: TToolBar
          Width = 941
          ExplicitLeft = 0
          ExplicitWidth = 941
        end
        inherited GraphControl1: TLGraphControl
          Width = 941
          Height = 409
          LicenceComponent = LicenceComponent1
          Parameters.MinX = 0.000000000000000000
          Parameters.MaxX = 1000.000000000000000000
          Parameters.StepTicksX = 50.000000000000000000
          Parameters.StepLabelsX = 100.000000000000000000
          Parameters.MinY = -400.000000000000000000
          Parameters.MaxY = 400.000000000000000000
          Parameters.StepTicksY = 50.000000000000000000
          Parameters.StepLabelsY = 100.000000000000000000
          OnPaintGraph = GraphFrame5GraphControl1PaintGraph
          ExplicitLeft = 0
          ExplicitTop = 29
          ExplicitWidth = 941
          ExplicitHeight = 409
          ParametersData = {
            0000000000007A44000048420000C8420000C8C30000C843000048420000C842
            000020410000B442000000000000803F000000000000803F00000000803F}
        end
      end
      inline GraphVFrame2: TGraphVFrame
        Left = 0
        Top = 438
        Width = 941
        Height = 300
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 438
        ExplicitWidth = 941
        ExplicitHeight = 300
        inherited GraphVLegend1: TGraphVLegend
          Width = 941
          Graph = GraphVFrame2.GraphControlV1
          Texts.Strings = (
            'Qe')
          ExplicitWidth = 817
        end
        inherited ToolBar1: TToolBar
          Width = 941
          ExplicitWidth = 941
        end
        inherited GraphControlV1: TLGraphControlV
          Width = 941
          Height = 245
          LicenceComponent = LicenceComponent1
          Vectors = <
            item
              Color = clAqua
              Filtered = False
              Vector = FloatVectorQE
              Scale = 1.000000000000000000
              Parallel_Min = -10.000000000000000000
              Parallel_Max = 10.000000000000000000
            end>
          Parameters.MaxX = 0.100000001490116100
          Parameters.StepTicksX = 0.001000000047497451
          Parameters.StepLabelsX = 0.009999999776482582
          Parameters.MinY = -400.000000000000000000
          Parameters.MaxY = 400.000000000000000000
          Parameters.StepTicksY = 50.000000000000000000
          Parameters.StepLabelsY = 100.000000000000000000
          XInc = 0.000500000000000000
          ExplicitWidth = 941
          ExplicitHeight = 245
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Report'
      ImageIndex = 6
      object LRpt1: TLRpt
        Left = 225
        Top = 0
        Width = 680
        Height = 779
        HorzScrollBar.Increment = 34
        HorzScrollBar.Tracking = True
        VertScrollBar.Increment = 38
        VertScrollBar.Tracking = True
        Align = alClient
        TabOrder = 0
        FormatOrientation = foPortrait
        Tracking = True
        ZoomWarning = 'Zoom is out of range!'
        ExportDialog = SaveWMF
        Frame.LeftPosition = 150
        Frame.Height = 2820
        Frame.Pen.Width = 4
        PageNr.LeftPosition = 1970
        PageNr.TopPosition = 120
        PageNr.Font.Charset = DEFAULT_CHARSET
        PageNr.Font.Color = clWindowText
        PageNr.Font.Height = -45
        PageNr.Font.Name = 'Segoe UI'
        PageNr.Font.Style = [fsBold]
        SendItemMouseDown = False
        LicenceComponent = LicenceComponent1
        OnPostZoom = LRpt1PostZoom
        object TLRptChapters
          AInt = 0
          object LRptChapter1: TLRptChapter
            Pages = 1
            FormatOrientation = foPortrait
            Header.Orientation = ro0
            Header.Color = clNone
            Header.Left = 180
            Header.Top = 120
            Header.Width = 1840
            Header.Height = 100
            HeaderLine.Width = 3
            Footer.Orientation = ro0
            Footer.Color = clNone
            Footer.Left = 180
            Footer.Top = 2860
            Footer.Width = 1840
            Footer.Height = 100
            FooterLine.Width = 3
            HeaderText = {
              420100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220312E5C6366305C7461625C636632
              2079203D20662878295C6366305C756C5C66315C6C616E67313035315C706172
              0D0A7D0D0A00}
            FooterText = {
              440100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220312E5C6366305C7461625C636632
              2079203D20662878295C6366305C66315C667331385C6C616E67313035315C70
              61720D0A7D0D0A00}
          end
          object LRptChapter2: TLRptChapter
            Pages = 1
            FormatOrientation = foLandscape
            Header.Orientation = ro0
            Header.Color = clNone
            Header.Left = 180
            Header.Top = 120
            Header.Width = 1840
            Header.Height = 100
            HeaderLine.Width = 3
            Footer.Orientation = ro0
            Footer.Color = clNone
            Footer.Left = 180
            Footer.Top = 2860
            Footer.Width = 1840
            Footer.Height = 100
            FooterLine.Width = 3
            HeaderText = {
              470100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220322E5C6366305C7461625C636632
              2066203D206628782C2079295C6366305C66315C667331385C6C616E67313035
              315C7061720D0A7D0D0A00}
            FooterText = {
              470100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220322E5C6366305C7461625C636632
              2066203D206628782C2079295C6366305C66315C667331385C6C616E67313035
              315C7061720D0A7D0D0A00}
          end
          object LRptChapter4: TLRptChapter
            Pages = 1
            FormatOrientation = foPortrait
            Header.Orientation = ro0
            Header.Color = clNone
            Header.Left = 180
            Header.Top = 120
            Header.Width = 1840
            Header.Height = 100
            HeaderLine.Width = 3
            Footer.Orientation = ro0
            Footer.Color = clNone
            Footer.Left = 180
            Footer.Top = 2860
            Footer.Width = 1840
            Footer.Height = 100
            FooterLine.Width = 3
            HeaderText = {
              4C0100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220332E5C6366305C7461625C636632
              20436F6D706C6578204571756174696F6E5C6366305C66315C667331385C6C61
              6E67313035315C7061720D0A7D0D0A00}
            FooterText = {
              590100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220332E5C6366305C7461625C636632
              20436F6D706C6578204571756174696F6E5C6366305C66315C667331385C6C61
              6E67313035315C7061720D0A0D0A5C706172645C7061720D0A7D0D0A00}
          end
          object LRptChapter5: TLRptChapter
            Pages = 2
            FormatOrientation = foPortrait
            Header.Orientation = ro0
            Header.Color = clNone
            Header.Left = 180
            Header.Top = 120
            Header.Width = 1840
            Header.Height = 100
            HeaderLine.Width = 3
            Footer.Orientation = ro0
            Footer.Color = clNone
            Footer.Left = 180
            Footer.Top = 2860
            Footer.Width = 1840
            Footer.Height = 100
            FooterLine.Width = 3
            HeaderText = {
              4B0100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220342E5C6366305C7461625C636632
              20446973706C617920766563746F72735C6366305C66315C667331385C6C616E
              67313035315C7061720D0A7D0D0A00}
            FooterText = {
              580100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220342E5C6366305C7461625C636632
              20446973706C617920766563746F72735C6366305C66315C667331385C6C616E
              67313035315C7061720D0A0D0A5C706172645C7061720D0A7D0D0A00}
          end
          object LRptChapter6: TLRptChapter
            Pages = 1
            FormatOrientation = foPortrait
            Header.Orientation = ro0
            Header.Color = clNone
            Header.Left = 180
            Header.Top = 120
            Header.Width = 1840
            Header.Height = 100
            HeaderLine.Width = 3
            Footer.Orientation = ro0
            Footer.Color = clNone
            Footer.Left = 180
            Footer.Top = 2860
            Footer.Width = 1840
            Footer.Height = 100
            FooterLine.Width = 3
            HeaderText = {
              5A0100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220352E5C6366305C7461625C636632
              204265616D73206465666F726D6174696F6E5C6366305C66315C667331385C6C
              616E67313035315C7061720D0A0D0A5C706172645C7061720D0A7D0D0A00}
            FooterText = {
              5A0100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220352E5C6366305C7461625C636632
              204265616D73206465666F726D6174696F6E5C6366305C66315C667331385C6C
              616E67313035315C7061720D0A0D0A5C706172645C7061720D0A7D0D0A00}
          end
          object LRptChapter3: TLRptChapter
            Pages = 2
            FormatOrientation = foPortrait
            Header.Orientation = ro0
            Header.Color = clNone
            Header.Left = 180
            Header.Top = 120
            Header.Width = 1840
            Header.Height = 100
            HeaderLine.Width = 3
            Footer.Orientation = ro0
            Footer.Color = clNone
            Footer.Left = 180
            Footer.Top = 2860
            Footer.Width = 1840
            Footer.Height = 100
            FooterLine.Width = 3
            HeaderText = {
              630100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220362E5C6366305C7461625C636632
              204265616D20656967656E206672657175656E6369657320616E642065696765
              6E207368617065735C6366305C66315C667331385C6C616E67313035315C7061
              720D0A7D0D0A00}
            FooterText = {
              700100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220362E5C6366305C7461625C636632
              204265616D20656967656E206672657175656E6369657320616E642065696765
              6E207368617065735C6366305C66315C667331385C6C616E67313035315C7061
              720D0A0D0A5C706172645C7061720D0A7D0D0A00}
          end
          object LRptChapter7: TLRptChapter
            Pages = 2
            FormatOrientation = foPortrait
            Header.Orientation = ro0
            Header.Color = clNone
            Header.Left = 180
            Header.Top = 120
            Header.Width = 1840
            Header.Height = 100
            HeaderLine.Width = 3
            Footer.Orientation = ro0
            Footer.Color = clNone
            Footer.Left = 180
            Footer.Top = 2860
            Footer.Width = 1840
            Footer.Height = 100
            FooterLine.Width = 3
            HeaderText = {
              5E0100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220372E5C6366305C7461625C636632
              20446966666572656E6369616C2064796E616D6963735C6366305C66315C6673
              31385C6C616E67313035315C7061720D0A0D0A5C706172645C7061720D0A7D0D
              0A00}
            FooterText = {
              5E0100007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
              5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
              0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756530
              3B5C726564305C677265656E305C626C75653132383B7D0D0A7B5C2A5C67656E
              657261746F722052696368656432302031302E302E32363130307D5C76696577
              6B696E64345C756331200D0A5C706172645C71635C6366315C66305C66733534
              5C6C616E6731303333204368617074657220372E5C6366305C7461625C636632
              20446966666572656E6369616C2064796E616D6963735C6366305C66315C6673
              31385C6C616E67313035315C7061720D0A0D0A5C706172645C7061720D0A7D0D
              0A00}
          end
        end
        object TLRptComponents
          object LRptGraph1: TLRptGraph
            LeftPosition = 309.000000000000000000
            TopPosition = 408.000000000000000000
            Width = 1666.000000000000000000
            Height = 1666.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 0.500000000000000000
            AxisX.StepLabels = 2.000000000000000000
            AxisX.AxisLabel = 'x'
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 0.500000000000000000
            AxisY.StepLabels = 2.000000000000000000
            AxisY.AxisLabel = 'y'
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Position = xLeft
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = 'Equation1'
                Pen.Color = clBlue
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 500
            Legend.TopPosition = 30
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 60
            Legend.Position = lpRelative
            MinX = -10.000000000000000000
            MaxX = 10.000000000000000000
            MinY = -10.000000000000000000
            MaxY = 10.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            OnPaintCurve = LRptGraph1PaintCurve
          end
          object LRpt3DGraph1: TLRpt3DGraph
            LeftPosition = 172.000000000000000000
            TopPosition = 193.000000000000000000
            Chapter = 2
            Background_Farbe = 13297407
            Frame_Color = clBlack
            Frame_Width = 1
            Rotate = '130; 180; 45'
            Translate = '-7; -15; 0'
            TranslateStep = 3.000000000000000000
            Scale = 0.649999976158142100
            LightAmbient = '0,2; 0,2; 0,2; 0'
            LightDiffuse = '0,4; 0,4; 0,4; 0'
            LightSpecular = '0,5; 0,5; 0,5; 0,1'
            LightPosition = '0; 500; 500'
            x_Min = -1.000000000000000000
            x_Max = 1.200000047683716000
            x_StepTicks = 0.100000001490116100
            x_StepLabels = 0.200000002980232200
            x_Caption = 'X'
            y_Min = -1.000000000000000000
            y_Max = 1.200000047683716000
            y_StepTicks = 0.100000001490116100
            y_StepLabels = 0.200000002980232200
            y_Caption = 'Y'
            z_Min = -0.200000002980232200
            z_Max = 1.000000000000000000
            z_StepTicks = 0.100000001490116100
            z_StepLabels = 0.200000002980232200
            z_Caption = 'Z'
            xy_Plane.Visible = True
            xy_Plane.Color = clBlack
            xy_Plane.Alpha = 0.400000005960464500
            xy_Plane.Brush_Color = clYellow
            xy_Plane.Points_Color = clBlack
            yz_Plane.Visible = True
            yz_Plane.Color = clBlack
            yz_Plane.Alpha = 1.000000000000000000
            yz_Plane.Brush_Color = clNone
            yz_Plane.Points_Color = clBlack
            yz_Plane.Position = -1.000000000000000000
            zx_Plane.Visible = True
            zx_Plane.Color = clBlack
            zx_Plane.Alpha = 1.000000000000000000
            zx_Plane.Brush_Color = clNone
            zx_Plane.Points_Color = clBlack
            zx_Plane.Position = -1.000000000000000000
            Color_range = True
            Width = 1781.000000000000000000
            Height = 1785.000000000000000000
            OnBuildGL = L3DGraph1BuildGL
          end
          object LRptRtf2: TLRptRtf
            LeftPosition = 1986.000000000000000000
            TopPosition = 222.000000000000000000
            Chapter = 2
            Scale = 1.500000000000000000
            Width = 688.000000000000000000
            Height = 540.500000000000000000
            RtfText = {
              650600007B5C727466315C616E73695C616E7369637067313235305C64656666
              305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
              6C7B5C66305C666E696C5C66636861727365743020417269616C3B7D7B5C6631
              5C666E696C5C666368617273657432333820417269616C3B7D7D0D0A7B5C636F
              6C6F7274626C203B5C726564305C677265656E305C626C7565303B5C72656430
              5C677265656E305C626C75653132383B5C7265643132385C677265656E305C62
              6C7565303B7D0D0A7B5C2A5C67656E657261746F722052696368656432302031
              302E302E32363130307D5C766965776B696E64345C756331200D0A5C70617264
              5C6366315C625C667332345C6C616E6731303333204B6579626F6172643A5C70
              61720D0A5C62305C66315C667331385C6C616E6731303239204C656674202F20
              5269676874206172726F775C6366305C7461625C7461625C636632206D6F7665
              205C66305C6C616E673130333320696E20646972656374696F6E5C66315C6C61
              6E67313032392020646973706C617920782D617869735C6366305C7061720D0A
              5C636631205570202F20446F776E206172726F775C6366305C7461625C746162
              5C636632206D6F7665205C66305C6C616E673130333320696E20646972656374
              696F6E5C66315C6C616E67313032392020646973706C617920792D617869735C
              6366305C7061720D0A5C6366335C7061720D0A5C62204374726C5C6366305C62
              3020205C636631202B204C656674202F205269676874206172726F775C636630
              5C7461625C63663220726F746174696F6E20615C66305C6C616E673130333320
              726F756E645C66315C6C616E67313032392020646973706C617920792D617869
              735C6366305C7061720D0A5C6366335C62204374726C5C6366305C623020205C
              636631202B205570202F20446F776E206172726F775C6366305C7461625C6366
              3220726F746174696F6E20615C66305C6C616E673130333320726F756E645C66
              315C6C616E67313032392020646973706C617920782D617869735C7061720D0A
              5C7061720D0A5C6366335C625C66305C6C616E67313033332053686966745C63
              66325C623020202D205C636631204C656674202F205269676874206172726F77
              5C7461625C6366325C66315C6C616E673130323920726F746174696F6E20615C
              66305C6C616E673130333320726F756E645C66315C6C616E6731303239202064
              6973706C6179205C66305C6C616E6731303333207A5C66315C6C616E67313032
              39202D617869735C6366315C66305C6C616E67313033335C7061720D0A5C6366
              335C622053686966745C6366325C623020202D2055705C63663120202F20446F
              776E206172726F775C7461625C636632207A6F6F6D2D696E202F207A6F6F6D2D
              6F75745C7061720D0A5C7061720D0A5C6366315C625C66733234204D6F757365
              20627574746F6E20646F776E3A5C62305C667331385C7061720D0A5C62204C65
              66743A5C62305C7461625C636632206D6F7665206F6E20646973706C61792070
              6C616E6520782D795C7061720D0A5C6366315C622052696768743A5C62305C74
              6162202D205C63663220637572736F72206D6F76656D656E7420696E20646972
              656374696F6E20646973706C617920782D617869733A5C7061720D0A5C746162
              5C74616220726F746174696F6E2061726F756E6420646973706C617920617869
              732D795C7061720D0A5C746162202D20637572736F72206D6F76656D656E7420
              696E20646972656374696F6E20646973706C617920792D617869733A5C706172
              0D0A5C7461625C74616220726F746174696F6E2061726F756E6420646973706C
              617920617869732D785C7061720D0A5C6366315C62204D6964646C653A5C6230
              5C746162202D205C63663220637572736F72206D6F76656D656E7420696E2064
              6972656374696F6E20646973706C617920792D617869733A5C7061720D0A5C74
              61625C74616220726F746174696F6E2061726F756E6420646973706C61792061
              7869732D7A5C7061720D0A5C746162202D205C636633204374726C5C63663220
              202B20637572736F72206D6F76656D656E7420696E20646972656374696F6E20
              646973706C617920792D617869733A5C7061720D0A5C7461625C746162207A6F
              6F6D2D696E202F207A6F6F6D2D6F75745C6366315C625C66315C6C616E673130
              32395C7061720D0A5C7061720D0A5C62305C667334385C6C616E67313035315C
              7061720D0A7D0D0A00}
          end
          object LRptTable1: TLRptTable
            LeftPosition = 301.000000000000000000
            TopPosition = 1640.000000000000000000
            Chapter = 6
            ToPage = 2
            Width = 1439.000000000000000000
            Height = 599.000000000000000000
            Columns = <
              item
                Caption = 'C1'
                PhysicalUnit = 'Hz'
                Width = 12.000000000000000000
                Color = clSkyBlue
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C2'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C3'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C4'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C5'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C6'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C7'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C8'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C9'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C10'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C11'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C12'
                Width = 12.000000000000000000
                Color = clWhite
                Linie_Width = 2
                Filtered = False
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            FramePen.Width = 3
            Caption = 'Eigen frequencies and shapes'
            CaptionColor = clMoneyGreen
            CaptionHeight = 5.000000000000000000
            CaptionFont.Charset = DEFAULT_CHARSET
            CaptionFont.Color = clMaroon
            CaptionFont.Height = -35
            CaptionFont.Name = 'Segoe UI'
            CaptionFont.Style = [fsBold]
            CaptionAlignment = taCenter
            HeaderColor = clSilver
            HeaderHeight = 5.000000000000000000
            HeaderFont.Charset = DEFAULT_CHARSET
            HeaderFont.Color = clBlack
            HeaderFont.Height = -19
            HeaderFont.Name = 'Segoe UI'
            HeaderFont.Style = []
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            LineHeight = 5.000000000000000000
            LinesCount = 10
            OnGetRowCount = LRptTable1GetRowCount
            OnGetCellValue = LRptTable1GetCellValue
          end
          object LRptGraph2: TLRptGraph
            LeftPosition = 301.000000000000000000
            TopPosition = 437.000000000000000000
            Chapter = 6
            Width = 1502.000000000000000000
            Height = 1001.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 0.100000001490116100
            AxisX.StepLabels = 0.100000001490116100
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 0.100000001490116100
            AxisY.StepLabels = 0.200000002980232200
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = 'C1'
                Pen.Width = 10
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C2'
                Pen.Width = 9
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C3'
                Pen.Width = 8
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C4'
                Pen.Width = 7
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C5'
                Pen.Width = 6
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C6'
                Pen.Width = 5
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C7'
                Pen.Width = 4
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C8'
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C9'
                Pen.Width = 2
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C10'
                Pen.Width = 1
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 1550
            Legend.TopPosition = 100
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 50
            Legend.Position = lpRelative
            MaxX = 1.000000000000000000
            MinY = -1.600000023841858000
            MaxY = 1.600000023841858000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            BackGround = clSilver
            OnPaintCurve = LRptGraph2PaintCurve
            OnCurveProperties = LRptGraph2CurveProperties
          end
          object LRptPaintBox2: TLRptPaintBox
            LeftPosition = 301.000000000000000000
            TopPosition = 2221.000000000000000000
            OnOutPaint = LRptPaintBox2OutPaint
            Width = 1683.000000000000000000
            Height = 601.000000000000000000
          end
          object LRptPaintBox3: TLRptPaintBox
            LeftPosition = 1986.000000000000000000
            TopPosition = 826.000000000000000000
            Chapter = 2
            OnOutPaint = LRptPaintBox3OutPaint
            Width = 705.000000000000000000
            Height = 1098.000000000000000000
          end
          object LRptGraph3: TLRptGraph
            LeftPosition = 406.000000000000000000
            TopPosition = 437.000000000000000000
            Chapter = 3
            Width = 1510.000000000000000000
            Height = 1510.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 0.100000001490116100
            AxisX.StepLabels = 1.000000000000000000
            AxisX.AxisLabel = 'f [Hz]'
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.Logaritmic10 = True
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 0.100000001490116100
            AxisY.StepLabels = 1.000000000000000000
            AxisY.AxisLabel = '|H|'
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Logaritmic10 = True
            AxisY.Position = xLeft
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = '|H|'
                Pen.Color = clBlue
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 1200
            Legend.TopPosition = 100
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 50
            Legend.Position = lpRelative
            MinX = -1.000000000000000000
            MaxX = 2.000000000000000000
            MinY = -3.000000000000000000
            MaxY = 1.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            OnPaintCurve = LRptGraph3PaintCurve
          end
          object LRptPaintBox4: TLRptPaintBox
            LeftPosition = 276.000000000000000000
            TopPosition = 2120.000000000000000000
            Chapter = 3
            OnOutPaint = LRptPaintBox4OutPaint
            Width = 1649.000000000000000000
            Height = 698.000000000000000000
          end
          object LRptGraph4: TLRptGraph
            LeftPosition = 284.000000000000000000
            TopPosition = 627.000000000000000000
            Chapter = 4
            ToPage = 2
            Width = 1645.000000000000000000
            Height = 1644.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 1.000000000000000000
            AxisX.StepLabels = 5.000000000000000000
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 0.100000001490116100
            AxisY.StepLabels = 1.000000000000000000
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = 'Sin(PI * T)'
                Pen.Color = clNavy
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Vector = FloatVector1
                Filtered = False
                XStep = 0.100000001490116100
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'dT(Sin(PI * T))'
                Pen.Color = clPurple
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Vector = FloatVector2
                Filtered = False
                XStep = 0.100000001490116100
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 1200
            Legend.TopPosition = 100
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 50
            Legend.Position = lpRelative
            MaxX = 50.000000000000000000
            MinY = -5.000000000000000000
            MaxY = 5.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object LRptGraph5: TLRptGraph
            LeftPosition = 330.000000000000000000
            TopPosition = 290.000000000000000000
            Chapter = 5
            Width = 1662.000000000000000000
            Height = 795.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 50.000000000000000000
            AxisX.StepLabels = 100.000000000000000000
            AxisX.AxisLabel = 'L [mm]'
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 50.000000000000000000
            AxisY.StepLabels = 100.000000000000000000
            AxisY.AxisLabel = 'w [mm]'
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = 'Beam1 w[mm]'
                Pen.Color = clNavy
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'Beam2 w[mm]'
                Pen.Color = clPurple
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 1200
            Legend.TopPosition = 100
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 50
            Legend.Position = lpRelative
            MaxX = 1000.000000000000000000
            MinY = -400.000000000000000000
            MaxY = 400.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            OnPaintCurve = LRptGraph5PaintCurve
          end
          object LRptGraph6: TLRptGraph
            LeftPosition = 330.000000000000000000
            TopPosition = 1258.000000000000000000
            Chapter = 5
            Width = 1662.000000000000000000
            Height = 795.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 50.000000000000000000
            AxisX.StepLabels = 100.000000000000000000
            AxisX.AxisLabel = 'L [mm]'
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 0.100000001490116100
            AxisY.StepLabels = 0.200000002980232200
            AxisY.AxisLabel = 'fi [rad]'
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = 'Beam1 fi[rad]'
                Pen.Color = clNavy
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'Beam2 fi[rad]'
                Pen.Color = clPurple
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 1200
            Legend.TopPosition = 100
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 50
            Legend.Position = lpRelative
            MaxX = 1000.000000000000000000
            MinY = -0.600000023841857900
            MaxY = 0.600000023841857900
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            OnPaintCurve = LRptGraph6PaintCurve
          end
          object LRptImage1: TLRptImage
            LeftPosition = 246.000000000000000000
            TopPosition = 2267.000000000000000000
            Chapter = 5
            Stretch = True
            Picture.Data = {
              09544D65746166696C65CA240000D7CDC69A0000000000004033800D00090000
              0000D16001000900000358120000040039070000000005000000020101000000
              050000000102FFFFFF00050000002E01190000000B00000026060F000C004D61
              746854797065000030031200000026060F001A00FFFFFFFF000010000000C0FF
              FFFFB3FFFFFF00330000330D000008000000FA02000013000000000000020400
              00002D0100000500000014029104940305000000130291047006050000000902
              0000000205000000140225033D0E1C000000FB0222FF00000000000090010000
              00000002001054696D6573204E657720526F6D616E0010E6FF02A3001A77D0A0
              1F777B1F1A77040000002D0101000A000000320A00000000020000003232260A
              BC01050000001402710515051C000000FB0222FF000000000000900100000000
              0002001054696D6573204E657720526F6D616E0010E6FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F001010009000000320A000000000100
              00003332BC010500000014025D06201F1C000000FB0222FF0000000000009001
              000000000002001054696D6573204E657720526F6D616E0010E6FF02A3001A77
              D0A01F777B1F1A77040000002D01010004000000F001020009000000320A0000
              0000010000003132BC01050000001402A5073D0E1C000000FB0222FF00000000
              00009001000000000002001054696D6573204E657720526F6D616E0010E6FF02
              A3001A77D0A01F777B1F1A77040000002D01020004000000F00101000A000000
              320A00000000020000003232260ABC01050000001402180B6A0D1C000000FB02
              22FF0000000000009001000000000002001054696D6573204E657720526F6D61
              6E0010E6FF02A3001A77D0A01F777B1F1A77040000002D01010004000000F001
              020009000000320A00000000010000003132BC01050000001402300DA2031C00
              0000FB0222FF0000000000009001000000000002001054696D6573204E657720
              526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D0102000400
              0000F001010009000000320A00000000010000003132BC010500000014029101
              F0071C000000FB0280FE0000000000009001000000000002001054696D657320
              4E657720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D01
              010004000000F001020010000000320A0000000006000000313236313236C000
              4D032B06C0003B030003050000001402D10356071C000000FB0280FE00000000
              00009001000000000002001054696D6573204E657720526F6D616E0010E6FF02
              A3001A77D0A01F777B1F1A77040000002D01020004000000F00101000D000000
              320A000000000400000036343632AA047C05AA04000305000000140211066E08
              1C000000FB0280FE0000000000009001000000000002001054696D6573204E65
              7720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D010100
              04000000F001020010000000320A0000000006000000313236313236C0003B03
              4105C00025040003050000001402510856071C000000FB0280FE000000000000
              9001000000000002001054696D6573204E657720526F6D616E0010E6FF02A300
              1A77D0A01F777B1F1A77040000002D01020004000000F00101000D000000320A
              000000000400000036323634AA047C05AA040003050000001402F401460E1C00
              0000FB0222FF0000000000009001010000000002001054696D6573204E657720
              526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D0101000400
              0000F00102000A000000320A00000000020000006565260ABC01050000001402
              6B03771E1C000000FB0222FF0000000000009001010000000002001054696D65
              73204E657720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A7704000000
              2D01020004000000F00101000A000000320A00000000020000006E656F00BC01
              05000000140234049F091C000000FB0222FF0000000000009001010000000002
              001054696D6573204E657720526F6D616E0010E6FF02A3001A77D0A01F777B1F
              1A77040000002D01010004000000F001020010000000320A0000000006000000
              656565656969AA047C05AA0421104209BC0105000000140254057E011C000000
              FB0222FF0000000000009001010000000002001054696D6573204E657720526F
              6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D01020004000000
              F00101000D000000320A000000000400000065656969A71FF5031209BC010500
              000014025D06421E1C000000FB0222FF00000000000090010100000000020010
              54696D6573204E657720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77
              040000002D01010004000000F001020009000000320A00000000010000006565
              BC010500000014027406B20E1C000000FB0222FF000000000000900101000000
              0002001054696D6573204E657720526F6D616E0010E6FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F00101000D000000320A000000000400
              000065656969260A890F6109BC01050000001402800628051C000000FB0222FF
              0000000000009001010000000002001054696D6573204E657720526F6D616E00
              10E6FF02A3001A77D0A01F777B1F1A77040000002D01010004000000F0010200
              09000000320A00000000010000006565BC01050000001402B4089F091C000000
              FB0222FF0000000000009001010000000002001054696D6573204E657720526F
              6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D01020004000000
              F00101000D000000320A000000000400000065656565AA047C05AA04BC010500
              000014023E0A3C031C000000FB0222FF00000000000090010100000000020010
              54696D6573204E657720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77
              040000002D01010004000000F001020009000000320A00000000010000006E65
              BC01050000001402270C37051C000000FB0222FF000000000000900101000000
              0002001054696D6573204E657720526F6D616E0010E6FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F001010009000000320A000000000100
              00006965BC01050000001402300DE4021C000000FB0222FF0000000000009001
              010000000002001054696D6573204E657720526F6D616E0010E6FF02A3001A77
              D0A01F777B1F1A77040000002D01010004000000F001020009000000320A0000
              0000010000006965BC010500000014029101830D1C000000FB0280FE00000000
              00009001010000000002001054696D6573204E657720526F6D616E0010E6FF02
              A3001A77D0A01F777B1F1A77040000002D01020004000000F00101000A000000
              320A00000000020000004C4C260A0003050000001402D103DC081C000000FB02
              80FE0000000000009001010000000002001054696D6573204E657720526F6D61
              6E0010E6FF02A3001A77D0A01F777B1F1A77040000002D01010004000000F001
              020010000000320A00000000060000004C4C4C4C6677AA047C05AA046E10D008
              0003050000001402FF03B8031C000000FB0280FE000000000000900101000000
              0002001054696D6573204E657720526F6D616E0010E6FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F00101000A000000320A000000000200
              0000454ACE0100030500000014021106EF0D1C000000FB0280FE000000000000
              9001010000000002001054696D6573204E657720526F6D616E0010E6FF02A300
              1A77D0A01F777B1F1A77040000002D01010004000000F00102000C000000320A
              00000000030000004C4C7420260AE10F00030500000014021D0665041C000000
              FB0280FE0000000000009001010000000002001054696D6573204E657720526F
              6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D01020004000000
              F001010009000000320A00000000010000004C4A00030500000014025108DC08
              1C000000FB0280FE0000000000009001010000000002001054696D6573204E65
              7720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D010100
              04000000F00102000D000000320A00000000040000004C4C4C4CAA047C05AA04
              00030500000014021106D6301C000000FB0280FE000000000000900101000001
              0002001053796D626F6C0077FBD31B774000000010E6FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F001010009000000320A000000000100
              00006A4A00030500000014025D06B11E1C000000FB0222FF0000000000009001
              000000010002001053796D626F6C0077FBD31B774000000010E6FF02A3001A77
              D0A01F777B1F1A77040000002D01010004000000F001020009000000320A0000
              0000010000003D4ABC01050000001402180BF10C09000000320A000000000100
              00002D4ABC01050000001402300D330309000000320A00000000010000003D4A
              BC010500000014029101E70C1C000000FB0280FE000000000000900100000001
              0002001053796D626F6C0077FBD31B774000000010E6FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F00101000C000000320A000000000300
              0000D72DD7206F04B7050003050000001402AF01B8060A000000320A00000000
              02000000E9F9BE1200030500000014021F03B8060A000000320A000000000200
              0000EAFABE120003050000001402D10340080F000000320A0000000005000000
              D7D72DD7D765AA04C003BC01AA040003050000001402EF030A270D000000320A
              0000000004000000ECFCECFC04020E0734020003050000001402FF03E4040900
              0000320A0000000001000000D7FA00030500000014028F04B8060A000000320A
              0000000002000000EAFABE120003050000001402F10462020D000000320A0000
              0000040000003D3D3D3D881AF4081209000305000000140233050A270D000000
              320A0000000004000000EDFDEDFD04020E0734020003050000001402FF05B806
              0A000000320A0000000002000000EAFABE12000305000000140211069C070F00
              0000320A00000000050000002D2DD72DD704FB03BC016A08BC01000305000000
              140277060A270D000000320A0000000004000000EEFEEEFE04020E0734020003
              0500000014026F07B8060A000000320A0000000002000000EAFABE1200030500
              00001402510840080F000000320A0000000005000000D7D72DD7D704AA04C003
              BC01AA040003050000001402B708B8060A000000320A0000000002000000EBFB
              BE120003050000001402C40B7E010C000000320A00000000030000003D3DD761
              00099F0300030500000014024905131E1C000000FB02C0FD0000000000009001
              000000010002001053796D626F6C0077FBD31B774000000010E6FF02A3001A77
              D0A01F777B1F1A77040000002D01010004000000F001020009000000320A0000
              000001000000E5FB80040500000014021C0CA70209000000320A000000000100
              0000E5FB8004050000001402F10434001C000000FB0280FE000000000000BC02
              000000000002001054696D6573204E657720526F6D616E0010E6FF02A3001A77
              D0A01F777B1F1A77040000002D01020004000000F00101000F000000320A0000
              0000050000004B4B4B4671651E1B89047704FA080003050000001402C40B3400
              1C000000FB0280FE000000000000BC02000000000002001054696D6573204E65
              7720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D010100
              04000000F00102000F000000320A00000000050000004646714B46653B04DD04
              580203030003B102000026060F005705417070734D4643430100300500003005
              000044657369676E20536369656E63652C20496E632E00050100070844534D54
              3700001357696E416C6C4261736963436F6465506167657300110554696D6573
              204E657720526F6D616E00110353796D626F6C001105436F7572696572204E65
              770011044D5420457874726100120008212F458F442F4150F4100F475F4150F2
              1F1E4150F4150F4100F445F425F48F425F4100F4100F435F4100F48F45F42A5F
              48F48F4100F4100F40F48F417F48F4100F412A5F445F45F45F45F45F410F0C01
              000100010202020200020001010100030001000400000A040001010100020087
              4B0003001B00000B01000200836500000101000A0204863D003D03000B000001
              000200834500020486C522D70200834A000001000200834C0003001D00000B01
              0002008365000001000200883300000000000A03000303000100050001010104
              04000000000100020088310002008832000001000200883600020486C522D702
              00834C0003001B00000B0100020083650000010100000A010002048612222D02
              0088310002008832000001000200883600020486C522D70200834C0003001B00
              000B0100020083650000010100000A01000200883600020486C522D70200834C
              0003001B00000B0100020083650000010100000A01000200883400020486C522
              D70200834C0003001D00000B0100020083650000010002008832000000000A01
              0002048612222D0200883600020486C522D70200834C0003001B00000B010002
              0083650000010100000A01000200883200020486C522D70200834C0003001D00
              000B0100020083650000010002008832000000000A010002048612222D020088
              3100020088320000010002048612222D0200883600020486C522D70200834C00
              03001B00000B0100020083650000010100000A01000200883100020088320000
              010002048612222D0200883600020486C522D70200834C0003001B00000B0100
              020083650000010100000A01000200883600020486C522D70200834C0003001B
              00000B0100020083650000010100000A01000200883200020486C522D7020083
              4C0003001D00000B0100020083650000010002008832000000000A0100020486
              12222D0200883600020486C522D70200834C0003001B00000B01000200836500
              00010100000A01000200883400020486C522D70200834C0003001D00000B0100
              0200836500000100020088320000000000000A0200965B000200965D00000200
              9709000200874B000204863D003D030010700001000200874B0003001B00000B
              010002008365000001010000010002008365000204863D003D02008831000001
              000200836E000200836500000D0204861122E5000A0200970900020087460003
              001B00000B01000200836900000101000A0204863D003D030002030001000500
              010101020100000100020083660003001B00000B010002008369000001010000
              0A0100020083740003001B00000B01000200836900000101000000000A020096
              7B000200967D00000200970900020087710003001B00000B0100020083690000
              0101000A0204863D003D03000203000100050001010102010000010002008377
              0003001B00000B0100020083690000010100000A0100020484C6036A03001B00
              000B01000200836900000101000000000A0200967B000200967D000000010002
              008746000204863D003D03001070000100020087460003001B00000B01000200
              8369000001010000010002008369000204863D003D0200883100000100020083
              6E00000D0204861122E5000A020097090002008771000204863D003D0200874B
              0003001C00000B0101010002048612222D020088310000000A020486C522D702
              008746000000003E3907000026060F00670E417070734D4643430100400E0000
              400E000044657369676E20536369656E63652C20496E632E003C3F786D6C2076
              657273696F6E3D22312E30223F3E3C212D2D204D61746854797065405472616E
              736C61746F7240354035404D6174684D4C322028436C6970626F617264292E74
              646C404D6174684D4C20322E302028436C6970626F6172642940202D2D3E3C6D
              61746820646973706C61793D27626C6F636B2720786D6C6E733D27687474703A
              2F2F7777772E77332E6F72672F313939382F4D6174682F4D6174684D4C273E3C
              6D7461626C6520636F6C756D6E616C69676E3D276C656674273E3C6D74723E3C
              6D74643E3C6D7375623E3C6D7374796C65206D61746876617269616E743D2762
              6F6C6427206D61746873697A653D276E6F726D616C273E3C6D693E4B3C2F6D69
              3E3C2F6D7374796C653E3C6D693E653C2F6D693E3C2F6D7375623E3C6D6F3E3D
              3C2F6D6F3E3C6D667261633E3C6D726F773E3C6D693E453C2F6D693E3C6D6F3E
              262378323243353B3C2F6D6F3E3C6D693E4A3C2F6D693E3C2F6D726F773E3C6D
              726F773E3C6D7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D69
              3E3C6D6E3E333C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D66
              7261633E3C6D66656E63656420636C6F73653D225D22206F70656E3D225B223E
              3C6D726F773E3C6D7461626C6520657175616C726F77733D2774727565272065
              7175616C636F6C756D6E733D2774727565273E3C6D74723E3C6D74643E3C6D72
              6F773E3C6D6E3E31323C2F6D6E3E3C2F6D726F773E3C2F6D74643E3C6D74643E
              3C6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F
              3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375
              623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6F3E2623
              78323231323B3C2F6D6F3E3C6D6E3E31323C2F6D6E3E3C2F6D726F773E3C2F6D
              74643E3C6D74643E3C6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E26237832
              3243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F
              6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C6D74
              723E3C6D74643E3C6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E2623783232
              43353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D
              693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F77
              3E3C6D6E3E343C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375
              627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C6D6E3E323C2F
              6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D74643E3C6D74643E3C
              6D726F773E3C6D6F3E262378323231323B3C2F6D6F3E3C6D6E3E363C2F6D6E3E
              3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D69
              3E3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C
              6D74643E3C6D726F773E3C6D6E3E323C2F6D6E3E3C6D6F3E262378323243353B
              3C2F6D6F3E3C6D7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D
              693E3C6D6E3E323C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D
              74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D726F773E3C6D6F3E262378
              323231323B3C2F6D6F3E3C6D6E3E31323C2F6D6E3E3C2F6D726F773E3C2F6D74
              643E3C6D74643E3C6D726F773E3C6D6F3E262378323231323B3C2F6D6F3E3C6D
              6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C
              6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D726F77
              3E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6E3E31323C2F6D6E3E3C2F6D
              726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6F3E26237832323132
              3B3C2F6D6F3E3C6D6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F
              3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375
              623E3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C
              6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E
              3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D737562
              3E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6E3E323C2F
              6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375627375703E3C6D69
              3E4C3C2F6D693E3C6D693E653C2F6D693E3C6D6E3E323C2F6D6E3E3C2F6D7375
              627375703E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6F
              3E262378323231323B3C2F6D6F3E3C6D6E3E363C2F6D6E3E3C6D6F3E26237832
              3243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F
              6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F
              773E3C6D6E3E343C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D73
              75627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C6D6E3E323C
              2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D74643E3C2F6D7472
              3E3C2F6D7461626C653E3C2F6D726F773E3C2F6D66656E6365643E3C6D746578
              743E262378303030393B3C2F6D746578743E3C6D7374796C65206D6174687661
              7269616E743D27626F6C6427206D61746873697A653D276E6F726D616C273E3C
              6D693E4B3C2F6D693E3C2F6D7374796C653E3C6D6F3E3D3C2F6D6F3E3C6D7374
              796C6520646973706C61797374796C653D2774727565273E3C6D756E6465726F
              7665723E3C6D6F3E262378323231313B3C2F6D6F3E3C6D726F773E3C6D693E65
              3C2F6D693E3C6D6F3E3D3C2F6D6F3E3C6D6E3E313C2F6D6E3E3C2F6D726F773E
              3C6D726F773E3C6D693E6E3C2F6D693E3C6D693E653C2F6D693E3C2F6D726F77
              3E3C2F6D756E6465726F7665723E3C6D726F773E3C6D7375623E3C6D7374796C
              65206D61746876617269616E743D27626F6C6427206D61746873697A653D276E
              6F726D616C273E3C6D693E4B3C2F6D693E3C2F6D7374796C653E3C6D693E653C
              2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D7374796C653E3C6D746578
              743E262378303030393B3C2F6D746578743E3C6D7375623E3C6D7374796C6520
              6D61746876617269616E743D27626F6C6427206D61746873697A653D276E6F72
              6D616C273E3C6D693E463C2F6D693E3C2F6D7374796C653E3C6D693E693C2F6D
              693E3C2F6D7375623E3C6D6F3E3D3C2F6D6F3E3C6D66656E63656420636C6F73
              653D227D22206F70656E3D227B223E3C6D726F773E3C6D7461626C6520657175
              616C726F77733D27747275652720657175616C636F6C756D6E733D2774727565
              273E3C6D74723E3C6D74643E3C6D726F773E3C6D7375623E3C6D693E663C2F6D
              693E3C6D693E693C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E
              3C2F6D74723E3C6D74723E3C6D74643E3C6D726F773E3C6D7375623E3C6D693E
              743C2F6D693E3C6D693E693C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F
              6D74643E3C2F6D74723E3C2F6D7461626C653E3C2F6D726F773E3C2F6D66656E
              6365643E3C6D746578743E262378303030393B3C2F6D746578743E3C6D737562
              3E3C6D7374796C65206D61746876617269616E743D27626F6C6427206D617468
              73697A653D276E6F726D616C273E3C6D693E713C2F6D693E3C2F6D7374796C65
              3E3C6D693E693C2F6D693E3C2F6D7375623E3C6D6F3E3D3C2F6D6F3E3C6D6665
              6E63656420636C6F73653D227D22206F70656E3D227B223E3C6D726F773E3C6D
              7461626C6520657175616C726F77733D27747275652720657175616C636F6C75
              6D6E733D2774727565273E3C6D74723E3C6D74643E3C6D726F773E3C6D737562
              3E3C6D693E773C2F6D693E3C6D693E693C2F6D693E3C2F6D7375623E3C2F6D72
              6F773E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D726F773E3C
              6D7375623E3C6D693E262378303343363B3C2F6D693E3C6D693E693C2F6D693E
              3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C2F6D746162
              6C653E3C2F6D726F773E3C2F6D66656E6365643E3C2F6D74643E3C2F6D74723E
              3C6D74723E3C6D74643E3C6D7374796C65206D61746876617269616E743D2762
              6F6C6427206D61746873697A653D276E6F726D616C273E3C6D693E463C2F6D69
              3E3C2F6D7374796C653E3C6D6F3E3D3C2F6D6F3E3C6D7374796C652064697370
              6C61797374796C653D2774727565273E3C6D756E6465726F7665723E3C6D6F3E
              262378323231313B3C2F6D6F3E3C6D726F773E3C6D693E693C2F6D693E3C6D6F
              3E3D3C2F6D6F3E3C6D6E3E313C2F6D6E3E3C2F6D726F773E3C6D693E6E3C2F6D
              693E3C2F6D756E6465726F7665723E3C6D726F773E3C6D7375623E3C6D737479
              6C65206D61746876617269616E743D27626F6C6427206D61746873697A653D27
              6E6F726D616C273E3C6D693E463C2F6D693E3C2F6D7374796C653E3C6D693E69
              3C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D7374796C653E3C6D7465
              78743E262378303030393B3C2F6D746578743E3C6D7374796C65206D61746876
              617269616E743D27626F6C6427206D61746873697A653D276E6F726D616C273E
              3C6D693E713C2F6D693E3C2F6D7374796C653E3C6D6F3E3D3C2F6D6F3E3C6D73
              75703E3C6D7374796C65206D61746876617269616E743D27626F6C6427206D61
              746873697A653D276E6F726D616C273E3C6D693E4B3C2F6D693E3C2F6D737479
              6C653E3C6D726F773E3C6D6F3E262378323231323B3C2F6D6F3E3C6D6E3E313C
              2F6D6E3E3C2F6D726F773E3C2F6D7375703E3C6D6F3E262378323243353B3C2F
              6D6F3E3C6D7374796C65206D61746876617269616E743D27626F6C6427206D61
              746873697A653D276E6F726D616C273E3C6D693E463C2F6D693E3C2F6D737479
              6C653E3C2F6D74643E3C2F6D74723E3C2F6D7461626C653E3C2F6D6174683E3C
              212D2D204D6174685479706540456E644035403540202D2D3E2F0A0000002606
              0F000A00FFFFFFFF01000000000008000000FA02000000000000000000000400
              00002D0102001C000000FB021000070000000000BC02000000EE010202225379
              7374656D0000B7058A0000000A0006000000F0186661B7058A007B1F1A770400
              00002D01030004000000F0010100030000000000}
            Width = 1784.000000000000000000
            Height = 475.000000000000000000
          end
          object LRptImage2: TLRptImage
            LeftPosition = 294.000000000000000000
            TopPosition = 2450.000000000000000000
            Chapter = 6
            ToPage = 2
            Stretch = True
            Picture.Data = {
              09544D65746166696C65E82F0000D7CDC69A000000000000604F800B00090000
              0000F11A010009000003E71700000400D7090000000005000000020101000000
              050000000102FFFFFF00050000002E01190000000B00000026060F000C004D61
              7468547970650000B0021200000026060F001A00FFFFFFFF000010000000C0FF
              FFFFA4FFFFFF204F0000240B000008000000FA02000013000000000000020400
              00002D010000050000001402A0049403050000001302A0047006050000001402
              A004E827050000001302A004E32C050000000902000000020500000014023403
              3D0E1C000000FB0222FF0000000000009001000000000002001054696D657320
              4E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A77040000002D01
              01000D000000320A000000000400000032323232260AD31DA30BBC0105000000
              1402800515051C000000FB0222FF000000000000900100000000000200105469
              6D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A770400
              00002D01020004000000F001010009000000320A00000000010000003379BC01
              0500000014026C06201F1C000000FB0222FF0000000000009001000000000002
              001054696D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F
              1A77040000002D01010004000000F001020009000000320A0000000001000000
              3179BC01050000001402B4073D0E1C000000FB0222FF00000000000090010000
              00000002001054696D6573204E657720526F6D616E0080E4FF02A3001A77D0A0
              1F777B1F1A77040000002D01020004000000F00101000D000000320A00000000
              0400000032323232260A361EDD0ABC01050000001402A001F0071C000000FB02
              80FE0000000000009001000000000002001054696D6573204E657720526F6D61
              6E0080E4FF02A3001A77D0A01F777B1F1A77040000002D01010004000000F001
              02001E000000320A000000000F00000031323631323631353632323534313378
              C0004D032B06C0003B03A618C000C0005003C000B305C0007C04C00000030500
              00001402E00356071C000000FB0280FE00000000000090010000000000020010
              54696D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A77
              040000002D01020004000000F001010016000000320A000000000A0000003634
              3632323234313333AA047C05AA040C18C0000705FE04C000F105000305000000
              140220066E081C000000FB0280FE000000000000900100000000000200105469
              6D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A770400
              00002D01010004000000F00102001E000000320A000000000F00000031323631
              323635343133313536323278C0003B034105C0002504A918C0009203C0005305
              C000C0002504C00000030500000014022C064B291C000000FB0280FE00000000
              00009001000000000002001054696D6573204E657720526F6D616E0080E4FF02
              A3001A77D0A01F777B1F1A77040000002D01020004000000F00101000C000000
              320A000000000300000034323061C000C0000003050000001402600856071C00
              0000FB0280FE0000000000009001000000000002001054696D6573204E657720
              526F6D616E0080E4FF02A3001A77D0A01F777B1F1A77040000002D0101000400
              0000F001020016000000320A000000000A00000036323634313333323234AA04
              7C05AA047B18C00007050705C0000A0500030500000014020302460E1C000000
              FB0222FF0000000000009001010000000002001054696D6573204E657720526F
              6D616E0080E4FF02A3001A77D0A01F777B1F1A77040000002D01020004000000
              F00101000D000000320A000000000400000065656565260A361EA30BBC010500
              000014027A03771E1C000000FB0222FF00000000000090010100000000020010
              54696D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A77
              040000002D01010004000000F00102000A000000320A00000000020000006E65
              6F00BC0105000000140243049F091C000000FB0222FF00000000000090010100
              00000002001054696D6573204E657720526F6D616E0080E4FF02A3001A77D0A0
              1F777B1F1A77040000002D01020004000000F001010013000000320A00000000
              080000006565656565656565AA047C05AA04CC180705B205F105BC0105000000
              14026D04472C1C000000FB0222FF000000000000900101000000000200105469
              6D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A770400
              00002D01010004000000F001020009000000320A00000000010000006565BC01
              05000000140263057E011C000000FB0222FF0000000000009001010000000002
              001054696D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F
              1A77040000002D01020004000000F00101000C000000320A0000000003000000
              65656532A71FAD04BC010500000014026C06421E1C000000FB0222FF00000000
              00009001010000000002001054696D6573204E657720526F6D616E0080E4FF02
              A3001A77D0A01F777B1F1A77040000002D01010004000000F001020009000000
              320A00000000010000006565BC010500000014028306B20E1C000000FB0222FF
              0000000000009001010000000002001054696D6573204E657720526F6D616E00
              80E4FF02A3001A77D0A01F777B1F1A77040000002D01020004000000F0010100
              0D000000320A000000000400000065656565260AAF1DC40BBC01050000001402
              8F0628051C000000FB0222FF0000000000009001010000000002001054696D65
              73204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A7704000000
              2D01010004000000F001020009000000320A00000000010000006565BC010500
              00001402C3089F091C000000FB0222FF00000000000090010100000000020010
              54696D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A77
              040000002D01020004000000F001010013000000320A00000000080000006565
              656565656565AA047C05AA042F190705D3050A05BC01050000001402A001830D
              1C000000FB0280FE0000000000009001010000000002001054696D6573204E65
              7720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A77040000002D010100
              04000000F00102000D000000320A00000000040000004C4C4C4C260A361EA30B
              0003050000001402E003DC081C000000FB0280FE000000000000900101000000
              0002001054696D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F001010013000000320A000000000800
              00004C4C4C4C4C4C4C4CAA047C05AA04CC180705B205F1050003050000001402
              0A04DA291C000000FB0280FE0000000000009001010000000002001054696D65
              73204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A7704000000
              2D01010004000000F00102000A000000320A0000000002000000414CAA010003
              0500000014020E04B8031C000000FB0280FE0000000000009001010000000002
              001054696D6573204E657720526F6D616E0080E4FF02A3001A77D0A01F777B1F
              1A77040000002D01020004000000F00101000A000000320A0000000002000000
              454ACE0100030500000014022006EF0D1C000000FB0280FE0000000000009001
              010000000002001054696D6573204E657720526F6D616E0080E4FF02A3001A77
              D0A01F777B1F1A77040000002D01010004000000F00102000D000000320A0000
              0000040000004C4C4C4C260AAF1DC40B00030500000014022C0665041C000000
              FB0280FE0000000000009001010000000002001054696D6573204E657720526F
              6D616E0080E4FF02A3001A77D0A01F777B1F1A77040000002D01020004000000
              F001010009000000320A00000000010000004C4A00030500000014026008DC08
              1C000000FB0280FE0000000000009001010000000002001054696D6573204E65
              7720526F6D616E0080E4FF02A3001A77D0A01F777B1F1A77040000002D010100
              04000000F001020013000000320A00000000080000004C4C4C4C4C4C4C4CAA04
              7C05AA042F190705D3050A0500030500000014020A040C281C000000FB0280FE
              0000000000009001010000010002001053796D626F6C0077FBD31B7740000000
              80E4FF02A3001A77D0A01F777B1F1A77040000002D01020004000000F0010100
              09000000320A0000000001000000724A00030500000014026C06B11E1C000000
              FB0222FF0000000000009001000000010002001053796D626F6C0077FBD31B77
              4000000080E4FF02A3001A77D0A01F777B1F1A77040000002D01010004000000
              F001020009000000320A00000000010000003D4ABC01050000001402A001E70C
              1C000000FB0280FE0000000000009001000000010002001053796D626F6C0077
              FBD31B774000000080E4FF02A3001A77D0A01F777B1F1A77040000002D010200
              04000000F001010010000000320A0000000006000000D72DD7D72DD76F04B705
              361E330970020003050000001402BE01B8060D000000320A0000000004000000
              E9F9E9F9BE12B513BE1500030500000014022E03B8060D000000320A00000000
              04000000EAFAEAFABE12B513BE150003050000001402E003400816000000320A
              000000000A000000D7D72DD7D7D7D7D72DD7AA04C003BC01AA04CC180705B205
              4104B00100030500000014020A042C290A000000320A0000000002000000D7D7
              BC0100030500000014020E04E40409000000320A0000000001000000D7D70003
              0500000014029E04B8060D000000320A0000000004000000EAFAEAFABE12B513
              BE150003050000001402000562020D000000320A00000000040000003D3D3D3D
              881ACC096A2300030500000014020E06B8060D000000320A0000000004000000
              EAFAEAFABE12B513BE15000305000000140220069C0713000000320A00000000
              080000002D2DD72DD7D72DD7FB03BC016A08BC01AF1D48097C02000305000000
              14027E07B8060D000000320A0000000004000000EAFAEAFABE12B513BE150003
              0500000014026008400819000000320A000000000C000000D7D72DD7D72DD72D
              D72DD7D7AA04C003BC01AA04BF1670025703B00157037C020A05000305000000
              1402C608B8060D000000320A0000000004000000EBFBEBFBBE12B513BE150003
              0500000014025805131E1C000000FB02C0FD0000000000009001000000010002
              001053796D626F6C0077FBD31B774000000080E4FF02A3001A77D0A01F777B1F
              1A77040000002D01010004000000F001020009000000320A0000000001000000
              E5D78004050000001402000534001C000000FB0280FE000000000000BC020000
              00000002001054696D6573204E657720526F6D616E0080E4FF02A3001A77D0A0
              1F777B1F1A77040000002D01020004000000F001010010000000320A00000000
              060000004B4B4B4D4D4D1E1B890477040024BF0400030500000014026C06564C
              1C000000FB0222FF0000000000009001000000000002001054696D6573204E65
              7720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D010100
              04000000F001020009000000320A000000000100000031D7BC01050000001402
              CA0A5A011C000000FB0280FE0000000000009001000000000002001054696D65
              73204E657720526F6D616E0010E6FF02A3001A77D0A01F777B1F1A7704000000
              2D01020004000000F00101000D000000320A00000000040000002C282C29B40C
              C201280200030500000014027A03AD4B1C000000FB0222FF0000000000009001
              010000000002001054696D6573204E657720526F6D616E0010E6FF02A3001A77
              D0A01F777B1F1A77040000002D01010004000000F00102000A000000320A0000
              0000020000006E656F00BC010500000014026305914E1C000000FB0222FF0000
              000000009001010000000002001054696D6573204E657720526F6D616E0010E6
              FF02A3001A77D0A01F777B1F1A77040000002D01020004000000F00101000900
              0000320A00000000010000006565BC010500000014026C06784B1C000000FB02
              22FF0000000000009001010000000002001054696D6573204E657720526F6D61
              6E0010E6FF02A3001A77D0A01F777B1F1A77040000002D01010004000000F001
              020009000000320A00000000010000006565BC01050000001402CA0AD2041C00
              0000FB0280FE0000000000009001010000000002001054696D6573204E657720
              526F6D616E0010E6FF02A3001A77D0A01F777B1F1A77040000002D0102000400
              0000F00101001C000000320A000000000E0000004A61636F6269726F74617469
              6F6EA800C000A800C000C000CC009600C0006C00C0006C006C00C00000030500
              000014026C06E74B1C000000FB0222FF00000000000090010000000100020010
              53796D626F6C0077FBD31B774000000010E6FF02A3001A77D0A01F777B1F1A77
              040000002D01010004000000F001020009000000320A00000000010000003D65
              BC01050000001402CA0A94031C000000FB0280FE000000000000900100000001
              0002001053796D626F6C0077FBD31B774000000010E6FF02A3001A77D0A01F77
              7B1F1A77040000002D01020004000000F001010009000000320A000000000100
              00003D6500030500000014025805494B1C000000FB02C0FD0000000000009001
              000000010002001053796D626F6C0077FBD31B774000000010E6FF02A3001A77
              D0A01F777B1F1A77040000002D01010004000000F001020009000000320A0000
              000001000000E5658004050000001402CA0A2E001C000000FB0280FE00000000
              0000BC02000000000002001054696D6573204E657720526F6D616E0010E6FF02
              A3001A77D0A01F777B1F1A77040000002D01020004000000F001010009000000
              320A00000000010000005165DA011C000000FB0280FE000000000000BC020000
              00A10002001054696D6573204E657720526F6D616E0010E6FF02A3001A77D0A0
              1F777B1F1A77040000002D01010004000000F00102000C000000320A00000000
              03000000D94B4DFA8A0CEC010003DE03000026060F00B207417070734D464343
              01008B0700008B07000044657369676E20536369656E63652C20496E632E0005
              0100070844534D543700001357696E416C6C4261736963436F64655061676573
              00110554696D6573204E657720526F6D616E00110353796D626F6C001105436F
              7572696572204E65770011044D5420457874726100120008212F458F442F4150
              F4100F475F4150F21F1E4150F4150F4100F445F425F48F425F4100F4100F435F
              4100F48F45F42A5F48F48F4100F4100F40F48F417F48F4100F412A5F445F45F4
              5F45F45F410F0C01000100010202020200020001010100030001000400000A04
              00010101000200874B0003001B00000B01000200836500000101000A0204863D
              003D03000B000001000200834500020486C522D70200834A000001000200834C
              0003001D00000B010002008365000001000200883300000000000A0300030300
              0100050001010104040000000001000200883100020088320000010002008836
              00020486C522D70200834C0003001B00000B0100020083650000010100000A01
              0002048612222D020088310002008832000001000200883600020486C522D702
              00834C0003001B00000B0100020083650000010100000A010002008836000204
              86C522D70200834C0003001B00000B0100020083650000010100000A01000200
              883400020486C522D70200834C0003001D00000B010002008365000001000200
              8832000000000A010002048612222D0200883600020486C522D70200834C0003
              001B00000B0100020083650000010100000A01000200883200020486C522D702
              00834C0003001D00000B0100020083650000010002008832000000000A010002
              048612222D0200883100020088320000010002048612222D0200883600020486
              C522D70200834C0003001B00000B0100020083650000010100000A0100020088
              3100020088320000010002048612222D0200883600020486C522D70200834C00
              03001B00000B0100020083650000010100000A01000200883600020486C522D7
              0200834C0003001B00000B0100020083650000010100000A0100020088320002
              0486C522D70200834C0003001D00000B01000200836500000100020088320000
              00000A010002048612222D0200883600020486C522D70200834C0003001B0000
              0B0100020083650000010100000A01000200883400020486C522D70200834C00
              03001D00000B01000200836500000100020088320000000000000A0200965B00
              0200965D000002009709000200874B000204863D003D03001070000100020087
              4B0003001B00000B010002008365000001010000010002008365000204863D00
              3D02008831000001000200836E000200836500000D0204861122E5000A020097
              09000200874D0003001B00000B01000200836500000101000A0204863D003D03
              000B00000100020484C10372020486C522D70200834100020486C522D7020083
              4C0003001B00000B0100020083650000010100000A0100020088340002008832
              0002008830000000030003030001000500010101040400000000010002008831
              000200883500020088360000010002008832000200883200020486C522D70200
              834C0003001B00000B0100020083650000010100000A01000200883500020088
              340000010002048612222D02008831000200883300020486C522D70200834C00
              03001B00000B0100020083650000010100000A01000200883200020088320002
              0486C522D70200834C0003001B00000B0100020083650000010100000A010002
              00883400020486C522D70200834C0003001D00000B0100020083650000010002
              008832000000000A010002008831000200883300020486C522D70200834C0003
              001B00000B0100020083650000010100000A010002048612222D020088330002
              0486C522D70200834C0003001D00000B01000200836500000100020088320000
              00000A01000200883500020088340000010002008831000200883300020486C5
              22D70200834C0003001B00000B0100020083650000010100000A010002008831
              000200883500020088360000010002048612222D020088320002008832000204
              86C522D70200834C0003001B00000B0100020083650000010100000A01000204
              8612222D02008831000200883300020486C522D70200834C0003001B00000B01
              00020083650000010100000A010002048612222D0200883300020486C522D702
              00834C0003001D00000B0100020083650000010002008832000000000A010002
              048612222D02008832000200883200020486C522D70200834C0003001B00000B
              0100020083650000010100000A01000200883400020486C522D70200834C0003
              001D00000B01000200836500000100020088320000000000000A0200965B0002
              00965D0000020097090002009709000200874D000204863D003D030010700001
              000200874D0003001B00000B0100020083650000010100000100020083650002
              04863D003D02008831000001000200836E000200836500000D0204861122E500
              000A010002008751000200822C0002009804EF020087A9030204863D003D0200
              834A00020083610002008363000200836F000200836200020083690002009804
              EF02008372000200836F00020083740002008361000200837400020083690002
              00836F000200836E0002008228000200874B000200822C0002009804EF020087
              4D000200822900000000D709000026060F00A413417070734D46434301007D13
              00007D13000044657369676E20536369656E63652C20496E632E003C3F786D6C
              2076657273696F6E3D22312E30223F3E3C212D2D204D61746854797065405472
              616E736C61746F7240354035404D6174684D4C322028436C6970626F61726429
              2E74646C404D6174684D4C20322E302028436C6970626F6172642940202D2D3E
              3C6D61746820646973706C61793D27626C6F636B2720786D6C6E733D27687474
              703A2F2F7777772E77332E6F72672F313939382F4D6174682F4D6174684D4C27
              3E3C6D7461626C6520636F6C756D6E616C69676E3D276C656674273E3C6D7472
              3E3C6D74643E3C6D7375623E3C6D7374796C65206D61746876617269616E743D
              27626F6C6427206D61746873697A653D276E6F726D616C273E3C6D693E4B3C2F
              6D693E3C2F6D7374796C653E3C6D693E653C2F6D693E3C2F6D7375623E3C6D6F
              3E3D3C2F6D6F3E3C6D667261633E3C6D726F773E3C6D693E453C2F6D693E3C6D
              6F3E262378323243353B3C2F6D6F3E3C6D693E4A3C2F6D693E3C2F6D726F773E
              3C6D726F773E3C6D7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F
              6D693E3C6D6E3E333C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F
              6D667261633E3C6D66656E63656420636C6F73653D225D22206F70656E3D225B
              223E3C6D726F773E3C6D7461626C6520657175616C726F77733D277472756527
              20657175616C636F6C756D6E733D2774727565273E3C6D74723E3C6D74643E3C
              6D726F773E3C6D6E3E31323C2F6D6E3E3C2F6D726F773E3C2F6D74643E3C6D74
              643E3C6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F
              6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D
              7375623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6F3E
              262378323231323B3C2F6D6F3E3C6D6E3E31323C2F6D6E3E3C2F6D726F773E3C
              2F6D74643E3C6D74643E3C6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E2623
              78323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E65
              3C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C
              6D74723E3C6D74643E3C6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E262378
              323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C
              2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D72
              6F773E3C6D6E3E343C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D
              7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C6D6E3E32
              3C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D74643E3C6D7464
              3E3C6D726F773E3C6D6F3E262378323231323B3C2F6D6F3E3C6D6E3E363C2F6D
              6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F
              6D693E3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D7464
              3E3C6D74643E3C6D726F773E3C6D6E3E323C2F6D6E3E3C6D6F3E262378323243
              353B3C2F6D6F3E3C6D7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C
              2F6D693E3C6D6E3E323C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C
              2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D726F773E3C6D6F3E26
              2378323231323B3C2F6D6F3E3C6D6E3E31323C2F6D6E3E3C2F6D726F773E3C2F
              6D74643E3C6D74643E3C6D726F773E3C6D6F3E262378323231323B3C2F6D6F3E
              3C6D6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D737562
              3E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D72
              6F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6E3E31323C2F6D6E3E3C
              2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6F3E2623783232
              31323B3C2F6D6F3E3C6D6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F
              6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D
              7375623E3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D7464
              3E3C6D726F773E3C6D6E3E363C2F6D6E3E3C6D6F3E262378323243353B3C2F6D
              6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D73
              75623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6E3E32
              3C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375627375703E3C
              6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C6D6E3E323C2F6D6E3E3C2F6D
              7375627375703E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C
              6D6F3E262378323231323B3C2F6D6F3E3C6D6E3E363C2F6D6E3E3C6D6F3E2623
              78323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E65
              3C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D
              726F773E3C6D6E3E343C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C
              6D7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C6D6E3E
              323C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D74643E3C2F6D
              74723E3C2F6D7461626C653E3C2F6D726F773E3C2F6D66656E6365643E3C6D74
              6578743E262378303030393B3C2F6D746578743E3C6D7374796C65206D617468
              76617269616E743D27626F6C6427206D61746873697A653D276E6F726D616C27
              3E3C6D693E4B3C2F6D693E3C2F6D7374796C653E3C6D6F3E3D3C2F6D6F3E3C6D
              7374796C6520646973706C61797374796C653D2774727565273E3C6D756E6465
              726F7665723E3C6D6F3E262378323231313B3C2F6D6F3E3C6D726F773E3C6D69
              3E653C2F6D693E3C6D6F3E3D3C2F6D6F3E3C6D6E3E313C2F6D6E3E3C2F6D726F
              773E3C6D726F773E3C6D693E6E3C2F6D693E3C6D693E653C2F6D693E3C2F6D72
              6F773E3C2F6D756E6465726F7665723E3C6D726F773E3C6D7375623E3C6D7374
              796C65206D61746876617269616E743D27626F6C6427206D61746873697A653D
              276E6F726D616C273E3C6D693E4B3C2F6D693E3C2F6D7374796C653E3C6D693E
              653C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D7374796C653E3C6D74
              6578743E262378303030393B3C2F6D746578743E3C6D7375623E3C6D7374796C
              65206D61746876617269616E743D27626F6C6427206D61746873697A653D276E
              6F726D616C273E3C6D693E4D3C2F6D693E3C2F6D7374796C653E3C6D693E653C
              2F6D693E3C2F6D7375623E3C6D6F3E3D3C2F6D6F3E3C6D667261633E3C6D726F
              773E3C6D693E262378303343313B3C2F6D693E3C6D6F3E262378323243353B3C
              2F6D6F3E3C6D693E413C2F6D693E3C6D6F3E262378323243353B3C2F6D6F3E3C
              6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375623E
              3C2F6D726F773E3C6D726F773E3C6D6E3E3432303C2F6D6E3E3C2F6D726F773E
              3C2F6D667261633E3C6D66656E63656420636C6F73653D225D22206F70656E3D
              225B223E3C6D726F773E3C6D7461626C6520657175616C726F77733D27747275
              652720657175616C636F6C756D6E733D2774727565273E3C6D74723E3C6D7464
              3E3C6D726F773E3C6D6E3E3135363C2F6D6E3E3C2F6D726F773E3C2F6D74643E
              3C6D74643E3C6D726F773E3C6D6E3E32323C2F6D6E3E3C6D6F3E262378323243
              353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D69
              3E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E
              3C6D6E3E35343C2F6D6E3E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D72
              6F773E3C6D6F3E262378323231323B3C2F6D6F3E3C6D6E3E31333C2F6D6E3E3C
              6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E
              3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C2F
              6D74723E3C6D74723E3C6D74643E3C6D726F773E3C6D6E3E32323C2F6D6E3E3C
              6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E
              3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C6D
              74643E3C6D726F773E3C6D6E3E343C2F6D6E3E3C6D6F3E262378323243353B3C
              2F6D6F3E3C6D7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D69
              3E3C6D6E3E323C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D74
              643E3C6D74643E3C6D726F773E3C6D6E3E31333C2F6D6E3E3C6D6F3E26237832
              3243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F
              6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F
              773E3C6D6F3E262378323231323B3C2F6D6F3E3C6D6E3E333C2F6D6E3E3C6D6F
              3E262378323243353B3C2F6D6F3E3C6D7375627375703E3C6D693E4C3C2F6D69
              3E3C6D693E653C2F6D693E3C6D6E3E323C2F6D6E3E3C2F6D7375627375703E3C
              2F6D726F773E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D726F
              773E3C6D6E3E35343C2F6D6E3E3C2F6D726F773E3C2F6D74643E3C6D74643E3C
              6D726F773E3C6D6E3E31333C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F
              3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375
              623E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6E3E3135
              363C2F6D6E3E3C2F6D726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D
              6F3E262378323231323B3C2F6D6F3E3C6D6E3E32323C2F6D6E3E3C6D6F3E2623
              78323243353B3C2F6D6F3E3C6D7375623E3C6D693E4C3C2F6D693E3C6D693E65
              3C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C
              6D74723E3C6D74643E3C6D726F773E3C6D6F3E262378323231323B3C2F6D6F3E
              3C6D6E3E31333C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375
              623E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D
              726F773E3C2F6D74643E3C6D74643E3C6D726F773E3C6D6F3E26237832323132
              3B3C2F6D6F3E3C6D6E3E333C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F
              3E3C6D7375627375703E3C6D693E4C3C2F6D693E3C6D693E653C2F6D693E3C6D
              6E3E323C2F6D6E3E3C2F6D7375627375703E3C2F6D726F773E3C2F6D74643E3C
              6D74643E3C6D726F773E3C6D6F3E262378323231323B3C2F6D6F3E3C6D6E3E32
              323C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D69
              3E4C3C2F6D693E3C6D693E653C2F6D693E3C2F6D7375623E3C2F6D726F773E3C
              2F6D74643E3C6D74643E3C6D726F773E3C6D6E3E343C2F6D6E3E3C6D6F3E2623
              78323243353B3C2F6D6F3E3C6D7375627375703E3C6D693E4C3C2F6D693E3C6D
              693E653C2F6D693E3C6D6E3E323C2F6D6E3E3C2F6D7375627375703E3C2F6D72
              6F773E3C2F6D74643E3C2F6D74723E3C2F6D7461626C653E3C2F6D726F773E3C
              2F6D66656E6365643E3C6D746578743E262378303030393B3C2F6D746578743E
              3C6D746578743E262378303030393B3C2F6D746578743E3C6D7374796C65206D
              61746876617269616E743D27626F6C6427206D61746873697A653D276E6F726D
              616C273E3C6D693E4D3C2F6D693E3C2F6D7374796C653E3C6D6F3E3D3C2F6D6F
              3E3C6D7374796C6520646973706C61797374796C653D2774727565273E3C6D75
              6E6465726F7665723E3C6D6F3E262378323231313B3C2F6D6F3E3C6D726F773E
              3C6D693E653C2F6D693E3C6D6F3E3D3C2F6D6F3E3C6D6E3E313C2F6D6E3E3C2F
              6D726F773E3C6D726F773E3C6D693E6E3C2F6D693E3C6D693E653C2F6D693E3C
              2F6D726F773E3C2F6D756E6465726F7665723E3C6D726F773E3C6D7375623E3C
              6D7374796C65206D61746876617269616E743D27626F6C6427206D6174687369
              7A653D276E6F726D616C273E3C6D693E4D3C2F6D693E3C2F6D7374796C653E3C
              6D693E653C2F6D693E3C2F6D7375623E3C2F6D726F773E3C2F6D7374796C653E
              3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D7374796C65206D61
              746876617269616E743D27626F6C6427206D61746873697A653D276E6F726D61
              6C273E3C6D693E513C2F6D693E3C2F6D7374796C653E3C6D6F3E2C3C2F6D6F3E
              3C6D746578743E262378323030343B3C2F6D746578743E3C6D7374796C65206D
              61746876617269616E743D27626F6C6427206D61746873697A653D276E6F726D
              616C273E3C6D693E262378303341393B3C2F6D693E3C2F6D7374796C653E3C6D
              6F3E3D3C2F6D6F3E3C6D693E4A3C2F6D693E3C6D693E613C2F6D693E3C6D693E
              633C2F6D693E3C6D693E6F3C2F6D693E3C6D693E623C2F6D693E3C6D693E693C
              2F6D693E3C6D746578743E262378323030343B3C2F6D746578743E3C6D693E72
              3C2F6D693E3C6D693E6F3C2F6D693E3C6D693E743C2F6D693E3C6D693E613C2F
              6D693E3C6D693E743C2F6D693E3C6D693E693C2F6D693E3C6D693E6F3C2F6D69
              3E3C6D693E6E3C2F6D693E3C6D6F2073747265746368793D2766616C7365273E
              283C2F6D6F3E3C6D7374796C65206D61746876617269616E743D27626F6C6427
              206D61746873697A653D276E6F726D616C273E3C6D693E4B3C2F6D693E3C2F6D
              7374796C653E3C6D6F3E2C3C2F6D6F3E3C6D746578743E262378323030343B3C
              2F6D746578743E3C6D7374796C65206D61746876617269616E743D27626F6C64
              27206D61746873697A653D276E6F726D616C273E3C6D693E4D3C2F6D693E3C2F
              6D7374796C653E3C6D6F2073747265746368793D2766616C7365273E293C2F6D
              6F3E3C2F6D74643E3C2F6D74723E3C2F6D7461626C653E3C2F6D6174683E3C21
              2D2D204D6174685479706540456E644035403540202D2D3E0A00000026060F00
              0A00FFFFFFFF01000000000008000000FA020000000000000000000004000000
              2D0102001C000000FB021000070000000000BC02000000EE0102022253797374
              656D0000B7058A0000000A0006000000D81A66FFB7058A007B1F1A7704000000
              2D01030004000000F0010100030000000000}
            Width = 1691.000000000000000000
            Height = 247.000000000000000000
          end
          object LRptGraph7: TLRptGraph
            LeftPosition = 301.000000000000000000
            TopPosition = 437.000000000000000000
            Chapter = 6
            Page = 2
            ToPage = 2
            Width = 1502.000000000000000000
            Height = 1001.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 0.100000001490116100
            AxisX.StepLabels = 0.100000001490116100
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 0.100000001490116100
            AxisY.StepLabels = 0.200000002980232200
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = 'C1'
                Pen.Width = 10
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C2'
                Pen.Width = 9
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C3'
                Pen.Width = 8
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C4'
                Pen.Width = 7
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C5'
                Pen.Width = 6
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C6'
                Pen.Width = 5
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C7'
                Pen.Width = 4
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C8'
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C9'
                Pen.Width = 2
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end
              item
                Caption = 'C10'
                Pen.Width = 1
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Filtered = False
                XStep = 0.009999999776482582
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 1550
            Legend.TopPosition = 100
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 50
            Legend.Position = lpRelative
            MaxX = 1.000000000000000000
            MinY = -1.600000023841858000
            MaxY = 1.600000023841858000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            BackGround = clSilver
            OnPaintCurve = LRptGraph7PaintCurve
            OnCurveProperties = LRptGraph7CurveProperties
          end
          object LRptGraph8: TLRptGraph
            LeftPosition = 385.000000000000000000
            TopPosition = 467.000000000000000000
            Chapter = 7
            ToPage = 2
            Width = 1582.000000000000000000
            Height = 1266.000000000000000000
            CurvesBackOrder = False
            AxisX.StepTicks = 0.004999999888241291
            AxisX.StepLabels = 0.009999999776482582
            AxisX.AxisLabel = 'Time [s]'
            AxisX.LabelFontHeight = -36
            AxisX.Font.Charset = DEFAULT_CHARSET
            AxisX.Font.Color = clBlack
            AxisX.Font.Height = -36
            AxisX.Font.Name = 'Arial'
            AxisX.Font.Style = [fsBold]
            AxisX.Pen.Width = 2
            AxisX.LabelsGridLine.Style = lsDash
            AxisX.TicksGridLine.Style = lsNone
            AxisX.TimeLabels = False
            AxisX.Position = yBottom
            AxisY.StepTicks = 25.000000000000000000
            AxisY.StepLabels = 50.000000000000000000
            AxisY.AxisLabel = 'w end [mm]'
            AxisY.LabelFontHeight = -36
            AxisY.Font.Charset = DEFAULT_CHARSET
            AxisY.Font.Color = clBlack
            AxisY.Font.Height = -36
            AxisY.Font.Name = 'Arial'
            AxisY.Font.Style = [fsBold]
            AxisY.Pen.Width = 2
            AxisY.LabelsGridLine.Style = lsDash
            AxisY.TicksGridLine.Style = lsNone
            AxisY.Y2B = 1.000000000000000000
            AxisY.Y2Color = clBlack
            AxisY.YColor = clBlack
            Curves = <
              item
                Caption = 'w end'
                Pen.Color = clNavy
                Pen.Width = 3
                Pen.Length = 30.000000000000000000
                Pen.Ratio = 0.600000023841857900
                Brush.Style = bsClear
                Vector = FloatVectorQE
                Filtered = False
                XStep = 0.000500000023748726
                FirstRow = 0
                RowStep = 1
                Column = 0
              end>
            Legend.Visible = True
            Legend.LeftPosition = 1200
            Legend.TopPosition = 100
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clBlack
            Legend.Font.Height = -27
            Legend.Font.Name = 'Arial'
            Legend.Font.Style = [fsBold]
            Legend.LinesLength = 50
            Legend.Position = lpRelative
            MaxX = 0.100000001490116100
            MinY = -400.000000000000000000
            MaxY = 400.000000000000000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -36
            Font.Name = 'Arial'
            Font.Style = [fsBold]
          end
          object LRptImage3: TLRptImage
            LeftPosition = 292.000000000000000000
            TopPosition = 2200.000000000000000000
            Chapter = 7
            ToPage = 2
            Stretch = True
            Picture.Data = {
              09544D65746166696C65A4170000D7CDC69A000000000000802FA00F00090000
              0000317E010009000003C50B0000040042050000000005000000020101000000
              050000000102FFFFFF00050000002E01190000000B00000026060F000C004D61
              746854797065000060041200000026060F001A00FFFFFFFF000010000000C0FF
              FFFFD6FFFFFF402F0000760F000008000000FA02000013000000000000020400
              00002D0100000500000014028006FC0005000000130280063103050000001402
              8006CD060500000013028006D909050000001402800628170500000013028006
              5D19050000001402800670200500000013028006A52205000000140280063B26
              050000001302800647290500000009020000000205000000140260078B021C00
              0000FB0222FF0000000000009001000000000002001054696D6573204E657720
              526F6D616E0028EADD02A300B075D0A0B5757B1FB075040000002D0101000C00
              0000320A0000000003000000323232612C164809BC01050000001402170E5803
              1C000000FB0222FF0000000000009001000000000002001054696D6573204E65
              7720526F6D616E0028EADD02A300B075D0A0B5757B1FB075040000002D010200
              04000000F001010009000000320A00000000010000003079BC01050000001402
              EE05B6011C000000FB0280FE0000000000009001000000000002001054696D65
              73204E657720526F6D616E0028EADD02A300B075D0A0B5757B1FB07504000000
              2D01010004000000F00102000F000000320A0000000005000000313132313165
              3D06F50F4209370600030500000014020C08E5061C000000FB0280FE00000000
              00009001000000000002001054696D6573204E657720526F6D616E0028EADD02
              A300B075D0A0B5757B1FB075040000002D01020004000000F00101000A000000
              320A000000000200000032326E1F00030500000014029A0C0C071C000000FB02
              80FE0000000000009001000000000002001054696D6573204E657720526F6D61
              6E0028EADD02A300B075D0A0B5757B1FB075040000002D01010004000000F001
              02000D000000320A000000000400000035303030C000C000C000000305000000
              1402DA0EC0071C000000FB0280FE000000000000900100000000000200105469
              6D6573204E657720526F6D616E0028EADD02A300B075D0A0B5757B1FB0750400
              00002D01020004000000F001010009000000320A000000000100000030320003
              0500000014024307F10D1C000000FB0222FF0000000000009001010000000002
              001054696D6573204E657720526F6D616E0028EADD02A300B075D0A0B5757B1F
              B075040000002D01010004000000F001020010000000320A0000000006000000
              7474747474746701B902D60B780F6401BC01050000001402170E00011C000000
              FB0222FF0000000000009001010000000002001054696D6573204E657720526F
              6D616E0028EADD02A300B075D0A0B5757B1FB075040000002D01020004000000
              F00101000D000000320A0000000004000000656E647461006F00AE00BC010500
              000014020C08FE011C000000FB0280FE00000000000090010100000000020010
              54696D6573204E657720526F6D616E0028EADD02A300B075D0A0B5757B1FB075
              040000002D01010004000000F00102000F000000320A00000000050000007474
              747474164B07E10E48094507000305000000140250019E021C000000FB0280FE
              0000000000009001010000010002001053796D626F6C0075FBD3B17540000000
              28EADD02A300B075D0A0B5757B1FB075040000002D01020004000000F0010100
              0A000000320A00000000020000006162AA0400030500000014024307470E1C00
              0000FB0222FF0000000000009001000000010002001053796D626F6C0075FBD3
              B1754000000028EADD02A300B075D0A0B5757B1FB075040000002D0101000400
              0000F00102000D000000320A00000000040000002B442D448A00E41E8700BC01
              050000001402170ED40209000000320A00000000010000003D62BC0105000000
              1402500190011C000000FB0280FE000000000000900100000001000200105379
              6D626F6C0075FBD3B1754000000028EADD02A300B075D0A0B5757B1FB0750400
              00002D01020004000000F00101000D000000320A00000000040000003DD72BD7
              58024002520200030500000014020C062E0010000000320A0000000006000000
              E6F6E6F6E6F69F0BFF07F707DF03990B0003050000001402E0066D031C000000
              320A000000000E000000D72BD7D73D2D2DD7D72DD72DD7D74002680478029603
              A1024A038B03EA0217024704400262047802000305000000140247072E001000
              0000320A0000000006000000E7F7E7F7E7F79F0BFF07F707DF03990B00030500
              000014020C08140112000000320A000000000700000044D7444444D7440BBB06
              9000E10E4809B5069000000305000000140238082E0010000000320A00000000
              06000000E8F8E8F8E8F89F0BFF07F707DF03990B00030500000014029A0C3A06
              09000000320A00000000010000002D620003050000001402B80C72050A000000
              320A0000000002000000ECFCA8040003050000001402B40D460409000000320A
              00000000010000003DFC0003050000001402F60D72050A000000320A00000000
              02000000EDFDA8040003050000001402340F72050A000000320A000000000200
              0000EEFEA8040003050000001402500134001C000000FB0280FE000000000000
              BC02000000000002001054696D6573204E657720526F6D616E0028EADD02A300
              B075D0A0B5757B1FB075040000002D01010004000000F00102000C000000320A
              0000000003000000424D4B203E0492040003050000001402E006F7031C000000
              FB0280FE000000000000BC02000000000002001054696D6573204E657720526F
              6D616E0028EADD02A300B075D0A0B5757B1FB075040000002D01020004000000
              F001010016000000320A000000000A0000004D4271464B4D714D4271A8067202
              380445039505E4026406A20672020003050000001402B40D34001C000000FB02
              80FE000000000000BC02000000000002001054696D6573204E657720526F6D61
              6E0028EADD02A300B075D0A0B5757B1FB075040000002D01010004000000F001
              020009000000320A000000000100000046FE0003DE01000026060F00B2034170
              70734D46434301008B0300008B03000044657369676E20536369656E63652C20
              496E632E00050100070844534D543700001357696E416C6C4261736963436F64
              65506167657300110554696D6573204E657720526F6D616E00110353796D626F
              6C001105436F7572696572204E65770011044D5420457874726100120008212F
              458F442F4150F4100F475F4150F21F1E4150F4150F4100F445F425F48F425F41
              00F4100F435F4100F48F45F42A5F48F48F4100F4100F40F48F417F48F4100F41
              2A5F445F45F45F45F45F410F0C01000100010202020200020001010100030001
              000400000A0402010101007812010002008742000204863D003D020484B10361
              020486C522D70200874D000204862B002B020484B20362020486C522D7020087
              4B000001000001000300010300010003000B0000010002008831000001000204
              85940344020083740003001C00000B010101000200883200000000000A020486
              C522D70200874D000204862B002B03000B000001000200883100000100020088
              3200020486C522D702048594034402008374000000020486C522D70200874200
              000200962800020096290000020486C522D7020087710003001B00000B010002
              008374000204862B002B0204859403440200837400000101000A0204863D003D
              020087460003001B00000B01000200837400000101000A02048612222D030001
              030001000200874B0002048612222D03000B0000010002008832000001000204
              85940344020083740003001C00000B010101000200883200000000000A020486
              C522D70200874D00000200962800020096290000020486C522D7020087710003
              001B00000B01000200837400000101000A02048612222D030001030001000300
              0B000001000200883100000100020485940344020083740003001C00000B0101
              01000200883200000000000A020486C522D70200874D0002048612222D03000B
              0000010002008831000001000200883200020486C522D7020485940344020083
              74000000020486C522D70200874200000200962800020096290000020486C522
              D7020087710003001B00000B0100020083740002048612222D02048594034402
              0083740000010100000A0100000100020087460003001B00000B010002008365
              000200836E00020083640002009804EF02008374000204863D003D0200883000
              000101000A0204863D003D030002030001000500010101020100000100020486
              12222D0200883500020088300002008830000200883000000100020088300000
              00000200967B000200967D00000000004205000026060F007A0A417070734D46
              43430100530A0000530A000044657369676E20536369656E63652C20496E632E
              003C3F786D6C2076657273696F6E3D22312E30223F3E3C212D2D204D61746854
              797065405472616E736C61746F7240354035404D6174684D4C322028436C6970
              626F617264292E74646C404D6174684D4C20322E302028436C6970626F617264
              2940202D2D3E3C6D61746820646973706C61793D27626C6F636B2720786D6C6E
              733D27687474703A2F2F7777772E77332E6F72672F313939382F4D6174682F4D
              6174684D4C273E3C6D7461626C6520636F6C756D6E616C69676E3D276C656674
              273E3C6D74723E3C6D74643E3C6D7374796C65206D61746876617269616E743D
              27626F6C6427206D61746873697A653D276E6F726D616C273E3C6D693E423C2F
              6D693E3C2F6D7374796C653E3C6D6F3E3D3C2F6D6F3E3C6D693E262378303342
              313B3C2F6D693E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7374796C6520
              6D61746876617269616E743D27626F6C6427206D61746873697A653D276E6F72
              6D616C273E3C6D693E4D3C2F6D693E3C2F6D7374796C653E3C6D6F3E2B3C2F6D
              6F3E3C6D693E262378303342323B3C2F6D693E3C6D6F3E262378323243353B3C
              2F6D6F3E3C6D7374796C65206D61746876617269616E743D27626F6C6427206D
              61746873697A653D276E6F726D616C273E3C6D693E4B3C2F6D693E3C2F6D7374
              796C653E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D726F773E
              3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D66
              656E6365643E3C6D726F773E3C6D667261633E3C6D6E3E313C2F6D6E3E3C6D72
              6F773E3C6D693E262378303339343B3C2F6D693E3C6D7375703E3C6D693E743C
              2F6D693E3C6D6E3E323C2F6D6E3E3C2F6D7375703E3C2F6D726F773E3C2F6D66
              7261633E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7374796C65206D6174
              6876617269616E743D27626F6C6427206D61746873697A653D276E6F726D616C
              273E3C6D693E4D3C2F6D693E3C2F6D7374796C653E3C6D6F3E2B3C2F6D6F3E3C
              6D667261633E3C6D6E3E313C2F6D6E3E3C6D726F773E3C6D6E3E323C2F6D6E3E
              3C6D6F3E262378323243353B3C2F6D6F3E3C6D693E262378303339343B3C2F6D
              693E3C6D693E743C2F6D693E3C2F6D726F773E3C2F6D667261633E3C6D6F3E26
              2378323243353B3C2F6D6F3E3C6D7374796C65206D61746876617269616E743D
              27626F6C6427206D61746873697A653D276E6F726D616C273E3C6D693E423C2F
              6D693E3C2F6D7374796C653E3C2F6D726F773E3C2F6D66656E6365643E3C6D6F
              3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D7374796C65206D617468
              76617269616E743D27626F6C6427206D61746873697A653D276E6F726D616C27
              3E3C6D693E713C2F6D693E3C2F6D7374796C653E3C6D726F773E3C6D693E743C
              2F6D693E3C6D6F3E2B3C2F6D6F3E3C6D693E262378303339343B3C2F6D693E3C
              6D693E743C2F6D693E3C2F6D726F773E3C2F6D7375623E3C6D6F3E3D3C2F6D6F
              3E3C6D7375623E3C6D7374796C65206D61746876617269616E743D27626F6C64
              27206D61746873697A653D276E6F726D616C273E3C6D693E463C2F6D693E3C2F
              6D7374796C653E3C6D693E743C2F6D693E3C2F6D7375623E3C6D6F3E26237832
              3231323B3C2F6D6F3E3C6D66656E6365643E3C6D726F773E3C6D7374796C6520
              6D61746876617269616E743D27626F6C6427206D61746873697A653D276E6F72
              6D616C273E3C6D693E4B3C2F6D693E3C2F6D7374796C653E3C6D6F3E26237832
              3231323B3C2F6D6F3E3C6D667261633E3C6D6E3E323C2F6D6E3E3C6D726F773E
              3C6D693E262378303339343B3C2F6D693E3C6D7375703E3C6D693E743C2F6D69
              3E3C6D6E3E323C2F6D6E3E3C2F6D7375703E3C2F6D726F773E3C2F6D66726163
              3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7374796C65206D6174687661
              7269616E743D27626F6C6427206D61746873697A653D276E6F726D616C273E3C
              6D693E4D3C2F6D693E3C2F6D7374796C653E3C2F6D726F773E3C2F6D66656E63
              65643E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D7374796C
              65206D61746876617269616E743D27626F6C6427206D61746873697A653D276E
              6F726D616C273E3C6D693E713C2F6D693E3C2F6D7374796C653E3C6D693E743C
              2F6D693E3C2F6D7375623E3C6D6F3E262378323231323B3C2F6D6F3E3C6D6665
              6E6365643E3C6D726F773E3C6D667261633E3C6D6E3E313C2F6D6E3E3C6D726F
              773E3C6D693E262378303339343B3C2F6D693E3C6D7375703E3C6D693E743C2F
              6D693E3C6D6E3E323C2F6D6E3E3C2F6D7375703E3C2F6D726F773E3C2F6D6672
              61633E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7374796C65206D617468
              76617269616E743D27626F6C6427206D61746873697A653D276E6F726D616C27
              3E3C6D693E4D3C2F6D693E3C2F6D7374796C653E3C6D6F3E262378323231323B
              3C2F6D6F3E3C6D667261633E3C6D6E3E313C2F6D6E3E3C6D726F773E3C6D6E3E
              323C2F6D6E3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D693E2623783033
              39343B3C2F6D693E3C6D693E743C2F6D693E3C2F6D726F773E3C2F6D66726163
              3E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7374796C65206D6174687661
              7269616E743D27626F6C6427206D61746873697A653D276E6F726D616C273E3C
              6D693E423C2F6D693E3C2F6D7374796C653E3C2F6D726F773E3C2F6D66656E63
              65643E3C6D6F3E262378323243353B3C2F6D6F3E3C6D7375623E3C6D7374796C
              65206D61746876617269616E743D27626F6C6427206D61746873697A653D276E
              6F726D616C273E3C6D693E713C2F6D693E3C2F6D7374796C653E3C6D726F773E
              3C6D693E743C2F6D693E3C6D6F3E262378323231323B3C2F6D6F3E3C6D693E26
              2378303339343B3C2F6D693E3C6D693E743C2F6D693E3C2F6D726F773E3C2F6D
              7375623E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D726F773E
              3C2F6D726F773E3C2F6D74643E3C2F6D74723E3C6D74723E3C6D74643E3C6D73
              75623E3C6D7374796C65206D61746876617269616E743D27626F6C6427206D61
              746873697A653D276E6F726D616C273E3C6D693E463C2F6D693E3C2F6D737479
              6C653E3C6D726F773E3C6D693E653C2F6D693E3C6D693E6E3C2F6D693E3C6D69
              3E643C2F6D693E3C6D746578743E262378323030343B3C2F6D746578743E3C6D
              693E743C2F6D693E3C6D6F3E3D3C2F6D6F3E3C6D6E3E303C2F6D6E3E3C2F6D72
              6F773E3C2F6D7375623E3C6D6F3E3D3C2F6D6F3E3C6D66656E63656420636C6F
              73653D227D22206F70656E3D227B223E3C6D726F773E3C6D7461626C65206571
              75616C726F77733D27747275652720657175616C636F6C756D6E733D27747275
              65273E3C6D74723E3C6D74643E3C6D726F773E3C6D6F3E262378323231323B3C
              2F6D6F3E3C6D6E3E353030303C2F6D6E3E3C2F6D726F773E3C2F6D74643E3C2F
              6D74723E3C6D74723E3C6D74643E3C6D6E3E303C2F6D6E3E3C2F6D74643E3C2F
              6D74723E3C2F6D7461626C653E3C2F6D726F773E3C2F6D66656E6365643E3C2F
              6D74643E3C2F6D74723E3C2F6D7461626C653E3C2F6D6174683E3C212D2D204D
              6174685479706540456E644035403540202D2D3E0A00000026060F000A00FFFF
              FFFF01000000000008000000FA0200000000000000000000040000002D010200
              1C000000FB021000070000000000BC02000000EE0102022253797374656D0000
              21008A0200000A0006000000A91F667421008A027B1FB075040000002D010300
              04000000F0010100030000000000}
            Width = 1738.000000000000000000
            Height = 513.000000000000000000
          end
        end
      end
      object LDock1: TLDock
        Left = 905
        Top = 0
        Width = 36
        Height = 779
        Position = dpRight
        object LToolbar1: TLToolbar
          Left = 0
          Top = 0
          Caption = 'Toolbar'
          DefaultDock = LDock1
          DockedTo = LDock1
          DockPos = 0
          DragHandle = False
          TabOrder = 0
          object EditBtn: TLToolbarBtn
            Left = 0
            Top = 102
            Width = 32
            Height = 32
            GroupIndex = 1
            Down = True
            Glyph.Data = {
              66010000424D6601000000000000760000002800000014000000140000000100
              040000000000F000000000000000000000001000000010000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333330000333333333330000333330000333333333330FF03333300003333
              3333330FF0333333000033333333330FF033333300003333303330FF03333333
              00003333300330FF033333330000333330F00FF0333333330000333330FF0FF0
              333333330000333330FFFFF0000333330000333330FFFFFFFF03333300003333
              30FFFFFFF03333330000333330FFFFFF033333330000333330FFFFF033333333
              0000333330FFFF03333333330000333330FFF033333333330000333330FF0333
              333333330000333330F033333333333300003333300333333333333300003333
              30333333333333330000}
            GlyphMask.Data = {00000000}
            OnClick = EditBtnClick
          end
          object ZoomInBtn: TLToolbarBtn
            Left = 0
            Top = 134
            Width = 32
            Height = 32
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
            OnClick = ZoomInBtnClick
          end
          object ZoomOutBtn: TLToolbarBtn
            Left = 0
            Top = 166
            Width = 32
            Height = 32
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
            OnClick = ZoomOutBtnClick
          end
          object FullPageBtn: TLToolbarBtn
            Left = 0
            Top = 198
            Width = 32
            Height = 32
            Enabled = False
            Glyph.Data = {
              4E010000424D4E01000000000000760000002800000012000000120000000100
              040000000000D800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333377777777
              777733000000333777777777777733000000330000000000007733000000330F
              FFFFFFFFF07733000000330FFFFFFFFFF07733000000330FFFFFFFFFF0773300
              0000330FFFFFFFFFF07733000000330FFFFFFFFFF07733000000330FFFFFFFFF
              F07733000000330FFFFFFFFFF07733000000330FFFFFFFFFF07733000000330F
              FFFFFFFFF07733000000330FFFFFFFFFF07733000000330FFFFFFFFFF0773300
              0000330FFFFFFFFFF07733000000330FFFFFFFFFF07733000000330FFFFFFFFF
              F07333000000330000000000003333000000}
            GlyphMask.Data = {00000000}
            OnClick = FullPageBtnClick
          end
          object PrintBtn: TLToolbarBtn
            Left = 0
            Top = 0
            Width = 32
            Height = 32
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
            OnClick = PrintBtnClick
          end
          object LToolbarSep1: TLToolbarSep
            Left = 0
            Top = 96
          end
          object ExportBtn: TLToolbarBtn
            Left = 0
            Top = 32
            Width = 32
            Height = 32
            Glyph.Data = {
              26040000424D2604000000000000360000002800000012000000120000000100
              180000000000F003000000000000000000000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FF000000FF00FF0000
              00000000FF00FFFF00FFFF00FF000000FF00FF000000FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000FF00FF000000000000FF00FF000000000000FF00FF00
              0000FF00FF000000FF00FF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              0000FF00FF000000FF00FF000000FF00FF000000FF00FF000000FF00FF000000
              FF00FF000000000000FF00FF000000000000000000FF00FF0000FF00FF000000
              FF00FF000000FF00FF000000000000FF00FF000000000000FF0000000000FFFF
              FFFFFFFFFF0000FF0000000000FF00FF0000FF00FF000000FFFFFFFFFFFFFFFF
              FF000000FFFFFFFFFFFFFFFFFF000000FF0000000000000000000000FF0000FF
              0000000000FF00FF0000FF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF0000FF0000000000FF00FF
              0000FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              000000FF0000FF0000FF0000FF0000FF0000000000FF00FF0000FF00FF000000
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF
              00FFFF00FFFF00FF0000000000FF00FF0000FF00FF000000FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF00FF
              0000000000FF00FF0000FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF000000FFFF00FFFF00FFFF00FFFF00FF0000000000FF00FF
              0000FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              000000000000000000000000000000000000000000FF00FF0000FF00FF000000
              FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FF000000FFFFFFFFFFFFFFFF
              FFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FF00FFFF00FF00000000000000
              0000FF00FFFF00FF0000FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
              0000000000FFFFFF000000FF00FFFF00FFFF00FF000000000000FF00FFFF00FF
              0000FF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
              000000000000000000000000FF00FF000000FF00FFFF00FF0000FF00FFFF00FF
              000000000000000000000000000000000000000000000000000000FF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FF0000FF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FF0000}
            GlyphMask.Data = {00000000}
            OnClick = ExportBtnClick
          end
          object ExportRectBrn: TLToolbarBtn
            Left = 0
            Top = 64
            Width = 32
            Height = 32
            GroupIndex = 1
            Glyph.Data = {
              4E010000424D4E01000000000000760000002800000012000000120000000100
              040000000000D800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              33333300000033333333333333333300000033000000003000000300000030FF
              FFFFFFCFFFCC0300000030FFFFFFFFCFFFCC0300000030FFFFFFFFCCCCCC0300
              000030FFFFFFFF0CCCCC0300000030FFFFFFFF0EEEEC0300000030FFFFFFFF0E
              EEEC0300000030FFFFFFFF0EEEEC0300000030FFF9FFFF0000000300000030FF
              F99FFF0399999300000030FFFF999F0339999300000030FFFFF9999999999300
              000030FFFFFFF999993993000000330000000003333393000000333333333333
              333333000000333333333333333333000000}
            GlyphMask.Data = {00000000}
            OnClick = ExportRectBrnClick
          end
        end
      end
      object PagesGrid1: TPagesGrid
        Left = 0
        Top = 0
        Width = 225
        Height = 779
        Align = alLeft
        ColCount = 1
        DefaultColWidth = 200
        DefaultRowHeight = 128
        FixedCols = 0
        RowCount = 10
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedRowDefAlign]
        TabOrder = 2
        LRpt = LRpt1
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'About'
      ImageIndex = 8
      DesignSize = (
        941
        779)
      object LRichEdit2: TLRichEdit
        Left = 34
        Top = 58
        Width = 867
        Height = 323
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        LicenceComponent = LicenceComponent1
        RtfText = {
          880100007B5C727466315C616E73695C616E7369637067313235305C64656666
          305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
          6C7B5C66305C666E696C5C666368617273657430205365676F652055493B7D7B
          5C66315C666E696C5C6663686172736574323338205365676F652055493B7D7D
          0D0A7B5C636F6C6F7274626C203B5C726564305C677265656E305C626C756532
          35353B7D0D0A7B5C2A5C67656E657261746F722052696368656432302031302E
          302E32363130307D5C766965776B696E64345C756331200D0A5C706172645C71
          635C6366315C625C66305C667335345C6C616E673130333320544C436F6D706F
          6E656E74735C6366305C7061720D0A5C62305C6673323420666F722044656C70
          68695C66315C6C616E67313035315C7061720D0A5C66305C667333305C6C616E
          6731303333204C41434B20536F6C7574696F6E732C20732E20722E206F2E5C70
          61720D0A0D0A5C706172645C66315C667331385C6C616E67313035315C706172
          0D0A5C7061720D0A7D0D0A00}
      end
    end
  end
  object LicenceComponent1: TLicenceComponent
    User = 'LACK Solutions'
    UserID = 855315759
    Left = 1042
    Top = 16
    Data = 
      '694 887 963 663 591 948 486 861 092 779 708 145 631 295 020 913 ' +
      '416 013 858 369 611 034 633 592 099 685 039 487 107 944 814 970 ' +
      '224 837 020 068 373 367 938 626 844 057 421 367 081 061 571 556 ' +
      '297 954 130'
  end
  object Equation1: TEquation
    LicenceComponent = LicenceComponent1
    Variables = 'x'
    Lines.Strings = (
      'X+Sin(X)')
    OnChange = Equation1Change
    Left = 1112
    Top = 14
    VarValues = {020102010500000000000000000000}
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 986
    Top = 21
  end
  object ActionList1: TActionList
    Left = 986
    Top = 61
    object CloseActn: TAction
      Caption = 'Close'
      ShortCut = 32856
      OnExecute = CloseActnExecute
    end
  end
  object Variables1: TVariables
    LicenceComponent = LicenceComponent1
    Left = 1040
    Top = 63
    object FloatVector1: TFloatVector
      Count = 1000
      VarUnit = '-'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      Equation.Strings = (
        'Sin(PI*T)')
      MatrixOperations = False
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
    end
    object FloatVector2: TFloatVector
      Count = 1000
      VarUnit = '-'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      Equation.Strings = (
        'dt(Var1)')
      MatrixOperations = False
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
      object Var1: TVarItem
        Variable = FloatVector1
      end
    end
    object FloatMatrixK1: TFloatMatrix
      Count = 484
      VarUnit = '-'
      Description = 'K'
      SaveData = True
      RowsCols = '22,22'
      Variables = 'T'
      CapacityStep = 200
      Data = {
        020102000216021603E401080F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000
        0F000000000F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F000000000F000000000F000000000F0000
        00000F000000000F000000000F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
    end
    object FloatVectorF1: TFloatVector
      Count = 22
      VarUnit = '-'
      Description = 'F'
      SaveData = True
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      MatrixOperations = False
      Data = {
        02010264080F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F000000000F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F00007AC40F00000000}
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
    end
    object FloatMatrixInvK1: TFloatMatrix
      Count = 484
      VarUnit = '-'
      Description = 'K^-1'
      RowsCols = '22,22'
      Variables = 'T'
      Equation.Strings = (
        'K^-1')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object K: TVarItem
        Variable = FloatMatrixK1
      end
    end
    object FloatMatrixQ1: TFloatMatrix
      Count = 21
      VarUnit = '-'
      Description = 'Q'
      RowsCols = '21,1'
      Variables = 'T'
      Equation.Strings = (
        'InvK*F')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object InvK: TVarItem
        Variable = FloatMatrixInvK1
      end
      object F: TVarItem
        Variable = FloatVectorF1
      end
    end
    object FloatMatrixK2: TFloatMatrix
      Count = 484
      VarUnit = '-'
      Description = 'K'
      RowsCols = '22,22'
      Variables = 'T'
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
    end
    object FloatVectorF2: TFloatVector
      Count = 22
      VarUnit = '-'
      Description = 'F'
      SaveData = True
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      MatrixOperations = False
      Data = {
        02010264080F000000000F000000000F000000000F000000000F000000000F00
        0000000F000000000F000000000F000000000F000000000F00007AC40F000000
        000F000000000F000000000F000000000F000000000F000000000F000000000F
        000000000F000000000F000000000F00000000}
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
    end
    object FloatMatrixInvK2: TFloatMatrix
      Count = 484
      VarUnit = '-'
      Description = 'K^-1'
      RowsCols = '22,22'
      Variables = 'T'
      Equation.Strings = (
        'K^-1')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object K: TVarItem
        Variable = FloatMatrixK2
      end
    end
    object FloatMatrixQ2: TFloatMatrix
      Count = 22
      VarUnit = '-'
      Description = 'Q'
      RowsCols = '22,1'
      Variables = 'T'
      Equation.Strings = (
        'InvK*F')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object InvK: TVarItem
        Variable = FloatMatrixInvK2
      end
      object F: TVarItem
        Variable = FloatVectorF2
      end
    end
    object FloatMatrixMB: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'M'
      RowsCols = '20,20'
      Variables = 'T'
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
    end
    object FloatMatrixKB: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'K'
      RowsCols = '20,20'
      Variables = 'T'
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
    end
    object FloatVectorOM: TFloatVector
      Count = 20
      VarUnit = '-'
      Description = 'OM'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      MatrixOperations = False
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
    end
    object FloatMatrixYBKM: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'Y'
      RowsCols = '20,20'
      Variables = 'T'
      Equation.Strings = (
        'EIGENKM(O;K;M)')
      OnAfterCalc = MainFormFloatMatrixYBKMAfterCalc
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object K: TVarItem
        Variable = FloatMatrixKB
      end
      object M: TVarItem
        Variable = FloatMatrixMB
      end
      object O: TVarItem
        Variable = FloatVectorOM
      end
    end
    object FloatMatrixInvKB: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'K^-1'
      RowsCols = '20,20'
      Variables = 'T'
      Equation.Strings = (
        'K^-1')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object M: TVarItem
        Variable = FloatMatrixMB
      end
      object K: TVarItem
        Variable = FloatMatrixKB
      end
    end
    object FloatScalarDT: TFloatScalar
      Count = 0
      VarUnit = 's'
      Description = 'DT'
      Value = 0.000500000000000000
    end
    object FloatVectorFB: TFloatVector
      Count = 20
      VarUnit = '-'
      Description = 'F'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      MatrixOperations = False
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
    end
    object FloatVectorQBS: TFloatVector
      Count = 20
      VarUnit = '-'
      Description = 'QS'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      Equation.Strings = (
        'IK*F')
      MatrixOperations = True
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
      object IK: TVarItem
        Variable = FloatMatrixInvKB
      end
      object F: TVarItem
        Variable = FloatVectorFB
      end
    end
    object FloatVectorOQB: TFloatVector
      Count = 20
      VarUnit = '-'
      Description = 'OQ'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      Equation.Strings = (
        'Q')
      MatrixOperations = True
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
      object Q: TVarItem
        Variable = FloatVectorQB
      end
    end
    object FloatVectorOOQB: TFloatVector
      Count = 20
      VarUnit = '-'
      Description = 'OOQ'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      Equation.Strings = (
        'OQ')
      MatrixOperations = True
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
      object OQ: TVarItem
        Variable = FloatVectorOQB
      end
    end
    object FloatMatrixB: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'B'
      RowsCols = '20,20'
      Variables = 'T'
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
    end
    object FloatMatrixA: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'A'
      RowsCols = '20,20'
      Variables = 'T'
      Equation.Strings = (
        '(M/D^2+B/(2*D))^-1')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object M: TVarItem
        Variable = FloatMatrixMB
      end
      object B: TVarItem
        Variable = FloatMatrixB
      end
      object D: TVarItem
        Variable = FloatScalarDT
      end
    end
    object FloatMatrixAO: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'AO'
      RowsCols = '20,20'
      Variables = 'T'
      Equation.Strings = (
        '(2/D^2)*M-K')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object M: TVarItem
        Variable = FloatMatrixMB
      end
      object K: TVarItem
        Variable = FloatMatrixKB
      end
      object D: TVarItem
        Variable = FloatScalarDT
      end
    end
    object FloatMatrixAOO: TFloatMatrix
      Count = 400
      VarUnit = '-'
      Description = 'AOO'
      RowsCols = '20,20'
      Variables = 'T'
      Equation.Strings = (
        'B/(2*D)-M/D^2')
      CapacityStep = 200
      VarValues = {020102010500000000000000000000}
      object M: TVarItem
        Variable = FloatMatrixMB
      end
      object B: TVarItem
        Variable = FloatMatrixB
      end
      object D: TVarItem
        Variable = FloatScalarDT
      end
    end
    object FloatVectorQB: TFloatVector
      Count = 20
      VarUnit = '-'
      Description = 'Q'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      Equation.Strings = (
        'A*(AO*OQ+AOO*OOQ)')
      MatrixOperations = True
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
      object A: TVarItem
        Variable = FloatMatrixA
      end
      object AO: TVarItem
        Variable = FloatMatrixAO
      end
      object AOO: TVarItem
        Variable = FloatMatrixAOO
      end
      object OQ: TVarItem
        Variable = FloatVectorOQB
      end
      object OOQ: TVarItem
        Variable = FloatVectorOOQB
      end
    end
    object FloatVectorQE: TFloatVector
      Count = 1
      VarUnit = '-'
      Description = 'QE'
      Multiplicator = 1.000000000000000000
      Variables = 'T'
      MatrixOperations = False
      ChebyshevParam = {
        020102000F0000C8420F0000F0410F9A99993E0F0000000002040F000020410F
        CDCCCC3D0201}
      NR_FilterParam = {020102000F0000C8420F000020410F000048420F000000400F0000003F0201}
      Weight_FilterParam = {
        020108020A02000FCDCCCC3E0F0000C8420F8FC2353F0F000080410F00008041
        0F000020400F000080400FAE47213F0FCDCC4C3F0FCDCC4C3F0FCDCCCC3E0F00
        0000410F000000410FAE47213F0F0000803F0F000000400F000000400FAE4721
        3F0F0000803F0F000080410F000020410F3333333F0F0000803F0F0000C8420F
        000000400F000000400FAE47213F0F0000803F0F000000000F0000484208}
      FFTParam = {02010F0000C8420F000000000F000000000F000000000F00000000}
      VarValues = {020102010500000000000000000000}
    end
  end
  object ImageList1: TImageList
    Height = 18
    Width = 18
    Left = 987
    Top = 104
    Bitmap = {
      494C010102000800040012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000480000001200000001002000000000004014
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      00000000000000000000FF000000FF0000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000008080800080808000000000000000000000000000000000000000
      00000000000000000000FF000000FF000000000000000000000000000000FFFF
      FF00000000000000000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00000000000000000080808000C0C0C000C0C0C000C0C0C0008080
      8000000000008080800080808000000000000000000000000000000000000000
      00000000000000000000FFFFFF00000000000000000080808000C0C0C000C0C0
      C000C0C0C0008080800000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000FFFFFF00FFFFFF00C0C0
      C000808080000000000080808000808080000000000000000000000000000000
      00000000000000000000000000000000000080808000C0C0C000C0C0C000FFFF
      FF00FFFFFF00C0C0C00080808000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFF
      FF00C0C0C0008080800000000000808080000000000000000000000000000000
      000000000000000000000000000080808000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF00C0C0C000808080000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF00C0C0C00000000000808080000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C0000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000FFFFFF00C0C0C00000000000808080000000000000000000000000000000
      000000000000000000000000000080808000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C0000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000808080000000000000000000000000000000
      000000000000000000000000000080808000C0C0C000FFFFFF00FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000FFFFFF00FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C0008080800080808000000000000000000000000000000000000000
      00000000000000000000808080008080800080808000FFFFFF00FFFFFF00C0C0
      C000C0C0C000C0C0C000C0C0C000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000008080800080808000C0C0C000C0C0C000C0C0C000C0C0
      C000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000048000000120000000100010000000000D80000000000000000000000
      000000000000000000000000FFFFFF00FFFCFFFFF000000000000000FFFCFFFF
      F000000000000000EFF03BFC0000000000000000C7F031FC0000000000000000
      83FCE0FFF00000000000000001FCC07FF0000000000000008007E001F0000000
      00000000C003F000F000000000000000E001F8007000000000000000F000FC00
      3000000000000000F000FC003000000000000000F000FC003000000000000000
      F000FC003000000000000000F000FC003000000000000000F001FC0070000000
      00000000F803FE00F000000000000000FC07FF01F000000000000000FE0FFF83
      F00000000000000000000000000000000000000000000000000000000000}
  end
  object Equation2: TEquation
    LicenceComponent = LicenceComponent1
    Variables = 'f,F1,F2,F3,F4,F5,F6,Q1,Q2,Q3,Q4,K'
    Lines.Strings = (
      '(1/(1-(F1/F)^2-I(F1/(Q1*F))))*'
      '(1/(1-(F/F2)^2+I(F/(Q1*F2))))*'
      '((1+I(F/F3))/(1-(F/F4)^2+I(F/(Q2*F4))))*'
      '((1-(F/F5)^2+I(F/(Q3*F5)))/(1-(F/F6)^2+I(F/(Q4*F6))))*K')
    OnChange = Equation2Change
    Left = 1149
    Top = 14
    VarValues = {
      0201020C05000000000000000000000500D0CCCCCCCCCCCCFD3F050000000000
      0000C80540050000000000000080024005000000000000008002400500000000
      000000A0004005000000000000008001400500D868006F8104B5FE3F050048E1
      7A14AE47A1FE3F0500D0CCCCCCCCCCCCFE3F0500D0CCCCCCCCCCCCFE3F0500D0
      CCCCCCCCCCCCFD3F}
  end
  object Equation3: TEquation
    LicenceComponent = LicenceComponent1
    Variables = 'x,y'
    Lines.Strings = (
      '(1/4) * ((1 - X) * (1 - Y) * (-X - Y - 1))')
    OnChange = Equation3Change
    Left = 1186
    Top = 14
    VarValues = {0201020205000000000000000000000500000000000000000000}
  end
  object Equation4: TEquation
    LicenceComponent = LicenceComponent1
    Variables = 'x,y'
    Lines.Strings = (
      '(1/2) * (1 - X^2) * (1 + Y)')
    OnChange = Equation3Change
    Left = 1222
    Top = 14
    VarValues = {0201020205000000000000000000000500000000000000000000}
  end
  object PrintDialog1: TPrintDialog
    Options = [poPageNums]
    Left = 1116
    Top = 104
  end
  object SaveWMF: TSaveDialog
    DefaultExt = 'wmf'
    Filter = 
      'Windows Metafile, with Aldus header (*.wmf)|*.wmf|Enhanced Windo' +
      'ws Metafile (*.emf)|*.emf|Windows Bitmap (*.bmp)|*.bmp|JPEG (*.j' +
      'pg)|*.jpg|GIF (*.GIF)|*.gif'
    Title = 'Export Windows Metafile'
    Left = 1040
    Top = 104
  end
  object Equation5: TEquation
    LicenceComponent = LicenceComponent1
    Variables = 'a,b,c,D'
    Lines.Strings = (
      
        '(D=0)*(-b/(2*a))+(D>0)*((-b+D^(1/2))/(2*a))+(D<0)*((-b+i(Abs(D)^' +
        '(1/2)))/(2*a))')
    Left = 1116
    Top = 66
    VarValues = {
      0201020405000000000000000000000500000000000000000000050000000000
      00000000000500000000000000000000}
  end
end
