unit ArrayVisualizer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolsAPI, StdCtrls, ExtCtrls, Menus, ExtDlgs, Buttons,
  IOUtils, GraphLG, Types;

type
  TSingle1D = array of Single;
  TDouble1D = array of Double;
  TExtended1D = array of Extended;
  TSmallInt1D = array of SmallInt;
  TWord1D = array of Word;
  TInteger1D = array of Integer;
  TLongWord1D = array of LongWord;
  TPoint1D = array of TPoint;
  TPointF1D = array of TPointF;
  TPointD = record
    X, Y: Double;
  end;
  TPointD1D = array of TPointD;
  TPointE = record
    X, Y: Extended;
  end;
  TPointE1D = array of TPointE;
  TFPoint = record
    X, Y: Single;
    C   : Integer;
  end;
  TFPoints = array of TFPoint;
  TAvailableState = (asAvailable, asProcRunning, asOutOfScope);
  TArrayTyp = (atNone, atSingle, atDouble, atExtended, atInteger, atLongWord, atPoint, atPointF, atFPoints);
  TArrayViewerFrame = class(TFrame, IOTADebuggerVisualizerExternalViewerUpdater, IOTAThreadNotifier)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    EditBtn: TSpeedButton;
    ZoomBtn: TSpeedButton;
    ZoomHBtn: TSpeedButton;
    ZoomVBtn: TSpeedButton;
    ZoomOutBtn: TSpeedButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Statistic1: TTabSheet;
    Panel3: TPanel;
    Edit2Btn: TSpeedButton;
    Zoom2Btn: TSpeedButton;
    ZoomH2Btn: TSpeedButton;
    ZoomV2Btn: TSpeedButton;
    ZoomOut2Btn: TSpeedButton;
    StaticText3: TStaticText;
    procedure EditBtnClick(Sender: TObject);
    procedure ZoomBtnClick(Sender: TObject);
    procedure ZoomHBtnClick(Sender: TObject);
    procedure ZoomVBtnClick(Sender: TObject);
    procedure ZoomOutBtnClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ZoomOut2BtnClick(Sender: TObject);
    procedure ZoomV2BtnClick(Sender: TObject);
    procedure ZoomH2BtnClick(Sender: TObject);
    procedure Zoom2BtnClick(Sender: TObject);
    procedure Edit2BtnClick(Sender: TObject);
  private
    { Private declarations }
    FOwningForm: TCustomForm;
    FClosedProc: TOTAVisualizerClosedProcedure;
    FExpression: string;
    FNotifierIndex: Integer;
    FCompleted: Boolean;
    FDeferredResult: string;
    FDeferredError: Boolean;
    FAvailableState: TAvailableState;
    GraphControl1: TGraphControlLG;
    GraphControl2: TGraphControlLG;
    SelI, Sel2I: Integer;
    ArrayTyp   : TArrayTyp;
    Count      : Integer;
    SA, SSA    : TSingle1D;
    SP         : TFPoints;
    DA, SDA    : TDouble1D;
    DP         : TPointD1D;
    EA, SEA    : TExtended1D;
    EP         : TPointE1D;
    IA         : TInteger1D;
    LWA        : TLongWord1D;
    PA         : TPoint1D;
    PFA        : TPointF1D;
    FPA        : TFPoints;
    FromKm     : Single;
    ToKm       : Single;
    MinY, MaxY : Single;
    MeanX, MeanY, A, B: Double;
    Median     : Double;
    IsRegress  : Boolean;
    IsMeanY    : Boolean;
    procedure GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
    procedure GraphControl1ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
    procedure GraphControl1GraphMouseLeave(Sender: TObject);
    procedure GraphControl1CursorPos(Sender: TObject; X, Y: Double);
    procedure GraphControl1MouseDown(Sender: TObject; X, Y: Integer);
    procedure GraphControl2PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
    procedure GraphControl2ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
    procedure GraphControl2GraphMouseLeave(Sender: TObject);
    procedure GraphControl2CursorPos(Sender: TObject; X, Y: Double);
    procedure GraphControl2MouseDown(Sender: TObject; X, Y: Integer);
    function Evaluate(DebugSvcs: IOTADebuggerServices; CurProcess: IOTAProcess;
      CurThread: IOTAThread; Expression: string): string;
    procedure DisableArray(const Reason: string);
    procedure UpdateArray(const Expression, TypeName, EvalResult: string);
  protected
    { Protected declarations }
    procedure SetParent(AParent: TWinControl); override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    // IOTADebuggerVisualizerExternalViewerUpdater
    procedure CloseVisualizer;
    procedure MarkUnavailable(Reason: TOTAVisualizerUnavailableReason);
    procedure RefreshVisualizer(const Expression, TypeName, EvalResult: string);
    procedure SetClosedCallback(ClosedProc: TOTAVisualizerClosedProcedure);
    procedure SetForm(AForm: TCustomForm);
    // IOTAThreadNotifier
    procedure AfterSave;
    procedure BeforeSave;
    procedure Destroyed;
    procedure Modified;
    procedure ThreadNotify(Reason: TOTANotifyReason);
    procedure EvaluateComplete(const ExprStr, ResultStr: string; CanModify: Boolean;
      ResultAddress, ResultSize: LongWord; ReturnCode: Integer);
    procedure ModifyComplete(const ExprStr, ResultStr: string;
      ReturnCode: Integer);
  end;

procedure Register;

implementation

{$R *.dfm}
{$R Cursors.res}

uses
  DesignIntf, Actnlist, ImgList, IniFiles, Math;

resourcestring
  sArrayVisualizerName = 'Array Visualizer for Delphi';
  sArrayVisualizerDescription = 'Displays supported Arrays (TInteger1D, TSingle1D, TDouble1D, TExtended1D, TPoint1D, TPointF1D)';
  sIdentifier = 'ArrayVisualizer';
  sMenuText = 'Show Array';
  sFormCaption = 'Array Visualizer for %s';
  sProcessNotAccessible = 'Process not accessible';
  sOutOfScope = 'Out of scope';
  sUnsupportedType = 'Unsupported type (%s)';
  sNotAvailable = 'Not available';
  sIsNull = 'Nil';

type
  IFrameFormHelper = interface
    ['{0FD4A98F-CE6B-422A-BF13-14E59707D3B2}']
    function GetForm: TCustomForm;
    function GetFrame: TCustomFrame;
    procedure SetForm(Form: TCustomForm);
    procedure SetFrame(Form: TCustomFrame);
  end;

  TArrayVisualizerForm = class(TInterfacedObject, INTACustomDockableForm, IFrameFormHelper)
  private
    FMyFrame   : TArrayViewerFrame;
    FMyForm    : TCustomForm;
    FExpression: string;
  public
    constructor Create(const Expression: string);
    { INTACustomDockableForm }
    function GetCaption: string;
    function GetFrameClass: TCustomFrameClass;
    procedure FrameCreated(AFrame: TCustomFrame);
    function GetIdentifier: string;
    function GetMenuActionList: TCustomActionList;
    function GetMenuImageList: TCustomImageList;
    procedure CustomizePopupMenu(PopupMenu: TPopupMenu);
    function GetToolbarActionList: TCustomActionList;
    function GetToolbarImageList: TCustomImageList;
    procedure CustomizeToolBar(ToolBar: TToolBar);
    procedure LoadWindowState(Desktop: TCustomIniFile; const Section: string);
    procedure SaveWindowState(Desktop: TCustomIniFile; const Section: string;
      IsProject: Boolean);
    function GetEditState: TEditState;
    function EditAction(Action: TEditAction): Boolean;
    { IFrameFormHelper }
    function GetForm: TCustomForm;
    function GetFrame: TCustomFrame;
    procedure SetForm(Form: TCustomForm);
    procedure SetFrame(Frame: TCustomFrame);
  end;

  TDebuggerArrayVisualizer = class(TInterfacedObject, IOTADebuggerVisualizer,
    IOTADebuggerVisualizerExternalViewer)
  public
    function GetSupportedTypeCount: Integer;
    procedure GetSupportedType(Index: Integer; var TypeName: string;
      var AllDescendants: Boolean);
    function GetVisualizerIdentifier: string;
    function GetVisualizerName: string;
    function GetVisualizerDescription: string;
    function GetMenuText: string;
    function Show(const Expression, TypeName, EvalResult: string;
      Suggestedleft, SuggestedTop: Integer): IOTADebuggerVisualizerExternalViewerUpdater;
  end;

{ TDebuggerArrayVisualizer }
function TDebuggerArrayVisualizer.GetMenuText: string;
begin
  Result := sMenuText;
end;

procedure TDebuggerArrayVisualizer.GetSupportedType(Index: Integer;
  var TypeName: string; var AllDescendants: Boolean);
