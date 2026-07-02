unit AppEquationFrame_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ComCtrls, Buttons, StdCtrls, ExtCtrls, Math_u, Vcl.ExtDlgs,
  EqTreeForm_u, LToolBar, LRichEdit_u;

type
  TAppEquationFrame = class(TFrame)
    Panel3: TPanel;
    BackBtn: TLToolbarBtn;
    Edit: TLMathMemo;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    FuncBtn: TLToolbarBtn;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton15: TSpeedButton;
    PopupMenu1: TPopupMenu;
    SIN1: TMenuItem;
    COS1: TMenuItem;
    TAN1: TMenuItem;
    COTAN1: TMenuItem;
    ARCSIN1: TMenuItem;
    ARCCOS1: TMenuItem;
    ARCTAN1: TMenuItem;
    SINH1: TMenuItem;
    COSH1: TMenuItem;
    TANH1: TMenuItem;
    ARCSINH1: TMenuItem;
    ARCCOSH1: TMenuItem;
    ARCTANH1: TMenuItem;
    EXP1: TMenuItem;
    LN1: TMenuItem;
    LOG1: TMenuItem;
    ABS1: TMenuItem;
    dT1: TMenuItem;
    ddT1: TMenuItem;
    IntegralDT1: TMenuItem;
    CalcBtn: TBitBtn;
    PopupMenu2: TPopupMenu;
    SaveasTXT1: TMenuItem;
    OpenasTXT1: TMenuItem;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    procedure FuncBtnClick(Sender: TObject);
    procedure SIN1Click(Sender: TObject);
    procedure BackBtnClick(Sender: TObject);
    procedure EditEnter(Sender: TObject);
    procedure EditChange(Sender: TObject);
    procedure CalcBtnClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure OpenasTXT1Click(Sender: TObject);
    procedure SaveasTXT1Click(Sender: TObject);
    procedure EditDblClick(Sender: TObject);
  private
    { Private declarations }
    FOnChange: TNotifyEvent;
    procedure SetEquation(Value: TEquation);
  public
    { Public declarations }
    EqTreeForm: TEqTreeForm;
    FEquation: TEquation;
    procedure DoShow;
    property Equation: TEquation read FEquation write SetEquation;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

implementation

{$R *.dfm}

type
  TExListItem = class(TListItem)
  public
    Ix: Integer;
  end;

procedure TAppEquationFrame.SetEquation(Value: TEquation);
begin
  FEquation := Value;
  if Assigned(FEquation) then
    Edit.Lines.Assign(FEquation.Lines);
end;

procedure TAppEquationFrame.DoShow;
begin
  if Assigned(FEquation) then
    Edit.Lines.Assign(FEquation.Lines);
end;

procedure TAppEquationFrame.SpeedButton2Click(Sender: TObject);
begin
  Edit.Text := Edit.Text + TSpeedButton(Sender).Caption;
  Edit.SelStart := Length(Edit.Text);
end;

procedure TAppEquationFrame.FuncBtnClick(Sender: TObject);
begin
  Edit.Text := Edit.Text + TLToolbarBtn(Sender).Caption;
  Edit.SelStart := Length(Edit.Text);
end;

procedure TAppEquationFrame.OpenasTXT1Click(Sender: TObject);
begin
  OpenTextFileDialog1.FileName := '';
  if not OpenTextFileDialog1.Execute then
    Exit;
  Edit.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
end;

procedure TAppEquationFrame.SaveasTXT1Click(Sender: TObject);
begin
  SaveTextFileDialog1.FileName := '';
  if not SaveTextFileDialog1.Execute then
    Exit;
  Edit.Lines.SaveToFile(SaveTextFileDialog1.FileName);
end;

procedure TAppEquationFrame.SIN1Click(Sender: TObject);
begin
  FuncBtn.Caption := TMenuItem(Sender).Caption + '(';
end;

procedure TAppEquationFrame.CalcBtnClick(Sender: TObject);
begin
  if Assigned(FEquation) then
  begin
    try
      FEquation.Lines := Edit.Lines;
      Edit.Font.Color := clGreen;
    except
      Edit.Font.Color := clMaroon;
      Edit.SetFocus;
      raise;
    end
  end
  else if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TAppEquationFrame.BackBtnClick(Sender: TObject);
var
  S: String;
  L: Integer;
begin
  S := Edit.Text;
  if S <> '' then
  begin
    L := Length(S);
    if S[L] = #10 then
      Dec(L, 2)
    else
      Dec(L);
    SetLength(S, L);
    Edit.Text := S;
    Edit.SelStart := Length(Edit.Text);
  end;
end;

procedure TAppEquationFrame.EditChange(Sender: TObject);
begin
  Edit.Font.Color := clBlack;
end;

procedure TAppEquationFrame.EditDblClick(Sender: TObject);
begin
  if Assigned(EqTreeForm) then
    EqTreeForm.ShowModal;
end;

procedure TAppEquationFrame.EditEnter(Sender: TObject);
begin
  Edit.SelStart := Length(Edit.Text);
end;

end.
