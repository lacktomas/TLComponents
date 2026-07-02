unit MainForm_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Rtti,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.Layouts, FMX.ListBox, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.TreeView, FMXPropTreeView, A.DsgnForms_u, FMX.Info_u, FMX.LicenceComponent,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, FMX.MathMemo, FMX.Math_u, FMX.Variables,
  FMX.BitButtons, FMX.Menus, FMX.Graph, AppEquationFrameFMX_u, GraphFrameFMX_u, FMX.GraphV, FMX.LegendTL,
  GraphVFrameFMX_u, FMX.Edit, FMX.EditBox, FMX.SpinBox, FMX.Grid, FMX.Objects, FMX.Viewport3D, System.Math.Vectors,
  FMX.Controls3D, FMX.Layers3D, FMX.Objects3D, FMX.Types3D, FMX.MaterialSources, System.RTLConsts, FMX.Graph3D,
  FMX.LRichEdit, FMX.Rpt, System.ImageList, FMX.ImgList, FMX.PagesListBox, FMX.RptGraph, FMX.RptGraph3D,
  FMX.DialogService, FMX.SaveFilesDialog, Info_u, ListEditor;

type
  TMainForm = class(TDsgnFormFMX)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    ListBox1: TListBox;
    PropertyTreeViewFMX1: TPropertyTreeViewFMX;
    LicenceComponentFMX1: TLicenceComponentFMX;
    Variables1: TVariablesFMX;
    FloatVector1: TFloatVectorFMX;
    FloatVector2: TFloatVectorFMX;
    FloatMatrixK1: TFloatMatrixFMX;
    FloatVectorF1: TFloatVectorFMX;
    FloatMatrixInvK1: TFloatMatrixFMX;
    FloatMatrixQ1: TFloatMatrixFMX;
    FloatMatrixK2: TFloatMatrixFMX;
    FloatVectorF2: TFloatVectorFMX;
    FloatMatrixInvK2: TFloatMatrixFMX;
    FloatMatrixQ2: TFloatMatrixFMX;
    FloatMatrixMB: TFloatMatrixFMX;
    FloatMatrixKB: TFloatMatrixFMX;
    FloatVectorOM: TFloatVectorFMX;
    FloatMatrixYBKM: TFloatMatrixFMX;
    FloatMatrixInvKB: TFloatMatrixFMX;
    FloatScalarDT: TFloatScalarFMX;
    FloatVectorFB: TFloatVectorFMX;
    FloatVectorQBS: TFloatVectorFMX;
    FloatVectorOQB: TFloatVectorFMX;
    FloatVectorOOQB: TFloatVectorFMX;
    FloatMatrixB: TFloatMatrixFMX;
    FloatMatrixA: TFloatMatrixFMX;
    FloatMatrixAO: TFloatMatrixFMX;
    FloatMatrixAOO: TFloatMatrixFMX;
    FloatVectorQB: TFloatVectorFMX;
    FloatVectorQE: TFloatVectorFMX;
    EquationFMX1: TEquationFMX;
    EquationFMX2: TEquationFMX;
    EquationFMX3: TEquationFMX;
    EquationFMX4: TEquationFMX;
    EquationFMX5: TEquationFMX;
    AppEquationFrameFMX1: TAppEquationFrameFMX;
    GraphFrameFMX1: TGraphFrameFMX;
    TabItem3: TTabItem;
    AppEquationFrameFMX2: TAppEquationFrameFMX;
    GraphFrameFMX2: TGraphFrameFMX;
    TabItem4: TTabItem;
    GraphVFrameFMX1: TGraphVFrameFMX;
    TabItem5: TTabItem;
    Panel3: TPanel;
    SpinBox1: TSpinBox;
    GraphFrameFMX3: TGraphFrameFMX;
    TabItem6: TTabItem;
    Panel4: TPanel;
    ComboBox1: TComboBox;
    GraphFrameFMX4: TGraphFrameFMX;
    TabItem7: TTabItem;
    Panel5: TPanel;
    TimeLabel: TLabel;
    StartBtn: TBitCornerButtonFMX;
    GraphFrameFMX5: TGraphFrameFMX;
    GraphVFrameFMX2: TGraphVFrameFMX;
    Label1: TLabel;
    AppEquationFrameFMX3: TAppEquationFrameFMX;
    AppEquationFrameFMX4: TAppEquationFrameFMX;
    Panel6: TPanel;
    PaintBox1: TPaintBox;
    Graph3DFMX1: TGraph3DFMX;
    LRichEditFMX1: TLRichEditFMX;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    ToolBar1: TToolBar;
    EditBtn: TBitSpeedButtonFMX;
    RptFMX1: TRptFMX;
    ImageList1: TImageList;
    ZoomInBtn: TBitSpeedButtonFMX;
    ZoomOutBtn: TBitSpeedButtonFMX;
    FullPageBtn: TBitSpeedButtonFMX;
    PagesListBox1: TPagesListBox;
    PrintBtn: TBitSpeedButtonFMX;
    ExportBtn: TBitSpeedButtonFMX;
    SaveDialog1: TSaveDialog;
    SaveDialogFMX1: TSaveDialogFMX;
    ExportRectBtn: TBitSpeedButtonFMX;
    LRichEditFMX2: TLRichEditFMX;
    Eq3Visible: TCheckBox;
    Eq4Visible: TCheckBox;
    CloseBtn: TBitButtonFMX;
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GraphFrameFMX1GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX, MY: Double;
      R: TRectF);
    procedure EquationFMX1Change(Sender: TObject);
    procedure GraphFrameFMX2GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX, MY: Double;
      R: TRectF);
    procedure EquationFMX2Change(Sender: TObject);
    procedure SpinBox1Change(Sender: TObject);
    procedure GraphFrameFMX3GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX, MY: Double;
      R: TRectF);
    procedure MainFormFloatMatrixYBKMAfterCalc(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure GraphFrameFMX4GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX, MY: Double;
      R: TRectF);
    procedure GraphFrameFMX5GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX, MY: Double;
      R: TRectF);
    procedure StartBtnClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject; Canvas: TCanvas);
    procedure EquationFMX3Change(Sender: TObject);
    procedure Graph3DFMX1Render(Sender: TObject; Context: TContext3D);
    procedure EditBtnClick(Sender: TObject);
    procedure ZoomInBtnClick(Sender: TObject);
    procedure ZoomOutBtnClick(Sender: TObject);
    procedure FullPageBtnClick(Sender: TObject);
    procedure RptFMX1PostZoom(Sender: TObject; ZoomAction: TZoomAction);
    procedure RptGraphFMX1PaintCurve(Curve: TCurve);
    procedure RptGraph3DFMX1Render(Sender: TObject; Context: TContext3D);
    procedure RptPaintBoxFMX1AfterPaint(Sender: TObject; Canvas: TCanvas; Rect: TRectF);
    procedure RptPaintBoxFMX2AfterPaint(Sender: TObject; Canvas: TCanvas; Rect: TRectF);
    procedure RptGraphFMX2PaintCurve(Curve: TCurve);
    procedure RptPaintBoxFMX3AfterPaint(Sender: TObject; Canvas: TCanvas; Rect: TRectF);
    procedure RptGraphFMX4PaintCurve(Curve: TCurve);
    procedure RptGraphFMX5PaintCurve(Curve: TCurve);
    procedure RptGraphFMX6PaintCurve(Curve: TCurve);
    procedure RptGraphFMX6CurveProperties(Curve: TCurve; var Caption: string; Pen: TCurvePen; Brush: TBrush);
    procedure RptTableFMX1GetCellValue(Sender: TObject; Col, Row: Integer; Font: TFont; var BkColor: TAlphaColor;
      var Value: string);
    procedure RptTableFMX1GetRowCount(Sender: TObject; var RowCount: Integer);
    procedure RptGraphFMX7CurveProperties(Curve: TCurve; var Caption: string; Pen: TCurvePen; Brush: TBrush);
    procedure RptGraphFMX7PaintCurve(Curve: TCurve);
    procedure PrintBtnClick(Sender: TObject);
    procedure ExportBtnClick(Sender: TObject);
    procedure SaveDialogFMX1CloseEvent(Sender: TObject; ModalResult: TModalResult);
    procedure ExportRectBtnClick(Sender: TObject);
    procedure Eq3VisibleChange(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
  private
    { Private declarations }
    InProcess : Boolean;
    IsStop    : Boolean;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.fmx}