begin
  if Index = 0 then
  begin
    TypeName := 'TSingle1D';
    AllDescendants := True;
  end
  else if Index = 1 then
  begin
    TypeName := 'TDouble1D';
    AllDescendants := True;
  end
  else if Index = 2 then
  begin
    TypeName := 'TExtended1D';
    AllDescendants := True;
  end
  else if Index = 3 then
  begin
    TypeName := 'TInteger1D';
    AllDescendants := True;
  end
  else if Index = 4 then
  begin
    TypeName := 'TLongWord1D';
    AllDescendants := True;
  end
  else if Index = 5 then
  begin
    TypeName := 'TSmallInt1D';
    AllDescendants := True;
  end
  else if Index = 6 then
  begin
    TypeName := 'TWord1D';
    AllDescendants := True;
  end
  else if Index = 7 then
  begin
    TypeName := 'TPoint1D';
    AllDescendants := True;
  end
  else if Index = 8 then
  begin
    TypeName := 'TPointF1D';
    AllDescendants := True;
  end
  else if Index = 9 then
  begin
    TypeName := 'TFPArray';
    AllDescendants := True;
  end
  else if Index = 10 then
  begin
    TypeName := 'TFPoints';
    AllDescendants := True;
  end
end;

function TDebuggerArrayVisualizer.GetSupportedTypeCount: Integer;
begin
  Result := 11;
end;

function TDebuggerArrayVisualizer.GetVisualizerDescription: string;
begin
  Result := sArrayVisualizerDescription;
end;

function TDebuggerArrayVisualizer.GetVisualizerIdentifier: string;
begin
  Result := ClassName;
end;

function TDebuggerArrayVisualizer.GetVisualizerName: string;
begin
  Result := sArrayVisualizerName;
end;

function TDebuggerArrayVisualizer.Show(const Expression, TypeName,
  EvalResult: string; Suggestedleft, SuggestedTop: Integer)
  : IOTADebuggerVisualizerExternalViewerUpdater;
var
  AForm: TCustomForm;
  AFrame: TArrayViewerFrame;
  VisDockForm: INTACustomDockableForm;
begin
  VisDockForm := TArrayVisualizerForm.Create(Expression)
    as INTACustomDockableForm;
  AForm := (BorlandIDEServices as INTAServices).CreateDockableForm(VisDockForm);
  AForm.Left := Suggestedleft;
  AForm.Top := SuggestedTop;
  (VisDockForm as IFrameFormHelper).SetForm(AForm);
  AFrame := (VisDockForm as IFrameFormHelper).GetFrame as TArrayViewerFrame;
  AFrame.UpdateArray(Expression, TypeName, EvalResult);
  Result := AFrame as IOTADebuggerVisualizerExternalViewerUpdater;
end;

function RegressFP(Pnt: TPointF1D; var MeanX, MeanY, A, B: Double): Boolean;
var
  I, L, N: Integer;
  Sx, Sx2: Double;
  Sy, Sy2: Double;
  Sxy, M : Double;
begin
  Result := False;
  MeanX := 0.0;
  MeanY := 0.0;
  A := 0.0;
  B := 0.0;
  L := Length(Pnt);
  if L = 0 then
    Exit;
  if L = 1 then
  begin
    MeanX := Pnt[0].X;
    MeanY := Pnt[0].Y;
    A := Pnt[0].Y;
    Result := True;
    Exit;
  end;
  N := 0;
  Sx := 0.0;
  Sx2 := 0.0;
  Sy := 0.0;
  Sy2 := 0.0;
  Sxy := 0.0;
  for I := 0 to L - 1 do
  begin
    Inc(N);
    Sx := Sx + Pnt[I].X;
    Sx2 := Sx2 + Sqr(Pnt[I].X);
    Sy := Sy + Pnt[I].Y;
    Sy2 := Sy2 + Sqr(Pnt[I].Y);
    Sxy := Sxy + Pnt[I].X * Pnt[I].Y;
  end;
  M := N * Sx2 - Sqr(Sx);
  if Abs(M) > 0.0 then
  begin
    B := (N * Sxy - Sx * Sy) / M;
    A := (Sy - Sx * B) / N;
  end;
  MeanX := Sx / N;
  MeanY := Sy / N;
  Result := True;
end;

function RegressFPA(Pnt: TFPoints; var MeanX, MeanY, A, B: Double): Boolean;
var
  I, L, N: Integer;
  Sx, Sx2: Double;
  Sy, Sy2: Double;
  Sxy, M : Double;
begin
  Result := False;
  MeanX := 0.0;
  MeanY := 0.0;
  A := 0.0;
  B := 0.0;
  L := Length(Pnt);
  if L = 0 then
    Exit;
  if L = 1 then
  begin
    MeanX := Pnt[0].X;
    MeanY := Pnt[0].Y;
    A := Pnt[0].Y;
    Result := True;
    Exit;
  end;
  N := 0;
  Sx := 0.0;
  Sx2 := 0.0;
  Sy := 0.0;
  Sy2 := 0.0;
  Sxy := 0.0;
  for I := 0 to L - 1 do
  begin
    Inc(N);
    Sx := Sx + Pnt[I].X;
    Sx2 := Sx2 + Sqr(Pnt[I].X);
    Sy := Sy + Pnt[I].Y;
    Sy2 := Sy2 + Sqr(Pnt[I].Y);
    Sxy := Sxy + Pnt[I].X * Pnt[I].Y;
  end;
  M := N * Sx2 - Sqr(Sx);
  if Abs(M) > 0.0 then
  begin
    B := (N * Sxy - Sx * Sy) / M;
    A := (Sy - Sx * B) / N;
  end;
  MeanX := Sx / N;
  MeanY := Sy / N;
  Result := True;
end;

function RegressP(Pnt: TPoint1D; var MeanX, MeanY, A, B: Double): Boolean;
var
  I, L, N: Integer;
  Sx, Sx2: Double;
  Sy, Sy2: Double;
  Sxy, M : Double;
begin
  Result := False;
  MeanX := 0.0;
  MeanY := 0.0;
  A := 0.0;
  B := 0.0;
  L := Length(Pnt);
  if L = 0 then
    Exit;
  if L = 1 then
  begin
    MeanX := Pnt[0].X;
    MeanY := Pnt[0].Y;
    A := Pnt[0].Y;
    Result := True;
    Exit;
  end;
  N := 0;
  Sx := 0.0;
  Sx2 := 0.0;
  Sy := 0.0;
  Sy2 := 0.0;
  Sxy := 0.0;
  for I := 0 to L - 1 do
  begin
    Inc(N);
    Sx := Sx + Pnt[I].X;
    Sx2 := Sx2 + Sqr(Pnt[I].X);
    Sy := Sy + Pnt[I].Y;
    Sy2 := Sy2 + Sqr(Pnt[I].Y);
    Sxy := Sxy + Pnt[I].X * Pnt[I].Y;
  end;
  M := N * Sx2 - Sqr(Sx);
  if Abs(M) > 0.0 then
  begin
    B := (N * Sxy - Sx * Sy) / M;
    A := (Sy - Sx * B) / N;
  end;
  MeanX := Sx / N;
  MeanY := Sy / N;
  Result := True;
end;

procedure QuickSortS1D(A: TSingle1D; L, R: Integer);
var
  I, J: Integer;
  P, T: Single;
begin
  repeat
    I := L;
    J := R;
    P := A[(L + R) shr 1];
    repeat
      while A[I] < P do
        Inc(I);
      while A[J] > P do
        Dec(J);
      if I <= J then
      begin
        T := A[I];
        A[I] := A[J];
        A[J] := T;
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then
      QuickSortS1D(A, L, J);
    L := I;
  until I >= R;
end;

procedure QuickSortD1D(A: TDouble1D; L, R: Integer);
var
  I, J: Integer;
  P, T: Double;
begin
  repeat
    I := L;
    J := R;
    P := A[(L + R) shr 1];
    repeat
      while A[I] < P do
        Inc(I);
      while A[J] > P do
        Dec(J);
      if I <= J then
      begin
        T := A[I];
        A[I] := A[J];
        A[J] := T;
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then
      QuickSortD1D(A, L, J);
    L := I;
  until I >= R;
end;

procedure QuickSortE1D(A: TExtended1D; L, R: Integer);
var
  I, J: Integer;
  P, T: Extended;
begin
  repeat
    I := L;
    J := R;
    P := A[(L + R) shr 1];
    repeat
      while A[I] < P do
        Inc(I);
      while A[J] > P do
        Dec(J);
      if I <= J then
      begin
        T := A[I];
        A[I] := A[J];
        A[J] := T;
        Inc(I);
        Dec(J);
      end;
    until I > J;
    if L < J then
      QuickSortE1D(A, L, J);
    L := I;
  until I >= R;
end;

