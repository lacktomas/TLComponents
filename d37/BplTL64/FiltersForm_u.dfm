object FiltersForm: TFiltersForm
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Filtered signals'
  ClientHeight = 511
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 558
    Height = 511
    Align = alClient
    Columns = <
      item
        Caption = 'Nr.'
        Width = 60
      end
      item
        Caption = 'Name'
        Width = 200
      end
      item
        Caption = 'Unit'
      end
      item
        Caption = 'fm [Hz]'
      end
      item
        Caption = 'Filter-Typ'
        Width = 170
      end>
    DragMode = dmAutomatic
    ReadOnly = True
    RowSelect = True
    SortType = stData
    TabOrder = 0
    ViewStyle = vsReport
    OnCompare = ListView1Compare
    OnDblClick = ListView1DblClick
    OnEndDrag = ListView1EndDrag
    OnStartDrag = ListView1StartDrag
  end
end