uses
  {$IFDEF ANDROID}
  Androidapi.JNI.Net,
  {$ENDIF}
  Math, FMX.DesignEditors, FMX.DesignIntf, Vassbotn.Vcl.Complex, FEM_u;

const
  Colors20: array [0 .. 9] of TAlphaColor =
    (TAlphaColors.Red, TAlphaColors.Blue, TAlphaColors.Lime, TAlphaColors.Fuchsia, TAlphaColors.Yellow,
     TAlphaColors.Aqua, TAlphaColors.White, TAlphaColors.Maroon, TAlphaColors.Navy, TAlphaColors.Green);

{ ### TMainForm ### }
procedure TMainForm.FormCreate(Sender: TObject);
begin
  ListBox1.Items.AddObject(LicenceComponentFMX1.Name, LicenceComponentFMX1);
  ListBox1.Items.AddObject(EquationFMX1.Name, EquationFMX1);
  ListBox1.Items.AddObject(EquationFMX2.Name, EquationFMX2);
  ListBox1.Items.AddObject(EquationFMX3.Name, EquationFMX3);
  ListBox1.Items.AddObject(EquationFMX4.Name, EquationFMX4);
  ListBox1.Items.AddObject(EquationFMX5.Name, EquationFMX5);
  ListBox1.Items.AddObject(Variables1.Name, Variables1);
  ListBox1.Items.AddObject(GraphFrameFMX1.GraphControlFMX1.GetNamePath, GraphFrameFMX1.GraphControlFMX1);
  ListBox1.Items.AddObject(Graph3DFMX1.GetNamePath, Graph3DFMX1);
  ListBox1.Items.AddObject(LRichEditFMX1.Name, LRichEditFMX1);
  ListBox1.Items.AddObject(RptFMX1.Name, RptFMX1);
  AppEquationFrameFMX1.Equation := EquationFMX1;
  AppEquationFrameFMX2.Equation := EquationFMX2;
  AppEquationFrameFMX3.Equation := EquationFMX3;
  AppEquationFrameFMX4.Equation := EquationFMX4;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  AppEquationFrameFMX1.DoShow;
  AppEquationFrameFMX2.DoShow;
  AppEquationFrameFMX3.DoShow;
  AppEquationFrameFMX4.DoShow;
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
  GraphFrameFMX3.GraphControlFMX1.GraphWindow.Repaint;
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

procedure TMainForm.GraphFrameFMX1GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX,
  MY: Double; R: TRectF);
