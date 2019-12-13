unit UFrmGridOpciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DB, Grids, DBGrids, StdCtrls, DBCtrls,
  ExtCtrls, DBActns, ActnList, ComCtrls, ToolWin, ImgList;

type
  TFrmGridOpciones = class(TFrmPlantillaGrid)
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure btninsertClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridOpciones: TFrmGridOpciones;

implementation

uses
  UDMSeguridad, uFrmDlgOpciones;

{$R *.dfm}

procedure TFrmGridOpciones.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
   if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmDlgOpciones.MostrarModal
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmDlgOpciones.MostrarModal
      end;
end;

procedure TFrmGridOpciones.btninsertClick(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Insert;
  TFrmDlgOpciones.MostrarModal;
end;

procedure TFrmGridOpciones.btneditClick(Sender: TObject);
begin
  inherited;
  DSBASE.DataSet.Edit;
  TFrmDlgOpciones.MostrarModal;
end;

procedure TFrmGridOpciones.FormCreate(Sender: TObject);
begin
  inherited;
  DMSeguridad.Opciones.Close;
  DMSeguridad.qryOpciones.CommandText:=   'SELECT * FROM OPCIONES order by strlen(OPCIONES.agrupa), opciones.agrupa asc; ';
end;

end.
