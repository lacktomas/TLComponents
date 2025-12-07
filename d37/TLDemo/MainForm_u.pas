unit MainForm_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Printers,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LicenceComponent_u, Vcl.ComCtrls, PropTreeView_u, Graph_u, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, DsgnForms_u, Vcl.Menus, Math_u, Info_u, Vcl.AppEvnts, AppEquationFrame_u, System.Actions,
  Vcl.ActnList, Vcl.StdActns, ListEditor, Variables_u, Vcl.ToolWin, TLComponentsDM, System.ImageList, LRptGraph_u,
  Vcl.ImgList, GraphV_u, EqTreeForm_u, GraphFrame_u, GraphVFrame_u, LPageControlV, LRpt_u, LBitBtn_u,
  RptGraph3D_u, OpenGL, LToolBar, Vcl.Grids, PagesGrid_u, Graph3D_u, OpenGL_u, PagesTreeView_u, LRichEdit_u;

type
  TDemoForm = class(TDsgnForm)
    LicenceComponent1: TLicenceComponent;
    PropertyTreeView1: TPropertyTreeView;
    Panel1: TPanel;
    ListBox1: TListBox;
    Panel3: TPanel;
    CloseBtn: TBitBtn;
    Equation1: TEquation;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    EquationFrame1: TAppEquationFrame;
    ActionList1: TActionList;
    CloseActn: TAction;
    Variables1: TVariables;
    FloatVector1: TFloatVector;
    FloatVector2: TFloatVector;
    FloatMatrixK1: TFloatMatrix;
    FloatVectorF1: TFloatVector;
    FloatMatrixInvK1: TFloatMatrix;
    FloatMatrixQ1: TFloatMatrix;
    FloatMatrixK2: TFloatMatrix;
    FloatVectorF2: TFloatVector;
    FloatMatrixInvK2: TFloatMatrix;
    FloatMatrixQ2: TFloatMatrix;
    FloatMatrixMB: TFloatMatrix;
    FloatMatrixKB: TFloatMatrix;
    FloatVectorOM: TFloatVector;
    FloatMatrixYBKM: TFloatMatrix;
    FloatMatrixInvKB: TFloatMatrix;
    FloatScalarDT: TFloatScalar;
    FloatVectorFB: TFloatVector;
    FloatVectorQBS: TFloatVector;
    FloatVectorOQB: TFloatVector;
    FloatVectorOOQB: TFloatVector;
    FloatMatrixB: TFloatMatrix;
    FloatMatrixA: TFloatMatrix;
    FloatMatrixAO: TFloatMatrix;
    FloatMatrixAOO: TFloatMatrix;
    FloatVectorQB: TFloatVector;
    FloatVectorQE: TFloatVector;
    PageControlV1: TLPageControlV;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ImageList1: TImageList;
    TabSheet3: TTabSheet;
    EquationFrame2: TAppEquationFrame;
    Equation2: TEquation;
    GraphFrame1: TGraphFrame;
    GraphFrame2: TGraphFrame;
    Beam: TTabSheet;
    Panel2: TPanel;
    GraphFrame3: TGraphFrame;
    UpDown1: TUpDown;
    Edit1: TEdit;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    GraphFrame4: TGraphFrame;
    GraphVFrame1: TGraphVFrame;
    TabSheet5: TTabSheet;
    Panel5: TPanel;
    GraphFrame5: TGraphFrame;
    StartBtn: TBitBtn;
    TimeLabel: TLabel;
    GraphVFrame2: TGraphVFrame;
    TabSheet6: TTabSheet;
    LRpt1: TLRpt;
    Equation3: TEquation;
    TabSheet7: TTabSheet;
    EquationFrame3: TAppEquationFrame;
    LDock1: TLDock;
    LToolbar1: TLToolbar;
    EditBtn: TLToolbarBtn;
    ZoomInBtn: TLToolbarBtn;
    ZoomOutBtn: TLToolbarBtn;
    FullPageBtn: TLToolbarBtn;
    PagesGrid1: TPagesGrid;
    L3DGraph1: TL3DGraph;
    Equation4: TEquation;
    EquationFrame4: TAppEquationFrame;
    Eq3Visible: TCheckBox;
    Eq4Visible: TCheckBox;
    PrintBtn: TLToolbarBtn;
    LToolbarSep1: TLToolbarSep;
    PrintDialog1: TPrintDialog;
    Eq3Colors: TCheckBox;
    Eq4Colors: TCheckBox;
    ExportBtn: TLToolbarBtn;
    SaveWMF: TSaveDialog;
    ExportRectBrn: TLToolbarBtn;
    Panel6: TPanel;
    PaintBox1: TPaintBox;
    LRichEdit1: TLRichEdit;
    Equation5: TEquation;
    TabSheet8: TTabSheet;
    LRichEdit2: TLRichEdit;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure FormShow(Sender: TObject);
    procedure Equation1Change(Sender: TObject);
    procedure CloseActnExecute(Sender: TObject);
    procedure Equation2Change(Sender: TObject);
    procedure GraphFrame1GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
    procedure GraphFrame2GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
    procedure GraphFrame3GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
    procedure Edit1Change(Sender: TObject);
    procedure GraphFrame4GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
    procedure ComboBox1Change(Sender: TObject);
    procedure GraphFrame5GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
    procedure StartBtnClick(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure MainFormFloatMatrixYBKMAfterCalc(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure ZoomInBtnClick(Sender: TObject);
    procedure ZoomOutBtnClick(Sender: TObject);
    procedure FullPageBtnClick(Sender: TObject);
    procedure LRpt1PostZoom(Sender: TObject; ZoomAction: TZoomAction);
    procedure L3DGraph1BuildGL(Sender: TObject; M: Single);
    procedure Equation3Change(Sender: TObject);
    procedure PrintBtnClick(Sender: TObject);
    procedure LRptTable1GetRowCount(Sender: TObject; var RowCount: Integer);
    procedure LRptTable1GetCellValue(Sender: TObject; Col, Row: Integer;
      Font: TFont; var BkColor: TColor; var Value: string);
    procedure LRptGraph1PaintCurve(Curve: TCurve);
    procedure LRptGraph2PaintCurve(Curve: TCurve);
    procedure LRptGraph2CurveProperties(Curve: TCurve; var Caption: string; Pen: TPen; Brush: TBrush);
    procedure ExportBtnClick(Sender: TObject);
    procedure ExportRectBrnClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure LRptPaintBox2OutPaint(Sender: TObject; Canvas: TCanvas; var PaintInfo: TPaintStruct);
    procedure LRptPaintBox3OutPaint(Sender: TObject; Canvas: TCanvas; var PaintInfo: TPaintStruct);
    procedure LRptGraph3PaintCurve(Curve: TCurve);
    procedure LRptPaintBox4OutPaint(Sender: TObject; Canvas: TCanvas; var PaintInfo: TPaintStruct);
    procedure LRptGraph5PaintCurve(Curve: TCurve);
    procedure LRptGraph6PaintCurve(Curve: TCurve);
    procedure LRptGraph7PaintCurve(Curve: TCurve);
    procedure LRptGraph7CurveProperties(Curve: TCurve; var Caption: string; Pen: TPen; Brush: TBrush);
  private
    { Private declarations }
    EqTreeForm: TEqTreeForm;
    InProcess : Boolean;
    IsStop    : Boolean;
  public
    { Public declarations }
  end;

var
  DemoForm: TDemoForm;

implementation

{$R *.dfm}
{$R Cursors.res}

uses
  Math, Vassbotn.Vcl.Complex, FEM_u, DesignEditors, DesignIntf, Quest_u;

const
  Colors20: array [0 .. 9] of TColor = (clRed, clBlue, clLime, clFuchsia, clYellow,
                                         clAqua, clWhite, clMaroon, clNavy, clGreen);

{ ### TMainForm ### }
procedure TDemoForm.FormCreate(Sender: TObject);
begin
  ListBox1.AddItem(GraphFrame1.GraphControl1.GetNamePath, GraphFrame1.GraphControl1);
  ListBox1.AddItem(GraphVFrame1.GraphControlV1.GetNamePath, GraphVFrame1.GraphControlV1);
  ListBox1.AddItem(L3DGraph1.Name, L3DGraph1);
  ListBox1.AddItem(Equation1.Name, Equation1);
  ListBox1.AddItem(Equation2.Name, Equation2);
  ListBox1.AddItem(Equation3.Name, Equation3);
  ListBox1.AddItem(Equation4.Name, Equation4);
  ListBox1.AddItem(Equation5.Name, Equation5);
  ListBox1.AddItem(Variables1.Name, Variables1);
  ListBox1.AddItem(LRpt1.Name, LRpt1);
  EqTreeForm := TEqTreeForm.Create(Self);
  EquationFrame1.Equation := Equation1;
  EquationFrame2.Equation := Equation2;
  Equation2.TreeView := EqTreeForm.TreeView1;
  EquationFrame2.EqTreeForm := EqTreeForm;
  EquationFrame3.Equation := Equation3;
  EquationFrame4.Equation := Equation4;
end;

procedure TDemoForm.FormDestroy(Sender: TObject);
begin
  PropertyTreeView1.FrmDsgn := nil;
  EqTreeForm.Free;
end;

procedure TDemoForm.FormShow(Sender: TObject);
begin
  EquationFrame1.DoShow;
  GraphFrame2.GraphControl1.ZoomAll;
  EquationFrame2.DoShow;
  GraphVFrame1.GraphControlV1.MaxXR := 1000.0;
  GraphVFrame1.GraphControlV1.ZoomAll;
  // Beam 1
  BuildMatrixBeamK(FloatMatrixK1, 0, 0, 2.1E5, 30000.0, 100.0);
  FloatMatrixK1[0, 0] := 1.0E30;
  FloatMatrixK1[1, 1] := 1.0E30;
  FloatVectorF1[20] := -5000.0;
  FloatMatrixInvK1.CalcEquation;
  FloatMatrixQ1.CalcEquation;
  // Beam2
  BuildMatrixBeamK(FloatMatrixK2, 0, 0, 2.1E5, 30000.0, 100.0);
  FloatMatrixK2[0, 0] := 1.0E30;
  FloatMatrixK2[20, 20] := 1.0E30;
  FloatVectorF2[10] := -5000.0;
  FloatMatrixInvK2.CalcEquation;
  FloatMatrixQ2.CalcEquation;
  // Beam1 Eigen
  BuildMatrixBeamM(FloatMatrixMB, -2, -2, 7.8E-6, 1000.0, 100.0);
  BuildMatrixBeamK(FloatMatrixKB, -2, -2, 2.1E5, 30000.0, 100.0);
  FloatMatrixYBKM.CalcEquation;
  // Differenz
  FloatMatrixInvKB.CalcEquation;
  FloatVectorFB[18] := -5000.0;
  FloatVectorQBS.CalcEquation;
  BuildMatrixB(FloatMatrixB, FloatMatrixMB, FloatMatrixKB, 50.0, 0.05);
  FloatMatrixA.CalcEquation;
  FloatMatrixAO.CalcEquation;
  FloatMatrixAOO.CalcEquation;
end;

procedure TDemoForm.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
  StatusBar1.SimpleText := E.Message;
end;

procedure TDemoForm.ListBox1Click(Sender: TObject);
var
  I    : Integer;
  AList: TList;
begin
  if ListBox1.ItemIndex = -1 then
    Exit;
  if ListBox1.SelCount > 1 then
  begin
    AList := TList.Create;
    try
      for I := 0 to ListBox1.Count - 1 do
        if ListBox1.Selected[I] then
          AList.Add(ListBox1.Items.Objects[I]);
      PropertyTreeView1.Components := AList;
    finally
      AList.Free;
    end;
  end
  else
    PropertyTreeView1.Persistent := TPersistent(ListBox1.Items.Objects[ListBox1.ItemIndex]);
end;

procedure TDemoForm.ListBox1DblClick(Sender: TObject);
var
  C: TComponent;
  CE: IComponentEditor;
begin
  if ListBox1.ItemIndex < 0 then
    Exit;
  C := TComponent(ListBox1.Items.Objects[ListBox1.ItemIndex]);
  CE := GetComponentEditor(C, FrmDsgn);
  if Assigned(CE) and (CE.GetVerbCount > 0) then
    CE.Edit;
end;

procedure TDemoForm.LRptGraph1PaintCurve(Curve: TCurve);
var
  C     : TComplex;
  X, Y  : Single;
  IsMove: Boolean;
begin
  if Equation1.IsError then
    Exit;
  if Curve.Index = 0 then
  begin
    X := Curve.Graph.MinX;
    try
      C := Equation1.GetValue([X]);
      Y := C.Real;
      Curve.FirstPoint(X, Y);
      IsMove := False;
    except
      IsMove := True;
    end;
    repeat
      X := X + 0.1;
      try
      C := Equation1.GetValue([X]);
      Y := C.Real;
      if IsMove then
      begin
        Curve.FirstPoint(X, Y);
        IsMove := False;
      end
      else
        Curve.NextPoint(X, Y);
      except
        IsMove := True;
      end;
    until X > Curve.Graph.MaxX;
  end;
end;

procedure TDemoForm.LRptGraph2CurveProperties(Curve: TCurve;
  var Caption: string; Pen: TPen; Brush: TBrush);
var
  AIx: Integer;
begin
  AIx := FloatVectorOM.SortIx[Curve.Index];
  Caption := FloatToStr(Round(1000.0 * System.Abs(FloatVectorOM[AIx]) / (2.0 * PI)) / 1000.0);
  Pen.Color := Colors20[Curve.Index];
end;

procedure TDemoForm.LRptGraph2PaintCurve(Curve: TCurve);
var
  I, AIx            : Integer;
  A1, A2, A3, A4    : Double;
  X1, Y1, Y2, F1, F2: Double;
  X, Y, MaxY        : Single;
begin
  AIx := FloatVectorOM.SortIx[Curve.Index];
  MaxY := System.Abs(FloatMatrixYBKM.Data[0, AIx]);
  for I := 1 to FloatMatrixYBKM.MCount.Rows div 2 - 1 do
    if System.Abs(FloatMatrixYBKM.Data[2 * I, AIx]) > System.Abs(MaxY) then
      MaxY := FloatMatrixYBKM.Data[2 * I, AIx];
  X1 := 0.0;
  Y1 := 0.0;
  F1 := 0.0;
  Y2 := FloatMatrixYBKM.Data[0, AIx];
  F2 := FloatMatrixYBKM.Data[1, AIx];
  Curve.FirstPoint(X1, Y1);
  X := 0.0;
  repeat
    BeamAprox(X, 100.0, A1, A2, A3, A4);
    Y := (A1 * Y1 + A2 * F1 + A3 * Y2 + A4 * F2) / MaxY;
    Curve.NextPoint(X1 + X / 1000.0, Y);
    X := X + 10.0;
  until X > 100.0;
  for I := 0 to 8 do
  begin
    X1 := (I + 1) * 0.1;
    Y1 := FloatMatrixYBKM.Data[2 * I, AIx];
    F1 := FloatMatrixYBKM.Data[2 * I + 1, AIx];
    Y2 := FloatMatrixYBKM.Data[2 * (I + 1), AIx];
    F2 := FloatMatrixYBKM.Data[2 * (I + 1) + 1, AIx];
    X := 0.0;
    repeat
      BeamAprox(X, 100.0, A1, A2, A3, A4);
      Y := (A1 * Y1 + A2 * F1 + A3 * Y2 + A4 * F2) / MaxY;
      Curve.NextPoint(X1 + X / 1000.0, Y);
      X := X + 10.0;
    until X > 100.0;
  end;
end;

procedure TDemoForm.LRptGraph7CurveProperties(Curve: TCurve; var Caption: string; Pen: TPen; Brush: TBrush);
var
  AIx: Integer;
begin
  AIx := FloatVectorOM.SortIx[Curve.Index+10];
  Caption := FloatToStr(Round(1000.0 * System.Abs(FloatVectorOM[AIx]) / (2.0 * PI)) / 1000.0);
  Pen.Color := Colors20[Curve.Index];
end;

procedure TDemoForm.LRptGraph7PaintCurve(Curve: TCurve);
var
  I, AIx            : Integer;
  A1, A2, A3, A4    : Double;
  X1, Y1, Y2, F1, F2: Double;
  X, Y, MaxY        : Single;
begin
  AIx := FloatVectorOM.SortIx[Curve.Index + 10];
  MaxY := System.Abs(FloatMatrixYBKM.Data[0, AIx]);
  for I := 1 to FloatMatrixYBKM.MCount.Rows div 2 - 1 do
    if System.Abs(FloatMatrixYBKM.Data[2 * I, AIx]) > System.Abs(MaxY) then
      MaxY := FloatMatrixYBKM.Data[2 * I, AIx];
  X1 := 0.0;
  Y1 := 0.0;
  F1 := 0.0;
  Y2 := FloatMatrixYBKM.Data[0, AIx];
  F2 := FloatMatrixYBKM.Data[1, AIx];
  Curve.FirstPoint(X1, Y1);
  X := 0.0;
  repeat
    BeamAprox(X, 100.0, A1, A2, A3, A4);
    Y := (A1 * Y1 + A2 * F1 + A3 * Y2 + A4 * F2) / MaxY;
    Curve.NextPoint(X1 + X / 1000.0, Y);
    X := X + 10.0;
  until X > 100.0;
  for I := 0 to 8 do
  begin
    X1 := (I + 1) * 0.1;
    Y1 := FloatMatrixYBKM.Data[2 * I, AIx];
    F1 := FloatMatrixYBKM.Data[2 * I + 1, AIx];
    Y2 := FloatMatrixYBKM.Data[2 * (I + 1), AIx];
    F2 := FloatMatrixYBKM.Data[2 * (I + 1) + 1, AIx];
    X := 0.0;
    repeat
      BeamAprox(X, 100.0, A1, A2, A3, A4);
      Y := (A1 * Y1 + A2 * F1 + A3 * Y2 + A4 * F2) / MaxY;
      Curve.NextPoint(X1 + X / 1000.0, Y);
      X := X + 10.0;
    until X > 100.0;
  end;
end;

procedure TDemoForm.LRptGraph3PaintCurve(Curve: TCurve);
var
  X, Y: Single;
  C   : TComplex;
begin
  if Equation2.IsError then
    Exit;
  X := 0.1;
  C := Equation2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
  Y := Abs(C);
  Curve.FirstPoint(Log10(X), Log10(Y) / 2.0);
  repeat
    X := X + 0.1;
    C := Equation2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
    Y := Abs(C);
    Curve.NextPoint(Log10(X), Log10(Y) / 2.0);
  until X > 100.0;
end;

procedure TDemoForm.LRptGraph5PaintCurve(Curve: TCurve);
var
  I   : Integer;
  X, Y: Double;
begin
  if (Curve.Index = 0) and not FloatMatrixQ1.IsError then
  begin
    for I := 0 to FloatMatrixQ1.MCount.Rows div 2 - 1 do
    begin
      X := I * 100.0;
      Y := FloatMatrixQ1.Data[2 * I, 0];
      if I = 0 then
        Curve.FirstPoint(X, Y)
      else
        Curve.NextPoint(X, Y);
    end;
  end;
  if (Curve.Index = 1) and not FloatMatrixQ2.IsError then
  begin
    for I := 0 to FloatMatrixQ2.MCount.Rows div 2 - 1 do
    begin
      X := I * 100.0;
      Y := FloatMatrixQ2.Data[2 * I, 0];
      if I = 0 then
        Curve.FirstPoint(X, Y)
      else
        Curve.NextPoint(X, Y);
    end;
  end;
end;

procedure TDemoForm.LRptGraph6PaintCurve(Curve: TCurve);
var
  I   : Integer;
  X, Y: Double;
begin
  if (Curve.Index = 0) and not FloatMatrixQ1.IsError then
  begin
    for I := 0 to FloatMatrixQ1.MCount.Rows div 2 - 1 do
    begin
      X := I * 100.0;
      Y := FloatMatrixQ1.Data[2 * I + 1, 0];
      if I = 0 then
        Curve.FirstPoint(X, Y)
      else
        Curve.NextPoint(X, Y);
    end;
  end;
  if (Curve.Index = 1) and not FloatMatrixQ2.IsError then
  begin
    for I := 0 to FloatMatrixQ2.MCount.Rows div 2 - 1 do
    begin
      X := I * 100.0;
      Y := FloatMatrixQ2.Data[2 * I + 1, 0];
      if I = 0 then
        Curve.FirstPoint(X, Y)
      else
        Curve.NextPoint(X, Y);
    end;
  end;
end;

procedure TDemoForm.LRptPaintBox2OutPaint(Sender: TObject; Canvas: TCanvas; var PaintInfo: TPaintStruct);
begin
  if not Equation1.IsError then
  begin
    Canvas.font.Height := 48;
    Equation1.Paint(Canvas, 'y = ', PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 100);
  end;
  PropertyTreeView1.PaintPersistent(Equation1, Canvas, PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 300,
    200, 200, PaintInfo.rcPaint.Bottom, 26);
end;

procedure TDemoForm.LRptPaintBox3OutPaint(Sender: TObject; Canvas: TCanvas; var PaintInfo: TPaintStruct);
begin
  if not Equation3.IsError then
  begin
    Canvas.font.Height := 48;
    Equation3.Paint(Canvas, 'a1 = ', PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 100);
  end;
  if not Equation4.IsError then
  begin
    Canvas.font.Height := 48;
    Equation4.Paint(Canvas, 'a2 = ', PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 200);
  end;
  PropertyTreeView1.PaintPersistent(Equation3, Canvas, PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 500,
    200, 200, PaintInfo.rcPaint.Bottom, 26);
  PropertyTreeView1.PaintPersistent(Equation4, Canvas, PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 800,
    200, 200, PaintInfo.rcPaint.Bottom, 26);
end;

procedure TDemoForm.LRptPaintBox4OutPaint(Sender: TObject; Canvas: TCanvas; var PaintInfo: TPaintStruct);
begin
  if not Equation2.IsError then
  begin
    Canvas.font.Height := 48;
    Equation2.Paint(Canvas, 'H = ', PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 100);
  end;
  PropertyTreeView1.PaintPersistent(Equation2, Canvas, PaintInfo.rcPaint.Left, PaintInfo.rcPaint.Top + 450,
    200, 400, PaintInfo.rcPaint.Bottom, 26);
end;

procedure TDemoForm.LRptTable1GetCellValue(Sender: TObject; Col, Row: Integer;
  Font: TFont; var BkColor: TColor; var Value: string);
var
  I, II, AIx: Integer;
  Max, Y: Single;
begin
  if Row = 0 then
  begin
    if Col = 0 then
      Value := 'f'
    else
      Value := 'x=' + FloatToStr((Col - 1) * 0.1);
  end
  else
  begin
    AIx := FloatVectorOM.SortIx[Row - 1];
    if Col = 0 then
      Value := FloatToStr(Round(1000.0 * System.Abs(FloatVectorOM[AIx]) / (2.0 * PI)) / 1000.0)
    else if Col = 1 then
    begin
      Value := '0';
      if Row mod 2 = 0 then
        BkColor := clInfoBk;
    end
    else
    begin
      II := 0;
      Max := System.Abs(FloatMatrixYBKM.Data[0, AIx]);
      for I := 1 to FloatMatrixYBKM.MCount.Rows div 2 - 1 do
        if System.Abs(FloatMatrixYBKM.Data[2 * I, AIx]) > Max then
        begin
          II := I;
          Max := System.Abs(FloatMatrixYBKM.Data[2 * II, AIx]);
        end;
      Y := FloatMatrixYBKM.Data[2 * (Col - 2), AIx] / FloatMatrixYBKM.Data[2 * II, AIx];
      Value := FloatToStr(Round(1000.0 * Y) / 1000.0);
      if Row mod 2 = 0 then
        BkColor := clInfoBk;
    end;
  end;
end;

procedure TDemoForm.LRptTable1GetRowCount(Sender: TObject;
  var RowCount: Integer);
begin
  RowCount := FloatVectorOM.Count;
end;

procedure TDemoForm.MainFormFloatMatrixYBKMAfterCalc(Sender: TObject);
var
  I, Ix: Integer;
begin
  if not FloatVectorOM.IsError then
  begin
    for I := 0 to FloatVectorOM.Count - 1 do
    begin
      Ix := FloatVectorOM.SortIx[I];
      ComboBox1.Items.Add('(' + IntToStr(I + 1) + ')   ' +
        FloatToStr(Round(1000.0 * System.Abs(FloatVectorOM[Ix]) / (2.0 * PI)) / 1000.0) + ' Hz');
    end;
    ComboBox1.ItemIndex := 0;
  end;
end;

procedure TDemoForm.CloseActnExecute(Sender: TObject);
begin
  Close;
end;

procedure TDemoForm.ComboBox1Change(Sender: TObject);
begin
  GraphFrame4.GraphControl1.GraphWindow.Refresh;
end;

procedure TDemoForm.Equation1Change(Sender: TObject);
begin
  if not Equation1.IsError then
  begin
    StatusBar1.SimpleText := '';
    if EquationFrame1.Edit.Text <> Equation1.Lines.Text then
      EquationFrame1.Edit.Lines := Equation1.Lines;
  end;
  if Assigned(GraphFrame1.GraphControl1.GraphWindow) then
    GraphFrame1.GraphControl1.GraphWindow.Refresh;
end;

procedure TDemoForm.GraphFrame1GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas;
  PosX, PosY: Integer; MX, MY: Double);
var
  GC    : TLGraphControl;
  X, Y  : Single;
  C     : TComplex;
  IsImag: Boolean;
  IsMove: Boolean;
begin
  if Equation1.IsError then
    Exit;
  Canvas.font.Height := -18;
  Equation1.Paint(Canvas, 'y = ', 50, 50);
  GC := GraphFrame1.GraphControl1;
  IsImag := False;
  Canvas.Pen.Color := clYellow;
  X := GC.MinXR;
  try
    C := Equation1.GetValue([X]);
    Y := C.Real;
    if C.Imaginary <> 0.0 then
      IsImag := True;
    GC.PaintFirstPoint(Canvas, X, Y); //MoveTo
    IsMove := False;
  except
    IsMove := True;
  end;
  repeat
    X := X + 0.1;
    try
      C := Equation1.GetValue([X]);
      Y := C.Real;
      if C.Imaginary <> 0.0 then
        IsImag := True;
      if IsMove then
      begin
        GC.PaintFirstPoint(Canvas, X, Y); //MoveTo
        IsMove := False;
      end
      else
        GC.PaintNextPoint(Canvas, X, Y); //LineTo
    except
      IsMove := True;
    end;
  until X > GC.MaxXR;
  if IsImag then
  begin
    Canvas.Pen.Color := clAqua;
    X := GC.MinXR;
    try
      Y := Equation1.GetValue([X]).Imaginary;
      GC.PaintFirstPoint(Canvas, X, Y); //MoveTo
      IsMove := False;
    except
      IsMove := True;
    end;
    repeat
      X := X + 0.1;
      try
        Y := Equation1.GetValue([X]).Imaginary;
        if IsMove then
        begin
          GC.PaintFirstPoint(Canvas, X, Y); //MoveTo
          IsMove := False;
        end
        else
          GC.PaintNextPoint(Canvas, X, Y); //LineTo
      except
        IsMove := True;
      end;
    until X > GC.MaxXR;
  end;
end;

procedure TDemoForm.Equation2Change(Sender: TObject);
begin
  if not Equation2.IsError then
  begin
    StatusBar1.SimpleText := '';
    if EquationFrame2.Edit.Text <> Equation2.Lines.Text then
      EquationFrame2.Edit.Lines := Equation2.Lines;
  end;
  if Assigned(GraphFrame2.GraphControl1.GraphWindow) then
    GraphFrame2.GraphControl1.GraphWindow.Refresh;
end;

procedure TDemoForm.Equation3Change(Sender: TObject);
begin
  if not Equation3.IsError then
  begin
    if EquationFrame3.Edit.Text <> Equation3.Lines.Text then
      EquationFrame3.Edit.Lines := Equation3.Lines;
  end;
  if not Equation4.IsError then
  begin
    if EquationFrame4.Edit.Text <> Equation4.Lines.Text then
      EquationFrame4.Edit.Lines := Equation4.Lines;
  end;
  if not Equation4.IsError and not Equation4.IsError then
    StatusBar1.SimpleText := '';
  L3DGraph1.Refresh;
  PaintBox1.Refresh;
end;

procedure TDemoForm.ExportBtnClick(Sender: TObject);
begin
  if LRpt1.Status = stMove then
    LRpt1.Status := stNormal;
  SaveWMF.FileName := '';
  if SaveWMF.Execute and
     (not FileExists(SaveWMF.FileName) or
      (QuestionShow(Concat('File  ', ExtractFileName(SaveWMF.FileName),
       '  already exists. Overwrite?'), 'Export', [mbYes, mbNo], 0) = mrYes)) then
    LRpt1.ExportWMF(SaveWMf.FileName, True);
end;

procedure TDemoForm.GraphFrame2GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas;
  PosX, PosY: Integer; MX, MY: Double);
var
  GC: TLGraphControl;
  X, Y: Single;
  C: TComplex;
begin
  if Equation2.IsError then
    Exit;
  Canvas.font.Height := -18;
  Equation2.Paint(Canvas, 'H = ', 30, 250);
  GC := GraphFrame2.GraphControl1;
  Canvas.Pen.Color := clYellow;
  X := 0.1;
  C := Equation2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
  Y := Abs(C);
  GC.PaintFirstPoint(Canvas, Log10(X), Log10(Y) / 2.0);
  repeat
    X := X + 0.1;
    C := Equation2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
    Y := Abs(C);
    GC.PaintNextPoint(Canvas, Log10(X), Log10(Y) / 2.0);
  until X > 100.0;
end;

procedure TDemoForm.Edit1Change(Sender: TObject);
var
  F: Single;
begin
  if not GraphFrame3.GraphControl1.HandleAllocated then
    Exit;
  if not FloatMatrixQ1.IsError then
    try
      F := StrtoDouble(Edit1.Text);
      FloatVectorF1[20] := F;
      FloatMatrixQ1.CalcEquation;
    except
    end;
  if not FloatMatrixQ2.IsError then
    try
      F := StrtoDouble(Edit1.Text);
      FloatVectorF2[10] := F;
      FloatMatrixQ2.CalcEquation;
    except
    end;
  GraphFrame3.GraphControl1.GraphWindow.Refresh;
end;

procedure TDemoForm.GraphFrame3GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas;
  PosX, PosY: Integer; MX, MY: Double);