var
  GC    : TGraphControlFMX;
  X, Y  : Single;
  C     : TComplex;
  IsImag: Boolean;
  IsMove: Boolean;
begin
  if EquationFMX1.IsError then
    Exit;
  Canvas.font.Size := 18;
  Canvas.Stroke.Color := TAlphaColors.Black;
  Canvas.Stroke.Dash := TStrokeDash.Solid;
  Canvas.Fill.Kind := TBrushKind.Solid;
  Canvas.Fill.Color := TAlphaColors.Black;
  EquationFMX1.Paint(Canvas, 'y = ', 50, 50);
  GC := GraphFrameFMX1.GraphControlFMX1;
  IsImag := False;
  Canvas.Stroke.Color := TAlphaColors.Yellow;
  X := GC.MinXR;
  try
    C := EquationFMX1.GetValue([X]);
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
      C := EquationFMX1.GetValue([X]);
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
    Canvas.Stroke.Color := TAlphaColors.Aqua;
    X := GC.MinXR;
    try
      Y := EquationFMX1.GetValue([X]).Imaginary;
      GC.PaintFirstPoint(Canvas, X, Y); //MoveTo
      IsMove := False;
    except
      IsMove := True;
    end;
    repeat
      X := X + 0.1;
      try
        Y := EquationFMX1.GetValue([X]).Imaginary;
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

procedure TMainForm.GraphFrameFMX2GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX,
  MY: Double; R: TRectF);
var
  GC  : TGraphControlFMX;
  X, Y: Single;
  C   : TComplex;
begin
  if EquationFMX2.IsError then
    Exit;
  Canvas.font.Size := 16;
  Canvas.Stroke.Color := TAlphaColors.Black;
  Canvas.Stroke.Dash := TStrokeDash.Solid;
  Canvas.Fill.Kind := TBrushKind.Solid;
  Canvas.Fill.Color := TAlphaColors.Black;
  EquationFMX2.Paint(Canvas, 'H = ', 30, 250);
  GC := GraphFrameFMX2.GraphControlFMX1;
  Canvas.Stroke.Color := TAlphaColors.Yellow;
  X := 0.1;
  C := EquationFMX2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
  Y := Abs(C);
  GC.PaintFirstPoint(Canvas, Log10(X), Log10(Y) / 2.0);
  repeat
    X := X + 0.1;
    C := EquationFMX2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
    Y := Abs(C);
    GC.PaintNextPoint(Canvas, Log10(X), Log10(Y) / 2.0);
  until X > 100.0;
end;

procedure TMainForm.GraphFrameFMX3GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX,
  MY: Double; R: TRectF);
var
  GC  : TGraphControlFMX;
  I   : Integer;
  X, Y: Single;
begin
  GC := GraphFrameFMX3.GraphControlFMX1;
  if not FloatMatrixQ1.IsError then
  begin
    Canvas.Stroke.Dash := TStrokeDash.Solid;
    Canvas.Stroke.Color := TAlphaColors.Black;
    GC.PaintFirstPoint(Canvas, GC.MinXR, 0.0);
    GC.PaintNextPoint(Canvas, GC.MaxXR, 0.0);
    Canvas.Stroke.Color := TAlphaColors.Yellow;
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
    Canvas.Stroke.Dash := TStrokeDash.Solid;
    Canvas.Stroke.Color := TAlphaColors.Black;
    GC.PaintFirstPoint(Canvas, GC.MinXR, 200.0);
    GC.PaintNextPoint(Canvas, GC.MaxXR, 200.0);
    Canvas.Stroke.Color := TAlphaColors.Yellow;
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

procedure TMainForm.GraphFrameFMX4GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX,
  MY: Double; R: TRectF);
var
  GC                : TGraphControlFMX;
  I, Ix, AIx        : Integer;
  A1, A2, A3, A4    : Double;
  X1, Y1, Y2, F1, F2: Double;
  X, Y, MaxY      : Double;
