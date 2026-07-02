unit AppEquationFrameFMX_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.MathMemo, FMX.Controls.Presentation, FMX.Menus, FMX.BitButtons, FMX.Math_u;

type
  TAppEquationFrameFMX = class(TFrame)
    Panel1: TPanel;
    MathMemoFMX1: TMathMemoFMX;
    Panel3: TPanel;
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
    FuncBtn: TBitSpeedButtonFMX;
    BackBtn: TSpeedButton;
    CalcBtn: TBitButtonFMX;
    procedure SpeedButton10Click(Sender: TObject);
    procedure SIN1Click(Sender: TObject);
    procedure FuncBtnClick(Sender: TObject);
    procedure BackBtnClick(Sender: TObject);
    procedure CalcBtnClick(Sender: TObject);
    procedure MathMemoFMX1Enter(Sender: TObject);
    procedure MathMemoFMX1Change(Sender: TObject);
  private
    { Private declarations }
    FOnChange: TNotifyEvent;
    function CheckEdit: Boolean;
  public
    { Public declarations }
    Equation: TEquationFMX;
    procedure DoShow;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

implementation

{$R *.fmx}

procedure TAppEquationFrameFMX.DoShow;
begin
  if Assigned(Equation) then
    MathMemoFMX1.Lines.Assign(Equation.Lines);
end;


procedure TAppEquationFrameFMX.BackBtnClick(Sender: TObject);
var
  S: String;
  L: Integer;
begin
  S := MathMemoFMX1.Text;
  if S <> '' then
  begin
    L := Length(S);
    if S[L] = #10 then
      Dec(L, 2)
    else
      Dec(L);
    SetLength(S, L);
    MathMemoFMX1.Text := S;
    MathMemoFMX1.SelStart := Length(MathMemoFMX1.Text);
  end;
end;

procedure TAppEquationFrameFMX.CalcBtnClick(Sender: TObject);
begin
  if Assigned(Equation) then
  begin
    if CheckEdit then
    begin
      Equation.Lines := MathMemoFMX1.Lines;
      if Assigned(FOnChange) then
        FOnChange(Self);
    end;
  end
  else if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TAppEquationFrameFMX.FuncBtnClick(Sender: TObject);
begin
  MathMemoFMX1.Text := MathMemoFMX1.Text + TBitSpeedButtonFMX(Sender).Text;
  MathMemoFMX1.SelStart := Length(MathMemoFMX1.Text);
end;

procedure TAppEquationFrameFMX.MathMemoFMX1Change(Sender: TObject);
begin
  MathMemoFMX1.FontColor := TAlphaColors.Black;
end;

procedure TAppEquationFrameFMX.MathMemoFMX1Enter(Sender: TObject);
begin
  MathMemoFMX1.SelStart := Length(MathMemoFMX1.Text);
end;

procedure TAppEquationFrameFMX.SIN1Click(Sender: TObject);
begin
  FuncBtn.Text := TMenuItem(Sender).Text + '(';
end;

procedure TAppEquationFrameFMX.SpeedButton10Click(Sender: TObject);
begin
  MathMemoFMX1.Text := MathMemoFMX1.Text + TSpeedButton(Sender).Text;
  MathMemoFMX1.SelStart := Length(MathMemoFMX1.Text);
end;

function TAppEquationFrameFMX.CheckEdit: Boolean;
var
  OldText: TStringList;
begin
  Result := False;
  if not Assigned(Equation) then
    Exit;
  OldText := TStringList.Create;
  try
    OldText.Assign(Equation.Lines);
    try
      Equation.Lines := MathMemoFMX1.Lines;
      Result := True;
      MathMemoFMX1.FontColor := TAlphaColors.Green;
      MathMemoFMX1.Repaint;
    except
      MathMemoFMX1.FontColor := TAlphaColors.Maroon;
      MathMemoFMX1.Repaint;
      MathMemoFMX1.SetFocus;
      if Assigned(FOnChange) then
        FOnChange(Self);
      raise;
    end;
  finally
    Equation.Lines := OldText;
    OldText.Free;
  end;
end;

end.
