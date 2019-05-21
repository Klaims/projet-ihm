unit u_selection;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, DateTimePicker, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls;

type

  { Tf_selection }

  Tf_selection = class(TForm)
    btn_rechercher: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    edt2_client: TEdit;
    edt1_client: TEdit;
    edt2_intervenant: TEdit;
    edt1_intervenant: TEdit;
    edt_pnl_contrat: TEdit;
    edt_num: TEdit;
    lbl2_periode: TLabel;
    lbl1_periode: TLabel;
    lbl2_client: TLabel;
    lbl1_client: TLabel;
    lbl2_intervenant: TLabel;
    lbl1_intervenant: TLabel;
    Panel1: TPanel;
    pnl_periode_edit: TPanel;
    pnl_periode_btn: TPanel;
    pnl_rechercher: TPanel;
    pnl_periode: TPanel;
    pnl_client_edt: TPanel;
    pnl_client_btn: TPanel;
    pnl_client: TPanel;
    pnl_intervenant_edit: TPanel;
    pnl_intervenant_btn: TPanel;
    pnl_intervenant: TPanel;
    pnl_contrat_edit: TPanel;
    pnl_contrat_btn: TPanel;
    pnl_contrat: TPanel;
    pnl_num_edit: TPanel;
    pnl_num_btn: TPanel;
    pnl_num: TPanel;
    pnl_tous_edit: TPanel;
    pnl_tous: TPanel;
    pnl_choix: TPanel;
    pnl_titre: TPanel;
    procedure edt2_intervenantChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  f_selection: Tf_selection;

implementation

{$R *.lfm}

{ Tf_selection }

procedure Tf_selection.FormCreate(Sender: TObject);
begin

end;

procedure Tf_selection.edt2_intervenantChange(Sender: TObject);
begin

end;

end.