begin
  GC := GraphFrameFMX4.GraphControlFMX1;
  Ix := ComboBox1.ItemIndex;
  if Ix < 0 then
    Exit;
  Canvas.Stroke.Dash := TStrokeDash.Solid;
  Canvas.Stroke.Color := TAlphaColors.Black;
  GC.PaintFirstPoint(Canvas, GC.MinXR, 0.0);
  GC.PaintNextPoint(Canvas, GC.MaxXR, 0.0);
  if not FloatMatrixYBKM.IsError and (Ix < Integer(FloatMatrixYBKM.MCount.Cols)) then
  begin
    Canvas.Stroke.Color := TAlphaColors.Yellow;
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

procedure TMainForm.GraphFrameFMX5GraphControlFMX1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY, MX,
  MY: Double; R: TRectF);
var
  GC: TGraphControlFMX;
  I: Integer;
  X, Y: Single;
begin
  GC := GraphFrameFMX5.GraphControlFMX1;
  Canvas.Stroke.Dash := TStrokeDash.Solid;
  Canvas.Stroke.Color := TAlphaColors.Black;
  GC.PaintFirstPoint(Canvas, GC.MinXR, 0.0);
  GC.PaintNextPoint(Canvas, GC.MaxXR, 0.0);
  if not FloatVectorQBS.IsError then
  begin
    Canvas.Stroke.Color := TAlphaColors.Yellow;
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
    Canvas.Stroke.Color := TAlphaColors.Aqua;
    GC.PaintFirstPoint(Canvas, 0.0, 0.0);
    for I := 0 to FloatVectorQB.Count div 2 - 1 do
    begin
      X := (I + 1) * 100.0;
      Y := FloatVectorQB.Data[2 * I];
      GC.PaintNextPoint(Canvas, X, Y);
    end;
  end;
end;

procedure TMainForm.StartBtnClick(Sender: TObject);
var
  I, J        : Integer;
  MaxU, OMaxU : Double;
  UpdateRec   : TUpdateRec;
  DrawableCell: IDrawableCell;
  Value       : System.Rtti.TValue;
begin
  if InProcess then
  begin
    IsStop := True;
    Exit;
  end;
  CloseBtn.Enabled := False;
  StartBtn.Text := 'Stop';
  try
    InProcess := True;
    IsStop := False;
    UpdateRec.Variable := FloatVectorQE; //Vector
    UpDateRec.wParam := udClear;
    UpdateRec.Row := 0; //Vector Row
    DrawableCell := GraphVFrameFMX2.GraphControlVFMX1 as IDrawableCell;
    Value := TValue.From<TUpdateRec>(UpdateRec);
    DrawableCell.DrawCell(nil, GraphVFrameFMX2.GraphControlVFMX1.GraphWindow.ClipRect, 0, Value, []);
    FloatVectorQB.CopyDataFrom(FloatVectorQBS);
    FloatVectorOQB.CopyDataFrom(FloatVectorQBS);
    GraphFrameFMX5.GraphControlFMX1.GraphWindow.Repaint;
    TimeLabel.Text := 'Time = 0';
    Application.ProcessMessages;
    MaxU := 100.0;
    Sleep(250);
    I := 0;
    repeat
      OMaxU := MaxU;
      FloatVectorOOQB.CopyDataFrom(FloatVectorOQB);
      FloatVectorOQB.CopyDataFrom(FloatVectorQB);
      FloatVectorQB.CalcEquation;
      GraphFrameFMX5.GraphControlFMX1.GraphWindow.Repaint;
      Inc(I);
      TimeLabel.Text := 'Time = ' + FloatToStr(I * FloatScalarDT.Value);
      if I > 1 then
        FloatVectorQE.Count := I + 1;
      FloatVectorQE[I] := FloatVectorQB[FloatVectorQB.Count - 2];
      UpDateRec.wParam := udAdd;
      UpdateRec.Row := I; //Vector row
      Value := TValue.From<TUpdateRec>(UpdateRec);
      DrawableCell.DrawCell(nil, GraphVFrameFMX2.GraphControlVFMX1.GraphWindow.ClipRect, I, Value, []);
      Application.ProcessMessages;
      MaxU := System.Abs(FloatVectorQB[0]);
      for J := 1 to FloatVectorQB.Count - 1 do
        if MaxU < System.Abs(FloatVectorQB[J]) then
          MaxU := System.Abs(FloatVectorQB[J]);
      Sleep(200);
    until IsStop or (I > 400) or ((MaxU < 1.0) and (OMaxU < 1.0));
  finally
    StartBtn.Text := 'Start';
    CloseBtn.Enabled := True;
    InProcess := False;
  end;
end;

procedure TMainForm.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.ComboBox1Change(Sender: TObject);
begin
  GraphFrameFMX4.GraphControlFMX1.GraphWindow.Repaint;
end;

procedure TMainForm.ExportRectBtnClick(Sender: TObject);
begin
  RptFMX1.Status := TStatus.stExport;
  ExportRectBtn.IsPressed := True;
  EditBtn.IsPressed := False;
  ZoomInBtn.IsPressed := False;
