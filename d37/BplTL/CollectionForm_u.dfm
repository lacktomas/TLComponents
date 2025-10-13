object CollectionForm: TCollectionForm
  Left = 338
  Top = 277
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Edit'
  ClientHeight = 361
  ClientWidth = 611
  Color = clBtnFace
  Constraints.MinHeight = 200
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object ListView1: TLColorListView
    Left = 0
    Top = 38
    Width = 311
    Height = 283
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Columns = <
      item
        Caption = 'Index'
        Width = 40
      end
      item
        Caption = 'Item'
        Width = 224
      end>
    DragMode = dmAutomatic
    HideSelection = False
    ReadOnly = True
    RowSelect = True
    TabOrder = 0
    ViewStyle = vsReport
    OnColumnClick = ListView1ColumnClick
    OnCompare = ListView1Compare
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
    Width = 611
    Height = 38
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
      Hint = 'Hinzuf'#252'gen Neu (Ins)'
      Caption = 'Add'
      ImageIndex = 0
      ParentShowHint = False
      ShowHint = True
      OnClick = AddBtnClick
    end
    object DeleteBtn: TToolButton
      Left = 38
      Top = 0
      Hint = 'Entfernen Selektiert (Del)'
      Caption = 'Delete'
      Enabled = False
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = DeleteBtnClick
    end
    object CopyBtn: TToolButton
      Left = 76
      Top = 0
      Hint = 'Kopie Selektiert'
      Caption = 'Copy'
      Enabled = False
      ImageIndex = 6
      ParentShowHint = False
      ShowHint = True
      OnClick = CopyBtnClick
    end
    object ToolButton3: TToolButton
      Left = 114
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object MoveUpBtn: TToolButton
      Left = 122
      Top = 0
      Hint = 'Aufw'#228'rts Selektiert (Ctrl+Up)'
      Caption = 'Up'
      Enabled = False
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = MoveUpBtnClick
    end
    object MoveDownBtn: TToolButton
      Left = 160
      Top = 0
      Hint = 'Abw'#228'rts Selektiert (Ctrl+Down)'
      Caption = 'Down'
      Enabled = False
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = MoveDownBtnClick
    end
  end
  object Panel1: TPanel
    Left = 311
    Top = 38
    Width = 300
    Height = 283
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alRight
    BevelOuter = bvNone
    Locked = True
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 0
      Top = 227
      Width = 300
      Height = 7
      Cursor = crVSplit
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      Beveled = True
      MinSize = 60
      ExplicitTop = 228
    end
    object InfoBox: TPaintBox
      Left = 0
      Top = 234
      Width = 300
      Height = 49
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      Constraints.MinHeight = 49
      OnPaint = InfoBoxPaint
      ExplicitTop = 235
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 300
      Height = 227
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      BevelOuter = bvNone
      Locked = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 321
    Width = 611
    Height = 40
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    BevelOuter = bvNone
    Locked = True
    PopupMenu = CopyPopupMenu
    TabOrder = 3
    DesignSize = (
      611
      40)
    object CloseBtn: TBitBtn
      Left = 521
      Top = 10
      Width = 90
      Height = 25
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Anchors = [akRight, akBottom]
      Caption = 'Close'
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
    end
  end
  object CopyPopupMenu: TPopupMenu
    OnPopup = CopyPopupMenuPopup
    Left = 10
    Top = 323
    object AlleKopie1: TMenuItem
      Caption = 'Copy all to clipboard'
      OnClick = AlleKopie1Click
    end
    object Paste1: TMenuItem
      Caption = 'Stores from clipboard'
      Enabled = False
      OnClick = Paste1Click
    end
  end
end