var
  GC: TLGraphControl;
  I: Integer;
  X, Y: Single;
begin
  GC := GraphFrame3.GraphControl1;
  if not FloatMatrixQ1.IsError then
  begin
    Canvas.Pen.Color := clBlack;
    GC.PaintFirstPoint(Canvas, GC.MinXR, 0.0);
    GC.PaintNextPoint(Canvas, GC.MaxXR, 0.0);
    Canvas.Pen.Color := clYellow;
    for I := 0 to FloatMatrixQ1.MCount.Rows div 2 - 1 do
    begin
      X := I * 100.0;
      Y := FloatMatrixQ1.Data[2 * I, 0];
      if I = 0 then
        GC.PaintFirstPoint(Canvas, X, Y)
      else
        GC.PaintNextPoint(Canvas, X, Y);
    end;
  end;
  if not FloatMatrixQ2.IsError then
  begin
    Canvas.Pen.Color := clBlack;
    GC.PaintFirstPoint(Canvas, GC.MinXR, 200.0);
    GC.PaintNextPoint(Canvas, GC.MaxXR, 200.0);
    Canvas.Pen.Color := clYellow;
    for I := 0 to FloatMatrixQ2.MCount.Rows div 2 - 1 do
    begin
      X := I * 100.0;
      Y := FloatMatrixQ2.Data[2 * I, 0] + 200.0;
      if I = 0 then
        GC.PaintFirstPoint(Canvas, X, Y)
      else
        GC.PaintNextPoint(Canvas, X, Y);
    end;
  end;