end;

procedure TMainForm.EditBtnClick(Sender: TObject);
begin
  RptFMX1.Status := TStatus.stNormal;
  EditBtn.IsPressed := True;
  ZoomInBtn.IsPressed := False;
  ExportRectBtn.IsPressed := False;
end;

procedure TMainForm.ZoomInBtnClick(Sender: TObject);
begin
  RptFMX1.Status := TStatus.stZoom;
  ZoomInBtn.IsPressed := True;
  EditBtn.IsPressed := False;
  ExportRectBtn.IsPressed := False;
end;

procedure TMainForm.ZoomOutBtnClick(Sender: TObject);
begin
  RptFMX1.ZoomOut;
end;

procedure TMainForm.FullPageBtnClick(Sender: TObject);
begin
  RptFMX1.FullPage(True);
end;

procedure TMainForm.RptFMX1PostZoom(Sender: TObject; ZoomAction: TZoomAction);
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
        EditBtn.IsPressed := True;
        RptFMX1.Status := stNormal;
      end;
  end;
end;

procedure TMainForm.RptGraphFMX1PaintCurve(Curve: TCurve);
var
  C     : TComplex;
  X, Y  : Single;
  IsMove: Boolean;
begin
  if EquationFMX1.IsError then
    Exit;
  if Curve.Index = 0 then
  begin
    X := Curve.Graph.MinX;
    try
      C := EquationFMX1.GetValue([X]);
      Y := C.Real;
      Curve.FirstPoint(X, Y);
      IsMove := False;
    except
      IsMove := True;
    end;
    repeat
      X := X + 0.1;
      try
      C := EquationFMX1.GetValue([X]);
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

procedure TMainForm.RptGraphFMX2PaintCurve(Curve: TCurve);
var
  X, Y: Single;
  C   : TComplex;
begin
  if EquationFMX2.IsError then
    Exit;
  X := 0.1;
  C := EquationFMX2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
  Y := Abs(C);
  Curve.FirstPoint(Log10(X), Log10(Y) / 2.0);
  repeat
    X := X + 0.1;
    C := EquationFMX2.GetValue([X] { , 0.4, 100.0, 8.0, 8.0, 2.5, 4.0, 1.0/ Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4] } );
    Y := Abs(C);
    Curve.NextPoint(Log10(X), Log10(Y) / 2.0);
  until X > 100.0;
end;

procedure TMainForm.RptGraphFMX4PaintCurve(Curve: TCurve);
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

procedure TMainForm.RptGraphFMX5PaintCurve(Curve: TCurve);
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

procedure TMainForm.RptGraphFMX6CurveProperties(Curve: TCurve; var Caption: string; Pen: TCurvePen; Brush: TBrush);
var
  AIx: Integer;
begin
  AIx := FloatVectorOM.SortIx[Curve.Index];
  Caption := FloatToStr(Round(1000.0 * System.Abs(FloatVectorOM[AIx]) / (2.0 * PI)) / 1000.0);
  Pen.Color := Colors20[Curve.Index];
end;

procedure TMainForm.RptGraphFMX6PaintCurve(Curve: TCurve);
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

procedure TMainForm.RptGraphFMX7CurveProperties(Curve: TCurve; var Caption: string; Pen: TCurvePen; Brush: TBrush);
var
  AIx: Integer;
begin
  AIx := FloatVectorOM.SortIx[Curve.Index+10];
  Caption := FloatToStr(Round(1000.0 * System.Abs(FloatVectorOM[AIx]) / (2.0 * PI)) / 1000.0);
  Pen.Color := Colors20[Curve.Index];
end;

procedure TMainForm.RptGraphFMX7PaintCurve(Curve: TCurve);
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

procedure TMainForm.RptPaintBoxFMX1AfterPaint(Sender: TObject; Canvas: TCanvas; Rect: TRectF);
begin
  if not EquationFMX1.IsError then
  begin
    Canvas.font.Size := 48;
    EquationFMX1.Paint(Canvas, 'y = ', Rect.Left, Rect.Top + 10);
  end;
  PropertyTreeViewFMX1.PaintPersistent(EquationFMX1, Canvas, Rect.Left, Rect.Top + 220, 400, 400, Rect.Bottom, 40);
end;

procedure TMainForm.RptPaintBoxFMX2AfterPaint(Sender: TObject; Canvas: TCanvas; Rect: TRectF);
begin
  Canvas.font.Size := 48;
  if not EquationFMX3.IsError then
    EquationFMX3.Paint(Canvas, 'a1 = ', Rect.Left, Rect.Top);
  if not EquationFMX4.IsError then
    EquationFMX4.Paint(Canvas, 'a2 = ', Rect.Left, Rect.Top + 160);
  PropertyTreeViewFMX1.PaintPersistent(EquationFMX3, Canvas, Rect.Left, Rect.Top + 380, 400, 400, Rect.Bottom, 40);
  PropertyTreeViewFMX1.PaintPersistent(EquationFMX4, Canvas, Rect.Left, Rect.Top + 850, 400, 400, Rect.Bottom, 40);
