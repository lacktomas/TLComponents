object SetupLRichEditForm: TSetupLRichEditForm
  Left = 360
  Top = 263
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Edit RTF'
  ClientHeight = 358
  ClientWidth = 848
  Color = clBtnFace
  Constraints.MinHeight = 339
  Constraints.MinWidth = 575
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
    Top = 308
    Width = 848
    Height = 50
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    TabOrder = 0
    DesignSize = (
      848
      50)
    object FlatBitBtn1: TBitBtn
      Left = 661
      Top = 14
      Width = 90
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akTop, akRight]
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
    end
    object FlatBitBtn2: TBitBtn
      Left = 754
      Top = 14
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
  end
  inline LRichEditFrame1: TLRichEditFrame
    Left = 0
    Top = 0
    Width = 848
    Height = 308
    Align = alClient
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 848
    ExplicitHeight = 308
    inherited Panel1: TPanel
      Width = 848
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 848
      inherited Label1: TLabel
        Top = 6
        Width = 32
        Height = 13
        StyleElements = [seFont, seClient, seBorder]
        ExplicitTop = 6
        ExplicitWidth = 32
        ExplicitHeight = 13
      end
      inherited ComboBox1: TComboBox
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited ComboBox2: TComboBox
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited ColorBox1: TColorBox
        Height = 24
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited ColorBox2: TColorBox
        Height = 24
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited RichEdit: TLRichEdit
      Width = 848
      Height = 278
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 848
      ExplicitHeight = 278
      RtfText = {
        B60000007B5C727466315C616E73695C616E7369637067313235305C64656666
        305C6E6F7569636F6D7061745C6465666C616E67313035317B5C666F6E747462
        6C7B5C66305C666E696C5C666368617273657432333820417269616C3B7D7D0D
        0A7B5C2A5C67656E657261746F722052696368656432302031302E302E323631
        30307D5C766965776B696E64345C756331200D0A5C706172645C66305C667332
        342052696368456469745C7061720D0A5C7061720D0A7D0D0A00}
    end
  end
end
