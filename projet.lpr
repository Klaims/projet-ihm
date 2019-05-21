program projet;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, u_main, u_selection, u_list_intervention;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tf_principale, f_principale);
  Application.CreateForm(Tf_selection, f_selection);
  Application.CreateForm(Tf_liste, f_liste);
  Application.Run;
end.

