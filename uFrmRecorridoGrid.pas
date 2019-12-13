unit uFrmRecorridoGrid;        //FRMGRIDRECORRIDO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DBActns, ActnList, ImgList, DB, Grids,
  DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls, Mask;

type
  TFrmRecorridoGrid = class(TFrmPlantillaGrid)
    Button2: TButton;
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNAV1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    protected
      procedure WMActivate (Var Message: TWMActivate); message WM_ACTIVATE;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRecorridoGrid: TFrmRecorridoGrid;

implementation

uses
  UDMDatos, uFrmDlgRecorrido, uFrmGridHorarios, UFormMenu;

{$R *.dfm}

procedure TFrmRecorridoGrid.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 // inherited;
    if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmDlgRecorrido.MostrarModal
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmDlgRecorrido.MostrarModal
      end;

end;

procedure TFrmRecorridoGrid.DBNAV1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  If (Button = nbdelete) then                 //si no aborta por "X" motivo, borra registro.
      Case  MessageDlg('Desea borrar el recorrido?', mtConfirmation, [mbOK, mbCancel],0) of
         1:  begin
                 DMDatos.Viaje.Close;
                 DMDatos.qryViaje.Params.ParamByName('pID_RECORRIDO').Value := DMDatos.RecorridoID.Value;
                 DMDatos.Viaje.Open;
                 if not (DMDatos.Viaje.IsEmpty) then //si el recorrido tiene un viaje asignado, aborta para evitar error de clave foranea al borrar.
                    begin
                      MessageDlg('Existe un viaje con este recorrido asignado. Primero debe eliminar el/los viaje/s', mtError, [mbOK],0);
                      Abort;
                    end
                 else
                    begin
                        DMDatos.Horario.Close;
                        DMDatos.Horario.Filtered := False;
                        DMDatos.Horario.Filter := 'ID_RECORRIDO ='+DMDatos.RecorridoID.AsString;
                        DMDatos.Horario.filtered := True;
                        DMDatos.Horario.Open;
                      if not(DMDatos.Horario.IsEmpty) then  //si el recorrido no tiene viaje asignado pero tiene horarios asignados pregunto si continuo borrando los horarios o aborto
                         if (MessageDlg('ADVERTENCIA: Este recorrido tiene horarios asignados. Proceder a borrar?', mtWarning, [mbOk, mbCancel],0) = mrOk) then
                            begin
                               DMDatos.Horario.First;
                               while not (DMDatos.Horario.Eof) do
                                 begin
                                   if DMDatos.HorarioID_RECORRIDO.Value = DMDatos.RecorridoID.Value then
                                      DMDatos.Horario.Delete;
                                 end;
                            end
                         else
                           Abort;
                    end;
                MessageDlg('Recorrido borrado correctamente.', mtInformation, [mbOk],0);
             end;
         2: Abort;
      end;
end;
procedure TFrmRecorridoGrid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DMDatos.Horario.State = dsbrowse then DMDatos.Horario.Close;
  if DMDatos.Viaje.State = dsBrowse then DMDatos.Viaje.Close;
end;

procedure TFrmRecorridoGrid.FormShow(Sender: TObject);
begin
  DMDatos.qryViaje.Params.Clear;
  DMDatos.qryViaje.Params.CreateParam(ftInteger,'pID_RECORRIDO',ptInput);
  DMDatos.qryViaje.CommandText := 'SELECT * FROM VIAJE WHERE VIAJE.ID_RECORRIDO =:pID_RECORRIDO;';

  DMDatos.qryRecorrido.Params.Clear;
  DMDatos.qryRecorrido.CommandText := 'SELECT * FROM RECORRIDO ORDER BY RECORRIDO.ID;';
  inherited;
end;

procedure TFrmRecorridoGrid.WMActivate(Var Message: TWMActivate);
begin
  if DSBASE.DataSet.State = dsbrowse then DMDatos.Recorrido.Refresh;
end;
procedure TFrmRecorridoGrid.Button2Click(Sender: TObject);
begin
  inherited;
   TFrmGridHorarios.MostrarModal;
end;

end.
