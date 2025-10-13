object ChaptersForm: TChaptersForm
  Left = 0
  Top = 0
  Caption = 'Chapters'
  ClientHeight = 779
  ClientWidth = 1261
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 989
    Top = 0
    Width = 272
    Height = 779
    Align = alRight
    BevelOuter = bvNone
    Caption = 'Panel1'
    Locked = True
    ShowCaption = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 739
      Width = 272
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      Caption = 'Panel2'
      Locked = True
      ShowCaption = False
      TabOrder = 0
      object ApplyBtn: TBitBtn
        Left = 6
        Top = 4
        Width = 128
        Height = 25
        Caption = 'Apply'
        Kind = bkRetry
        NumGlyphs = 2
        TabOrder = 0
        OnClick = ApplyBtnClick
      end
      object CloseBtn: TBitBtn
        Left = 140
        Top = 4
        Width = 129
        Height = 25
        Kind = bkClose
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 272
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel3'
      Locked = True
      ShowCaption = False
      TabOrder = 1
      object AddChapterBtn: TBitBtn
        Left = 6
        Top = 3
        Width = 128
        Height = 22
        Caption = 'Add Chapter'
        Glyph.Data = {
          42020000424D4202000000000000420000002800000010000000100000000100
          1000030000000002000000000000000000000000000000000000007C0000E003
          00001F0000001F7C1F7C1F7C1F7C1F7C1F7C1042104210421042104210421F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C00000000000000000000104210421F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E0030000104210421F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E0030000104210421F7C
          1F7C1F7C1F7C1F7C1F7C1042104210420000E003E003E0030000104210421042
          1042104210421F7C10421042104210420000E003E003E0030000104210421042
          104210421042000000000000000000000000E003E003E0030000000000000000
          0000000010420000E003E003E003E003E003E003E003E003E003E003E003E003
          E003000010420000E003E003E003E003E003E003E003E003E003E003E003E003
          E003000010420000E003E003E003E003E003E003E003E003E003E003E003E003
          E00300001042000000000000000000000000E003E003E0030000000000000000
          000000001F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E0030000104210421F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E0030000104210421F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E003000010421F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C0000E003E003E00300001F7C1F7C1F7C
          1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C000000000000000000001F7C1F7C1F7C
          1F7C1F7C1F7C}
        TabOrder = 0
        OnClick = AddChapterBtnClick
      end
      object DeleteChapterBtn: TBitBtn
        Left = 140
        Top = 3
        Width = 129
        Height = 22
        Caption = 'Delete Chapter'
        Enabled = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888888888888888888887777777777
          7777877777777777777700000000000000070999999999999907099999999999
          9907099999999999990700000000000000088888888888888888888888888888
          8888888888888888888888888888888888888888888888888888}
        TabOrder = 1
        OnClick = DeleteChapterBtnClick
      end
      object CopyChapterBtn: TBitBtn
        Left = 6
        Top = 28
        Width = 128
        Height = 22
        Caption = 'Copy Chapter'
        Enabled = False
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084000000840000008400
          0000840000008400000084000000840000008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084000000FFFFFF000000
          000000000000000000000000000000000000FFFFFF0084000000FF00FF000000
          0000000000000000000000000000000000000000000084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000
          000000000000000000000000000000000000FFFFFF0084000000FF00FF000000
          0000FFFFFF000000000000000000000000000000000084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000
          000000000000FFFFFF0084000000840000008400000084000000FF00FF000000
          0000FFFFFF000000000000000000000000000000000084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0084000000FFFFFF0084000000FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF008400000084000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF000000000000000000FFFFFF000000000084000000840000008400
          0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 2
        OnClick = CopyChapterBtnClick
      end
      object MoveUpChapterBtn: TBitBtn
        Left = 140
        Top = 28
        Width = 61
        Height = 22
        Enabled = False
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333330000003333333333333333330000003333333333333333330000003333
          3333333333333300000033333300000333333300000033333306660333333300
          0000333333066603333333000000333333066603333333000000333000066600
          0033330000003333066666660333330000003333306666603333330000003333
          3306660333333300000033333330603333333300000033333333033333333300
          0000333333333333333333000000333333333333333333000000333333333333
          333333000000333333333333333333000000}
        TabOrder = 3
        OnClick = MoveUpChapterBtnClick
      end
      object MoveDownChapterBtn: TBitBtn
        Left = 209
        Top = 28
        Width = 60
        Height = 22
        Enabled = False
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333330000003333333333333333330000003333333333333333330000003333
          3333333333333300000033333333033333333300000033333330603333333300
          0000333333066603333333000000333330666660333333000000333306666666
          0333330000003330000666000033330000003333330666033333330000003333
          3306660333333300000033333306660333333300000033333300000333333300
          0000333333333333333333000000333333333333333333000000333333333333
          333333000000333333333333333333000000}
        TabOrder = 4
        OnClick = MoveDownChapterBtnClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 51
      Width = 272
      Height = 243
      Align = alTop
      Caption = 'Chapters'
      TabOrder = 2
      object ChaptersListBox: TListBox
        Left = 2
        Top = 17
        Width = 268
        Height = 224
        Style = lbOwnerDrawFixed
        Align = alClient
        ItemHeight = 64
        TabOrder = 0
        OnClick = ChaptersListBoxClick
        OnDrawItem = ChaptersListBoxDrawItem
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 294
      Width = 272
      Height = 49
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel4'
      Locked = True
      ShowCaption = False
      TabOrder = 3
      object DeleteItemBtn: TBitBtn
        Left = 140
        Top = 4
        Width = 129
        Height = 22
        Caption = 'Delete Item'
        Enabled = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888888888888888888887777777777
          7777877777777777777700000000000000070999999999999907099999999999
          9907099999999999990700000000000000088888888888888888888888888888
          8888888888888888888888888888888888888888888888888888}
        TabOrder = 0
        OnClick = DeleteItemBtnClick
      end
      object CopyItemBtn: TBitBtn
        Left = 6
        Top = 4
        Width = 128
        Height = 22
        Caption = 'Copy Item'
        Enabled = False
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333300000033333330B7FFFFFB0300000033333330B7FFFFFB030000003333
          3330B7FFFFFB0300000033333330B7FFFFFB0300000030000000000770070300
          000030FFFFFFFF00077B0300000030FFFFFFFF0007BB0300000030F00F000F00
          09007300000030FFFFFFFF0399933300000030F0000F0F0999993300000030FF
          FFFFFF9999999300000030F00F00000399933300000030FFFF0FF03399933300
          000030F08F0F033799933300000030FFFF003999993333000000300000033333
          333333000000333333333333333333000000}
        TabOrder = 1
        OnClick = CopyItemBtnClick
      end
      object MoveUpItemBtn: TBitBtn
        Left = 140
        Top = 28
        Width = 61
        Height = 22
        Enabled = False
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333330000003333333333333333330000003333333333333333330000003333
          3333333333333300000033333300000333333300000033333306660333333300
          0000333333066603333333000000333333066603333333000000333000066600
          0033330000003333066666660333330000003333306666603333330000003333
          3306660333333300000033333330603333333300000033333333033333333300
          0000333333333333333333000000333333333333333333000000333333333333
          333333000000333333333333333333000000}
        TabOrder = 2
        OnClick = MoveUpItemBtnClick
      end
      object MoveDownItemBtn: TBitBtn
        Left = 207
        Top = 28
        Width = 62
        Height = 22
        Enabled = False
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333330000003333333333333333330000003333333333333333330000003333
          3333333333333300000033333333033333333300000033333330603333333300
          0000333333066603333333000000333330666660333333000000333306666666
          0333330000003330000666000033330000003333330666033333330000003333
          3306660333333300000033333306660333333300000033333300000333333300
          0000333333333333333333000000333333333333333333000000333333333333
          333333000000333333333333333333000000}
        TabOrder = 3
        OnClick = MoveDownItemBtnClick
      end
      object CopyToChapterItemBtn: TBitBtn
        Left = 6
        Top = 28
        Width = 128
        Height = 22
        Caption = 'Copy Item to...'
        Enabled = False
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000012000000120000000100
          040000000000D800000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333300000033333330B7FFFFFB0300000033333330B7FFFFFB030000003333
          3330B7FFFFFB0300000033333330B7FFFFFB0300000030000000000770070300
          000030FFFFFFFF00077B0300000030FFFFFFFF0007BB0300000030F00F000F00
          09007300000030FFFFFFFF0399933300000030F0000F0F0999993300000030FF
          FFFFFF9999999300000030F00F00000399933300000030FFFF0FF03399933300
          000030F08F0F033799933300000030FFFF003999993333000000300000033333
          333333000000333333333333333333000000}
        TabOrder = 4
        OnClick = CopyToChapterItemBtnClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 343
      Width = 272
      Height = 396
      Align = alClient
      Caption = 'Items'
      TabOrder = 4
      object RptComponentsListBox: TListBox
        Left = 2
        Top = 17
        Width = 268
        Height = 377
        Style = lbOwnerDrawFixed
        Align = alClient
        ItemHeight = 64
        TabOrder = 0
        OnClick = RptComponentsListBoxClick
        OnDblClick = RptComponentsListBoxDblClick
        OnDrawItem = RptComponentsListBoxDrawItem
      end
    end
  end
  object LRpt1: TLRpt
    Left = 223
    Top = 0
    Width = 730
    Height = 779
    HorzScrollBar.Increment = 36
    HorzScrollBar.Tracking = True
    VertScrollBar.Increment = 38
    VertScrollBar.Tracking = True
    Align = alClient
    TabOrder = 1
    FormatOrientation = foPortrait
    Tracking = True
    ZoomWarning = 'Zoom is out of range!'
    Frame.LeftPosition = 150
    Frame.Height = 2800
    Frame.Pen.Width = 4
    PageNr.LeftPosition = 1970
    PageNr.TopPosition = 120
    PageNr.Font.Charset = DEFAULT_CHARSET
    PageNr.Font.Color = clWindowText
    PageNr.Font.Height = -45
    PageNr.Font.Name = 'Segoe UI'
    PageNr.Font.Style = [fsBold]
    SendItemMouseDown = True
    OnChangeItemChapter = LRpt1ChangeItemChapter
    OnPostZoom = LRpt1PostZoom
    OnItemMouseDown = LRpt1ItemMouseDown
    OnPostCreateComponent = LRpt1PostCreateComponent
    object TLRptChapters
      AInt = 0
    end
    object TLRptComponents
    end
  end
  object LDock1: TLDock
    Left = 953
    Top = 0
    Width = 36
    Height = 779
    Position = dpRight
    object LToolbar1: TLToolbar
      Left = 0
      Top = 0
      Caption = 'Toolbar'
      CloseButton = False
      DefaultDock = LDock1
      DockableTo = [dpRight]
      DockedTo = LDock1
      DockPos = 0
      TabOrder = 0
      object EditBtn: TLToolbarBtn
        Left = 0
        Top = 0
        Width = 32
        Height = 32
        Action = EditActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        Down = True
        ImageIndex = 13
        Images = DataModule1.ImageList1
      end
      object MoveBtn: TLToolbarBtn
        Left = 0
        Top = 32
        Width = 32
        Height = 32
        Action = MoveActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 19
        Images = DataModule1.ImageList1
      end
      object ZoomInBtn: TLToolbarBtn
        Left = 0
        Top = 332
        Width = 32
        Height = 32
        Action = ZoomInActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 5
        Images = DataModule1.ImageList1
      end
      object ZoomOutBtn: TLToolbarBtn
        Left = 0
        Top = 364
        Width = 32
        Height = 32
        Action = ZoomOutActn
        DisplayMode = dmGlyphOnly
        ImageIndex = 6
        Images = DataModule1.ImageList1
      end
      object FullPageBtn: TLToolbarBtn
        Left = 0
        Top = 396
        Width = 32
        Height = 32
        Action = FullPageActn
        DisplayMode = dmGlyphOnly
        ImageIndex = 7
        Images = DataModule1.ImageList1
      end
      object AddTextBtn: TLToolbarBtn
        Left = 0
        Top = 70
        Width = 32
        Height = 32
        Action = TextActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 24
        Images = DataModule1.ImageList1
      end
      object AddRtfBtn: TLToolbarBtn
        Left = 0
        Top = 102
        Width = 32
        Height = 32
        Action = RtfActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 25
        Images = DataModule1.ImageList1
      end
      object AddImageBtn: TLToolbarBtn
        Left = 0
        Top = 134
        Width = 32
        Height = 32
        Action = ImageActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 26
        Images = DataModule1.ImageList1
      end
      object AddShapeBtn: TLToolbarBtn
        Left = 0
        Top = 166
        Width = 32
        Height = 32
        Action = ShapeActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 27
        Images = DataModule1.ImageList1
      end
      object AddGraphBtn: TLToolbarBtn
        Left = 0
        Top = 198
        Width = 32
        Height = 32
        Action = GraphActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 41
        Images = DataModule1.ImageList1
      end
      object AddGraph3DBtn: TLToolbarBtn
        Left = 0
        Top = 230
        Width = 32
        Height = 32
        Action = Graph3DActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 42
        Images = DataModule1.ImageList1
      end
      object AddTableBtn: TLToolbarBtn
        Left = 0
        Top = 262
        Width = 32
        Height = 32
        Action = TableActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 43
        Images = DataModule1.ImageList1
      end
      object AddPaintBoxBtn: TLToolbarBtn
        Left = 0
        Top = 294
        Width = 32
        Height = 32
        Action = PaintBoxActn
        GroupIndex = 1
        DisplayMode = dmGlyphOnly
        ImageIndex = 44
        Images = DataModule1.ImageList1
      end
      object LToolbarSep1: TLToolbarSep
        Left = 0
        Top = 64
      end
      object LToolbarSep2: TLToolbarSep
        Left = 0
        Top = 326
      end
      object GridBtn: TLToolbarBtn
        Left = 0
        Top = 428
        Width = 32
        Height = 32
        Hint = 'To Grid'
        AllowAllUp = True
        GroupIndex = 2
        DisplayMode = dmGlyphOnly
        Caption = 'To Grid'
        ImageIndex = 21
        Images = DataModule1.ImageList1
        OnClick = GridBtnClick
      end
    end
  end
  object PagesGrid1: TPagesGrid
    Left = 0
    Top = 0
    Width = 223
    Height = 779
    Align = alLeft
    ColCount = 1
    DefaultColWidth = 200
    DefaultRowHeight = 128
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedRowDefAlign]
    TabOrder = 3
    LRpt = LRpt1
    OnClick = PagesGrid1Click
  end
  object ActionList1: TActionList
    Images = DataModule1.ImageList1
    Left = 16
    Top = 148
    object EditActn: TAction
      Caption = 'Edit'
      Checked = True
      Hint = 'Edit'
      ImageIndex = 13
      ShortCut = 27
      OnExecute = EditActnExecute
    end
    object MoveActn: TAction
      Caption = 'Move'
      Hint = 'Move'
      ImageIndex = 19
      OnExecute = MoveActnExecute
    end
    object ZoomInActn: TAction
      Caption = 'Zoom In'
      Hint = 'Zoom In'
      ImageIndex = 5
      OnExecute = ZoomInActnExecute
    end
    object ZoomOutActn: TAction
      Caption = 'Zoom Out'
      Hint = 'Zoom Out'
      ImageIndex = 6
      OnExecute = ZoomOutActnExecute
    end
    object FullPageActn: TAction
      Caption = 'Full Page'
      Hint = 'Full Page'
      ImageIndex = 7
      OnExecute = FullPageActnExecute
    end
    object TextActn: TAction
      Caption = 'Text'
      Hint = 'Text'
      ImageIndex = 24
      OnExecute = TextActnExecute
    end
    object RtfActn: TAction
      Caption = 'Rtf'
      Hint = 'Rtf'
      ImageIndex = 25
      OnExecute = RtfActnExecute
    end
    object ImageActn: TAction
      Caption = 'Image'
      Hint = 'Image'
      ImageIndex = 26
      OnExecute = ImageActnExecute
    end
    object ShapeActn: TAction
      Caption = 'Shape'
      Hint = 'Shape'
      ImageIndex = 27
      OnExecute = ShapeActnExecute
    end
    object GraphActn: TAction
      Caption = 'Graph'
      Hint = 'Graph'
      ImageIndex = 41
      OnExecute = GraphActnExecute
    end
    object Graph3DActn: TAction
      Caption = 'Graph3D'
      Hint = 'Graph3D'
      ImageIndex = 42
      OnExecute = Graph3DActnExecute
    end
    object TableActn: TAction
      Caption = 'Table'
      Hint = 'Table'
      ImageIndex = 43
      OnExecute = TableActnExecute
    end
    object PaintBoxActn: TAction
      Caption = 'PaintBox'
      Hint = 'PaintBox'
      ImageIndex = 44
      OnExecute = PaintBoxActnExecute
    end
  end
end
