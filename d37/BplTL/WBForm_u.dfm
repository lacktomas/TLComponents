inherited WbForm: TWbForm
  Caption = 'Wb'
  ClientHeight = 409
  ClientWidth = 648
  Font.Height = -9
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 664
  ExplicitHeight = 448
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 300
    Width = 648
    Height = 109
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 300
    ExplicitWidth = 648
    ExplicitHeight = 109
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
      Left = 153
      Top = 7
      Width = 12
      Height = 13
      Caption = 'f5:'
    end
    object Label7: TLabel [4]
      Left = 153
      Top = 39
      Width = 12
      Height = 13
      Caption = 'f6:'
    end
    object Label8: TLabel [5]
      Left = 153
      Top = 71
      Width = 17
      Height = 13
      Caption = 'Q3:'
    end
    object Label9: TLabel [6]
      Left = 293
      Top = 71
      Width = 17
      Height = 13
      Caption = 'Q4:'
    end
    object Label10: TLabel [7]
      Left = 293
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
      TabOrder = 4
      Text = 'EditQ2'
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited OkBtn: TBitBtn
      Left = 525
      TabOrder = 8
      ExplicitLeft = 525
    end
    inherited FlatBitBtn2: TBitBtn
      Left = 525
      TabOrder = 9
      ExplicitLeft = 525
    end
    inherited C116: TCheckBox
      Left = 525
      TabOrder = 11
      Visible = True
      ExplicitLeft = 525
    end
    object Editf5: TEdit
      Left = 177
      Top = 5
      Width = 88
      Height = 21
      TabOrder = 2
      Text = 'Editf5'
      OnEnter = Editf1Enter
      OnExit = Editf5Exit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object Editf6: TEdit
      Left = 177
      Top = 37
      Width = 88
      Height = 21
      TabOrder = 3
      Text = 'Editf6'
      OnEnter = Editf1Enter
      OnExit = Editf6Exit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object EditQ3: TEdit
      Left = 177
      Top = 69
      Width = 88
      Height = 21
      TabOrder = 5
      Text = 'EditQ3'
      OnEnter = Editf1Enter
      OnExit = EditQ3Exit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object EditQ4: TEdit
      Left = 318
      Top = 69
      Width = 87
      Height = 21
      TabOrder = 6
      Text = 'EditQ4'
      OnEnter = Editf1Enter
      OnExit = EditQ4Exit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object EditK: TEdit
      Left = 318
      Top = 5
      Width = 87
      Height = 21
      TabOrder = 7
      Text = 'EditK'
      OnEnter = Editf1Enter
      OnExit = EditKExit
      OnKeyDown = Editf1KeyDown
      OnKeyPress = Editf1KeyPress
    end
    object BA: TCheckBox
      Left = 431
      Top = 2
      Width = 75
      Height = 21
      Caption = 'Wb*Wa'
      Checked = True
      State = cbChecked
      TabOrder = 10
      OnClick = C116Click
    end
  end
  inherited GraphControl1: TLGraphControl
    Top = 20
    Width = 648
    Height = 280
    Parameters.DigitsX = 0
    Parameters.DigitsY = 0
    Font.Height = -10
    ExplicitTop = 20
    ExplicitWidth = 648
    ExplicitHeight = 280
    ParametersData = {
      000080BF000020400000803F0000803F000040C00000003F0000803F0000803F
      000020410000B442000000000000803F000000000000803F000000000000}
  end
  inherited Panel2: TPanel
    Width = 648
    Height = 20
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 648
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