end;

procedure TMainForm.RptPaintBoxFMX3AfterPaint(Sender: TObject; Canvas: TCanvas; Rect: TRectF);
begin
  if not EquationFMX2.IsError then
  begin
    Canvas.font.Size := 36;
    EquationFMX2.Paint(Canvas, 'H = ', Rect.Left, Rect.Top + 100);
  end;
  PropertyTreeViewFMX1.PaintPersistent(EquationFMX2, Canvas, Rect.Left, Rect.Top + 450, 300, 500, Rect.Bottom, 26);
end;

procedure TMainForm.RptTableFMX1GetCellValue(Sender: TObject; Col, Row: Integer; Font: TFont; var BkColor: TAlphaColor;
  var Value: string);
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
        BkColor := TAlphaColors.Lightyellow;
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
        BkColor := TAlphaColors.Lightyellow;
    end;
  end;
end;

procedure TMainForm.RptTableFMX1GetRowCount(Sender: TObject; var RowCount: Integer);
begin
  RowCount := FloatVectorOM.Count;
end;

procedure TMainForm.Eq3VisibleChange(Sender: TObject);
begin
  Graph3DFMX1.Repaint;
end;

procedure TMainForm.EquationFMX1Change(Sender: TObject);
begin
  {if not EquationFMX1.IsError then
  begin
    //StatusBar1.SimpleText := '';
    if AppEquationFrameFMX1.MathMemoFMX1.Text <> EquationFMX1.Lines.Text then
      AppEquationFrameFMX1.MathMemoFMX1.Lines := EquationFMX1.Lines;
  end;}
  if Assigned(GraphFrameFMX1.GraphControlFMX1.GraphWindow) then
    GraphFrameFMX1.GraphControlFMX1.GraphWindow.Repaint;
end;

procedure TMainForm.EquationFMX2Change(Sender: TObject);
begin
  if Assigned(GraphFrameFMX2.GraphControlFMX1.GraphWindow) then
    GraphFrameFMX2.GraphControlFMX1.GraphWindow.Repaint;
end;

procedure TMainForm.EquationFMX3Change(Sender: TObject);
begin
  PaintBox1.Repaint;
end;

procedure TMainForm.SaveDialogFMX1CloseEvent(Sender: TObject; ModalResult: TModalResult);
{$IFDEF ANDROID}
var
  AUri  : JNet_Uri;
{$ENDIF}
begin
  {$IFDEF ANDROID}
  if (ModalResult = mrOk) and ((SaveDialogFMX1.FileName <> '') or (SaveDialogFMX1.Uri <> nil)) then
  begin
    if SaveDialogFMX1.Uri <> nil then
      AUri := SaveDialogFMX1.Uri
    else
      AUri := CreateNewFileInFolder(SaveDialogFMX1.FolderUri,
                                    MimeFromExtension(ExtractFileExt(SaveDialogFMX1.FileName)), SaveDialogFMX1.FileName);
    RptFMX1.ExportFile(AUri, SaveDialogFMX1.FileName, False);
  end;
  {$ENDIF}
end;

procedure TMainForm.ExportBtnClick(Sender: TObject);
begin
  if RptFMX1.Status = stMove then
    RptFMX1.Status := stNormal;
  {$IFDEF ANDROID}
  SaveDialogFMX1.FileName := '';
  SaveDialogFMX1.OnCloseEvent := SaveDialogFMX1CloseEvent;
  SaveDialogFMX1.Execute;
  {$ELSE}
  SaveDialog1.FileName := '';
  if SaveDialog1.Execute then
    RptFMX1.ExportFile(SaveDialog1.FileName, False);
  {$ENDIF}
end;

procedure TMainForm.ListBox1Click(Sender: TObject);
var
  I    : Integer;
  AList: TList;
  P    : TPersistent;
begin
  if ListBox1.ItemIndex = -1 then
    Exit;
  AList := TList.Create;
  try
    for I := 0 to ListBox1.Count - 1 do
      if ListBox1.ListItems[I].IsSelected then
        AList.Add(ListBox1.Items.Objects[I]);
    if AList.Count > 1 then
      PropertyTreeViewFMX1.Components := AList
    else
    begin
      P := TPersistent(ListBox1.Items.Objects[ListBox1.ItemIndex]);
      PropertyTreeViewFMX1.Persistent := P;
    end;
  finally
    AList.Free;
  end;
end;

procedure TMainForm.ListBox1DblClick(Sender: TObject);
var
  C : TComponent;
  CE: IComponentEditor;
begin
  if ListBox1.ItemIndex < 0 then
    Exit;
  C := TComponent(ListBox1.Items.Objects[ListBox1.ItemIndex]);
  CE := GetComponentEditor(C, FrmDsgn);
  if Assigned(CE) and (CE.GetVerbCount > 0) then
    CE.Edit;
end;

procedure TMainForm.MainFormFloatMatrixYBKMAfterCalc(Sender: TObject);
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

