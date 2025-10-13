program TLDemo;

uses
  Vcl.Forms,
  MainForm_u in 'MainForm_u.pas' {DemoForm},
  AppEquationFrame_u in 'AppEquationFrame_u.pas' {AppEquationFrame: TFrame},
  EqTreeForm_u in 'EqTreeForm_u.pas' {EqTreeForm},
  GraphFrame_u in 'GraphFrame_u.pas' {GraphFrame: TFrame},
  GraphVFrame_u in 'GraphVFrame_u.pas' {GraphVFrame: TFrame},
  FEM_u in 'FEM_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'DEMO';
  Application.CreateForm(TDemoForm, DemoForm);
  Application.Run;

end.
