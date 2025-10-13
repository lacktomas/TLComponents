object PrintLRptForm: TPrintLRptForm
  Left = 0
  Top = 0
  ActiveControl = PagesTreeView1
  BorderStyle = bsDialog
  Caption = 'Print'
  ClientHeight = 695
  ClientWidth = 874
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
    Left = 0
    Top = 656
    Width = 874
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    Locked = True
    ShowCaption = False
    TabOrder = 0
    DesignSize = (
      874
      39)
    object SetupBtn: TBitBtn
      Left = 0
      Top = 10
      Width = 111
      Height = 25
      Caption = 'Setup'
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333337777
        333333000000333333300077333333000000333333E000073333330000003333
        33E6EE07333333000000333333E03E07333333000000333333E0060733333300
        0000333333ECCC07333333000000333333ECCC07333333000000333333ECCC07
        333333000000333333ECCC07333333000000333333ECCC073333330000003333
        33ECCC07773333000000333336CCCCC077733300000033336CCCCCCC07733300
        0000333ECCC733CCC07333000000333ECC0733ECC07333000000333ECC0733EC
        C033330000003333EC0333EC033333000000}
      TabOrder = 0
      OnClick = SetupBtnClick
    end
    object OkBtn: TBitBtn
      Left = 640
      Top = 10
      Width = 111
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Print'
      Default = True
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
      ModalResult = 1
      TabOrder = 1
    end
    object CancelBtn: TBitBtn
      Left = 757
      Top = 10
      Width = 112
      Height = 25
      Anchors = [akTop, akRight]
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 2
    end
  end
  object PagesTreeView1: TPagesTreeView
    Left = 0
    Top = 0
    Width = 217
    Height = 656
    Align = alLeft
    Indent = 19
    RowSelect = True
    ShowLines = False
    TabOrder = 1
    OnClick = PagesTreeView1Click
  end
  object LRpt1: TLRpt
    Left = 217
    Top = 0
    Width = 657
    Height = 656
    HorzScrollBar.Increment = 32
    VertScrollBar.Increment = 32
    Align = alClient
    FormatOrientation = foPortrait
    TabOrder = 2
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
    OnPaint = LRpt1Paint
    object TLRptChapters
      AInt = 0
    end
    object TLRptComponents
    end
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 132
    Top = 664
  end
end
