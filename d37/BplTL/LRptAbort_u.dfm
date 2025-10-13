object LRptAbortDlg: TLRptAbortDlg
  Left = 299
  Top = 279
  ActiveControl = AbortBtn
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Print'
  ClientHeight = 132
  ClientWidth = 356
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'System'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 16
  object AbortBtn: TBitBtn
    Left = 137
    Top = 104
    Width = 81
    Height = 25
    Caption = 'Cancel'
    Default = True
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000010000000000000000000
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
    TabOrder = 0
    OnClick = AbortBtnClick
  end
  object GroupBox: TGroupBox
    Left = 8
    Top = 0
    Width = 340
    Height = 94
    TabOrder = 1
    object Label1: TLabel
      Left = 109
      Top = 10
      Width = 121
      Height = 16
      Caption = 'Print from program'
    end
    object ProgramName: TLabel
      Left = 8
      Top = 30
      Width = 325
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = ' program'
    end
    object Label3: TLabel
      Left = 138
      Top = 50
      Width = 62
      Height = 16
      Alignment = taCenter
      Caption = 'on printer'
    end
    object PrinterName: TLabel
      Left = 8
      Top = 70
      Width = 325
      Height = 15
      Alignment = taCenter
      AutoSize = False
      Caption = 'printer'
    end
  end
end
