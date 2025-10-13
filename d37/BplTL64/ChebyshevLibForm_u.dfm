inherited ChebyshevLibForm: TChebyshevLibForm
  Caption = 'Chebyshev library'
  ClientHeight = 286
  ClientWidth = 870
  Constraints.MinHeight = 160
  Constraints.MinWidth = 240
  Font.Height = -9
  ExplicitWidth = 886
  ExplicitHeight = 325
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 630
    Height = 216
    Columns = <
      item
        Caption = 'Nr.'
        Width = 40
      end
      item
        Caption = 'Typ'
        Width = 208
      end
      item
        Caption = 'fm [Hz]'
        Width = 96
      end
      item
        Caption = 'Comment'
        Width = 208
      end>
    OnDblClick = ListView1DblClick
    ExplicitWidth = 630
    ExplicitHeight = 216
  end
  inherited ToolBar1: TToolBar
    Width = 870
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ExplicitWidth = 870
  end
  inherited Panel1: TPanel
    Left = 630
    Width = 240
    Height = 216
    ExplicitLeft = 630
    ExplicitWidth = 240
    ExplicitHeight = 216
    inherited Splitter1: TSplitter
      Top = 160
      Width = 240
      ExplicitTop = 160
      ExplicitWidth = 240
    end
    inherited InfoBox: TPaintBox
      Top = 167
      Width = 240
      ExplicitTop = 167
      ExplicitWidth = 240
    end
    inherited Panel3: TPanel
      Width = 240
      Height = 160
      ExplicitWidth = 240
      ExplicitHeight = 160
    end
  end
  inherited Panel2: TPanel
    Top = 254
    Width = 870
    Height = 32
    ExplicitTop = 254
    ExplicitWidth = 870
    ExplicitHeight = 32
    inherited CloseBtn: TBitBtn
      Left = 777
      Top = 4
      ExplicitLeft = 777
      ExplicitTop = 4
    end
  end
end
