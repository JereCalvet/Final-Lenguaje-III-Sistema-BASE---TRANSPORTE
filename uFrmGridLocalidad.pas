unit uFrmGridLocalidad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DBActns, ActnList, ImgList, DB, Grids,
  DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls;

type
  TFrmGridLocalidad = class(TFrmPlantillaGrid)
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridLocalidad: TFrmGridLocalidad;

implementation

uses
  UDMDatos, uFrmDlgLocalidad;

{$R *.dfm}

procedure TFrmGridLocalidad.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
   if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmDlgLocalidad.MostrarModal
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmDlgLocalidad.MostrarModal
      end;
end;

end.
