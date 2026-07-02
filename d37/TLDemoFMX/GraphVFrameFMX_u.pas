unit GraphVFrameFMX_u;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.BitButtons, FMX.Controls.Presentation,
  FMX.GraphV, FMX.LegendTL;

type
  TGraphVFrameFMX = class(TFrame)
    Panel1: TPanel;
    ZoomInBtn: TBitCornerButtonFMX;
    ZoomOutBtn: TBitCornerButtonFMX;
    GraphVLegendFMX1: TGraphVLegendFMX;
    GraphControlVFMX1: TGraphControlVFMX;
    procedure ZoomInBtnClick(Sender: TObject);
    procedure ZoomOutBtnClick(Sender: TObject);
    procedure GraphVFrameFMXGraphControlVFMX1ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

procedure TGraphVFrameFMX.GraphVFrameFMXGraphControlVFMX1ZoomChange(Sender: TObject; IsZoomIn, IsZoomed: Boolean);
begin
  ZoomOutBtn.Enabled := IsZoomed;
end;

procedure TGraphVFrameFMX.ZoomInBtnClick(Sender: TObject);
begin
  GraphControlVFMX1.ZoomIn := ZoomInBtn.IsPressed;
end;

procedure TGraphVFrameFMX.ZoomOutBtnClick(Sender: TObject);
begin
  GraphControlVFMX1.ZoomAll;
end;

end.
