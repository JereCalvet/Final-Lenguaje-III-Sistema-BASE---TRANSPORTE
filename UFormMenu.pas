unit UFormMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, XPStyleActnCtrls, ActnList, ActnMan, ToolWin,
  ActnCtrls, ActnMenus, Grids, DBGrids, DB, StdStyleActnCtrls;

type
  TFormMenu = class(TForm)
    Button4: TButton;
    actmmb1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    actUsuarios: TAction;
    actGrupos: TAction;
    actOpciones: TAction;
    actGrup_Opc: TAction;
    actUsu_Grup: TAction;
    Chofer: TAction;
    Pasajero: TAction;
    Vehiculo: TAction;
    Localidad: TAction;
    Tarifa: TAction;
    Reserva: TAction;
    actActViajes: TAction;
    Recorridos: TAction;
    actEstadoViaje: TAction;
    actReporteReseva: TAction;
    procedure Button4Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Opciones1Click(Sender: TObject);
    procedure GruposyOpciones1Click(Sender: TObject);
    procedure UsuariosyGrupos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actUsuariosExecute(Sender: TObject);
    procedure actGruposExecute(Sender: TObject);
    procedure actOpcionesExecute(Sender: TObject);
    procedure actGrup_OpcExecute(Sender: TObject);
    procedure actUsu_GrupExecute(Sender: TObject);
    procedure ChoferExecute(Sender: TObject);
    procedure PasajeroExecute(Sender: TObject);
    procedure VehiculoExecute(Sender: TObject);
    procedure LocalidadExecute(Sender: TObject);
    procedure TarifaExecute(Sender: TObject);
    procedure ReservaExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ActionManager1Update(Action: TBasicAction;
      var Handled: Boolean);
    procedure btn1Click(Sender: TObject);
    procedure RecorridosExecute(Sender: TObject);
    procedure actActViajesExecute(Sender: TObject);
    procedure actEstadoViajeExecute(Sender: TObject);
    procedure actReporteResevaExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses
  UFrmGridUsuarios, UFrmGridOpciones, UFrmGridGrupos, uFrmGrup_Opc, uFrmUsuGrup, uFrmLogin, UDMSeguridad, UDMDatos, 
  uFrmGridChoferes, uFrmGridPasajeros, uFrmGridVehiculo, uFrmGridLocalidad,
  uFrmGridTarifa, uFrmReservas, uFrmViaje, UqrPlantillaGenerica, uFrmRecorridoGrid, 
  uFrmGridHorarios, uqrReport_Reservas_Dia, uFrmGridViajes, uFrmGridReservas,
  uFrmConfirmaReserva, uFrmEstadoViajes, uFrmDlgTarifa, uFrmVentaReservas, 
  uDMReportes, uQrBoleto;


{$R *.dfm}

procedure TFormMenu.Button4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMenu.Usuarios1Click(Sender: TObject);
begin
   TFrmGridUsuarios.MostrarModal;
end;

procedure TFormMenu.Grupos1Click(Sender: TObject);
begin
   TFrmGridGrupos.MostrarModal;
end;

procedure TFormMenu.Opciones1Click(Sender: TObject);
begin
    TFrmGridOpciones.MostrarModal;
end;

procedure TFormMenu.GruposyOpciones1Click(Sender: TObject);
begin
   TFrmGrup_Opc.MostrarModal;
end;

procedure TFormMenu.UsuariosyGrupos1Click(Sender: TObject);
begin
   tFrmUsuGrup.MostrarModal;
end;

procedure TFormMenu.FormShow(Sender: TObject);
begin
    TFrmLogin.MostrarModal;
end;


procedure TFormMenu.actUsuariosExecute(Sender: TObject);
begin
  TFrmGridUsuarios.MostrarModal;
end;

procedure TFormMenu.actGruposExecute(Sender: TObject);
begin
  TFrmGridGrupos.MostrarModal;
end;

procedure TFormMenu.actOpcionesExecute(Sender: TObject);
begin
  TFrmGridOpciones.MostrarModal;
end;

procedure TFormMenu.actGrup_OpcExecute(Sender: TObject);
begin
  TFrmGrup_Opc.MostrarModal;
end;

procedure TFormMenu.actUsu_GrupExecute(Sender: TObject);
begin
  TFrmUsuGrup.MostrarModal;
end;

procedure TFormMenu.ChoferExecute(Sender: TObject);
begin
  TFrmGridChoferes.MostrarModal;
end;

procedure TFormMenu.PasajeroExecute(Sender: TObject);
begin
  TFrmGridPasajeros.MostrarModal;
end;

procedure TFormMenu.VehiculoExecute(Sender: TObject);
begin
  TFrmGridVehiculo.MostrarModal;
end;

procedure TFormMenu.LocalidadExecute(Sender: TObject);
begin
  TFrmGridLocalidad.MostrarModal;
end;

procedure TFormMenu.TarifaExecute(Sender: TObject);
begin
  TFrmGridTarifa.MostrarModal;
end;

procedure TFormMenu.ReservaExecute(Sender: TObject);
begin
  TFrmReservas.MostrarModal;
end;

procedure TFormMenu.Button2Click(Sender: TObject);
begin
  TFrmRecorridoGrid.MostrarModal;
end;

procedure TFormMenu.ActionManager1Update(Action: TBasicAction;
  var Handled: Boolean);
begin
   TAction(Action).Enabled := DMSeguridad.PuedeEjecutar(IntToStr(action.Tag));
end;

procedure TFormMenu.btn1Click(Sender: TObject);
begin
  TFrmGridHorarios.MostrarModal;
end;

procedure TFormMenu.RecorridosExecute(Sender: TObject);
begin
  TFrmRecorridoGrid.MostrarModal;
end;

procedure TFormMenu.actActViajesExecute(Sender: TObject);
begin
  TFrmGridViajes.MostrarModal;
end;

procedure TFormMenu.actEstadoViajeExecute(Sender: TObject);
begin
  TFrmEstadoViajes.MostrarModal;
end;

procedure TFormMenu.actReporteResevaExecute(Sender: TObject);
begin
  TFrmVentaReservas.MostrarModal;
end;

procedure TFormMenu.Button1Click(Sender: TObject);
begin
  qrBoleto.Preview;
end;

end.
