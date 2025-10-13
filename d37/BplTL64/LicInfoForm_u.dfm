object LicInfoForm: TLicInfoForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Information'
  ClientHeight = 292
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 13
    Top = 14
    Width = 26
    Height = 13
    Caption = '&User:'
    FocusControl = EditUser
  end
  object Label2: TLabel
    Left = 13
    Top = 54
    Width = 40
    Height = 13
    Caption = 'User &ID:'
    FocusControl = EditUserId
  end
  object Label3: TLabel
    Left = 13
    Top = 88
    Width = 43
    Height = 13
    Caption = 'Address:'
  end
  object Label4: TLabel
    Left = 13
    Top = 254
    Width = 37
    Height = 13
    Caption = 'VAT ID:'
  end
  object EditUser: TEdit
    Left = 62
    Top = 11
    Width = 359
    Height = 21
    Enabled = False
    MaxLength = 32
    TabOrder = 0
    Text = 'EditUser'
    OnChange = EditUserChange
  end
  object EditUserId: TEdit
    Left = 62
    Top = 51
    Width = 157
    Height = 21
    ReadOnly = True
    TabOrder = 1
    Text = 'EditUserId'
  end
  object SaveBtn: TBitBtn
    Left = 231
    Top = 249
    Width = 91
    Height = 26
    Caption = '&Save...'
    Enabled = False
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
    TabOrder = 2
    OnClick = SaveBtnClick
  end
  object CloseBtn: TBitBtn
    Left = 331
    Top = 249
    Width = 90
    Height = 26
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 3
  end
  object MemoAddress: TMemo
    Left = 62
    Top = 85
    Width = 359
    Height = 152
    Lines.Strings = (
      'MemoAddress')
    TabOrder = 4
  end
  object EditVATID: TEdit
    Left = 62
    Top = 251
    Width = 157
    Height = 21
    TabOrder = 5
    Text = 'EditVATID'
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'inf'
    Filter = 'Information (*.inf)|*.inf'
    Left = 282
    Top = 38
  end
end
