unit EqTreeForm_u;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, ExtCtrls, Math_u, Vcl.Buttons;

type
  TEqTreeForm = class(TForm)
    Panel1: TPanel;
    FlatBitBtn1: TBitBtn;
    TreeView1: TTreeView;
    CalcBtn: TBitBtn;
    Label1: TLabel;
    procedure CalcBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Equation: TEquation;
  end;

implementation

{$R *.DFM}

uses
  Math, Vassbotn.Vcl.Complex;

procedure TEqTreeForm.FormShow(Sender: TObject);
begin
  if Assigned(Equation) then
  begin
    Label1.Visible := True;
    CalcBtn.Visible := True;
  end
  else
  begin
    Label1.Visible := False;
    CalcBtn.Visible := False;
  end;
end;

procedure TEqTreeForm.CalcBtnClick(Sender: TObject);
var
  C: TComplex;
begin
  if Assigned(Equation) then
  begin
    C := Equation.GetValue([1.0, 0.4, 100.0, 16.0, 16.0, 2.5, 4.0,
      1.0 / Math.Power(2.0, 0.5), 0.63, 0.8, 0.8, 0.4]);
    Label1.Caption := FloatToStr(C.Real) + ' i' + FloatToStr(C.Imaginary);
  end;
end;

end.