function MedianS1D(A: TSingle1D): Double;
var
  SA: TSingle1D;
  L : Integer;
begin
  Result := 0.0;
  L := Length(A);
  if L = 0 then
    Exit
  else if L = 1 then
  begin
    Result := A[0];
    Exit;
  end;
  SA := Copy(A);
  QuickSortS1D(SA, 0, L - 1);
  if L mod 2 <> 0 then
    Result := SA[L div 2]
  else
    Result := (SA[L div 2 - 1] + SA[L div 2]) / 2.0;
  SA := nil;
end;

function MedianD1D(A: TDouble1D): Double;
var
  SA: TDouble1D;
  L : Integer;
begin
  Result := 0.0;
  L := Length(A);
  if L = 0 then
    Exit
  else if L = 1 then
  begin
    Result := A[0];
    Exit;
  end;
  SA := Copy(A);
  QuickSortD1D(SA, 0, L - 1);
  if L mod 2 <> 0 then
    Result := SA[L div 2]
  else
    Result := (SA[L div 2 - 1] + SA[L div 2]) / 2.0;
  SA := nil;
end;

function MedianE1D(A: TExtended1D): Double;
var
  SA: TExtended1D;
  L : Integer;
begin
  Result := 0.0;
  L := Length(A);
  if L = 0 then
    Exit
  else if L = 1 then
  begin
    Result := A[0];
    Exit;
  end;
  SA := Copy(A);
  QuickSortE1D(SA, 0, L - 1);
  if L mod 2 <> 0 then
    Result := SA[L div 2]
  else
    Result := (SA[L div 2 - 1] + SA[L div 2]) / 2.0;
  SA := nil;
end;

{ TArrayViewerFrame }
constructor TArrayViewerFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Screen.Cursors[crZoom] := LoadCursor(HInstance, 'IDC_LUPA');
  Screen.Cursors[crCross] := LoadCursor(HInstance, 'IDC_CROSS');
  ArrayTyp := atNone;
  Count := 0;
  SA := nil;
  SSA := nil;
  SP := nil;
  DA := nil;
  SDA := nil;
  DP := nil;
  EA := nil;
  SEA := nil;
  EP := nil;
  IA := nil;
  LWA := nil;
  PA := nil;
  PFA := nil;
  FPA := nil;
  SelI := -1;
  Sel2I := -1;
  GraphControl1 := TGraphControlLG.Create(Self);
  GraphControl1.Parent := TabSheet1;
  GraphControl1.Align := alClient;
  GraphControl1.SetXParams(0.0, 100.0, 5.0, 10.0);
  GraphControl1.SetYParams(0.0, 100.0, 5.0, 10.0);
  GraphControl1.Style := [gcTicks, gcScroll, gcGrid];
  GraphControl1.GridColor := clGray;
  GraphControl1.Font.Size := 10;
  GraphControl1.MaXXR := 1.0;
  GraphControl1.Tracking := True;
  GraphControl1.OnPaintGraph := GraphControl1PaintGraph;
  GraphControl1.OnZoomChange := GraphControl1ZoomChange;
  GraphControl1.OnGraphMouseLeave := GraphControl1GraphMouseLeave;
  GraphControl1.OnCursorPos := GraphControl1CursorPos;
  GraphControl1.OnMouseDown := GraphControl1MouseDown;
  GraphControl2 := TGraphControlLG.Create(Self);
  GraphControl2.Parent := Statistic1;
  GraphControl2.Align := alClient;
  GraphControl2.SetXParams(0.0, 100.0, 5.0, 10.0);
  GraphControl2.SetYParams(0.0, 100.0, 5.0, 10.0);
  GraphControl2.Parameters.Y2_Multiplier := 0.1;
  GraphControl2.Y2_Digits := 1;
  GraphControl2.Style := [gcTicks, gcScroll, gcGrid, gcY2Ticks];
  GraphControl2.GridColor := clGray;
  GraphControl2.Font.Size := 10;
  GraphControl2.Tracking := True;
  GraphControl2.OnPaintGraph := GraphControl2PaintGraph;
  GraphControl2.OnZoomChange := GraphControl2ZoomChange;
  GraphControl2.OnGraphMouseLeave := GraphControl2GraphMouseLeave;
  GraphControl2.OnCursorPos := GraphControl2CursorPos;
  GraphControl2.OnMouseDown := GraphControl2MouseDown;
  PageControl1.ActivePageIndex := 0;
end;

destructor TArrayViewerFrame.Destroy;
begin
  SA := nil;
  SSA := nil;
  SP := nil;
  DA := nil;
  SDA := nil;
  DP := nil;
  EA := nil;
  SEA := nil;
  EP := nil;
  IA := nil;
  LWA := nil;
  PA := nil;
  PFA := nil;
  FPA := nil;
  GraphControl1.Free;
  GraphControl2.Free;
  if Screen.Cursors[crCross] <> 0 then
  begin
    DeleteObject(Screen.Cursors[crCross]);
    Screen.Cursors[crCross] := 0;
  end;
  if Screen.Cursors[crZoom] <> 0 then
  begin
    DeleteObject(Screen.Cursors[crZoom]);
    Screen.Cursors[crZoom] := 0;
  end;
  inherited Destroy;
end;

procedure TArrayViewerFrame.DisableArray(const Reason: string);
begin
  ArrayTyp := atNone;
  Count := 0;
  SA := nil;
  DA := nil;
  EA := nil;
  IA := nil;
  LWA := nil;
  PA := nil;
  PFA := nil;
  FPA := nil;
  SelI := -1;
  Sel2I := -1;
end;

procedure TArrayViewerFrame.GraphControl1CursorPos(Sender: TObject; X, Y: Double);
begin
  if (ArrayTyp = atPoint) or (ArrayTyp = atPointF) or (ArrayTyp = atFPoints) then
    StaticText1.Caption := 'X: ' + FloatToStr(Round(1000.0 * X) / 1000.0) +
                           '   Y: ' + FloatToStr(Round(1000.0 * Y) / 1000.0)
  else
    StaticText1.Caption := 'I: ' + IntToStr(Round(X)) +
                           '   V: ' + FloatToStr(Round(1000.0 * Y) / 1000.0);
end;

procedure TArrayViewerFrame.GraphControl2CursorPos(Sender: TObject; X, Y: Double);
begin
  StaticText3.Caption := 'V: ' + FloatToStr(Round(1000.0 * X) / 1000.0) +
                         '   %: ' + FloatToStr(Round(1000.0 * Y) / 1000.0);
end;

procedure TArrayViewerFrame.GraphControl1GraphMouseLeave(Sender: TObject);
begin
  StaticText1.Caption := '';
end;

procedure TArrayViewerFrame.GraphControl2GraphMouseLeave(Sender: TObject);
begin
  StaticText3.Caption := '';
end;

procedure TArrayViewerFrame.GraphControl1MouseDown(Sender: TObject; X, Y: Integer);
var
  I, L   : Integer;
  P      : TPoint;
  PF     : TPointF;
  D, MinD: Double;