end;

procedure TDemoForm.GraphFrame4GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas;
  PosX, PosY: Integer; MX, MY: Double);
var
  GC                : TLGraphControl;
  I, Ix, AIx        : Integer;
  A1, A2, A3, A4    : Double;
  X1, Y1, Y2, F1, F2: Double;
  X, Y, MaxY      : Double;
begin
  GC := GraphFrame4.GraphControl1;
  Ix := ComboBox1.ItemIndex;
  if Ix < 0 then
    Exit;
  Canvas.Pen.Color := clBlack;
  GC.PaintFirstPoint(Canvas, GC.MinXR, 0.0);
  GC.PaintNextPoint(Canvas, GC.MaxXR, 0.0);
  if not FloatMatrixYBKM.IsError and (Ix < Integer(FloatMatrixYBKM.MCount.Cols)) then
  begin
    Canvas.Pen.Color := clYellow;
    AIx := FloatVectorOM.SortIx[Ix];
    MaxY := FloatMatrixYBKM.Data[0, AIx];
    for I := 1 to FloatMatrixYBKM.MCount.Rows div 2 - 1 do
      if System.Abs(FloatMatrixYBKM.Data[2 * I, AIx]) > System.Abs(MaxY) then
        MaxY := FloatMatrixYBKM.Data[2 * I, AIx];
    X1 := 0.0;
    Y1 := 0.0;
    F1 := 0.0;
    Y2 := FloatMatrixYBKM.Data[0, AIx];
    F2 := FloatMatrixYBKM.Data[1, AIx];
    GC.PaintFirstPoint(Canvas, X1, Y1);
    X := 0.0;
    repeat
      BeamAprox(X, 100.0, A1, A2, A3, A4);
      Y := (A1 * Y1 + A2 * F1 + A3 * Y2 + A4 * F2) / MaxY;
      GC.PaintNextPoint(Canvas, X1 + X, Y);
      X := X + 10.0;
    until X > 100.0;
    for I := 0 to 8 do
    begin
      X1 := (I + 1) * 100.0;
      Y1 := FloatMatrixYBKM.Data[2 * I, AIx];
      F1 := FloatMatrixYBKM.Data[2 * I + 1, AIx];
      Y2 := FloatMatrixYBKM.Data[2 * (I + 1), AIx];
      F2 := FloatMatrixYBKM.Data[2 * (I + 1) + 1, AIx];
      X := 0.0;
      repeat
        BeamAprox(X, 100.0, A1, A2, A3, A4);
        Y := (A1 * Y1 + A2 * F1 + A3 * Y2 + A4 * F2) / MaxY;
        GC.PaintNextPoint(Canvas, X1 + X, Y);
        X := X + 10.0;
      until X > 100.0;
    end;
  end;
