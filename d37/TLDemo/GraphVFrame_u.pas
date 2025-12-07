unit GraphVFrame_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin,
  LegendTL, Info_u, GraphV_u;

type
  TGraphVFrame = class(TFrame)
    ToolBar1: TToolBar;
    ZoomBtn: TToolButton;
    ZoomOutBtn: TToolButton;
    ImageList1: TImageList;
    GraphVLegend1: TGraphVLegend;
    GraphControlV1: TLGraphControlV;
    procedure ZoomBtnClick(Sender: TObject);
    procedure GraphControlV1ZoomChange(Sender: TObject;
      IsZoomIn, IsZoomed: Boolean);
    procedure ZoomOutBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TGraphVFrame.GraphControlV1ZoomChange(Sender: TObject;
  IsZoomIn, IsZoomed: Boolean);
begin
  ZoomOutBtn.Enabled := IsZoomed;
end;

procedure TGraphVFrame.ZoomBtnClick(Sender: TObject);
begin
  GraphControlV1.ZoomIn := ZoomBtn.Down;
end;

procedure TGraphVFrame.ZoomOutBtnClick(Sender: TObject);
begin
  GraphControlV1.ZoomAll;
end;

end.