begin
  if Count = 0 then
  begin
    SelI := -1;
    Exit;
  end;
  if GraphControl1.ZoomIn then
    Exit;
  case ArrayTyp of
    atSingle:
    begin
      L := Length(SA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      SelI := Round((X + GraphControl1.PosX) * GraphControl1.MX);
      if SelI < 0 then
        SelI := 0;
      if SelI >= L - 1 then
        SelI := L - 1;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   V: ' + FloatToStr(Round(1000.0 * SA[SelI]) / 1000.0);
      GraphControl1.GraphWindow.Refresh;
    end;
    atDouble:
    begin
      L := Length(DA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      SelI := Round((X + GraphControl1.PosX) * GraphControl1.MX);
      if SelI < 0 then
        SelI := 0;
      if SelI >= L - 1 then
        SelI := L - 1;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   V: ' + FloatToStr(Round(1000.0 * DA[SelI]) / 1000.0);
      GraphControl1.GraphWindow.Refresh;
    end;
    atExtended:
    begin
      L := Length(EA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      SelI := Round((X + GraphControl1.PosX) * GraphControl1.MX);
      if SelI < 0 then
        SelI := 0;
      if SelI >= L - 1 then
        SelI := L - 1;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   V: ' + FloatToStr(Round(1000.0 * EA[SelI]) / 1000.0);
      GraphControl1.GraphWindow.Refresh;
    end;
    atInteger:
    begin
      L := Length(IA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      SelI := Round((X + GraphControl1.PosX) * GraphControl1.MX);
      if SelI < 0 then
        SelI := 0;
      if SelI >= L - 1 then
        SelI := L - 1;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   V: ' + IntToStr(IA[SelI]);
      GraphControl1.GraphWindow.Refresh;
    end;
    atLongWord:
    begin
      L := Length(LWA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      SelI := Round((X + GraphControl1.PosX) * GraphControl1.MX);
      if SelI < 0 then
        SelI := 0;
      if SelI >= L - 1 then
        SelI := L - 1;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   V: ' + IntToStr(LWA[SelI]);
      GraphControl1.GraphWindow.Refresh;
    end;
    atPoint:
    begin
      L := Length(PA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      P.X := Round((GraphControl1.PosX + X) * GraphControl1.MX);
      P.Y := Round((GraphControl1.PosY + GraphControl1.GraphWindow.ClientHeight - Y) * GraphControl1.MY);
      D := P.Distance(PA[0]);
      MinD := D;
      SelI := 0;
      for I := 1 to L - 1 do
      begin
        D := P.Distance(PA[I]);
        if D < MinD then
        begin
          MinD := D;
          SelI := I;
        end;
      end;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   X: ' + IntToStr(PA[SelI].X) +
                             '   Y: ' + IntToStr(PA[SelI].Y);
      GraphControl1.GraphWindow.Refresh;
    end;
    atPointF:
    begin
      L := Length(PFA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      PF.X := (GraphControl1.PosX + X) * GraphControl1.MX;
      PF.Y := (GraphControl1.PosY + GraphControl1.GraphWindow.ClientHeight - Y) * GraphControl1.MY;
      D := PF.Distance(PFA[0]);
      MinD := D;
      SelI := 0;
      for I := 1 to L - 1 do
      begin
        D := PF.Distance(PFA[I]);
        if D < MinD then
        begin
          MinD := D;
          SelI := I;
        end;
      end;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   X: ' + FloatToStr(PFA[SelI].X) +
                             '   Y: ' + FloatToStr(PFA[SelI].Y);
      GraphControl1.GraphWindow.Refresh;
    end;
    atFPoints:
    begin
      L := Length(FPA);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      PF.X := (GraphControl1.PosX + X) * GraphControl1.MX;
      PF.Y := (GraphControl1.PosY + GraphControl1.GraphWindow.ClientHeight - Y) * GraphControl1.MY;
      D := PF.Distance(PointF(FPA[0].X, FPA[0].Y));
      MinD := D;
      SelI := 0;
      for I := 1 to L - 1 do
      begin
        D := PF.Distance(PointF(FPA[I].X, FPA[I].Y));
        if D < MinD then
        begin
          MinD := D;
          SelI := I;
        end;
      end;
      StaticText2.Caption := 'I: ' + IntToStr(SelI) +
                             '   X: ' + FloatToStr(FPA[SelI].X) +
                             '   Y: ' + FloatToStr(FPA[SelI].Y) +
                             '   C: ' + IntToStr(FPA[SelI].C);
      GraphControl1.GraphWindow.Refresh;
    end;
  end;
end;

procedure TArrayViewerFrame.GraphControl2MouseDown(Sender: TObject; X, Y: Integer);
var
  I, L   : Integer;
  Xr     : Double;
  D, MinD: Double;
begin
  if Count = 0 then
  begin
    Sel2I := -1;
    Exit;
  end;
  if GraphControl2.ZoomIn then
    Exit;
  case ArrayTyp of
    atSingle:
    begin
      L := Length(SP);
      if L = 0 then
      begin
        SelI := -1;
        Exit;
      end;
      Xr := (GraphControl2.PosX + X) * GraphControl2.MX;
      D := Abs(Xr - SP[0].X);
      MinD := D;
      Sel2I := 0;
      for I := 1 to L - 1 do
      begin
        D := Abs(Xr - SP[I].X);
        if D < MinD then
        begin
          MinD := D;
          Sel2I := I;
        end;
      end;
      StaticText2.Caption := 'I: ' + IntToStr(Sel2I) +
                             '   V: ' + FloatToStr(Round(1000.0 * SP[Sel2I].X) / 1000.0) +
                             '   %: ' + FloatToStr(Round(1000.0 * SP[Sel2I].Y) / 1000.0);
      GraphControl2.GraphWindow.Refresh;
    end;
    atDouble:
    begin
      L := Length(DP);
      if L = 0 then
      begin
        Sel2I := -1;
        Exit;
      end;
      Xr := (GraphControl2.PosX + X) * GraphControl2.MX;
      D := Abs(Xr - DP[0].X);
      MinD := D;
      Sel2I := 0;
      for I := 1 to L - 1 do
      begin
        D := Abs(Xr - DP[I].X);
        if D < MinD then
        begin
          MinD := D;
          Sel2I := I;
        end;
      end;
      StaticText2.Caption := 'I: ' + IntToStr(Sel2I) +
                             '   V: ' + FloatToStr(Round(1000.0 * DP[Sel2I].X) / 1000.0) +
                             '   %: ' + FloatToStr(Round(1000.0 * DP[Sel2I].Y) / 1000.0);
      GraphControl2.GraphWindow.Refresh;
    end;
    atExtended:
    begin
      L := Length(EP);
      if L = 0 then
      begin
        Sel2I := -1;
        Exit;
      end;
      Xr := (GraphControl2.PosX + X) * GraphControl2.MX;
      D := Abs(Xr - EP[0].X);
      MinD := D;
      Sel2I := 0;
      for I := 1 to L - 1 do
      begin
        D := Abs(Xr - EP[I].X);
        if D < MinD then
        begin
          MinD := D;
          Sel2I := I;
        end;
      end;
      StaticText2.Caption := 'I: ' + IntToStr(Sel2I) +
                             '   V: ' + FloatToStr(Round(1000.0 * EP[Sel2I].X) / 1000.0) +
                             '   %: ' + FloatToStr(Round(1000.0 * EP[Sel2I].Y) / 1000.0);
      GraphControl2.GraphWindow.Refresh;
    end;
  end;
end;

procedure TArrayViewerFrame.GraphControl1PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX,
  MY: Double);
var
  I, L   : Integer;
  X, Y   : Integer;
  XL, XP : Integer;
  IsFirst: Boolean;
begin
  if Count = 0 then
    Exit;
  Canvas.Pen.Width := 0;
  Canvas.Pen.Color := clBlack;
  Canvas.MoveTo(GraphControl1.GraphWindow.ClientRect.Left, PosY);
  Canvas.LineTo(GraphControl1.GraphWindow.ClientRect.Right, PosY);
  Canvas.MoveTo(PosX, GraphControl1.GraphWindow.ClientRect.Top);
  Canvas.LineTo(PosX, GraphControl1.GraphWindow.ClientRect.Bottom);
  XL := -GraphControl1.GraphWindow.ClientRect.Width div 8;
  XP := GraphControl1.GraphWindow.ClientRect.Width +
        GraphControl1.GraphWindow.ClientRect.Width div 8;
  Canvas.Pen.Color := clYellow;
  case ArrayTyp of
    atSingle:
    begin
      L := Length(SA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(I / MX);
          if X < XL then
            Continue;
          if X > XP then
            Break;
          Y := PosY - Round(SA[I] / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(SelI / MX);
          if (X >= XL) and (X <= XP) then
          begin
            Y := PosY - Round(SA[SelI] / MY);
            Canvas.MoveTo(X, GraphControl1.GraphWindow.ClientRect.Top);
            Canvas.LineTo(X, GraphControl1.GraphWindow.ClientRect.Bottom);
            Canvas.MoveTo(X - 10, Y);
            Canvas.LineTo(X + 10, Y);
          end;
        end;
        if IsMeanY then
        begin
          Canvas.Pen.Color := clMaroon;
          X := PosX + Round(GraphControl1.MinXR / MX);
          Y := PosY - Round(MeanY / MY);
          Canvas.MoveTo(X, Y);
          X := PosX + Round(GraphControl1.MaxXR / MX);
          Canvas.LineTo(X, Y);
        end;
      end;
    end;
    atDouble:
    begin
      L := Length(DA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(I / MX);
          if X < XL then
            Continue;
          if X > XP then
            Break;
          Y := PosY - Round(DA[I] / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(SelI / MX);
          if (X >= XL) and (X <= XP) then
          begin
            Y := PosY - Round(DA[SelI] / MY);
            Canvas.MoveTo(X, GraphControl1.GraphWindow.ClientRect.Top);
            Canvas.LineTo(X, GraphControl1.GraphWindow.ClientRect.Bottom);
            Canvas.MoveTo(X - 10, Y);
            Canvas.LineTo(X + 10, Y);
          end;
        end;
        if IsMeanY then
        begin
          Canvas.Pen.Color := clMaroon;
          X := PosX + Round(GraphControl1.MinXR / MX);
          Y := PosY - Round(MeanY / MY);
          Canvas.MoveTo(X, Y);
          X := PosX + Round(GraphControl1.MaxXR / MX);
          Canvas.LineTo(X, Y);
        end;
      end;
    end;
    atExtended:
    begin
      L := Length(EA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(I / MX);
          if X < XL then
            Continue;
          if X > XP then
            Break;
          Y := PosY - Round(EA[I] / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(SelI / MX);
          if (X >= XL) and (X <= XP) then
          begin
            Y := PosY - Round(EA[SelI] / MY);
            Canvas.MoveTo(X, GraphControl1.GraphWindow.ClientRect.Top);
            Canvas.LineTo(X, GraphControl1.GraphWindow.ClientRect.Bottom);
            Canvas.MoveTo(X - 10, Y);
            Canvas.LineTo(X + 10, Y);
          end;
        end;
        if IsMeanY then
        begin
          Canvas.Pen.Color := clMaroon;
          X := PosX + Round(GraphControl1.MinXR / MX);
          Y := PosY - Round(MeanY / MY);
          Canvas.MoveTo(X, Y);
          X := PosX + Round(GraphControl1.MaxXR / MX);
          Canvas.LineTo(X, Y);
        end;
      end;
    end;
    atInteger:
    begin
      L := Length(IA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(I / MX);
          if X < XL then
            Continue;
          if X > XP then
            Break;
          Y := PosY - Round(IA[I] / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(SelI / MX);
          if (X >= XL) and (X <= XP) then
          begin
            Y := PosY - Round(IA[SelI] / MY);
            Canvas.MoveTo(X, GraphControl1.GraphWindow.ClientRect.Top);
            Canvas.LineTo(X, GraphControl1.GraphWindow.ClientRect.Bottom);
            Canvas.MoveTo(X - 10, Y);
            Canvas.LineTo(X + 10, Y);
          end;
        end;
      end;
    end;
    atLongWord:
    begin
      L := Length(LWA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(I / MX);
          if X < XL then
            Continue;
          if X > XP then
            Break;
          Y := PosY - Round(LWA[I] / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(SelI / MX);
          if (X >= XL) and (X <= XP) then
          begin
            Y := PosY - Round(LWA[SelI] / MY);
            Canvas.MoveTo(X, GraphControl1.GraphWindow.ClientRect.Top);
            Canvas.LineTo(X, GraphControl1.GraphWindow.ClientRect.Bottom);
            Canvas.MoveTo(X - 10, Y);
            Canvas.LineTo(X + 10, Y);
          end;
        end;
      end;
    end;
    atPoint:
    begin
      L := Length(PA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(PA[I].X / MX);
          Y := PosY - Round(PA[I].Y / MY);
          if CheckBox1.Checked then
            Canvas.Ellipse(X - 1, Y - 1, X + 1, Y + 1)
          else if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(PA[SelI].X / MX);
          Y := PosY - Round(PA[SelI].Y / MY);
          Canvas.MoveTo(X, Y - 10);
          Canvas.LineTo(X, Y + 10);
          Canvas.MoveTo(X - 10, Y);
          Canvas.LineTo(X + 10, Y);
        end;
      end;
      if IsRegress then
      begin
        Canvas.Pen.Color := clMaroon;
        X := PosX + Round(MeanX / MX);
        Y := PosY - Round(GraphControl1.MinYR / MY);
        Canvas.MoveTo(X, Y);
        Y := PosY - Round(GraphControl1.MaxYR / MY);
        Canvas.LineTo(X, Y);
        X := PosX + Round(GraphControl1.MinXR / MX);
        Y := PosY - Round(MeanY / MY);
        Canvas.MoveTo(X, Y);
        X := PosX + Round(GraphControl1.MaxXR / MX);
        Canvas.LineTo(X, Y);
        Canvas.Pen.Color := clRed;
        X := PosX + Round(GraphControl1.MinXR / MX);
        Y := PosY - Round((A + B * GraphControl1.MinXR) / MY);
        Canvas.MoveTo(X, Y);
        X := PosX + Round(GraphControl1.MaxXR / MX);
        Y := PosY - Round((A + B * GraphControl1.MaxXR) / MY);
        Canvas.LineTo(X, Y);
      end;
    end;
    atPointF:
    begin
      L := Length(PFA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(PFA[I].X / MX);
          Y := PosY - Round(PFA[I].Y / MY);
          if CheckBox1.Checked then
            Canvas.Ellipse(X - 1, Y - 1, X + 1, Y + 1)
          else if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(PFA[SelI].X / MX);
          Y := PosY - Round(PFA[SelI].Y / MY);
          Canvas.MoveTo(X, Y - 10);
          Canvas.LineTo(X, Y + 10);
          Canvas.MoveTo(X - 10, Y);
          Canvas.LineTo(X + 10, Y);
        end;
      end;
      if IsRegress then
      begin
        Canvas.Pen.Color := clMaroon;
        X := PosX + Round(MeanX / MX);
        Y := PosY - Round(GraphControl1.MinYR / MY);
        Canvas.MoveTo(X, Y);
        Y := PosY - Round(GraphControl1.MaxYR / MY);
        Canvas.LineTo(X, Y);
        X := PosX + Round(GraphControl1.MinXR / MX);
        Y := PosY - Round(MeanY / MY);
        Canvas.MoveTo(X, Y);
        X := PosX + Round(GraphControl1.MaxXR / MX);
        Canvas.LineTo(X, Y);
        Canvas.Pen.Color := clRed;
        X := PosX + Round(GraphControl1.MinXR / MX);
        Y := PosY - Round((A + B * GraphControl1.MinXR) / MY);
        Canvas.MoveTo(X, Y);
        X := PosX + Round(GraphControl1.MaxXR / MX);
        Y := PosY - Round((A + B * GraphControl1.MaxXR) / MY);
        Canvas.LineTo(X, Y);
      end;
    end;
    atFPoints:
    begin
      L := Length(FPA);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(FPA[I].X / MX);
          Y := PosY - Round(FPA[I].Y / MY);
          if FPA[I].C mod 2 = 0 then
            Canvas.Pen.Color := clYellow
          else
            Canvas.Pen.Color := clAqua;
          if CheckBox1.Checked then
            Canvas.Ellipse(X - 1, Y - 1, X + 1, Y + 1)
          else if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        if SelI > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(FPA[SelI].X / MX);
          Y := PosY - Round(FPA[SelI].Y / MY);
          Canvas.MoveTo(X, Y - 10);
          Canvas.LineTo(X, Y + 10);
          Canvas.MoveTo(X - 10, Y);
          Canvas.LineTo(X + 10, Y);
        end;
      end;
      if IsRegress then
      begin
        Canvas.Pen.Color := clMaroon;
        X := PosX + Round(MeanX / MX);
        Y := PosY - Round(GraphControl1.MinYR / MY);
        Canvas.MoveTo(X, Y);
        Y := PosY - Round(GraphControl1.MaxYR / MY);
        Canvas.LineTo(X, Y);
        X := PosX + Round(GraphControl1.MinXR / MX);
        Y := PosY - Round(MeanY / MY);
        Canvas.MoveTo(X, Y);
        X := PosX + Round(GraphControl1.MaxXR / MX);
        Canvas.LineTo(X, Y);
        Canvas.Pen.Color := clRed;
        X := PosX + Round(GraphControl1.MinXR / MX);
        Y := PosY - Round((A + B * GraphControl1.MinXR) / MY);
        Canvas.MoveTo(X, Y);
        X := PosX + Round(GraphControl1.MaxXR / MX);
        Y := PosY - Round((A + B * GraphControl1.MaxXR) / MY);
        Canvas.LineTo(X, Y);
      end;
    end;
  end;
end;

procedure TArrayViewerFrame.GraphControl1ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
begin
  EditBtn.Down := not IsZoomIn;
  ZoomOutBtn.Enabled := IsZoomed;
end;

procedure TArrayViewerFrame.GraphControl2PaintGraph(Sender: TObject; Canvas: TCanvas; PosX, PosY: Integer; MX, MY: Double);
const
  N = 100;
var
  I, J, L   : Integer;
  J1, J2    : Integer;
  X, Y      : Integer;
  X1, X2, Yr: Double;
  Delta, Yp : Double;
  IsFirst   : Boolean;
begin
  if Count = 0 then
    Exit;
  Canvas.Pen.Width := 0;
  Canvas.Pen.Color := clBlack;
  Canvas.MoveTo(GraphControl2.GraphWindow.ClientRect.Left, PosY);
  Canvas.LineTo(GraphControl2.GraphWindow.ClientRect.Right, PosY);
  Canvas.MoveTo(PosX, GraphControl2.GraphWindow.ClientRect.Top);
  Canvas.LineTo(PosX, GraphControl2.GraphWindow.ClientRect.Bottom);
  Canvas.Pen.Color := clYellow;
  case ArrayTyp of
    atSingle:
    begin
      L := Length(SP);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(SP[I].X / MX);
          Y := PosY - Round(SP[I].Y / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        Canvas.Pen.Color := clAqua;
        Delta := (SP[Count - 1].X - SP[0].X) / N;
        Yp := SP[1].Y - SP[0].Y;
        for I := 0 to N do
        begin
          X1 := SP[0].X + I * Delta - Delta / 2.0;
          X2 := SP[0].X + I * Delta + Delta / 2.0;
          J1 := -1;
          J2 := -1;
          for J := 0 to Count - 1 do
          begin
            if SP[J].X < X1 then
              Continue;
            if SP[J].X >= X2 then
              Break;
            if J1 = -1 then
              J1 := J;
            J2 := J;
          end;
          if J1 > -1 then
          begin
            Yr := (J2 - J1 + 1) * Yp;
            X := PosX + Round(X1 / MX);
            Y := PosY - Round(10.0 * Yr / MY);
            Canvas.MoveTo(X, PosY);
            Canvas.LineTo(X, Y);
            X := PosX + Round(X2 / MX);
            Canvas.LineTo(X, Y);
            Canvas.LineTo(X, PosY);
          end;
        end;
        if Sel2I > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(SP[Sel2I].X / MX);
          Y := PosY - Round(SP[Sel2I].Y / MY);
          Canvas.MoveTo(X - 10, Y);
          Canvas.LineTo(X + 10, Y);
          Canvas.MoveTo(X, Y - 10);
          Canvas.LineTo(X, Y + 10);
        end;
      end;
    end;
    atDouble:
    begin
      L := Length(DP);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(DP[I].X / MX);
          Y := PosY - Round(DP[I].Y / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        Canvas.Pen.Color := clAqua;
        Delta := (DP[Count - 1].X - DP[0].X) / N;
        Yp := DP[1].Y - DP[0].Y;
        for I := 0 to N do
        begin
          X1 := DP[0].X + I * Delta - Delta / 2.0;
          X2 := DP[0].X + I * Delta + Delta / 2.0;
          J1 := -1;
          J2 := -1;
          for J := 0 to Count - 1 do
          begin
            if DP[J].X < X1 then
              Continue;
            if DP[J].X >= X2 then
              Break;
            if J1 = -1 then
              J1 := J;
            J2 := J;
          end;
          if J1 > -1 then
          begin
            Yr := (J2 - J1 + 1) * Yp;
            X := PosX + Round(X1 / MX);
            Y := PosY - Round(10.0 * Yr / MY);
            Canvas.MoveTo(X, PosY);
            Canvas.LineTo(X, Y);
            X := PosX + Round(X2 / MX);
            Canvas.LineTo(X, Y);
            Canvas.LineTo(X, PosY);
          end;
        end;
        if Sel2I > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(DP[Sel2I].X / MX);
          Y := PosY - Round(DP[Sel2I].Y / MY);
          Canvas.MoveTo(X - 10, Y);
          Canvas.LineTo(X + 10, Y);
          Canvas.MoveTo(X, Y - 10);
          Canvas.LineTo(X, Y + 10);
        end;
      end;
    end;
    atExtended:
    begin
      L := Length(EP);
      if L > 0 then
      begin
        IsFirst := True;
        for I := 0 to L - 1 do
        begin
          X := PosX + Round(EP[I].X / MX);
          Y := PosY - Round(EP[I].Y / MY);
          if IsFirst then
          begin
            IsFirst := False;
            Canvas.MoveTo(X, Y);
          end
          else
            Canvas.LineTo(X, Y);
        end;
        Canvas.Pen.Color := clAqua;
        Delta := (EP[Count - 1].X - EP[0].X) / N;
        Yp := EP[1].Y - EP[0].Y;
        for I := 0 to N do
        begin
          X1 := EP[0].X + I * Delta - Delta / 2.0;
          X2 := EP[0].X + I * Delta + Delta / 2.0;
          J1 := -1;
          J2 := -1;
          for J := 0 to Count - 1 do
          begin
            if EP[J].X < X1 then
              Continue;
            if EP[J].X >= X2 then
              Break;
            if J1 = -1 then
              J1 := J;
            J2 := J;
          end;
          if J1 > -1 then
          begin
            Yr := (J2 - J1 + 1) * Yp;
            X := PosX + Round(X1 / MX);
            Y := PosY - Round(10.0 * Yr / MY);
            Canvas.MoveTo(X, PosY);
            Canvas.LineTo(X, Y);
            X := PosX + Round(X2 / MX);
            Canvas.LineTo(X, Y);
            Canvas.LineTo(X, PosY);
          end;
        end;
        if Sel2I > -1 then
        begin
          Canvas.Pen.Color := clWhite;
          X := PosX + Round(EP[Sel2I].X / MX);
          Y := PosY - Round(EP[Sel2I].Y / MY);
          Canvas.MoveTo(X - 10, Y);
          Canvas.LineTo(X + 10, Y);
          Canvas.MoveTo(X, Y - 10);
          Canvas.LineTo(X, Y + 10);
        end;
      end;
    end;
  end;
  if IsMeanY then
  begin
    Canvas.Pen.Color := clMaroon;
    X := PosX + Round(MeanY / MX);
    Y := GraphControl2.GraphWindow.ClientRect.Top;
    Canvas.MoveTo(X, Y);
    Y := GraphControl2.GraphWindow.ClientRect.Bottom;
    Canvas.LineTo(X, Y);
    Canvas.Pen.Color := clRed;
    X := PosX + Round(Median / MX);
    Y := GraphControl2.GraphWindow.ClientRect.Top;
    Canvas.MoveTo(X, Y);
    Y := GraphControl2.GraphWindow.ClientRect.Bottom;
    Canvas.LineTo(X, Y);
  end;
end;

procedure TArrayViewerFrame.GraphControl2ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
begin
  Edit2Btn.Down := not IsZoomIn;
  ZoomOut2Btn.Enabled := IsZoomed;
end;

procedure TArrayViewerFrame.UpdateArray(const Expression, TypeName, EvalResult: string);
var
  DebugSvcs   : IOTADebuggerServices;
  CurProcess  : IOTAProcess;
  CurThread   : IOTAThread;
  aAddress    : string;
  aCount      : String;
  MinX, MaxX  : Single;
  AMinX, AMaxX: Single;
  AMinY, AMaxY: Single;
  ST, SL, W   : Single;
  I           : Integer;
  SmallInt1D  : TSmallInt1D;
  Word1D      : TWord1D;
begin
  FAvailableState := asAvailable;
  FExpression := Expression;
  ArrayTyp := atNone;
  if Supports(BorlandIDEServices, IOTADebuggerServices, DebugSvcs) then
  begin
    CurProcess := DebugSvcs.CurrentProcess;
    if CurProcess <> nil then
    begin
      CurThread := CurProcess.CurrentThread;
      if CurThread <> nil then
      begin
        // tests for a null variable
        aAddress := Evaluate(DebugSvcs, CurProcess, CurThread, 'Pointer(' + Expression + ')');
        if aAddress = '0' then
        begin
          DisableArray(sIsNull);
          Exit;
        end;
        aCount := Evaluate(DebugSvcs, CurProcess, CurThread, 'Length(' + Expression + ')');
        if aCount = '0' then
        begin
          DisableArray(sIsNull);
          Exit;
        end;
        Count := StrToInt64(aCount);
        Label1.Caption := ' Count: ' + IntToStr(Count);
        MinX := 0.0;
        MaxX := Count;
        if TypeName = 'TExtended1D' then
        begin
          ArrayTyp := atExtended;
          SetLength(EA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(Extended), EA[0]);
          MinY := MinValue(EA);
          MaxY := MaxValue(EA);
          MeanY := Mean(EA);
          IsMeanY := True;
          if Count > 1 then
          begin
            SEA := Copy(EA);
            QuickSortE1D(SEA, 0, Count - 1);
            SetLength(EP, Count);
            for I := 0 to Count - 1 do
            begin
              EP[I].X := SEA[I];
              EP[I].Y := 100.0 * I / (Count - 1);
            end;
            Median := MedianE1D(EA);
            Statistic1.Visible := True;
          end;
        end
        else if TypeName = 'TDouble1D' then
        begin
          ArrayTyp := atDouble;
          SetLength(DA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(Double), DA[0]);
          MinY := MinValue(DA);
          MaxY := MaxValue(DA);
          MeanY := Mean(DA);
          IsMeanY := True;
          if Count > 1 then
          begin
            SDA := Copy(DA);
            QuickSortD1D(SDA, 0, Count - 1);
            SetLength(DP, Count);
            for I := 0 to Count - 1 do
            begin
              DP[I].X := SDA[I];
              DP[I].Y := 100.0 * I / (Count - 1);
            end;
            Median := MedianD1D(DA);
            Statistic1.Visible := True;
          end;
        end
        else if TypeName = 'TSingle1D' then
        begin
          ArrayTyp := atSingle;
          SetLength(SA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(Single), SA[0]);
          MinY := MinValue(SA);
          MaxY := MaxValue(SA);
          MeanY := Mean(SA);
          IsMeanY := True;
          if Count > 1 then
          begin
            SSA := Copy(SA);
            QuickSortS1D(SSA, 0, Count - 1);
            SetLength(SP, Count);
            for I := 0 to Count - 1 do
            begin
              SP[I].X := SSA[I];
              SP[I].Y := 100.0 * I / (Count - 1);
            end;
            Median := MedianS1D(SA);
            Statistic1.Visible := True;
          end;
        end
        else if TypeName = 'TInteger1D' then
        begin
          ArrayTyp := atInteger;
          SetLength(IA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(Integer), IA[0]);
          MinY := MinIntValue(IA);
          MaxY := MaxIntValue(IA);
        end
        else if TypeName = 'TLongWord1D' then
        begin
          ArrayTyp := atLongWord;
          SetLength(LWA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(LongWord), LWA[0]);
          MinY := 0.0;
          MaxY := 0.0;
          for I := 0 to Count - 1 do
            if LWA[I] > MaxY then
              MaxY := LWA[I];
        end
        else if TypeName = 'TSmallInt1D' then
        begin
          ArrayTyp := atInteger;
          SetLength(IA, Count);
          SetLength(SmallInt1D, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(SmallInt), SmallInt1D[0]);
          for I := 0 to Count - 1 do
            IA[I] := SmallInt1D[I];
          SmallInt1D := nil;
          MinY := MinIntValue(IA);
          MaxY := MaxIntValue(IA);
        end
        else if TypeName = 'Word1D' then
        begin
          ArrayTyp := atInteger;
          SetLength(IA, Count);
          SetLength(Word1D, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(Word), Word1D[0]);
          for I := 0 to Count - 1 do
            IA[I] := Word1D[I];
          Word1D := nil;
          MinY := 0.0;
          MaxY := MaxIntValue(IA);
        end
        else if TypeName = 'TPoint1D' then
        begin
          ArrayTyp := atPoint;
          SetLength(PA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(TPoint), PA[0]);
          MinX := PA[0].X;
          MaxX := PA[0].X;
          MinY := PA[0].Y;
          MaxY := PA[0].Y;
          for I := 1 to Count - 1 do
          begin
            if PA[I].X < MinX then
              MinX := PA[I].X;
            if PA[I].X > MaxX then
              MaxX := PA[I].X;
            if PA[I].Y < MinY then
              MinY := PA[I].Y;
            if PA[I].Y > MaxY then
              MaxY := PA[I].Y;
          end;
          IsRegress := RegressP(PA, MeanX, MeanY, A, B);
          CheckBox1.Visible := True;
        end
        else if (TypeName = 'TPointF1D') or (TypeName = 'TFPArray' ) then
        begin
          ArrayTyp := atPointF;
          SetLength(PFA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(TPointF), PFA[0]);
          MinX := PFA[0].X;
          MaxX := PFA[0].X;
          MinY := PFA[0].Y;
          MaxY := PFA[0].Y;
          for I := 1 to Count - 1 do
          begin
            if PFA[I].X < MinX then
              MinX := PFA[I].X;
            if PFA[I].X > MaxX then
              MaxX := PFA[I].X;
            if PFA[I].Y < MinY then
              MinY := PFA[I].Y;
            if PFA[I].Y > MaxY then
              MaxY := PFA[I].Y;
          end;
          IsRegress := RegressFP(PFA, MeanX, MeanY, A, B);
          CheckBox1.Visible := (TypeName = 'TPointF1D');
        end
        else if TypeName = 'TFPoints' then
        begin
          ArrayTyp := atFPoints;
          SetLength(FPA, Count);
          CurProcess.ReadProcessMemory(StrToInt64(aAddress), Count * SizeOf(TFPoint), FPA[0]);
          MinX := FPA[0].X;
          MaxX := FPA[0].X;
          MinY := FPA[0].Y;
          MaxY := FPA[0].Y;
          for I := 1 to Count - 1 do
          begin
            if FPA[I].X < MinX then
              MinX := FPA[I].X;
            if FPA[I].X > MaxX then
              MaxX := FPA[I].X;
            if FPA[I].Y < MinY then
              MinY := FPA[I].Y;
            if FPA[I].Y > MaxY then
              MaxY := FPA[I].Y;
          end;
          IsRegress := RegressFPA(FPA, MeanX, MeanY, A, B);
          CheckBox1.Visible := True;
        end
        else
        begin
          DisableArray(sNotAvailable);
          Exit;
        end;
        W := (MaxX - MinX);
        MinX := MinX - 0.1 * W;
        MaxX := MaxX + 0.1 * W;
        W := (MaxY - MinY);
        MinY := MinY - 0.1 * W;
        MaxY := MaxY + 0.1 * W;
        if (ArrayTyp = atPoint) or (ArrayTyp = atPointF) or (ArrayTyp = atFPoints) then
        begin
          if MaxX - MinX > 5000.0 then
          begin
            ST := 500.0;
            SL := 1000.0;
          end
          else if MaxX - MinX > 500.0 then
          begin
            ST := 50.0;
            SL := 100.0;
          end
          else if MaxX - MinX > 50.0 then
          begin
            ST := 5.0;
            SL := 10.0;
          end
          else if MaxX - MinX > 5.0 then
          begin
            ST := 0.5;
            SL := 1.0;
          end
          else if MaxX - MinX > 0.5 then
          begin
            ST := 0.05;
            SL := 0.1;
            GraphControl1.XDigits := 1;
          end
          else
          begin
            ST := 0.005;
            SL := 0.01;
            GraphControl1.XDigits := 2;
          end;
          AMinX := 0.0;
          if MinX < 0.0 then
          begin
            while AMinX > MinX do
              AMinX := AMinX - ST;
          end
          else
          begin
            while AMinX < MinX - ST do
              AMinX := AMinX + ST;
          end;
          AMaxX := AMinX;
          while AMaxX < MaxX do
            AMaxX := AMaxX + ST;
          if (AMaxX - AMinX) / SL > 16.0 then
          begin
            ST := 2.0 * ST;
            SL := 2.0 * SL;
          end;
          GraphControl1.SetXParams(AMinX, AMaxX, ST, SL);
          GraphControl1.MinXR := AMinX;
          GraphControl1.MaxXR := AMaxX;
        end;
        if MaxY - MinY > 20000.0 then
        begin
          ST := 2000.0;
          SL := 1000.0;
        end
        else if MaxY - MinY > 10000.0 then
        begin
          ST := 1000.0;
          SL := 1000.0;
        end
        else if MaxY - MinY > 5000.0 then
        begin
          ST := 500.0;
          SL := 1000.0;
        end
        else if MaxY - MinY > 500.0 then
        begin
          ST := 50.0;
          SL := 100.0;
        end
        else if MaxY - MinY > 50.0 then
        begin
          ST := 5.0;
          SL := 10.0;
        end
        else if MaxY - MinY > 5.0 then
        begin
          ST := 0.5;
          SL := 1.0;
        end
        else if MaxY - MinY > 0.5 then
        begin
          ST := 0.05;
          SL := 0.1;
          GraphControl1.YDigits := 1;
          GraphControl2.XDigits := 1;
        end
        else
        begin
          ST := 0.005;
          SL := 0.01;
          GraphControl1.YDigits := 2;
          GraphControl2.XDigits := 2;
        end;
        AMinY := 0.0;
        if MinY < 0.0 then
        begin
          while AMinY > MinY do
            AMinY := AMinY - ST;
        end
        else
        begin
          while AMinY < MinY - ST do
            AMinY := AMinY + ST;
        end;
        AMaxY := AMinY;
        while AMaxY < MaxY do
          AMaxY := AMaxY + ST;
        if (AMaxY - AMinY) / SL > 12.0 then
        begin
          ST := 2.0 * ST;
          SL := 2.0 * SL;
        end;
        GraphControl2.SetXParams(AMinY, AMaxY, ST, SL);
        GraphControl2.MinXR := AMinY;
        GraphControl2.MaxXR := AMaxY;
        GraphControl2.ZoomAll;
        GraphControl1.SetYParams(AMinY, AMaxY, ST, SL);
        GraphControl1.MinYR := AMinY;
        GraphControl1.MaxYR := AMaxY;
        GraphControl1.ZoomAll;
      end;
    end;
  end;
  PageControl1.ActivePageIndex := 0;
end;

procedure TArrayViewerFrame.AfterSave;
begin

end;

procedure TArrayViewerFrame.BeforeSave;
begin

end;

procedure TArrayViewerFrame.CheckBox1Click(Sender: TObject);
begin
  GraphControl1.GraphWindow.Refresh;
end;

procedure TArrayViewerFrame.CloseVisualizer;
begin
  if FOwningForm <> nil then
    FOwningForm.Close;
end;

procedure TArrayViewerFrame.Destroyed;
begin
  ArrayTyp := atNone;
  Count := 0;
  SA := nil;
  DA := nil;
  EA := nil;
  IA := nil;
  LWA := nil;
  PA := nil;
  PFA := nil;
  FPA := nil;
end;

procedure TArrayViewerFrame.Edit2BtnClick(Sender: TObject);
begin
  GraphControl2.ZoomIn := False;
end;

procedure TArrayViewerFrame.EditBtnClick(Sender: TObject);
begin
  GraphControl1.ZoomIn := False;
end;

procedure TArrayViewerFrame.Zoom2BtnClick(Sender: TObject);
begin
  GraphControl2.ZoomIn := True;
  GraphControl2.ZoomMode := zmRectangle;
end;

procedure TArrayViewerFrame.ZoomBtnClick(Sender: TObject);
begin
  GraphControl1.ZoomIn := True;
  GraphControl1.ZoomMode := zmRectangle;
end;

procedure TArrayViewerFrame.ZoomH2BtnClick(Sender: TObject);
begin
  GraphControl2.ZoomIn := True;
  GraphControl2.ZoomMode := zmHorizontal;
end;

procedure TArrayViewerFrame.ZoomHBtnClick(Sender: TObject);
begin
  GraphControl1.ZoomIn := True;
  GraphControl1.ZoomMode := zmHorizontal;
end;

procedure TArrayViewerFrame.ZoomOut2BtnClick(Sender: TObject);
begin
  GraphControl2.ZoomAll;
end;

procedure TArrayViewerFrame.ZoomOutBtnClick(Sender: TObject);
begin
  GraphControl1.ZoomAll;
end;

procedure TArrayViewerFrame.ZoomV2BtnClick(Sender: TObject);
begin
  GraphControl2.ZoomIn := True;
  GraphControl2.ZoomMode := zmVertical;
end;

procedure TArrayViewerFrame.ZoomVBtnClick(Sender: TObject);
begin
  GraphControl1.ZoomIn := True;
  GraphControl1.ZoomMode := zmVertical;
end;

function TArrayViewerFrame.Evaluate(DebugSvcs: IOTADebuggerServices;
  CurProcess: IOTAProcess; CurThread: IOTAThread; Expression: string): string;
var
  ResultStr: array [0 .. 4095] of Char;
  CanModify: Boolean;
  ResultAddr, ResultSize, ResultVal: LongWord;
  EvalRes: TOTAEvaluateResult;
begin
  begin
    Result := '';
    EvalRes := CurThread.Evaluate(Expression, @ResultStr, Length(ResultStr),
      CanModify, eseAll, '', ResultAddr, ResultSize, ResultVal, '', 0);
    case EvalRes of
      erOK:
        Result := ResultStr;
      erDeferred:
        begin
          FCompleted := False;
          FDeferredResult := '';
          FDeferredError := False;
          FNotifierIndex := CurThread.AddNotifier(Self);
          while not FCompleted do
            DebugSvcs.ProcessDebugEvents;
          CurThread.RemoveNotifier(FNotifierIndex);
          FNotifierIndex := -1;
          if not FDeferredError then
          begin
            if FDeferredResult <> '' then
              Result := FDeferredResult
            else
              Result := ResultStr;
          end;
        end;
      erBusy:
        begin
          DebugSvcs.ProcessDebugEvents;
          Result := Evaluate(DebugSvcs, CurProcess, CurThread, Expression);
        end;
    end;
  end;
end;

procedure TArrayViewerFrame.EvaluateComplete(const ExprStr, ResultStr: string; CanModify: Boolean;
  ResultAddress, ResultSize: LongWord; ReturnCode: Integer);
begin
  FCompleted := True;
  FDeferredResult := ResultStr;
  FDeferredError := ReturnCode <> 0;
end;

procedure TArrayViewerFrame.MarkUnavailable
  (Reason: TOTAVisualizerUnavailableReason);
begin
  if Reason = ovurProcessRunning then
  begin
    FAvailableState := asProcRunning;
    DisableArray(sProcessNotAccessible);
  end
  else if Reason = ovurOutOfScope then
  begin
    FAvailableState := asOutOfScope;
    DisableArray(sOutOfScope);
  end;
end;

procedure TArrayViewerFrame.Modified;
begin

end;

procedure TArrayViewerFrame.ModifyComplete(const ExprStr, ResultStr: string;
  ReturnCode: Integer);
begin

end;

procedure TArrayViewerFrame.RefreshVisualizer(const Expression, TypeName,
  EvalResult: string);
begin
  UpdateArray(Expression, TypeName, EvalResult);
end;

procedure TArrayViewerFrame.SetClosedCallback
  (ClosedProc: TOTAVisualizerClosedProcedure);
begin
  FClosedProc := ClosedProc;
end;

procedure TArrayViewerFrame.SetForm(AForm: TCustomForm);
begin
  FOwningForm := AForm;
end;

procedure TArrayViewerFrame.SetParent(AParent: TWinControl);
begin
  if AParent = nil then
  begin
    ArrayTyp := atNone;
    if Assigned(FClosedProc) then
      FClosedProc;
  end;
  inherited;
end;

procedure TArrayViewerFrame.ThreadNotify(Reason: TOTANotifyReason);
begin

end;

{ ### TArrayVisualizerForm ### }
constructor TArrayVisualizerForm.Create(const Expression: string);
begin
  inherited Create;
  FExpression := Expression;
end;

procedure TArrayVisualizerForm.CustomizePopupMenu(PopupMenu: TPopupMenu);
begin
  // no toolbar
end;

procedure TArrayVisualizerForm.CustomizeToolBar(ToolBar: TToolBar);
begin
  // no toolbar
end;

function TArrayVisualizerForm.EditAction(Action: TEditAction): Boolean;
begin
  Result := False;
end;

procedure TArrayVisualizerForm.FrameCreated(AFrame: TCustomFrame);
begin
  FMyFrame := TArrayViewerFrame(AFrame);
end;

function TArrayVisualizerForm.GetCaption: string;
begin
  Result := Format(sFormCaption, [FExpression]);
end;

function TArrayVisualizerForm.GetEditState: TEditState;
begin
  Result := [];
end;

function TArrayVisualizerForm.GetForm: TCustomForm;
begin
  Result := FMyForm;
end;

function TArrayVisualizerForm.GetFrame: TCustomFrame;
begin
  Result := FMyFrame;
end;

function TArrayVisualizerForm.GetFrameClass: TCustomFrameClass;
begin
  Result := TArrayViewerFrame;
end;

function TArrayVisualizerForm.GetIdentifier: string;
begin
  Result := sIdentifier;
end;

function TArrayVisualizerForm.GetMenuActionList: TCustomActionList;
begin
  Result := nil;
end;

function TArrayVisualizerForm.GetMenuImageList: TCustomImageList;
begin
  Result := nil;
end;

function TArrayVisualizerForm.GetToolbarActionList: TCustomActionList;
begin
  Result := nil;
end;

function TArrayVisualizerForm.GetToolbarImageList: TCustomImageList;
begin
  Result := nil;
end;

procedure TArrayVisualizerForm.LoadWindowState(Desktop: TCustomIniFile;
  const Section: string);
begin
  // no desktop saving
end;

procedure TArrayVisualizerForm.SaveWindowState(Desktop: TCustomIniFile;
  const Section: string; IsProject: Boolean);
begin
  // no desktop saving
end;

procedure TArrayVisualizerForm.SetForm(Form: TCustomForm);
begin
  FMyForm := Form;
  if Assigned(FMyFrame) then
    FMyFrame.SetForm(FMyForm);
end;

procedure TArrayVisualizerForm.SetFrame(Frame: TCustomFrame);
begin
  FMyFrame := TArrayViewerFrame(Frame);
end;

var
  ArrayDbgVisualizer: IOTADebuggerVisualizer;

procedure Register;
begin
  ArrayDbgVisualizer := TDebuggerArrayVisualizer.Create;
  (BorlandIDEServices as IOTADebuggerServices).RegisterDebugVisualizer(ArrayDbgVisualizer);
end;

procedure RemoveVisualizer;
var
  DebuggerServices: IOTADebuggerServices;
begin
  if Supports(BorlandIDEServices, IOTADebuggerServices, DebuggerServices) then
  begin
    DebuggerServices.UnregisterDebugVisualizer(ArrayDbgVisualizer);
    ArrayDbgVisualizer := nil;
  end;
end;

initialization

finalization
  RemoveVisualizer;
end.