end;

procedure TDemoForm.GraphFrame5GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas;
  PosX, PosY: Integer; MX, MY: Double);
var
  GC: TLGraphControl;
  I: Integer;
  X, Y: Single;
begin
  GC := GraphFrame5.GraphControl1;
  if not FloatVectorQBS.IsError then
  begin
    Canvas.Pen.Color := clBlack;
    GC.PaintFirstPoint(Canvas, GC.MinXR, 0.0);
    GC.PaintNextPoint(Canvas, GC.MaxXR, 0.0);
    Canvas.Pen.Color := clYellow;
    GC.PaintFirstPoint(Canvas, 0.0, 0.0);
    for I := 0 to FloatVectorQBS.Count div 2 - 1 do
    begin
      X := (I + 1) * 100.0;
      Y := FloatVectorQBS.Data[2 * I];
      GC.PaintNextPoint(Canvas, X, Y);
    end;
  end;
  if not FloatVectorQB.IsError then
  begin
    Canvas.Pen.Color := clAqua;
    GC.PaintFirstPoint(Canvas, 0.0, 0.0);
    for I := 0 to FloatVectorQB.Count div 2 - 1 do
    begin
      X := (I + 1) * 100.0;
      Y := FloatVectorQB.Data[2 * I];
      GC.PaintNextPoint(Canvas, X, Y);
    end;
  end;
