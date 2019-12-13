unit UFrmGridGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DB, Grids, DBGrids, StdCtrls, DBCtrls,
  ExtCtrls, DBActns, ActnList, ComCtrls, ToolWin, ImgList;

type
  TFrmGridGrupos = class(TFrmPlantillaGrid)
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btninsertClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridGrupos: TFrmGridGrupos;

implementation

uses
  UDMSeguridad, UFrmDlgGrupos;

{$R *.dfm}

procedure TFrmGridGrupos.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
   if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmDlgGrupos.MostrarModal
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmDlgGrupos.MostrarModal
      end;
end;

procedure TFrmGridGrupos.btninsertClick(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Insert;
  TFrmDlgGrupos.MostrarModal;
end;

procedure TFrmGridGrupos.btneditClick(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Edit;
  TFrmDlgGrupos.MostrarModal;
end;

end.
