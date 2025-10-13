object Rotate3DForm: TRotate3DForm
  Left = 274
  Top = 214
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsToolWindow
  Caption = 'Rotation'
  ClientHeight = 315
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 39
    Top = 10
    Width = 42
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'X Anglel:'
  end
  object Label2: TLabel
    Left = 39
    Top = 40
    Width = 40
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Y Angle:'
  end
  object Label3: TLabel
    Left = 39
    Top = 69
    Width = 40
    Height = 13
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Z Angle:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 272
    Width = 244
    Height = 43
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Locked = True
    TabOrder = 0
    object FlatBitBtn1: TBitBtn
      Left = 67
      Top = 5
      Width = 111
      Height = 31
      Caption = 'Close'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object EditRX: TEdit
    Left = 85
    Top = 8
    Width = 54
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 1
    Text = 'EditRX'
    OnEnter = EditRXEnter
    OnExit = EditRXExit
    OnKeyDown = EditRXKeyDown
    OnKeyPress = EditRXKeyPress
  end
  object EditRY: TEdit
    Left = 85
    Top = 38
    Width = 54
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 4
    Text = 'EditRY'
    OnEnter = EditRXEnter
    OnExit = EditRYExit
    OnKeyDown = EditRXKeyDown
    OnKeyPress = EditRXKeyPress
  end
  object EditRZ: TEdit
    Left = 85
    Top = 67
    Width = 54
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 7
    Text = 'EditRZ'
    OnEnter = EditRXEnter
    OnExit = EditRZExit
    OnKeyDown = EditRXKeyDown
    OnKeyPress = EditRXKeyPress
  end
  object XYBtn: TBitBtn
    Left = 6
    Top = 97
    Width = 74
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'X-Y Plane'
    TabOrder = 10
    OnClick = XYBtnClick
  end
  object YZBtn: TBitBtn
    Left = 85
    Top = 97
    Width = 73
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Y-Z Plane'
    TabOrder = 11
    OnClick = YZBtnClick
  end
  object ZXBtn: TBitBtn
    Left = 163
    Top = 97
    Width = 75
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Z-X Plane'
    TabOrder = 12
    OnClick = ZXBtnClick
  end
  object XYZBtn: TBitBtn
    Left = 6
    Top = 126
    Width = 74
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'X-Y-Z'
    TabOrder = 13
    OnClick = XYZBtnClick
  end
  object YZXBtn: TBitBtn
    Left = 85
    Top = 126
    Width = 73
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Y-Z-X'
    TabOrder = 14
    OnClick = YZXBtnClick
  end
  object ZXYBtn: TBitBtn
    Left = 163
    Top = 126
    Width = 75
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Z-X-Y'
    TabOrder = 15
    OnClick = ZXYBtnClick
  end
  object XMinusBtn: TBitBtn
    Left = 159
    Top = 6
    Width = 37
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'X-'
    TabOrder = 2
    OnClick = XMinusBtnClick
  end
  object XPlusBtn: TBitBtn
    Left = 201
    Top = 6
    Width = 37
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'X+'
    TabOrder = 3
    OnClick = XPlusBtnClick
  end
  object YMinusBtn: TBitBtn
    Left = 159
    Top = 35
    Width = 37
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Y-'
    TabOrder = 5
    OnClick = YMinusBtnClick
  end
  object YPlusBtn: TBitBtn
    Left = 201
    Top = 35
    Width = 37
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Y+'
    TabOrder = 6
    OnClick = YPlusBtnClick
  end
  object ZMinusBtn: TBitBtn
    Left = 159
    Top = 65
    Width = 37
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Z-'
    TabOrder = 8
    OnClick = ZMinusBtnClick
  end
  object ZPlusBtn: TBitBtn
    Left = 201
    Top = 65
    Width = 37
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'Z+'
    TabOrder = 9
    OnClick = ZPlusBtnClick
  end
  object xyEbene: TCheckBox
    Left = 6
    Top = 158
    Width = 72
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'xy Plane'
    TabOrder = 16
    OnClick = xyEbeneClick
  end
  object yzEbene: TCheckBox
    Left = 85
    Top = 158
    Width = 72
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'yz Plane'
    TabOrder = 17
    OnClick = yzEbeneClick
  end
  object zxEbene: TCheckBox
    Left = 163
    Top = 158
    Width = 72
    Height = 16
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = 'zx Plane'
    TabOrder = 18
    OnClick = zxEbeneClick
  end
  object EditDX: TEdit
    Left = 59
    Top = 185
    Width = 43
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 20
    Text = 'EditDX'
    OnEnter = EditRXEnter
    OnExit = EditDXExit
    OnKeyDown = EditRXKeyDown
    OnKeyPress = EditRXKeyPress
  end
  object DXMinusBtn: TBitBtn
    Left = 20
    Top = 183
    Width = 36
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Glyph.Data = {
      4E010000424D4E01000000000000760000002800000012000000120000000100
      040000000000D800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000003333333333333333330000003333333330333333330000003333
      3333A0333333330000003333333A3033333333000000333333A3A03333333300
      000033333A3A30333333330000003333A3A3A033333333000000333A3A3A3033
      33333300000033A3A3A3A033333333000000333A3A3A30333333330000003333
      A3A3A03333333300000033333A3A3033333333000000333333A3A03333333300
      00003333333A303333333300000033333333A333333333000000333333333333
      333333000000333333333333333333000000}
    TabOrder = 19
    OnClick = DXMinusBtnClick
  end
  object DXPlusBtn: TBitBtn
    Left = 106
    Top = 183
    Width = 36
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Glyph.Data = {
      4E010000424D4E01000000000000760000002800000012000000120000000100
      040000000000D800000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000003333333333333333330000003333330033333333330000003333
      33A303333333330000003333333A3033333333000000333333A3A30333333300
      00003333333A3A30333333000000333333A3A3A30333330000003333333A3A3A
      303333000000333333A3A3A3A333330000003333333A3A3A3333330000003333
      33A3A3A33333330000003333333A3A33333333000000333333A3A33333333300
      00003333333A3333333333000000333333A33333333333000000333333333333
      333333000000333333333333333333000000}
    TabOrder = 21
    OnClick = DXPlusBtnClick
  end
  object EditDY: TEdit
    Left = 179
    Top = 210
    Width = 43
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 23
    Text = 'EditDY'
    OnEnter = EditRXEnter
    OnExit = EditDYExit
    OnKeyDown = EditRXKeyDown
    OnKeyPress = EditRXKeyPress
  end
  object DYPlusBtn: TBitBtn
    Left = 183
    Top = 183
    Width = 36
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Glyph.Data = {
      C6000000424DC6000000000000007600000028000000100000000A0000000100
      0400000000005000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333000000000000033A3A3A3A3A3A3A3333A3A3A3A3A3A333333A3A3A3A3A
      33333333A3A3A3A3333333333A3A3A333333333333A3A33333333333333A3333
      33333333333333333333}
    TabOrder = 22
    OnClick = DYPlusBtnClick
  end
  object DYMinusBtn: TBitBtn
    Left = 183
    Top = 236
    Width = 36
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Glyph.Data = {
      C6000000424DC6000000000000007600000028000000100000000A0000000100
      0400000000005000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333333A03333333333333A3A033333333333A3A3A03
      33333333A3A3A3A03333333A3A3A3A3A033333A3A3A3A3A3A0333A3A3A3A3A3A
      3A033333333333333333}
    TabOrder = 24
    OnClick = DYMinusBtnClick
  end
  object ZoomOutBtn: TBitBtn
    Left = 20
    Top = 236
    Width = 36
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
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
    TabOrder = 25
    OnClick = ZoomOutBtnClick
  end
  object EditS: TEdit
    Left = 59
    Top = 238
    Width = 43
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 26
    Text = 'EditS'
    OnEnter = EditRXEnter
    OnExit = EditSExit
    OnKeyDown = EditRXKeyDown
    OnKeyPress = EditRXKeyPress
  end
  object ZoomInBtn: TBitBtn
    Left = 106
    Top = 236
    Width = 36
    Height = 25
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
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
    TabOrder = 27
    OnClick = ZoomInBtnClick
  end
end
