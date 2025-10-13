inherited DIForm: TDIForm
  Caption = 'DIForm'
  ClientWidth = 648
  Constraints.MinHeight = 246
  Constraints.MinWidth = 369
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 664
  TextHeight = 13
  inherited ListView1: TLColorListView
    Width = 348
    Columns = <
      item
        Caption = 'Item'
        Width = 140
      end
      item
        Caption = 'Property'
        Width = 104
      end
      item
        Caption = 'Index'
        Width = 40
      end
      item
        Caption = 'Scale'
        Width = 40
      end>
    ExplicitWidth = 348
  end
  inherited ToolBar1: TToolBar
    Width = 648
    ExplicitWidth = 648
  end
  inherited Panel1: TPanel
    Left = 348
    StyleElements = [seFont, seClient, seBorder]
    ExplicitLeft = 348
    inherited InfoBox: TPaintBox
      Constraints.MinHeight = 40
    end
    inherited Panel3: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited Panel2: TPanel
    Width = 648
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 648
    inherited CloseBtn: TBitBtn
      Left = 558
      Top = 8
      ExplicitLeft = 558
      ExplicitTop = 8
    end
  end
end
