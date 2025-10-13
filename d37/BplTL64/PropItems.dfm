inherited PropItemsForm: TPropItemsForm
  Caption = 'PropItemsForm'
  Position = poDesigned
  TextHeight = 13
  inherited ListView1: TLColorListView
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
        Caption = 'Component'
        Width = 140
      end
      item
        Caption = 'PropertyName'
        Width = 80
      end
      item
        Caption = 'Description'
        Width = 70
      end>
  end
end
