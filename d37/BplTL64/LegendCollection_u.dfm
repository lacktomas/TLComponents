inherited LegendCollectionForm: TLegendCollectionForm
  Caption = 'Zeilen'
  ClientHeight = 289
  ClientWidth = 760
  Constraints.MinHeight = 242
  Constraints.MinWidth = 363
  Font.Height = -9
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 776
  ExplicitHeight = 328
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 520
    Height = 219
    Columns = <
      item
        Caption = 'Nr.'
        Width = 39
      end
      item
        Caption = 'Caption'
        Width = 286
      end
      item
        Caption = 'Mark'
        Width = 69
      end
      item
        Caption = 'Color'
      end>
    MultiSelect = True
    OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
    OnAdvancedCustomDrawSubItem = ListView1AdvancedCustomDrawSubItem
    ExplicitWidth = 520
    ExplicitHeight = 219
  end
  inherited ToolBar1: TToolBar
    Width = 760
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ExplicitWidth = 760
    inherited AddBtn: TToolButton
      ExplicitHeight = 21
    end
    inherited DeleteBtn: TToolButton
      ExplicitHeight = 21
    end
    inherited CopyBtn: TToolButton
      ExplicitHeight = 21
    end
    inherited ToolButton3: TToolButton
      ExplicitHeight = 21
    end
    inherited MoveUpBtn: TToolButton
      ExplicitHeight = 21
    end
    inherited MoveDownBtn: TToolButton
      ExplicitHeight = 21
    end
  end
  inherited Panel1: TPanel
    Left = 520
    Width = 240
    Height = 219
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 520
    ExplicitWidth = 240
    ExplicitHeight = 219
    inherited Splitter1: TSplitter
      Top = 163
      Width = 240
      ExplicitTop = 178
      ExplicitWidth = 240
    end
    inherited InfoBox: TPaintBox
      Top = 170
      Width = 240
      ExplicitTop = 185
      ExplicitWidth = 240
    end
    inherited Panel3: TPanel
      Width = 240
      Height = 163
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 240
      ExplicitHeight = 163
    end
  end
  inherited Panel2: TPanel
    Top = 257
    Width = 760
    Height = 32
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 257
    ExplicitWidth = 760
    ExplicitHeight = 32
    inherited CloseBtn: TBitBtn
      Left = 670
      Top = 4
      ExplicitLeft = 670
      ExplicitTop = 4
    end
  end
end
