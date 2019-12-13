unit uFrmGridViajes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DBActns, ActnList, ImgList, DB, Grids,
  DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls;

type
  TFrmGridViajes = class(TFrmPlantillaGrid)
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBNAV1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridViajes: TFrmGridViajes;

implementation

uses
  UDMDatos, uFrmViaje, uFrmGridReservas;

{$R *.dfm}

procedure TFrmGridViajes.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 // inherited;
  if Button = nbInsert then
      begin
      DSBASE.DataSet.Insert;
      TFrmViaje.MostrarModal;
      end;

  if Button = nbEdit then
      begin
      DSBASE.DataSet.Edit;
      TFrmViaje.MostrarModal;
      end;

end;

procedure TFrmGridViajes.DBNAV1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  If (Button = nbdelete) then  //Verifica se o botão pressionado foi o Delete
      If MessageDlg('Desea borrar?', MtConfirmation, [MbYes, MbNo],0) = MrNo then  //exibe a mensagem confirmando se realmente é para excluir
        Abort  //se a resposta for Não, aborta.
      else
        begin
          DMDatos.Reservas.Open;
          if DMDatos.Reservas.Locate('ID_VIAJE', DMDatos.ViajeID.Value,[]) then
            begin
              DatabaseError('No se puede borrar, el viaje tiene reservas asignadas');
              Abort;
            end;
        end;
end;

procedure TFrmGridViajes.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if DMDatos.Reservas.State = dsInsert then
    begin
      DMDatos.qryPasajeros_Viaje.Close;
      DMDatos.qryPasajeros_Viaje.ParamByName('IDVIAJE').value := DMDatos.ViajeID.Value;
      DMDatos.qryPasajeros_Viaje.Open;
      if (DMDatos.qryPasajeros_Viaje.IsEmpty) then
          MessageDlg('Este viaje no tiene reservas asignadas', mtInformation,[mbOK],0)
      else
          TFrmGridReservas.MostrarModal;
    end;
end;

procedure TFrmGridViajes.FormShow(Sender: TObject);
begin
  //inherited;
  DMDatos.Viaje.Close;
  DMDatos.qryViaje.CommandText := 'SELECT * FROM VIAJE ORDER BY VIAJE.FECHA DESC';
  DMDatos.Viaje.Open;
end;

end.
