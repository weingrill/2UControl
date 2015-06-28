program ToUControl;

uses
  Forms,
  UMain in 'UMain.pas' {FHaupt};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'ToUControl';
  Application.CreateForm(TFHaupt, FHaupt);
  Application.Run;
end.
