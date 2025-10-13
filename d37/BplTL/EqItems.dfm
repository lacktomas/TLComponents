inherited EqItemsForm: TEqItemsForm
  ActiveControl = ListView1
  Caption = 'EqItemsForm'
  ClientWidth = 699
  Position = poDesigned
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 715
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 399
    Columns = <
      item
        Caption = 'Index'
        Width = 40
      end
      item
        Caption = 'Alias'
        Width = 60
      end
      item
        Caption = 'Variable'
        Width = 140
      end
      item
        Caption = 'Description'
        Width = 150
      end>
    ExplicitWidth = 399
  end
  inherited ToolBar1: TToolBar
    Width = 699
    ExplicitWidth = 699
  end
  inherited Panel1: TPanel
    Left = 399
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 399
    inherited Panel3: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited Panel2: TPanel
    Width = 699
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 699
    inherited CloseBtn: TBitBtn
      Left = 609
      ExplicitLeft = 609
    end
  end
end
