inherited FilterLibForm: TFilterLibForm
  Caption = 'Filter Library'
  ClientHeight = 314
  ClientWidth = 866
  Constraints.MinHeight = 160
  Constraints.MinWidth = 240
  Font.Height = -9
  ExplicitWidth = 882
  ExplicitHeight = 353
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 626
    Height = 244
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
    ExplicitWidth = 626
    ExplicitHeight = 244
  end
  inherited ToolBar1: TToolBar
    Width = 866
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ExplicitWidth = 866
  end
  inherited Panel1: TPanel
    Left = 626
    Width = 240
    Height = 244
    ExplicitLeft = 626
    ExplicitWidth = 240
    ExplicitHeight = 244
    inherited Splitter1: TSplitter
      Top = 188
      Width = 240
      ExplicitTop = 160
      ExplicitWidth = 240
    end
    inherited InfoBox: TPaintBox
      Top = 195
      Width = 240
      ExplicitTop = 167
      ExplicitWidth = 240
    end
    inherited Panel3: TPanel
      Width = 240
      Height = 188
      ExplicitWidth = 240
      ExplicitHeight = 188
    end
  end
  inherited Panel2: TPanel
    Top = 282
    Width = 866
    Height = 32
    ExplicitTop = 282
    ExplicitWidth = 866
    ExplicitHeight = 32
    inherited CloseBtn: TBitBtn
      Left = 776
      Top = 4
      ExplicitLeft = 776
      ExplicitTop = 4
    end
  end
end
