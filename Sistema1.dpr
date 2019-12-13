program Sistema1;

uses
  Forms,
  UFormMenu in 'UFormMenu.pas' {FormMenu},
  UDMSQL in 'UDMSQL.pas' {DMSQL: TDataModule},
  UDMSeguridad in 'UDMSeguridad.pas' {DMSeguridad: TDataModule},
  UFrmPlantillaGenerica in 'UFrmPlantillaGenerica.pas' {FrmPlantillaGenerica},
  UFrmPlantillaGrid in 'UFrmPlantillaGrid.pas' {FrmPlantillaGrid},
  UFrmPlantillaDlg in 'UFrmPlantillaDlg.pas' {FrmPlantillaDlg},
  UFrmGridUsuarios in 'UFrmGridUsuarios.pas' {FrmGridUsuarios},
  uFrmDlgUsuarios in 'uFrmDlgUsuarios.pas' {FrmDlgUsuarios},
  UFrmGridOpciones in 'UFrmGridOpciones.pas' {FrmGridOpciones},
  uFrmDlgOpciones in 'uFrmDlgOpciones.pas' {FrmDlgOpciones},
  UFrmDlgGrupos in 'UFrmDlgGrupos.pas' {FrmDlgGrupos},
  UFrmGridGrupos in 'UFrmGridGrupos.pas' {FrmGridGrupos},
  uFrmGrup_Opc in 'uFrmGrup_Opc.pas' {FrmGrup_Opc},
  uFrmUsuGrup in 'uFrmUsuGrup.pas' {FrmUsuGrup},
  UDMDatos in 'UDMDatos.pas' {DMDatos: TDataModule},
  uFrmLogin in 'uFrmLogin.pas' {FrmLogin},
  uFrmGridChoferes in 'uFrmGridChoferes.pas' {FrmGridChoferes},
  uFrmDlgChoferes in 'uFrmDlgChoferes.pas' {FrmDlgChoferes},
  uFrmGridPasajeros in '..\Clase 5\uFrmGridPasajeros.pas' {FrmGridPasajeros},
  uFrmDlgPasajeros in '..\Clase 5\uFrmDlgPasajeros.pas' {FrmDlgPasajeros},
  uFrmGridVehiculo in '..\Clase 5\uFrmGridVehiculo.pas' {FrmGridVehiculo},
  uFrmDlgVehiculo in '..\Clase 5\uFrmDlgVehiculo.pas' {FrmDlgVehiculo},
  uFrmGridLocalidad in 'uFrmGridLocalidad.pas' {FrmGridLocalidad},
  uFrmDlgLocalidad in 'uFrmDlgLocalidad.pas' {FrmDlgLocalidad},
  uFrmGridTarifa in 'uFrmGridTarifa.pas' {FrmGridTarifa},
  uFrmDlgTarifa in 'uFrmDlgTarifa.pas' {FrmDlgTarifa},
  uFrmReservas in 'uFrmReservas.pas' {FrmReservas},
  uFrmViaje in 'uFrmViaje.pas' {FrmViaje},
  UqrPlantillaGenerica in 'UqrPlantillaGenerica.pas' {qrPlantillaGenerica: TQuickRep},
  uFrmRecorridoGrid in 'uFrmRecorridoGrid.pas' {FrmRecorridoGrid},
  uFrmDlgRecorrido in 'uFrmDlgRecorrido.pas' {FrmDlgRecorrido},
  uFrmGridHorarios in 'uFrmGridHorarios.pas' {FrmGridHorarios},
  uqrReport_Reservas_Dia in 'uqrReport_Reservas_Dia.pas' {qrReport_Reservas_Dia: TQuickRep},
  uFrmConfirmaReserva in 'uFrmConfirmaReserva.pas' {FrmConfirmaReserva},
  uDMReportes in '..\Clase 5\uDMReportes.pas' {DMReportes: TDataModule},
  uFrmGridViajes in 'uFrmGridViajes.pas' {FrmGridViajes},
  uFrmGridReservas in 'uFrmGridReservas.pas' {FrmGridReservas},
  uFrmEstadoViajes in 'uFrmEstadoViajes.pas' {FrmEstadoViajes},
  UfrmDlgHorario in 'UfrmDlgHorario.pas' {FrmDlgHorario},
  uQrPasajeros_Viaje in 'uQrPasajeros_Viaje.pas' {qrPasajeros_Viaje: TQuickRep},
  uFrmVentaReservas in 'uFrmVentaReservas.pas' {FrmVentaReservas},
  uQrBoleto in 'uQrBoleto.pas' {qrBoleto: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TDMSQL, DMSQL);
  Application.CreateForm(TDMSeguridad, DMSeguridad);
  Application.CreateForm(TDMDatos, DMDatos);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TDMReportes, DMReportes);
  Application.CreateForm(TqrBoleto, qrBoleto);
  Application.Run;
end.
