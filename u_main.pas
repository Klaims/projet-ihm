unit u_main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  StdCtrls;

type

  { Tf_principale }

  Tf_principale = class(TForm)
    lbl_accueil: TLabel;
    lbl_sat: TLabel;
    item_accueil: TMenuItem;
    item_contrats: TMenuItem;
    item_prest: TMenuItem;
    item_quitter: TMenuItem;
    item_clients: TMenuItem;
    item_sites: TMenuItem;
    item_inter: TMenuItem;
    mnu_main: TMainMenu;
    pnl_filariane: TPanel;
    pnl_selection: TPanel;
    pnl_main: TPanel;

    procedure item_quitterClick(Sender: TObject);
    procedure mnu_main_Click(Sender: TObject);

    procedure choix_item_inter;

  private

  public

  end;

var
  f_principale: Tf_principale;

implementation

{$R *.lfm}

{ Tf_principale }

uses u_selection;

procedure Tf_principale.mnu_main_Click(Sender: TObject);

var
   item : TMenuItem;

begin
   pnl_selection.show;

   pnl_filariane.Caption := '';
   item := TmenuItem(Sender);
   repeat
         pnl_filariane.caption := ' >' + item.caption +pnl_filariane.Caption;
         item := item.parent;
   until item.parent = nil;

      item := TMenuItem(Sender);
      if item=item_inter then choix_item_inter;
end;

procedure Tf_principale.item_quitterClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_principale.choix_item_inter;
begin
      f_selection.borderstyle := bsNone;
      f_selection.parent          := pnl_selection;
      f_selection.align            := alClient;
      //f_selection.init;  à mettre après les styles
      f_selection.show;
end;

end.

