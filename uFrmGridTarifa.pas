unit uFrmGridTarifa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DBActns, ActnList, ImgList, DB, Grids,
  DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls;

type
  TFrmGridTarifa = class(TFrmPlantillaGrid)
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridTarifa: TFrmGridTarifa;

implementation

uses
  UDMDatos, uFrmDlgTarifa, uFrmConfirmaReserva;

{$R *.dfm}

procedure TFrmGridTarifa.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
   if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmDlgTarifa.MostrarModal
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmDlgTarifa.MostrarModal
      end;
end;

end.
