inherited WDForm: TWDForm
  Caption = 'Wd'
  ClientHeight = 455
  ClientWidth = 661
  Font.Height = -9
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 677
  ExplicitHeight = 494
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 352
    Width = 661
    Height = 103
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 352
    ExplicitWidth = 661
    ExplicitHeight = 103
    inherited Label3: TLabel
      Caption = 'f3:'
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label4: TLabel
      Caption = 'f4:'
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label5: TLabel
      Caption = 'Q2:'
      StyleElements = [seFont, seClient, seBorder]
    end
    object Label6: TLabel [3]
      Left = 145
      Top = 7
      Width = 10
      Height = 13
      Caption = 'K:'
    end
    inherited Editf1: TEdit
      Text = 'Editf3'
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Editf2: TEdit
      Text = 'Editf4'
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited EditQ1: TEdit
      Text = 'EditQ2'
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited OkBtn: TBitBtn
      Left = 538
      ExplicitLeft = 538
    end
    inherited FlatBitBtn2: TBitBtn
      Left = 538
      ExplicitLeft = 538
    end
    object EditK: TEdit [9]
      Left = 170
      Top = 5
      Width = 87
      Height = 21
      TabOrder = 5
      Text = 'EditfK'
      OnEnter = Editf1Enter
      OnExit = EditKExit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object DA: TCheckBox [10]
      Left = 431
      Top = 5
      Width = 75
      Height = 21
      Caption = 'Wd*Wa'
      Checked = True
      State = cbChecked
      TabOrder = 6
      OnClick = C116Click
    end
    inherited C116: TCheckBox
      Left = 538
      TabOrder = 7
      ExplicitLeft = 538
    end
  end
  inherited GraphControl1: TLGraphControl
    Top = 20
    Width = 661
    Height = 332
    Parameters.DigitsX = 0
    Parameters.DigitsY = 0
    Font.Height = -10
    ExplicitTop = 20
    ExplicitWidth = 661
    ExplicitHeight = 332
    ParametersData = {
      000080BF000020400000803F0000803F000040C00000003F0000803F0000803F
      000020410000B442000000000000803F000000000000803F000000000000}
  end
  inherited Panel2: TPanel
    Width = 661
    Height = 20
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 661
    ExplicitHeight = 20
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label2: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label11: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited Label12: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
end
