unit uFrmGridChoferes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DBActns, ActnList, ImgList, DB, Grids,
  DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls;

type
  TFrmGridChoferes = class(TFrmPlantillaGrid)
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNAV1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridChoferes: TFrmGridChoferes;

implementation

uses
  UDMDatos, uFrmDlgChoferes;

{$R *.dfm}

procedure TFrmGridChoferes.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
   if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmDlgChoferes.MostrarModal
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmDlgChoferes.MostrarModal
      end;
end;

procedure TFrmGridChoferes.DBNAV1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
 // inherited;
     If (Button = nbdelete) then
      if MessageDlg('Desea borrar el chofer?', mtConfirmation, [mbOK, mbCancel],0) = mrOk then
         begin
             DMDatos.Viaje.Close;
             DMDatos.Viaje.Filtered := False;
             DMDatos.Viaje.Filter := 'ID_CHOFER ='+DMDatos.ChoferesID.AsString;
             DMDatos.Viaje.filtered := True;
             DMDatos.Viaje.Open;
             if not (DMDatos.Viaje.IsEmpty) then
               begin
                  MessageDlg('Existe un viaje con este chofer asignado. Primero debe eliminar el/los viaje/s', mtError, [mbOK],0);
                  Abort;
               end
             else
             MessageDlg('Chofer borrado correctamente.', mtInformation, [mbOk],0);
         end
      else
        Abort;
end;

procedure TFrmGridChoferes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMDatos.Viaje.Filtered := False;
  DMDatos.Viaje.Close;
  inherited;
end;

end.
