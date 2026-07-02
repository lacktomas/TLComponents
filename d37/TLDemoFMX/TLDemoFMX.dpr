program TLDemoFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  {$IFDEF MSWINDOWS}
  //SkiaDLLLoader in 'SkiaDLLLoader.pas',
  {$ENDIF }
  MainForm_u in 'MainForm_u.pas' {MainForm},
  GraphFrameFMX_u in 'GraphFrameFMX_u.pas' {GraphFrameFMX: TFrame},
  AppEquationFrameFMX_u in 'AppEquationFrameFMX_u.pas' {AppEquationFrameFMX: TFrame},
  GraphVFrameFMX_u in 'GraphVFrameFMX_u.pas' {GraphVFrameFMX: TFrame};

{$R *.res}
{$IFDEF MSWINDOWS}
//{$R Skia32DLL.res}
{
Skia32DLL.rc:
SK4D_DLL RCDATA "sk4d.dll"

brcc Skia32DLL.rc
}
{$ENDIF}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