end;

procedure TDemoForm.StartBtnClick(Sender: TObject);
var
  I, J       : Integer;
  MaxU, OMaxU: Double;
  UpdateRec  : TUpdateRec;
begin
  if InProcess then
  begin
    IsStop := True;
    Exit;
  end;
  CloseBtn.Enabled := False;
  StartBtn.Caption := 'Stop';
  try
    InProcess := True;
    IsStop := False;
    UpdateRec.Variable := FloatVectorQE; //Vector
    UpdateRec.Row := 0; //Vector Row
    GraphVFrame2.GraphControlV1.Perform(wm_Update, udClear, NativeInt(@UpdateRec)); //Clear
    FloatVectorQB.CopyDataFrom(FloatVectorQBS);
    FloatVectorOQB.CopyDataFrom(FloatVectorQBS);
    GraphFrame5.GraphControl1.GraphWindow.Refresh;
    TimeLabel.Caption := 'Time = 0';
    Application.ProcessMessages;
    MaxU := 100.0;
    Sleep(250);
    I := 0;
    repeat
      OMaxU := MaxU;
      FloatVectorOOQB.CopyDataFrom(FloatVectorOQB);
      FloatVectorOQB.CopyDataFrom(FloatVectorQB);
      FloatVectorQB.CalcEquation;
      GraphFrame5.GraphControl1.GraphWindow.Refresh;
      Inc(I);
      TimeLabel.Caption := 'Time = ' + FloatToStr(I * FloatScalarDT.Value);
      if I > 1 then
        FloatVectorQE.Count := I + 1;
      FloatVectorQE[I] := FloatVectorQB[FloatVectorQB.Count - 2];
      UpdateRec.Row := I; //Vector row
      GraphVFrame2.GraphControlV1.Perform(wm_Update, udAdd, NativeInt(@UpdateRec)); //AddPoint
      Application.ProcessMessages;
      MaxU := System.Abs(FloatVectorQB[0]);
      for J := 1 to FloatVectorQB.Count - 1 do
        if MaxU < System.Abs(FloatVectorQB[J]) then
          MaxU := System.Abs(FloatVectorQB[J]);
      Sleep(250);
    until IsStop or (I > 400) or ((MaxU < 1.0) and (OMaxU < 1.0));
  finally
    StartBtn.Caption := 'Start';
    CloseBtn.Enabled := True;
    InProcess := False;
  end;