function Normal(E: TEquationFMX; X, Y: Single; var T, B: TPoint3D): TPoint3D;
var
  NX, NY: TPoint3D;
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
  NX.X := (X2 - X1) / L;
  NX.Y := 0.0;
  NX.Z := (Z2 - Z1) / L;
  T := NX;
  Z1 := E.GetValue([X, Y1]).Real;
  Z2 := E.GetValue([X, Y2]).Real;
  L := Hypot(Y2 - Y1, Z2 - Z1);
  NY.X := 0.0;
  NY.Y := (Y2 - Y1) / L;
  NY.Z := (Z2 - Z1) / L;
  B := NY;
  Result.X := NX.Y * NY.Z - NY.Y * NX.Z;
  Result.Y := NX.Z * NY.X - NY.Z * NX.X;
  Result.Z := NX.X * NY.Y - NY.X * NX.Y;
  L := System.Sqrt(System.Sqr(Result.X) + System.Sqr(Result.Y) + System.Sqr(Result.Z));
  if L > 0.0 then
  begin
    Result.X := Result.X / L;
    Result.Y := Result.Y / L;
    Result.Z := Result.Z / L;
  end;
end;

procedure TMainForm.Graph3DFMX1Render(Sender: TObject; Context: TContext3D);
  procedure RenderEquation(E: TEquationFMX);
  var
    R, C     : Integer;
    NR, NC   : Integer;
    I, NP    : Integer;
    J, NT    : Integer;
    X, Y, Z  : Single;
    T, B     : TPoint3D;
    Vertices : TVertexBuffer;
    Indices  : TIndexBuffer;
  begin
    NP := 10;
    Vertices := TVertexBuffer.Create([TVertexFormat.Vertex, TVertexFormat.Normal,
                                      TVertexFormat.ColorF0, TVertexFormat.TexCoord0,
                                      TVertexFormat.BiNormal, TVertexFormat.Tangent], NP);
    NT := 10;
    Indices := TIndexBuffer.Create(NT, TIndexFormat.UInt16);
    NR := 0;
    NC := 0;
    I := 0;
    X := Graph3DFMX1.x_Min;
    repeat
      Y := Graph3DFMX1.y_Min;
      J := 0;
      repeat
        if I >= NP then
        begin
          Inc(NP, 10);
          Vertices.Length := NP;
        end;
        Z := E.GetValue([X, Y]).Real;
        Vertices.Vertices[I] := Point3D(X, Y, Z);
        Vertices.Normals[I] := Normal(E, X, Y, T, B);
        Vertices.BiNormals[I] := B;
        Vertices.Tangents[I] := T;
        Vertices.TexCoord0[I] := PointF((Z - Graph3DFMX1.z_Min) / (Graph3DFMX1.z_Max - Graph3DFMX1.z_Min), 1);
        Vertices.Color0[I] := TAlphaColors.Aqua;
        Inc(I);
        Inc(J);
        Y := Y + Graph3DFMX1.y_StepLabels;
      until Y - 0.001 > Graph3DFMX1.y_Max;
      if J > NC then
        NC := J;
      Inc(NR);
      X := X + Graph3DFMX1.x_StepLabels;
    until X - 0.001 > Graph3DFMX1.x_Max;
    Vertices.Length := I;
    I := 0;
    for R := 0 to NR - 2 do
      for C := 0 to NC - 2 do
      begin
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := R * NC + C;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := (R + 1) * NC + C;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := (R + 1) * NC + C + 1;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := (R + 1) * NC + C + 1;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := R * NC + C + 1;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := R * NC + C;
        Inc(I);
      end;
    Indices.Length := I;
    Context.DrawPrimitives(TPrimitivesKind.Triangles,
                           Vertices.Buffer,
                           Indices.Buffer,
                           Vertices.GetVertexDeclarations,
                           Vertices.VertexSize, Vertices.Length,
                           Indices.IndexSize, Indices.Length,
                           Graph3DFMX1.Material, Graph3DFMX1.Dummy.Opacity);
    Context.DrawPrimitives(TPrimitivesKind.Lines,
                           Vertices.Buffer,
                           Indices.Buffer,
                           Vertices.GetVertexDeclarations,
                           Vertices.VertexSize, Vertices.Length,
                           Indices.IndexSize, Indices.Length,
                           Graph3DFMX1.Material, Graph3DFMX1.Dummy.Opacity);
    Indices.Free;
    Vertices.Free;
  end;
begin
  if not EquationFMX3.IsError and Eq3Visible.IsChecked then
  begin
    RenderEquation(EquationFMX3);
  end;
  if not EquationFMX4.IsError and Eq4Visible.IsChecked then
  begin
    RenderEquation(EquationFMX4);
  end;
end;

