program ATLDemoFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  MainForm_u in 'MainForm_u.pas' {MainForm},
  GraphFrameFMX_u in 'GraphFrameFMX_u.pas' {GraphFrameFMX: TFrame},
  GraphVFrameFMX_u in 'GraphVFrameFMX_u.pas' {GraphVFrameFMX: TFrame},
  AppEquationFrameFMX_u in 'AppEquationFrameFMX_u.pas' {AppEquationFrameFMX: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