end;

procedure TDemoForm.EditBtnClick(Sender: TObject);
begin
  LRpt1.Status := stNormal;
end;

procedure TDemoForm.ZoomInBtnClick(Sender: TObject);
begin
  LRpt1.Status := stZoom;
end;

procedure TDemoForm.ZoomOutBtnClick(Sender: TObject);
begin
  LRpt1.ZoomOut;
end;

procedure TDemoForm.FullPageBtnClick(Sender: TObject);
begin
  LRpt1.FullPage(True);
end;

procedure TDemoForm.ExportRectBrnClick(Sender: TObject);
begin
  LRpt1.Status := stExport;
end;

procedure TDemoForm.LRpt1PostZoom(Sender: TObject; ZoomAction: TZoomAction);
begin
  if csReading in ComponentState then
    Exit;
  if not Assigned(ZoomInBtn) then
    Exit;
  case ZoomAction of
    pzFullPage:
      begin
        ZoomInBtn.Enabled := True;
        ZoomOutBtn.Enabled := False;
        FullPageBtn.Enabled := False;
      end;
    pzZoomIn:
      begin
        ZoomOutBtn.Enabled := True;
        FullPageBtn.Enabled := True;
      end;
    pzZoomOut:
      ZoomInBtn.Enabled := True;
    pzNoZoom:
      begin
        ZoomOutBtn.Enabled := True;
        FullPageBtn.Enabled := True;
        EditBtn.Down := True;
        LRpt1.Status := stNormal;
      end;
  end;
