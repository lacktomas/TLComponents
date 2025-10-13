object GAreaForm: TGAreaForm
  Left = 380
  Top = 317
  ActiveControl = EditL
  BorderStyle = bsDialog
  Caption = 'Graphene surface'
  ClientHeight = 140
  ClientWidth = 267
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  DesignSize = (
    267
    140)
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 20
    Width = 21
    Height = 13
    Caption = 'Left:'
  end
  object Label2: TLabel
    Left = 144
    Top = 20
    Width = 16
    Height = 13
    Caption = 'mm'
  end
  object Label3: TLabel
    Left = 8
    Top = 50
    Width = 28
    Height = 13
    Caption = 'Right:'
  end
  object Label4: TLabel
    Left = 144
    Top = 50
    Width = 16
    Height = 13
    Caption = 'mm'
  end
  object Label5: TLabel
    Left = 8
    Top = 78
    Width = 34
    Height = 13
    Caption = 'Above:'
  end
  object Label6: TLabel
    Left = 144
    Top = 78
    Width = 16
    Height = 13
    Caption = 'mm'
  end
  object Label7: TLabel
    Left = 8
    Top = 108
    Width = 35
    Height = 13
    Caption = 'Below::'
  end
  object Label8: TLabel
    Left = 144
    Top = 108
    Width = 16
    Height = 13
    Caption = 'mm'
  end
  object FlatBitBtn1: TBitBtn
    Left = 167
    Top = 18
    Width = 89
    Height = 24
    Anchors = [akTop, akRight]
    Caption = 'Ok'
    Default = True
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
    TabOrder = 4
    OnClick = FlatBitBtn1Click
  end
  object FlatBitBtn2: TBitBtn
    Left = 167
    Top = 50
    Width = 89
    Height = 24
    Anchors = [akTop, akRight]
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 5
  end
  object EditL: TEdit
    Left = 47
    Top = 18
    Width = 92
    Height = 21
    TabOrder = 0
    Text = '10'
    OnEnter = EditLEnter
    OnExit = EditLExit
    OnKeyPress = EditLKeyPress
  end
  object EditR: TEdit
    Left = 47
    Top = 47
    Width = 92
    Height = 21
    TabOrder = 1
    Text = '10'
    OnEnter = EditLEnter
    OnExit = EditLExit
    OnKeyPress = EditLKeyPress
  end
  object EditT: TEdit
    Left = 47
    Top = 77
    Width = 92
    Height = 21
    TabOrder = 2
    Text = '10'
    OnEnter = EditLEnter
    OnExit = EditLExit
    OnKeyPress = EditLKeyPress
  end
  object EditB: TEdit
    Left = 47
    Top = 106
    Width = 92
    Height = 21
    TabOrder = 3
    Text = '10'
    OnEnter = EditLEnter
    OnExit = EditLExit
    OnKeyPress = EditLKeyPress
  end
end
