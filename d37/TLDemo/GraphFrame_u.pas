unit GraphFrame_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin,
  System.ImageList,
  Vcl.ImgList, Graph_u, Info_u;

type
  TGraphFrame = class(TFrame)
    ToolBar1: TToolBar;
    ZoomBtn: TToolButton;
    ZoomOutBtn: TToolButton;
    ImageList1: TImageList;
    GraphControl1: TLGraphControl;
    procedure GraphControl1ZoomChange(Sender: TObject;
      IsZoomIn, IsZoomed: Boolean);
    procedure ZoomBtnClick(Sender: TObject);
    procedure ZoomOutBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TGraphFrame.GraphControl1ZoomChange(Sender: TObject;
  IsZoomIn, IsZoomed: Boolean);
begin
  ZoomOutBtn.Enabled := IsZoomed;
end;

procedure TGraphFrame.ZoomBtnClick(Sender: TObject);
begin
  GraphControl1.ZoomIn := ZoomBtn.Down;
end;

procedure TGraphFrame.ZoomOutBtnClick(Sender: TObject);
begin
  GraphControl1.ZoomAll;
end;

end.
