unit UFrmGridUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DB, Grids, DBGrids, StdCtrls, DBCtrls,
  ExtCtrls, DBActns, ActnList, ComCtrls, ToolWin, ImgList;

type
  TFrmGridUsuarios = class(TFrmPlantillaGrid)
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btninsertClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridUsuarios: TFrmGridUsuarios;

implementation

uses
  UDMSeguridad, uFrmDlgUsuarios;

{$R *.dfm}

procedure TFrmGridUsuarios.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmDlgUsuarios.MostrarModal
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmDlgUsuarios.MostrarModal
      end;

end;

procedure TFrmGridUsuarios.btninsertClick(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Insert;
  TFrmDlgUsuarios.MostrarModal;
end;

procedure TFrmGridUsuarios.btneditClick(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Edit;
  TFrmDlgUsuarios.MostrarModal;
end;

end.
