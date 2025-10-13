inherited TableColForm: TTableColForm
  Caption = 'Columns'
  ClientWidth = 1147
  Constraints.MinHeight = 163
  Constraints.MinWidth = 244
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1163
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 847
    Checkboxes = True
    Columns = <
      item
        Caption = 'Nr.'
        Width = 46
      end
      item
        Caption = 'Caption'
        Width = 150
      end
      item
        Caption = 'PhysicalUnit'
        Width = 74
      end
      item
        Caption = 'Vector'
        Width = 150
      end
      item
        Caption = 'Filtered'
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
        Width = 60
      end
      item
        Caption = 'Width'
        Width = 49
      end
      item
        Caption = 'Linie Width'
        Width = 76
      end
      item
        Caption = 'Color'
        Width = 49
      end>
    MultiSelect = True
    OnAdvancedCustomDrawSubItem = ListView1AdvancedCustomDrawSubItem
    OnChange = ListView1Change
    ExplicitWidth = 797
  end
  inherited ToolBar1: TToolBar
    Width = 1147
    ExplicitWidth = 1097
  end
  inherited Panel1: TPanel
    Left = 847
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 797
    inherited Splitter1: TSplitter
      ExplicitTop = 223
    end
    inherited InfoBox: TPaintBox
      Constraints.MinHeight = 40
      ExplicitTop = 230
    end
    inherited Panel3: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited Panel2: TPanel
    Width = 1147
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 1097
    inherited CloseBtn: TBitBtn
      Left = 1036
      Top = 8
      Width = 109
      ExplicitLeft = 986
      ExplicitTop = 8
      ExplicitWidth = 109
    end
  end
  inherited CopyPopupMenu: TPopupMenu
    Left = 12
  end
end