procedure TMainForm.RptGraph3DFMX1Render(Sender: TObject; Context: TContext3D);
var
  RptGraph3DFMX: TRptGraph3DFMX;
  procedure RenderEquation(E: TEquationFMX);
  var
    R, C     : Integer;
    NR, NC   : Integer;
    I, NP    : Integer;
    J, NT    : Integer;
    X, Y, Z  : Single;
    T, B     : TPoint3D;
    Vertices : TVertexBuffer;
    Indices  : TIndexBuffer;
  begin
    NP := 10;
    Vertices := TVertexBuffer.Create([TVertexFormat.Vertex, TVertexFormat.Normal,
                                      TVertexFormat.ColorF0, TVertexFormat.TexCoord0,
                                      TVertexFormat.BiNormal, TVertexFormat.Tangent], NP);
    NT := 10;
    Indices := TIndexBuffer.Create(NT, TIndexFormat.UInt16);
    NR := 0;
    NC := 0;
    I := 0;
    X := RptGraph3DFMX.x_Min;
    repeat
      Y := RptGraph3DFMX.y_Min;
      J := 0;
      repeat
        if I >= NP then
        begin
          Inc(NP, 10);
          Vertices.Length := NP;
        end;
        Z := E.GetValue([X, Y]).Real;
        Vertices.Vertices[I] := Point3D(X, Y, Z);
        Vertices.Normals[I] := Normal(E, X, Y, T, B);
        Vertices.BiNormals[I] := B;
        Vertices.Tangents[I] := T;
        Vertices.TexCoord0[I] := PointF((Z - RptGraph3DFMX.z_Min) / (RptGraph3DFMX.z_Max - RptGraph3DFMX.z_Min), 1);
        Vertices.Color0[I] := TAlphaColors.Aqua;
        Inc(I);
        Inc(J);
        Y := Y + RptGraph3DFMX.y_StepLabels;
      until Y - 0.001 > RptGraph3DFMX.y_Max;
      if J > NC then
        NC := J;
      Inc(NR);
      X := X + RptGraph3DFMX.x_StepLabels;
    until X - 0.001 > RptGraph3DFMX.x_Max;
    Vertices.Length := I;
    I := 0;
    for R := 0 to NR - 2 do
      for C := 0 to NC - 2 do
      begin
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := R * NC + C;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := (R + 1) * NC + C;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := (R + 1) * NC + C + 1;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := (R + 1) * NC + C + 1;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := R * NC + C + 1;
        Inc(I);
        if I >= NT then
        begin
          Inc(NT, 10);
          Indices.Length := NT;
        end;
        Indices[I] := R * NC + C;
        Inc(I);
      end;
    Indices.Length := I;
    Context.DrawPrimitives(TPrimitivesKind.Triangles,
                           Vertices.Buffer,
                           Indices.Buffer,
                           Vertices.GetVertexDeclarations,
                           Vertices.VertexSize, Vertices.Length,
                           Indices.IndexSize, Indices.Length,
                           RptGraph3DFMX.Material, RptGraph3DFMX.Dummy.Opacity);
    Context.DrawPrimitives(TPrimitivesKind.Lines,
                           Vertices.Buffer,
                           Indices.Buffer,
                           Vertices.GetVertexDeclarations,
                           Vertices.VertexSize, Vertices.Length,
                           Indices.IndexSize, Indices.Length,
                           RptGraph3DFMX.Material, RptGraph3DFMX.Dummy.Opacity);
    Indices.Free;
    Vertices.Free;
  end;
begin
  RptGraph3DFMX := TRptGraph3DFMX(Sender);
  if not EquationFMX3.IsError and Eq3Visible.IsChecked then
  begin
    RenderEquation(EquationFMX3);
  end;
  if not EquationFMX4.IsError and Eq4Visible.IsChecked then
  begin
    RenderEquation(EquationFMX4);
  end;
end;

procedure TMainForm.PaintBox1Paint(Sender: TObject; Canvas: TCanvas);
begin
  PaintBox1.Canvas.font.Size := 18;
  Canvas.Stroke.Color := TAlphaColors.Black;
  Canvas.Stroke.Dash := TStrokeDash.Solid;
  Canvas.Fill.Kind := TBrushKind.Solid;
  Canvas.Fill.Color := TAlphaColors.Black;
  if not EquationFMX3.IsError then
    EquationFMX3.Paint(PaintBox1.Canvas, 'a1 = ', 10, 10);
  if not EquationFMX4.IsError then
    EquationFMX4.Paint(PaintBox1.Canvas, 'a2 = ', 10, 100);
end;

procedure TMainForm.PrintBtnClick(Sender: TObject);
begin
  RptFMX1.PrintAll;
end;

procedure TMainForm.SpinBox1Change(Sender: TObject);
begin
  if not FloatMatrixQ1.IsError then
    try
      FloatVectorF1[20] := SpinBox1.Value;
      FloatMatrixQ1.CalcEquation;
    except
    end;
  if not FloatMatrixQ2.IsError then
    try
      FloatVectorF2[10] := SpinBox1.Value;
      FloatMatrixQ2.CalcEquation;
    except
    end;
  GraphFrameFMX3.GraphControlFMX1.GraphWindow.Repaint;
end;

end.
