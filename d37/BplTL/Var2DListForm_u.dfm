inherited Var2DListForm: TVar2DListForm
  Caption = 'VarListForm'
  ClientHeight = 421
  ClientWidth = 1272
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1288
  ExplicitHeight = 460
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 972
    Height = 343
    Columns = <
      item
        Caption = 'Nr.'
        Width = 40
      end
      item
        Caption = 'Filtered'
      end
      item
        Caption = 'x Channel'
        Width = 150
      end
      item
        Caption = 'x Unit'
        Width = 60
      end
      item
        Caption = 'x Scale'
        Width = 60
      end
      item
        Caption = 'x Offset'
        Width = 60
      end
      item
        Caption = 'y Channel'
        Width = 150
      end
      item
        Caption = 'y Unit'
        Width = 60
      end
      item
        Caption = 'y Scale'
        Width = 60
      end
      item
        Caption = 'y Offset'
        Width = 60
      end
      item
        Caption = 'Description'
        Width = 150
      end
      item
        Caption = 'Color'
      end>
    OnAdvancedCustomDrawItem = ListView1AdvancedCustomDrawItem
    OnAdvancedCustomDrawSubItem = ListView1AdvancedCustomDrawSubItem
    ExplicitWidth = 925
    ExplicitHeight = 343
  end
  inherited ToolBar1: TToolBar
    Width = 1272
    ExplicitWidth = 1225
  end
  inherited Panel1: TPanel
    Left = 972
    Height = 343
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 925
    ExplicitHeight = 343
    inherited Splitter1: TSplitter
      Top = 287
      ExplicitTop = 302
    end
    inherited InfoBox: TPaintBox
      Top = 294
      ExplicitTop = 307
    end
    inherited Panel3: TPanel
      Height = 287
      StyleElements = [seFont, seClient, seBorder]
      ExplicitHeight = 287
    end
  end
  inherited Panel2: TPanel
    Top = 381
    Width = 1272
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 381
    ExplicitWidth = 1225
    inherited CloseBtn: TBitBtn
      Left = 1182
      Top = 8
      ExplicitLeft = 1135
      ExplicitTop = 8
    end
  end
end
