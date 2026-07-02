unit GraphFrameFMX_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Graph, FMX.Controls.Presentation,
  FMX.BitButtons;

type
  TGraphFrameFMX = class(TFrame)
    Panel1: TPanel;
    GraphControlFMX1: TGraphControlFMX;
    ZoomInBtn: TBitCornerButtonFMX;
    ZoomOutBtn: TBitCornerButtonFMX;
    procedure ZoomInBtnClick(Sender: TObject);
    procedure ZoomOutBtnClick(Sender: TObject);
    procedure GraphControlFMX1ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TGraphFrameFMX.GraphControlFMX1ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
begin
  ZoomOutBtn.Enabled := IsZoomed;
end;

procedure TGraphFrameFMX.ZoomInBtnClick(Sender: TObject);
begin
  GraphControlFMX1.ZoomIn := ZoomInBtn.IsPressed;
end;

procedure TGraphFrameFMX.ZoomOutBtnClick(Sender: TObject);
begin
  GraphControlFMX1.ZoomAll;
end;

end.
