unit UDMDatos;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, DBClient, Provider, Variants;

type
  TDMDatos = class(TDataModule)
    prChoferes: TDataSetProvider;
    Choferes: TClientDataSet;
    qryChoferes: TSQLDataSet;
    prPasajeros: TDataSetProvider;
    Pasajeros: TClientDataSet;
    qryPasajeros: TSQLDataSet;
    prVehiculo: TDataSetProvider;
    Vehiculo: TClientDataSet;
    qryVehiculo: TSQLDataSet;
    DataSetProvider3: TDataSetProvider;
    ClientDataSet3: TClientDataSet;
    SQLDataSet3: TSQLDataSet;
    qryVehiculoID: TIntegerField;
    qryVehiculoMARCA: TStringField;
    qryVehiculoNOMBRE: TStringField;
    qryVehiculoMODELO: TStringField;
    qryVehiculoPATENTE: TStringField;
    qryVehiculoCAPACIDAD: TStringField;
    VehiculoID: TIntegerField;
    VehiculoMARCA: TStringField;
    VehiculoNOMBRE: TStringField;
    VehiculoMODELO: TStringField;
    VehiculoPATENTE: TStringField;
    VehiculoCAPACIDAD: TStringField;
    prLocalidad: TDataSetProvider;
    Localidad: TClientDataSet;
    qryLocalidad: TSQLDataSet;
    qryLocalidadID: TIntegerField;
    qryLocalidadNOMBRE: TStringField;
    qryLocalidadPROVINCIA: TStringField;
    LocalidadID: TIntegerField;
    LocalidadNOMBRE: TStringField;
    LocalidadPROVINCIA: TStringField;
    prTarifa: TDataSetProvider;
    Tarifa: TClientDataSet;
    qryTarifa: TSQLDataSet;
    qryTarifaID: TIntegerField;
    qryTarifaPRECIO: TFMTBCDField;
    qryTarifaDESCRIPCION: TStringField;
    TarifaID: TIntegerField;
    TarifaPRECIO: TFMTBCDField;
    TarifaDESCRIPCION: TStringField;
    TarifalookupDesde: TStringField;
    TarifalookupHasta: TStringField;
    prViaje: TDataSetProvider;
    Viaje: TClientDataSet;
    qryViaje: TSQLDataSet;
    qryViajeID: TIntegerField;
    qryViajeID_CHOFER: TIntegerField;
    qryViajeID_VEHICULO: TIntegerField;
    qryViajeID_RECORRIDO: TIntegerField;
    ViajeID: TIntegerField;
    ViajeID_CHOFER: TIntegerField;
    ViajeID_VEHICULO: TIntegerField;
    ViajeID_RECORRIDO: TIntegerField;
    prReservas: TDataSetProvider;
    Reservas: TClientDataSet;
    qryReservas: TSQLDataSet;
    qryReservasID: TIntegerField;
    qryReservasID_VIAJE: TIntegerField;
    qryReservasID_PASAJERO: TIntegerField;
    qryReservasID_TARIFA: TIntegerField;
    qryReservasIMPORTE: TFMTBCDField;
    qryReservasFECHA: TDateField;
    qryReservasFECHA_VENCIMIENTO: TDateField;
    ReservasID: TIntegerField;
    ReservasID_VIAJE: TIntegerField;
    ReservasID_PASAJERO: TIntegerField;
    ReservasID_TARIFA: TIntegerField;
    ReservasIMPORTE: TFMTBCDField;
    ReservasFECHA: TDateField;
    ReservasFECHA_VENCIMIENTO: TDateField;
    ReservaslookNomPasajero: TStringField;
    ReservaslookApePasajro: TStringField;
    ReservaslookTarifa: TStringField;
    ViajelookChofNom: TStringField;
    ViajelookVehiNomb: TStringField;
    qryReservasCODIGO: TStringField;
    qryReservasL_INICIO: TIntegerField;
    qryReservasL_FIN: TIntegerField;
    ReservasL_FIN: TIntegerField;
    ReservasL_INICIO: TIntegerField;
    ReservasCODIGO: TStringField;
    ReservaslookL_INICIO: TStringField;
    ReservaslookL_FIN: TStringField;
    prRecorrido: TDataSetProvider;
    Recorrido: TClientDataSet;
    qryRecorrido: TSQLDataSet;
    qryViajeFECHA: TDateField;
    ViajeFECHA: TDateField;
    ViajelookVehiMod: TStringField;
    qryRecorridoID: TIntegerField;
    qryRecorridoL_INICIO: TIntegerField;
    qryRecorridoL_FIN: TIntegerField;
    qryRecorridoESCALAS: TIntegerField;
    RecorridoID: TIntegerField;
    RecorridoL_INICIO: TIntegerField;
    RecorridoL_FIN: TIntegerField;
    RecorridoESCALAS: TIntegerField;
    RecorridolookL_Inicio: TStringField;
    RecorridolookL_Fin: TStringField;
    qryCalculaDisponibilidad: TSQLDataSet;
    prCalculaDisponibilidad: TDataSetProvider;
    CalculaDisponibilidad: TClientDataSet;
    qryArrayRecorrido: TSQLDataSet;
    prArrayRecorrido: TDataSetProvider;
    ArrayRecorrido: TClientDataSet;
    qryArrayRecorridoORDEN: TIntegerField;
    qryArrayRecorridoID_LOCALIDAD: TIntegerField;
    qryArrayRecorridoL_INICIO: TIntegerField;
    qryArrayRecorridoL_FIN: TIntegerField;
    ArrayRecorridoORDEN: TIntegerField;
    ArrayRecorridoID_LOCALIDAD: TIntegerField;
    ArrayRecorridoL_INICIO: TIntegerField;
    ArrayRecorridoL_FIN: TIntegerField;
    qryCalculaDisponibilidadID_LOCALIDAD: TIntegerField;
    qryCalculaDisponibilidadORDEN: TIntegerField;
    qryCalculaDisponibilidadID: TIntegerField;
    qryCalculaDisponibilidadL_INICIO: TIntegerField;
    qryCalculaDisponibilidadL_FIN: TIntegerField;
    qryCalculaDisponibilidadORDEN_INICIO: TIntegerField;
    qryCalculaDisponibilidadORDEN_FINAL: TIntegerField;
    CalculaDisponibilidadID_LOCALIDAD: TIntegerField;
    CalculaDisponibilidadORDEN: TIntegerField;
    CalculaDisponibilidadID: TIntegerField;
    CalculaDisponibilidadL_INICIO: TIntegerField;
    CalculaDisponibilidadL_FIN: TIntegerField;
    CalculaDisponibilidadORDEN_INICIO: TIntegerField;
    CalculaDisponibilidadORDEN_FINAL: TIntegerField;
    ViajelookVehCapac: TIntegerField;
    qryRecorridoCODIGO: TStringField;
    RecorridoCODIGO: TStringField;
    ViajelookCodRec: TStringField;
    qryReservasESTADO: TStringField;
    ReservasESTADO: TStringField;
    qryTarifaL_INICIO: TIntegerField;
    qryTarifaL_FIN: TIntegerField;
    TarifaL_INICIO: TIntegerField;
    TarifaL_FIN: TIntegerField;
    qryChoferesID: TIntegerField;
    qryChoferesNOMBRE: TStringField;
    qryChoferesDIRECCION: TStringField;
    qryChoferesTELEFONO: TStringField;
    qryChoferesMAIL: TStringField;
    qryChoferesLOCALIDAD: TStringField;
    qryChoferesDNI: TStringField;
    qryChoferesAPELLIDO: TStringField;
    ChoferesID: TIntegerField;
    ChoferesAPELLIDO: TStringField;
    ChoferesNOMBRE: TStringField;
    ChoferesDIRECCION: TStringField;
    ChoferesTELEFONO: TStringField;
    ChoferesMAIL: TStringField;
    ChoferesLOCALIDAD: TStringField;
    ChoferesDNI: TStringField;
    qryCheckDniChoferes: TSQLDataSet;
    qryCheckDniChoferesID: TIntegerField;
    qryCheckDniChoferesNOMBRE: TStringField;
    qryCheckDniChoferesAPELLIDO: TStringField;
    qryCheckDniChoferesDNI: TStringField;
    qryCheckDniChoferesDIRECCION: TStringField;
    qryCheckDniChoferesTELEFONO: TStringField;
    qryCheckDniChoferesMAIL: TStringField;
    qryCheckDniChoferesLOCALIDAD: TStringField;
    qryPasajeros_Viaje: TSQLDataSet;
    prPasajeros_Viaje: TDataSetProvider;
    Pasajeros_Viaje: TClientDataSet;
    qryPasajeros_ViajeID: TIntegerField;
    qryPasajeros_ViajeID_PASAJERO: TIntegerField;
    qryPasajeros_ViajeID_TARIFA: TIntegerField;
    qryPasajeros_ViajeIMPORTE: TFMTBCDField;
    qryPasajeros_ViajeFECHA: TDateField;
    qryPasajeros_ViajeFECHA_VENCIMIENTO: TDateField;
    qryPasajeros_ViajeCODIGO: TStringField;
    qryPasajeros_ViajeID_VIAJE: TIntegerField;
    qryPasajeros_ViajeL_INICIO: TIntegerField;
    qryPasajeros_ViajeL_FIN: TIntegerField;
    qryPasajeros_ViajeESTADO: TStringField;
    Pasajeros_ViajeID: TIntegerField;
    Pasajeros_ViajeID_PASAJERO: TIntegerField;
    Pasajeros_ViajeID_TARIFA: TIntegerField;
    Pasajeros_ViajeIMPORTE: TFMTBCDField;
    Pasajeros_ViajeFECHA: TDateField;
    Pasajeros_ViajeFECHA_VENCIMIENTO: TDateField;
    Pasajeros_ViajeCODIGO: TStringField;
    Pasajeros_ViajeID_VIAJE: TIntegerField;
    Pasajeros_ViajeL_INICIO: TIntegerField;
    Pasajeros_ViajeL_FIN: TIntegerField;
    Pasajeros_ViajeESTADO: TStringField;
    Pasajeros_ViajelookL_Inicio: TStringField;
    Pasajeros_ViajelookL_Fin: TStringField;
    Pasajeros_ViajelookPajNom: TStringField;
    Pasajeros_ViajelookPasjApe: TStringField;
    ViajelookRecorrido: TStringField;
    qrypViaje: TSQLDataSet;
    prpViaje: TDataSetProvider;
    pViaje: TClientDataSet;
    qrypViajeID: TIntegerField;
    qrypViajeID_CHOFER: TIntegerField;
    qrypViajeID_VEHICULO: TIntegerField;
    qrypViajeID_RECORRIDO: TIntegerField;
    qrypViajeFECHA: TDateField;
    pViajeID: TIntegerField;
    pViajeID_CHOFER: TIntegerField;
    pViajeID_VEHICULO: TIntegerField;
    pViajeID_RECORRIDO: TIntegerField;
    pViajeFECHA: TDateField;
    pViajelookChofNomb: TStringField;
    pViajelookVehiMar: TStringField;
    pViajelookVehNom: TStringField;
    pViajelookCodRec: TStringField;
    pViajelookVehCap: TIntegerField;
    qryCheckDniPasajeros: TSQLDataSet;
    qryCheckDniPasajerosID: TIntegerField;
    qryCheckDniPasajerosNOMBRE: TStringField;
    qryCheckDniPasajerosAPELLIDO: TStringField;
    qryCheckDniPasajerosTELEFONO: TStringField;
    qryCheckDniPasajerosDNI: TStringField;
    qryCheckDniPasajerosDIRECCION: TStringField;
    qryCheckDniPasajerosLOCALIDAD: TStringField;
    qryLocalidadCODCIUDAD: TStringField;
    LocalidadCODCIUDAD: TStringField;
    qryPasajerosID: TIntegerField;
    qryPasajerosNOMBRE: TStringField;
    qryPasajerosAPELLIDO: TStringField;
    qryPasajerosTELEFONO: TStringField;
    qryPasajerosDNI: TStringField;
    qryPasajerosDIRECCION: TStringField;
    qryPasajerosLOCALIDAD: TStringField;
    PasajerosID: TIntegerField;
    PasajerosNOMBRE: TStringField;
    PasajerosAPELLIDO: TStringField;
    PasajerosTELEFONO: TStringField;
    PasajerosDNI: TStringField;
    PasajerosDIRECCION: TStringField;
    PasajerosLOCALIDAD: TStringField;
    pViajeCalDisp: TIntegerField;
    prMarcoCalendario: TDataSetProvider;
    MarcoCalendario: TClientDataSet;
    qryMarcoCalendario: TSQLDataSet;
    qryMarcoCalendarioID: TIntegerField;
    qryMarcoCalendarioFECHA: TDateField;
    MarcoCalendarioID: TIntegerField;
    MarcoCalendarioFECHA: TDateField;
    pViajeHoraSalida: TTimeField;
    qryArrayRecorridoHORA_SALIDA: TTimeField;
    ArrayRecorridoHORA_SALIDA: TTimeField;
    qryRecorridoDESCRIPCION: TStringField;
    RecorridoDESCRIPCION: TStringField;
    ViajelookPatente: TStringField;
    ViajelookChofApe: TStringField;
    prEstadoViaje: TDataSetProvider;
    EstadoViaje: TClientDataSet;
    qryEstadoViaje: TSQLDataSet;
    qryEstadoViajeID: TIntegerField;
    qryEstadoViajeID_VIAJE: TIntegerField;
    qryEstadoViajeID_LOCALIDAD: TIntegerField;
    qryEstadoViajeESTADO: TStringField;
    EstadoViajeID: TIntegerField;
    EstadoViajeID_VIAJE: TIntegerField;
    EstadoViajeID_LOCALIDAD: TIntegerField;
    EstadoViajeESTADO: TStringField;
    ArrayRecorridolookCiudad: TStringField;
    prVerificaHorario: TDataSetProvider;
    VerificaHorario: TClientDataSet;
    qryVerificaHorario: TSQLDataSet;
    VerificaHorarioID: TIntegerField;
    qryVerificaHorarioID: TIntegerField;
    qryTarifaCODIGO: TStringField;
    TarifaCODIGO: TStringField;
    prHorario: TDataSetProvider;
    Horario: TClientDataSet;
    qryHorario: TSQLDataSet;
    qryHorarioID: TIntegerField;
    qryHorarioID_RECORRIDO: TIntegerField;
    qryHorarioHORA_SALIDA: TTimeField;
    qryHorarioID_LOCALIDAD: TIntegerField;
    qryHorarioORDEN: TIntegerField;
    HorarioID: TIntegerField;
    HorarioID_RECORRIDO: TIntegerField;
    HorarioHORA_SALIDA: TTimeField;
    HorarioID_LOCALIDAD: TIntegerField;
    HorarioORDEN: TIntegerField;
    HorariolookCiudad: TStringField;
    HorariolookRecorrido: TStringField;
    qryCheckOrdenLocalidad: TSQLDataSet;
    qryCheckOrdenLocalidadID: TIntegerField;
    qryCheckOrdenLocalidadID_RECORRIDO: TIntegerField;
    qryCheckOrdenLocalidadHORA_SALIDA: TTimeField;
    qryCheckOrdenLocalidadID_LOCALIDAD: TIntegerField;
    qryCheckOrdenLocalidadORDEN: TIntegerField;
    qryCheckCodLocalidad: TSQLDataSet;
    qryCheckCodLocalidadID: TIntegerField;
    qryCheckCodLocalidadNOMBRE: TStringField;
    qryCheckCodLocalidadCODCIUDAD: TStringField;
    qryCheckCodLocalidadPROVINCIA: TStringField;
    qryBoleto: TSQLDataSet;
    prBoleto: TDataSetProvider;
    Boleto: TClientDataSet;
    qryBoletoID: TIntegerField;
    qryBoletoID_RESERVAS: TIntegerField;
    qryBoletoNUM_BOLETO: TStringField;
    BoletoID: TIntegerField;
    BoletoID_RESERVAS: TIntegerField;
    BoletoNUM_BOLETO: TStringField;
    qryLookPasaj: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    prLookPasaj: TDataSetProvider;
    LookPasaj: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    prAnulaBoleto: TDataSetProvider;
    AnulaBoleto: TClientDataSet;
    qryAnulaBoleto: TSQLDataSet;
    qryAnulaBoletoID: TIntegerField;
    qryAnulaBoletoID_RESERVAS: TIntegerField;
    qryAnulaBoletoNUM_BOLETO: TStringField;
    AnulaBoletoID: TIntegerField;
    AnulaBoletoID_RESERVAS: TIntegerField;
    AnulaBoletoNUM_BOLETO: TStringField;
    procedure CONCILIACION(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure prChoferesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ChoferesNewRecord(DataSet: TDataSet);
    procedure ChoferesAfterPost(DataSet: TDataSet);
    procedure ChoferesAfterDelete(DataSet: TDataSet);
    procedure PasajerosAfterPost(DataSet: TDataSet);
    procedure PasajerosAfterDelete(DataSet: TDataSet);
    procedure prPasajerosBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure PasajerosNewRecord(DataSet: TDataSet);
    procedure VehiculoAfterPost(DataSet: TDataSet);
    procedure VehiculoAfterDelete(DataSet: TDataSet);
    procedure prVehiculoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure VehiculoNewRecord(DataSet: TDataSet);
    procedure LocalidadAfterPost(DataSet: TDataSet);
    procedure LocalidadAfterDelete(DataSet: TDataSet);
    procedure LocalidadNewRecord(DataSet: TDataSet);
    procedure TarifaAfterDelete(DataSet: TDataSet);
    procedure TarifaAfterPost(DataSet: TDataSet);
    procedure prLocalidadBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prTarifaBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prReservasBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ReservasAfterPost(DataSet: TDataSet);
    procedure ReservasAfterDelete(DataSet: TDataSet);
    procedure ReservasNewRecord(DataSet: TDataSet);
    procedure ViajeAfterPost(DataSet: TDataSet);
    procedure ViajeAfterDelete(DataSet: TDataSet);
    procedure prViajeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure ViajeNewRecord(DataSet: TDataSet);
    procedure RecorridoAfterDelete(DataSet: TDataSet);
    procedure RecorridoAfterPost(DataSet: TDataSet);
    procedure prRecorridoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure RecorridoNewRecord(DataSet: TDataSet);
    procedure TarifaNewRecord(DataSet: TDataSet);
    procedure TarifaBeforeInsert(DataSet: TDataSet);
    procedure ChoferesDNIValidate(Sender: TField);
    procedure ChoferesBeforePost(DataSet: TDataSet);
    procedure Pasajeros_ViajeAfterDelete(DataSet: TDataSet);
    procedure PasajerosDNIValidate(Sender: TField);
    procedure PasajerosBeforePost(DataSet: TDataSet);
    procedure TarifaBeforeDelete(DataSet: TDataSet);
    procedure TarifaBeforeEdit(DataSet: TDataSet);
    procedure RecorridoBeforePost(DataSet: TDataSet);
    function HoraValida(Hora: string): Boolean;
    procedure VehiculoBeforePost(DataSet: TDataSet);
    procedure LocalidadBeforePost(DataSet: TDataSet);
    procedure TarifaBeforePost(DataSet: TDataSet);
    procedure prEstadoViajeBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure EstadoViajeAfterDelete(DataSet: TDataSet);
    procedure EstadoViajeAfterPost(DataSet: TDataSet);
    procedure EstadoViajeNewRecord(DataSet: TDataSet);
    procedure ChoferesBeforeInsert(DataSet: TDataSet);
    procedure PasajerosBeforeInsert(DataSet: TDataSet);
    procedure VehiculoBeforeInsert(DataSet: TDataSet);
    procedure LocalidadBeforeInsert(DataSet: TDataSet);
    procedure RecorridoBeforeInsert(DataSet: TDataSet);
    procedure ReservasBeforeInsert(DataSet: TDataSet);
    procedure ChoferesBeforeEdit(DataSet: TDataSet);
    procedure PasajerosBeforeEdit(DataSet: TDataSet);
    procedure VehiculoBeforeEdit(DataSet: TDataSet);
    procedure LocalidadBeforeEdit(DataSet: TDataSet);
    procedure RecorridoBeforeEdit(DataSet: TDataSet);
    procedure ChoferesBeforeDelete(DataSet: TDataSet);
    procedure PasajerosBeforeDelete(DataSet: TDataSet);
    procedure VehiculoBeforeDelete(DataSet: TDataSet);
    procedure LocalidadBeforeDelete(DataSet: TDataSet);
    procedure RecorridoBeforeDelete(DataSet: TDataSet);
    procedure ViajeBeforeDelete(DataSet: TDataSet);
    procedure ViajeBeforeEdit(DataSet: TDataSet);
    procedure ViajeBeforeInsert(DataSet: TDataSet);
    procedure EstadoViajeBeforeEdit(DataSet: TDataSet);
    procedure EstadoViajeBeforePost(DataSet: TDataSet);
    procedure HorarioNewRecord(DataSet: TDataSet);
    procedure HorarioAfterPost(DataSet: TDataSet);
    procedure HorarioAfterDelete(DataSet: TDataSet);
    procedure prHorarioBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure HorarioBeforePost(DataSet: TDataSet);
    procedure HorarioBeforeEdit(DataSet: TDataSet);
    procedure HorarioBeforeInsert(DataSet: TDataSet);
    procedure HorarioBeforeDelete(DataSet: TDataSet);
    procedure HorarioHORA_SALIDASetText(Sender: TField;
      const Text: String);
    procedure HorarioORDENValidate(Sender: TField);
    procedure LocalidadCODCIUDADValidate(Sender: TField);
    procedure prBoletoBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure BoletoNewRecord(DataSet: TDataSet);
    procedure BoletoAfterPost(DataSet: TDataSet);
    procedure BoletoAfterDelete(DataSet: TDataSet);
    procedure AnulaBoletoAfterDelete(DataSet: TDataSet);
    procedure AnulaBoletoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDatos: TDMDatos;

implementation

uses
  UDMSQL, uFrmReservas, UDMSeguridad, UFormMenu, uFrmGridPasajeros;

{$R *.dfm}

procedure TDMDatos.CONCILIACION(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
    ApplicationShowException(e);
    Abort;
end;

procedure TDMDatos.prChoferesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('CHOFERES')
end;

procedure TDMDatos.ChoferesNewRecord(DataSet: TDataSet);
begin
    ChoferesID.Value := -1;
end;

procedure TDMDatos.ChoferesAfterPost(DataSet: TDataSet);
begin
  Choferes.ApplyUpdates(0);
end;

procedure TDMDatos.ChoferesAfterDelete(DataSet: TDataSet);
begin
  Choferes.ApplyUpdates(0);
end;

procedure TDMDatos.PasajerosAfterPost(DataSet: TDataSet);
begin
  Pasajeros.ApplyUpdates(0);
end;

procedure TDMDatos.PasajerosAfterDelete(DataSet: TDataSet);
begin
  Pasajeros.ApplyUpdates(0);
end;

procedure TDMDatos.prPasajerosBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
    if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('PASAJEROS')
end;

procedure TDMDatos.PasajerosNewRecord(DataSet: TDataSet);
begin
  PasajerosID.Value := -1;
end;

procedure TDMDatos.VehiculoAfterPost(DataSet: TDataSet);
begin
  Vehiculo.ApplyUpdates(0);
end;

procedure TDMDatos.VehiculoAfterDelete(DataSet: TDataSet);
begin
  Vehiculo.ApplyUpdates(0);
end;

procedure TDMDatos.prVehiculoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
   if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('VEHICULOS')
end;

procedure TDMDatos.VehiculoNewRecord(DataSet: TDataSet);
begin
  VehiculoID.Value := -1;
end;

procedure TDMDatos.LocalidadAfterPost(DataSet: TDataSet);
begin
  Localidad.ApplyUpdates(0);
end;

procedure TDMDatos.LocalidadAfterDelete(DataSet: TDataSet);
begin
  Localidad.ApplyUpdates(0);
end;

procedure TDMDatos.LocalidadNewRecord(DataSet: TDataSet);
begin
  LocalidadID.Value := -1;
end;

procedure TDMDatos.TarifaAfterDelete(DataSet: TDataSet);
begin
  Tarifa.ApplyUpdates(0);
end;

procedure TDMDatos.TarifaAfterPost(DataSet: TDataSet);
begin
  Tarifa.ApplyUpdates(0);
end;

procedure TDMDatos.prLocalidadBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
    if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('LOCALIDAD')
end;

procedure TDMDatos.prTarifaBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
    if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('TARIFA')
end;

procedure TDMDatos.prReservasBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
    if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('RESERVA');
end;

procedure TDMDatos.ReservasAfterPost(DataSet: TDataSet);
begin
  Reservas.ApplyUpdates(0);
end;

procedure TDMDatos.ReservasAfterDelete(DataSet: TDataSet);
begin
  Reservas.ApplyUpdates(0);
end;

procedure TDMDatos.ReservasNewRecord(DataSet: TDataSet);
begin
  ReservasID.Value := -1;
end;

procedure TDMDatos.ViajeAfterPost(DataSet: TDataSet);
begin
  Viaje.ApplyUpdates(0);
end;

procedure TDMDatos.ViajeAfterDelete(DataSet: TDataSet);
begin
  Viaje.ApplyUpdates(0);
end;

procedure TDMDatos.prViajeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
    DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('VIAJE')
end;

procedure TDMDatos.ViajeNewRecord(DataSet: TDataSet);
begin
  ViajeID.Value := -1;
end;

procedure TDMDatos.RecorridoAfterDelete(DataSet: TDataSet);
begin
  Recorrido.ApplyUpdates(0);
end;

procedure TDMDatos.RecorridoAfterPost(DataSet: TDataSet);
begin
  Recorrido.ApplyUpdates(0);
end;

procedure TDMDatos.prRecorridoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
    if UpdateKind = ukInsert then
    DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('RECORRIDO')
end;

procedure TDMDatos.RecorridoNewRecord(DataSet: TDataSet);
begin
  RecorridoID.Value := -1;
end;

procedure TDMDatos.TarifaNewRecord(DataSet: TDataSet);
begin
  TarifaID.Value := -1;
end;

procedure TDMDatos.TarifaBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('510')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.ChoferesDNIValidate(Sender: TField);
begin
   qryCheckDniChoferes.Close;
   qryCheckDniChoferes.ParamByName('DNI').value := ChoferesDNI.Value;
   qryCheckDniChoferes.Open;

   if not (qryCheckDniChoferes.IsEmpty) then
      if (Choferes.State = dsInsert) or (ChoferesID.Value <> qryCheckDniChoferesID.Value) then
          DatabaseError('DNI existente');
end;

procedure TDMDatos.ChoferesBeforePost(DataSet: TDataSet);
begin
  if ChoferesAPELLIDO.Value = '' then
    DatabaseError('Debe ingresar un Apellido');
  if ChoferesNOMBRE.Value = '' then
    DatabaseError('Debe ingresar un Nombre');
   if ChoferesDNI.Value = '' then
    DatabaseError('Debe ingresar un DNI');
  if ChoferesTELEFONO.Value = '' then
    DatabaseError('Debe ingresar un Teléfono');
  if ChoferesDIRECCION.Value = '' then
    DatabaseError('Debe ingresar una Dirección');
  if not (ChoferesAPELLIDO.Value = '') then
    ChoferesAPELLIDO.Value:=AnsiUpperCase(ChoferesAPELLIDO.Value);
  if not (ChoferesNOMBRE.Value = '') then
    ChoferesNOMBRE.Value:=AnsiUpperCase(ChoferesNOMBRE.Value);
  if not (ChoferesLOCALIDAD.Value = '') then
    ChoferesLOCALIDAD.Value:=AnsiUpperCase(ChoferesLOCALIDAD.Value);
   if not (ChoferesDIRECCION.Value = '') then
    ChoferesDIRECCION.Value:=AnsiUpperCase(ChoferesDIRECCION.Value);
end;

procedure TDMDatos.Pasajeros_ViajeAfterDelete(DataSet: TDataSet);
begin
  Pasajeros_Viaje.ApplyUpdates(0);
end;

procedure TDMDatos.PasajerosDNIValidate(Sender: TField);
begin
   qryCheckDniPasajeros.Close;
   qryCheckDniPasajeros.ParamByName('DNI').value := PasajerosDNI.Value;
   qryCheckDniPasajeros.Open;

   if not (qryCheckDniPasajeros.IsEmpty) then
      if (Pasajeros.State = dsInsert) or (PasajerosID.Value <> qryCheckDniPasajerosID.Value) then
          DatabaseError('DNI existente');
end;

procedure TDMDatos.PasajerosBeforePost(DataSet: TDataSet);
begin
  if PasajerosAPELLIDO.Value = '' then
    DatabaseError('Debe ingresar un Apellido');
  if PasajerosNOMBRE.Value = '' then
    DatabaseError('Debe ingresar un Nombre');
  if PasajerosDNI.Value = '' then
    DatabaseError('Debe ingresar un DNI');
   if PasajerosTELEFONO.Value = '' then
    DatabaseError('Debe ingresar un Teléfono');
  if PasajerosDIRECCION.Value = '' then
    DatabaseError('Debe ingresar una Direccion');
   if not (PasajerosNOMBRE.Value = '') then
    PasajerosNOMBRE.Value:=AnsiUpperCase(PasajerosNOMBRE.Value);
   if not (PasajerosAPELLIDO.Value = '') then
    PasajerosAPELLIDO.Value:=AnsiUpperCase(PasajerosAPELLIDO.Value);
   if not (PasajerosDIRECCION.Value = '') then
    PasajerosDIRECCION.Value:=AnsiUpperCase(PasajerosDIRECCION.Value);
   if not (PasajerosLOCALIDAD.Value = '') then
    PasajerosLOCALIDAD.Value:=AnsiUpperCase(PasajerosLOCALIDAD.Value);
end;

procedure TDMDatos.TarifaBeforeDelete(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('530')) then
    DatabaseError('No esta autorizado a eliminar datos');
end;

procedure TDMDatos.TarifaBeforeEdit(DataSet: TDataSet);
begin
   if not (DMSeguridad.PuedeEjecutar('520')) then
    DatabaseError('No esta autorizado a editar datos');
end;

procedure TDMDatos.RecorridoBeforePost(DataSet: TDataSet);
begin
  if RecorridoL_INICIO.Value = 0 then
     DatabaseError('Debe ingresar una ciudad inicial');
  if RecorridoL_FIN.Value = 0 then
     DatabaseError('Debe ingresar una ciudad destino');
  if RecorridoDESCRIPCION.Value = '' then
     DatabaseError('Ingrese una breve descripción');
  if not (RecorridoDESCRIPCION.Value = '') then
     RecorridoDESCRIPCION.Value:=AnsiUpperCase(RecorridoDESCRIPCION.Value);
end;

function TDMDatos.HoraValida(Hora: string): Boolean;
var
  dt: TDateTime;
begin
//  Result := True;
//  try
//    dt := StrToTime(Hora);
//  except
//    Result := False;
//  end;
end;

procedure TDMDatos.VehiculoBeforePost(DataSet: TDataSet);
begin
   if VehiculoMARCA.Value = '' then
    DatabaseError('Debe ingresar una Marca');
   if VehiculoNOMBRE.Value = '' then
    DatabaseError('Debe ingresar el Nombre');
   if VehiculoPATENTE.Value = '' then
    DatabaseError('Debe ingresar la Patente');
    if VehiculoCAPACIDAD.Value = '' then
    DatabaseError('Debe ingresar la capacidad del vehiculo');
   if not (VehiculoCAPACIDAD.Value = '') then
    VehiculoMARCA.Value:=AnsiUpperCase(VehiculoMARCA.Value);
   if not (VehiculoNOMBRE.Value = '') then
    VehiculoNOMBRE.Value:=AnsiUpperCase(VehiculoNOMBRE.Value);
   if not (VehiculoPATENTE.Value = '') then
    VehiculoPATENTE.Value:=AnsiUpperCase(VehiculoPATENTE.Value);
end;

procedure TDMDatos.LocalidadBeforePost(DataSet: TDataSet);
begin
   if LocalidadNOMBRE.Value = '' then
    DatabaseError('Debe ingresar el nombre de Ciudad');
   if LocalidadPROVINCIA.Value = '' then
    DatabaseError('Debe ingresar el nombre de la Provincia');
   if LocalidadCODCIUDAD.Value = '' then
    DatabaseError('Debe ingresar un Codigo de Ciudad');
   if Length(LocalidadCODCIUDAD.Value) <> 3 then
    DatabaseError('El codigo debe ser de 3 letras');
   if not (LocalidadNOMBRE.Value = '') then
    LocalidadNOMBRE.Value:=AnsiUpperCase(LocalidadNOMBRE.Value);
   if not (LocalidadPROVINCIA.Value = '') then
    LocalidadPROVINCIA.Value:=AnsiUpperCase(LocalidadPROVINCIA.Value);
   if not (LocalidadCODCIUDAD.Value = '') then
    LocalidadCODCIUDAD.Value:=AnsiUpperCase(LocalidadCODCIUDAD.Value);
end;

procedure TDMDatos.TarifaBeforePost(DataSet: TDataSet);
begin
    if Tarifa.FieldByName('L_INICIO').IsNull then
      DatabaseError('Debe ingresar una Ciudad de inicio');
    if Tarifa.FieldByName('L_FIN').IsNull then
      DatabaseError('Debe ingresar una Ciudad de destino');
    if TarifaDESCRIPCION.Value = '' then
    DatabaseError('Debe ingresar una breve descripcion');
    if Tarifa.FieldByName('PRECIO').IsNull then
      DatabaseError('Debe ingresar un importe en el precio');
    if not (TarifaDESCRIPCION.Value = '') then
    TarifaDESCRIPCION.Value:=AnsiUpperCase(TarifaDESCRIPCION.Value);
end;

procedure TDMDatos.prEstadoViajeBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
    DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('ESTADOVIAJE')
end;

procedure TDMDatos.EstadoViajeAfterDelete(DataSet: TDataSet);
begin
    EstadoViaje.ApplyUpdates(0);
end;

procedure TDMDatos.EstadoViajeAfterPost(DataSet: TDataSet);
begin
  EstadoViaje.ApplyUpdates(0);
end;

procedure TDMDatos.EstadoViajeNewRecord(DataSet: TDataSet);
begin
  EstadoViajeID.Value := -1;
end;

procedure TDMDatos.ChoferesBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('110')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.PasajerosBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('210')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.VehiculoBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('310')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.LocalidadBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('410')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.RecorridoBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('610')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.ReservasBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('700')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.ChoferesBeforeEdit(DataSet: TDataSet);
begin
     if not (DMSeguridad.PuedeEjecutar('120')) then
    DatabaseError('No esta autorizado a editar datos');
end;

procedure TDMDatos.PasajerosBeforeEdit(DataSet: TDataSet);
begin
     if not (DMSeguridad.PuedeEjecutar('220')) then
    DatabaseError('No esta autorizado a editar datos');
end;

procedure TDMDatos.VehiculoBeforeEdit(DataSet: TDataSet);
begin
     if not (DMSeguridad.PuedeEjecutar('320')) then
    DatabaseError('No esta autorizado a editar datos');
end;

procedure TDMDatos.LocalidadBeforeEdit(DataSet: TDataSet);
begin
     if not (DMSeguridad.PuedeEjecutar('420')) then
    DatabaseError('No esta autorizado a editar datos');
end;

procedure TDMDatos.RecorridoBeforeEdit(DataSet: TDataSet);
begin
     if not (DMSeguridad.PuedeEjecutar('620')) then
    DatabaseError('No esta autorizado a editar datos');
end;

procedure TDMDatos.ChoferesBeforeDelete(DataSet: TDataSet);
begin
   if not (DMSeguridad.PuedeEjecutar('130')) then
    DatabaseError('No esta autorizado a eliminar datos');
end;

procedure TDMDatos.PasajerosBeforeDelete(DataSet: TDataSet);
begin
   if not (DMSeguridad.PuedeEjecutar('230')) then
    DatabaseError('No esta autorizado a eliminar datos');
end;

procedure TDMDatos.VehiculoBeforeDelete(DataSet: TDataSet);
begin
   if not (DMSeguridad.PuedeEjecutar('330')) then
    DatabaseError('No esta autorizado a eliminar datos');
end;

procedure TDMDatos.LocalidadBeforeDelete(DataSet: TDataSet);
begin
   if not (DMSeguridad.PuedeEjecutar('430')) then
    DatabaseError('No esta autorizado a eliminar datos');
end;

procedure TDMDatos.RecorridoBeforeDelete(DataSet: TDataSet);
begin
   if not (DMSeguridad.PuedeEjecutar('630')) then
    DatabaseError('No esta autorizado a eliminar datos');
end;

procedure TDMDatos.ViajeBeforeDelete(DataSet: TDataSet);
begin
     if not (DMSeguridad.PuedeEjecutar('830')) then
    DatabaseError('No esta autorizado a eliminar datos');
end;

procedure TDMDatos.ViajeBeforeEdit(DataSet: TDataSet);
begin
    if not (DMSeguridad.PuedeEjecutar('820')) then
    DatabaseError('No esta autorizado a editar datos');
end;

procedure TDMDatos.ViajeBeforeInsert(DataSet: TDataSet);
begin
    if not (DMSeguridad.PuedeEjecutar('810')) then
    DatabaseError('No esta autorizado a insertar datos');
end;

procedure TDMDatos.EstadoViajeBeforeEdit(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('910')) then
    DatabaseError('No esta autorizado abrir o cerrar un viaje')
end;

procedure TDMDatos.EstadoViajeBeforePost(DataSet: TDataSet);
begin
   if not (DMSeguridad.PuedeEjecutar('910')) then
    DatabaseError('No esta autorizado a abrir o cerrar un viaje')
end;

procedure TDMDatos.HorarioNewRecord(DataSet: TDataSet);
begin
  HorarioID.Value := -1;
  HorarioID_RECORRIDO.Value := RecorridoID.Value;
end;

procedure TDMDatos.HorarioAfterPost(DataSet: TDataSet);
begin
  Horario.ApplyUpdates(0);
end;

procedure TDMDatos.HorarioAfterDelete(DataSet: TDataSet);
begin
  Horario.ApplyUpdates(0);
end;

procedure TDMDatos.prHorarioBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('HORARIO')
end;

procedure TDMDatos.HorarioBeforePost(DataSet: TDataSet);
begin
  if HorarioID_LOCALIDAD.Value = 0 then
    DatabaseError('Debe ingresar una localidad');
  if HorarioORDEN.Value <= 0 then
    DatabaseError('Debe ingresar un orden mayor a 0');
end;

procedure TDMDatos.HorarioBeforeEdit(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('1200')) then
    DatabaseError('No esta autorizado editar datos')
end;

procedure TDMDatos.HorarioBeforeInsert(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('1100')) then
    DatabaseError('No esta autorizado insertar datos')
end;

procedure TDMDatos.HorarioBeforeDelete(DataSet: TDataSet);
begin
  if not (DMSeguridad.PuedeEjecutar('1300')) then
    DatabaseError('No esta autorizado eliminar datos')
end;

procedure TDMDatos.HorarioHORA_SALIDASetText(Sender: TField;
  const Text: String);
begin
  try
  if Text <> '' then
    Sender.AsDateTime := StrToTime(Text);
  except
  on E:EConvertError do
  DatabaseError('Error en la hora de salida');
  end;
end;

procedure TDMDatos.HorarioORDENValidate(Sender: TField);
begin
   qryCheckOrdenLocalidad.Close;
   qryCheckOrdenLocalidad.ParamByName('pOrden').Value := HorarioORDEN.Value;
   qryCheckOrdenLocalidad.ParamByName('pIdRecorrido').Value := RecorridoID.Value;
   qryCheckOrdenLocalidad.Open;
   if not (qryCheckOrdenLocalidad.IsEmpty) then
      if (Horario.State = dsInsert) or (HorarioID.Value <> qryCheckOrdenLocalidadID.Value) then
           DatabaseError('Ya hay una localidad en ese orden');

end;

procedure TDMDatos.LocalidadCODCIUDADValidate(Sender: TField);
begin
   qryCheckCodLocalidad.Close;
   qryCheckCodLocalidad.ParamByName('pCodigo').Value := LocalidadCODCIUDAD.Value;
   qryCheckCodLocalidad.Open;
   if not (qryCheckCodLocalidad.IsEmpty) then
      if (Localidad.State = dsInsert) or (LocalidadCODCIUDAD.Value <> qryCheckCodLocalidadCODCIUDAD.Value) then
         DatabaseError('Existe una localidad con ese código.');
end;

procedure TDMDatos.prBoletoBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := proximoIDDatos('BOLETOS');
end;

procedure TDMDatos.BoletoNewRecord(DataSet: TDataSet);
begin
    BoletoID.Value := -1;
end;

procedure TDMDatos.BoletoAfterPost(DataSet: TDataSet);
begin
  Boleto.ApplyUpdates(0);
end;

procedure TDMDatos.BoletoAfterDelete(DataSet: TDataSet);
begin
  Boleto.ApplyUpdates(0);
end;

procedure TDMDatos.AnulaBoletoAfterDelete(DataSet: TDataSet);
begin
  AnulaBoleto.ApplyUpdates(0);
end;

procedure TDMDatos.AnulaBoletoAfterPost(DataSet: TDataSet);
begin
  AnulaBoleto.ApplyUpdates(0);
end;

end.