end;

procedure TDemoForm.PaintBox1Paint(Sender: TObject);
begin
  PaintBox1.Canvas.font.Height := -18;
  if not Equation3.IsError then
    Equation3.Paint(PaintBox1.Canvas, 'a1 = ', 10, 10);
  if not Equation4.IsError then
    Equation4.Paint(PaintBox1.Canvas, 'a2 = ', 10, 100);
end;

procedure TDemoForm.PrintBtnClick(Sender: TObject);
begin
  LRpt1.PrintAll;
end;

function Normal(E: TEquation; X, Y: Single): GLfloat3;
var
  NX, NY: GLfloat3;
  X1, Y1: Single;
  X2, Y2: Single;
  Z1, Z2: Single;
  L: Single;
begin
  X1 := X - 0.025;
  Y1 := Y - 0.025;
  X2 := X + 0.025;
  Y2 := Y + 0.025;
  Z1 := E.GetValue([X1, Y]).Real;
  Z2 := E.GetValue([X2, Y]).Real;
  L := Hypot(X2 - X1, Z2 - Z1);
  NX[0] := (X2 - X1) / L;
  NX[1] := 0.0;
  NX[2] := (Z2 - Z1) / L;
  Z1 := E.GetValue([X, Y1]).Real;
  Z2 := E.GetValue([X, Y2]).Real;
  L := Hypot(Y2 - Y1, Z2 - Z1);
  NY[0] := 0.0;
  NY[1] := (Y2 - Y1) / L;
  NY[2] := (Z2 - Z1) / L;
  Result[0] := NX[1] * NY[2] - NY[1] * NX[2];
  Result[1] := NX[2] * NY[0] - NY[2] * NX[0];
  Result[2] := NX[0] * NY[1] - NY[0] * NX[1];
  L := System.Sqrt(System.Sqr(Result[0]) + System.Sqr(Result[1]) + System.Sqr(Result[2]));
  if L > 0.0 then
  begin
    Result[0] := Result[0] / L;
    Result[1] := Result[1] / L;
    Result[2] := Result[2] / L;
  end;
