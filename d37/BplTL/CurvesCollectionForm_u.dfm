inherited CurvesCollectionForm: TCurvesCollectionForm
  Caption = 'Curves'
  ClientWidth = 1155
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1171
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 855
    Columns = <
      item
        Caption = 'Index'
        Width = 40
      end
      item
        Caption = 'Caption'
        Width = 200
      end
      item
        Caption = 'Vector'
        Width = 150
      end
      item
        Caption = 'Filtered'
      end
      item
        Caption = 'XStep'
      end
      item
        Caption = 'FirstRow'
        Width = 60
      end
      item
        Caption = 'RowStep'
        Width = 60
      end
      item
        Caption = 'Column'
      end
      item
        Caption = 'Width'
      end
      item
        Caption = 'Color'
      end
      item
        Caption = 'BrushColor'
        Width = 70
      end>
    MultiSelect = True
    OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
    OnAdvancedCustomDrawSubItem = ListView1AdvancedCustomDrawSubItem
    ExplicitWidth = 855
  end
  inherited ToolBar1: TToolBar
    Width = 1155
    ExplicitWidth = 1155
  end
  inherited Panel1: TPanel
    Left = 855
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 855
    inherited Panel3: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited Panel2: TPanel
    Width = 1155
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1155
    inherited CloseBtn: TBitBtn
      Left = 1065
      ExplicitLeft = 1065
    end
  end
end
