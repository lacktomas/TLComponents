object ListEditorForm: TListEditorForm
  Left = 615
  Top = 261
  ActiveControl = ListView1
  Caption = 'ListEditorForm'
  ClientHeight = 280
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object ListView1: TListView
    Left = 0
    Top = 38
    Width = 430
    Height = 242
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Columns = <
      item
        Caption = 'Index'
        Width = 39
      end
      item
        Caption = 'Item'
        Width = 221
      end>
    DragMode = dmAutomatic
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    SortType = stData
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = ListView1ColumnClick
    OnCompare = ListView1Compare
    OnDblClick = ListView1DblClick
    OnDragDrop = ListView1DragDrop
    OnDragOver = ListView1DragOver
    OnKeyDown = ListView1KeyDown
    OnMouseDown = ListView1MouseDown
    OnSelectItem = ListView1SelectItem
    OnStartDrag = ListView1StartDrag
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 430
    Height = 38
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoSize = True
    ButtonHeight = 36
    ButtonWidth = 38
    Caption = 'ToolBar1'
    EdgeBorders = [ebBottom]
    EdgeInner = esLowered
    Images = DataModule1.ImageList2
    ShowCaptions = True
    TabOrder = 1
    Wrapable = False
    object AddBtn: TToolButton
      Left = 0
      Top = 0
      Hint = 'Add New (Ins)'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Add'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = AddBtnClick
    end
    object DeleteBtn: TToolButton
      Left = 38
      Top = 0
      Hint = 'Delete Selected (Del)'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Delete'
      Enabled = False
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = DeleteBtnClick
    end
    object ToolButton3: TToolButton
      Left = 76
      Top = 0
      Width = 7
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object MoveUpBtn: TToolButton
      Left = 83
      Top = 0
      Hint = 'Move Selected Up (Ctrl+Up)'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Up'
      Enabled = False
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = MoveUpBtnClick
    end
    object MoveDownBtn: TToolButton
      Left = 121
      Top = 0
      Hint = 'Move Selected Down (Ctrl+Down)'
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Down'
      Enabled = False
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = MoveDownBtnClick
    end
    object ToolButton1: TToolButton
      Left = 159
      Top = 0
      Width = 6
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'ToolButton1'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object SetupBtn: TToolButton
      Left = 165
      Top = 0
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Setup'
      Enabled = False
      ImageIndex = 6
      OnClick = ListView1DblClick
    end
  end
end