end;

procedure SquareTriangles(IsColors: Boolean; E: TEquation; M, X, Y, DX, DY, ZMin, ZMax, Alpha: Single);
var
  Z0, Z1, Z2, Z3: Single;
  P0, P1, P2, P3, N0, N1, N2, N3: GLfloat3;
begin
  P0[0] := X - DX;
  P0[1] := Y - DY;
  Z0 := E.GetValue([P0[0], P0[1]]).Real;
  N0 := Normal(E, P0[0], P0[1]);
  P0[0] := P0[0] * M;
  P0[1] := P0[1] * M;
  P0[2] := Z0 * M;
  P1[0] := X - DX;
  P1[1] := Y;
  Z1 := E.GetValue([P1[0], P1[1]]).Real;
  N1 := Normal(E, P1[0], P1[1]);
  P1[0] := P1[0] * M;
  P1[1] := P1[1] * M;
  P1[2] := Z1 * M;
  P2[0] := X;
  P2[1] := Y;
  Z2 := E.GetValue([P2[0], P2[1]]).Real;
  N2 := Normal(E, P2[0], P2[1]);
  P2[0] := P2[0] * M;
  P2[1] := P2[1] * M;
  P2[2] := Z2 * M;
  P3[0] := X;
  P3[1] := Y - DY;
  Z3 := E.GetValue([P3[0], P3[1]]).Real;
  N3 := Normal(E, P3[0], P3[1]);
  P3[0] := P3[0] * M;
  P3[1] := P3[1] * M;
  P3[2] := Z3 * M;
  if Abs(Z2 - Z0) > Abs(Z3 - Z1) then
  begin
    //T1
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z0 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N0);
    glVertex3fv(@P0);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z1 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N1);
    glVertex3fv(@P1);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z3 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N3);
    glVertex3fv(@P3);
    //T2
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z1 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N1);
    glVertex3fv(@P1);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z2 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N2);
    glVertex3fv(@P2);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z3 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N3);
    glVertex3fv(@P3);
  end
  else
  begin
    //T1
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z0 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N0);
    glVertex3fv(@P0);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z1 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N1);
    glVertex3fv(@P1);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z2 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N2);
    glVertex3fv(@P2);
    //T2
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z2 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N2);
    glVertex3fv(@P2);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z3 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N3);
    glVertex3fv(@P3);
    if IsColors then
      ScaleColor(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, (Z0 - ZMin) / (ZMax - ZMin), Alpha);
    glNormal3fv(@N0);
    glVertex3fv(@P0);
  end;
end;

procedure TDemoForm.L3DGraph1BuildGL(Sender: TObject; M: Single);
var
  X, Y      : Single;
  ZMin, ZMax: Single;
begin
  if Sender is TL3DGraph then
  begin
    ZMin := TL3DGraph(Sender).z_Min;
    ZMax := TL3DGraph(Sender).z_Max;
  end
  else if Sender is TLRpt3DGraph then
  begin
    ZMin := TLRpt3DGraph(Sender).z_Min;
    ZMax := TLRpt3DGraph(Sender).z_Max;
  end
  else
  begin
    ZMin := -0.2;
    ZMax := 1.0;
  end;
  glEnable(GL_BLEND);
  glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
  if not Equation3.IsError and Eq3Visible.Checked then
  begin
    Material3(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, clAqua, 1.0);
    X := -1.0 + 0.1;
    repeat
      Y := -1.0 + 0.1;
      glBegin(GL_TRIANGLES);
      repeat
        SquareTriangles(Eq3Colors.Checked, Equation3, M, X, Y, 0.1, 0.1, ZMin, ZMax, 1.0);
        Y := Y + 0.1;
      until Y > 1.0 + 0.1;
      glEnd;
      X := X + 0.1;
    until X > 1.0 + 0.1;
  end;
  if not Equation4.IsError and Eq4Visible.Checked then
  begin
    Material3(GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE, clRed, 0.3);
    X := -1.0 + 0.1;
    repeat
      Y := -1.0 + 0.1;
      glBegin(GL_TRIANGLES);
      repeat
        SquareTriangles(Eq4Colors.Checked, Equation4, M, X, Y, 0.1, 0.1, ZMin, ZMax, 0.3);
        Y := Y + 0.1;
      until Y > 1.0 + 0.1;
      glEnd;
      X := X + 0.1;
    until X > 1.0 + 0.1;
  end;
  glDisable(GL_BLEND);
end;

end.
