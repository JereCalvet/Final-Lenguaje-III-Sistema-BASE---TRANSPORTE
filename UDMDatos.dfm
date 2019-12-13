object DMDatos: TDMDatos
  OldCreateOrder = False
  Left = 264
  Top = 133
  Height = 482
  Width = 911
  object prChoferes: TDataSetProvider
    DataSet = qryChoferes
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prChoferesBeforeUpdateRecord
    Left = 56
    Top = 72
  end
  object Choferes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prChoferes'
    BeforeInsert = ChoferesBeforeInsert
    BeforeEdit = ChoferesBeforeEdit
    BeforePost = ChoferesBeforePost
    AfterPost = ChoferesAfterPost
    BeforeDelete = ChoferesBeforeDelete
    AfterDelete = ChoferesAfterDelete
    OnNewRecord = ChoferesNewRecord
    OnReconcileError = CONCILIACION
    Left = 56
    Top = 128
    object ChoferesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ChoferesAPELLIDO: TStringField
      DisplayLabel = 'Apellido'
      FieldName = 'APELLIDO'
      Size = 30
    end
    object ChoferesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
    object ChoferesDIRECCION: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIRECCION'
      Size = 40
    end
    object ChoferesTELEFONO: TStringField
      DisplayLabel = 'Tel'#233'fono'
      FieldName = 'TELEFONO'
      Size = 15
    end
    object ChoferesMAIL: TStringField
      DisplayLabel = 'Mail'
      FieldName = 'MAIL'
      Size = 40
    end
    object ChoferesLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Size = 40
    end
    object ChoferesDNI: TStringField
      FieldName = 'DNI'
      OnValidate = ChoferesDNIValidate
      Size = 10
    end
  end
  object qryChoferes: TSQLDataSet
    CommandText = 'SELECT * FROM CONDUCTORES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 56
    Top = 16
    object qryChoferesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryChoferesAPELLIDO: TStringField
      FieldName = 'APELLIDO'
      Size = 30
    end
    object qryChoferesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qryChoferesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object qryChoferesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object qryChoferesMAIL: TStringField
      FieldName = 'MAIL'
      Size = 40
    end
    object qryChoferesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
    object qryChoferesDNI: TStringField
      FieldName = 'DNI'
      Size = 10
    end
  end
  object prPasajeros: TDataSetProvider
    DataSet = qryPasajeros
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prPasajerosBeforeUpdateRecord
    Left = 120
    Top = 72
  end
  object Pasajeros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prPasajeros'
    BeforeInsert = PasajerosBeforeInsert
    BeforeEdit = PasajerosBeforeEdit
    BeforePost = PasajerosBeforePost
    AfterPost = PasajerosAfterPost
    BeforeDelete = PasajerosBeforeDelete
    AfterDelete = PasajerosAfterDelete
    OnNewRecord = PasajerosNewRecord
    OnReconcileError = CONCILIACION
    Left = 120
    Top = 128
    object PasajerosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object PasajerosAPELLIDO: TStringField
      DisplayLabel = 'Apellido'
      FieldName = 'APELLIDO'
      Size = 30
    end
    object PasajerosNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
    object PasajerosTELEFONO: TStringField
      DisplayLabel = 'Tel'#233'fono'
      FieldName = 'TELEFONO'
      Size = 15
    end
    object PasajerosDNI: TStringField
      FieldName = 'DNI'
      OnValidate = PasajerosDNIValidate
      Size = 10
    end
    object PasajerosDIRECCION: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIRECCION'
      Size = 40
    end
    object PasajerosLOCALIDAD: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Size = 40
    end
  end
  object qryPasajeros: TSQLDataSet
    CommandText = 'SELECT * FROM PASAJEROS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 120
    Top = 16
    object qryPasajerosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryPasajerosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qryPasajerosAPELLIDO: TStringField
      FieldName = 'APELLIDO'
      Size = 30
    end
    object qryPasajerosTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object qryPasajerosDNI: TStringField
      FieldName = 'DNI'
      Size = 10
    end
    object qryPasajerosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object qryPasajerosLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
  end
  object prVehiculo: TDataSetProvider
    DataSet = qryVehiculo
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prVehiculoBeforeUpdateRecord
    Left = 184
    Top = 72
  end
  object Vehiculo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prVehiculo'
    BeforeInsert = VehiculoBeforeInsert
    BeforeEdit = VehiculoBeforeEdit
    BeforePost = VehiculoBeforePost
    AfterPost = VehiculoAfterPost
    BeforeDelete = VehiculoBeforeDelete
    AfterDelete = VehiculoAfterDelete
    OnNewRecord = VehiculoNewRecord
    OnReconcileError = CONCILIACION
    Left = 184
    Top = 128
    object VehiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object VehiculoMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Size = 30
    end
    object VehiculoNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
    object VehiculoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 4
    end
    object VehiculoPATENTE: TStringField
      DisplayLabel = 'Patente'
      FieldName = 'PATENTE'
      Size = 6
    end
    object VehiculoCAPACIDAD: TStringField
      DisplayLabel = 'Capacidad'
      FieldName = 'CAPACIDAD'
      Size = 2
    end
  end
  object qryVehiculo: TSQLDataSet
    CommandText = 'SELECT * FROM VEHICULOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 184
    Top = 16
    object qryVehiculoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryVehiculoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object qryVehiculoNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qryVehiculoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 4
    end
    object qryVehiculoPATENTE: TStringField
      FieldName = 'PATENTE'
      Size = 6
    end
    object qryVehiculoCAPACIDAD: TStringField
      FieldName = 'CAPACIDAD'
      Size = 2
    end
  end
  object DataSetProvider3: TDataSetProvider
    DataSet = SQLDataSet3
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 824
    Top = 320
  end
  object ClientDataSet3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider3'
    OnReconcileError = CONCILIACION
    Left = 824
    Top = 376
  end
  object SQLDataSet3: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 824
    Top = 264
  end
  object prLocalidad: TDataSetProvider
    DataSet = qryLocalidad
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prLocalidadBeforeUpdateRecord
    Left = 248
    Top = 72
  end
  object Localidad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prLocalidad'
    BeforeInsert = LocalidadBeforeInsert
    BeforeEdit = LocalidadBeforeEdit
    BeforePost = LocalidadBeforePost
    AfterPost = LocalidadAfterPost
    BeforeDelete = LocalidadBeforeDelete
    AfterDelete = LocalidadAfterDelete
    OnNewRecord = LocalidadNewRecord
    OnReconcileError = CONCILIACION
    Left = 248
    Top = 128
    object LocalidadID: TIntegerField
      FieldName = 'ID'
      Required = True
      Visible = False
    end
    object LocalidadNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
    object LocalidadCODCIUDAD: TStringField
      DisplayLabel = 'C'#243'digo de Localidad'
      FieldName = 'CODCIUDAD'
      OnValidate = LocalidadCODCIUDADValidate
      Size = 10
    end
    object LocalidadPROVINCIA: TStringField
      DisplayLabel = 'Provincia'
      FieldName = 'PROVINCIA'
      Size = 30
    end
  end
  object qryLocalidad: TSQLDataSet
    CommandText = 'SELECT * FROM LOCALIDAD'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 248
    Top = 16
    object qryLocalidadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryLocalidadNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qryLocalidadCODCIUDAD: TStringField
      FieldName = 'CODCIUDAD'
      Size = 10
    end
    object qryLocalidadPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Size = 30
    end
  end
  object prTarifa: TDataSetProvider
    DataSet = qryTarifa
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prTarifaBeforeUpdateRecord
    Left = 328
    Top = 72
  end
  object Tarifa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prTarifa'
    BeforeInsert = TarifaBeforeInsert
    BeforeEdit = TarifaBeforeEdit
    BeforePost = TarifaBeforePost
    AfterPost = TarifaAfterPost
    BeforeDelete = TarifaBeforeDelete
    AfterDelete = TarifaAfterDelete
    OnNewRecord = TarifaNewRecord
    OnReconcileError = CONCILIACION
    Left = 328
    Top = 128
    object TarifaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object TarifaPRECIO: TFMTBCDField
      DisplayLabel = 'Precio'
      FieldName = 'PRECIO'
      currency = True
      Precision = 15
      Size = 2
    end
    object TarifaDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object TarifalookupDesde: TStringField
      DisplayLabel = 'Desde'
      FieldKind = fkLookup
      FieldName = 'lookupDesde'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_INICIO'
      Size = 30
      Lookup = True
    end
    object TarifalookupHasta: TStringField
      DisplayLabel = 'Hasta'
      FieldKind = fkLookup
      FieldName = 'lookupHasta'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_FIN'
      Size = 30
      Lookup = True
    end
    object TarifaL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object TarifaL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object TarifaCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 10
    end
  end
  object qryTarifa: TSQLDataSet
    CommandText = 'SELECT * FROM TARIFA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 328
    Top = 16
    object qryTarifaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryTarifaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qryTarifaPRECIO: TFMTBCDField
      FieldName = 'PRECIO'
      Precision = 15
      Size = 2
    end
    object qryTarifaDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 30
    end
    object qryTarifaL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object qryTarifaL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
  end
  object prViaje: TDataSetProvider
    DataSet = qryViaje
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prViajeBeforeUpdateRecord
    Left = 392
    Top = 72
  end
  object Viaje: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prViaje'
    BeforeInsert = ViajeBeforeInsert
    BeforeEdit = ViajeBeforeEdit
    AfterPost = ViajeAfterPost
    BeforeDelete = ViajeBeforeDelete
    AfterDelete = ViajeAfterDelete
    OnNewRecord = ViajeNewRecord
    OnReconcileError = CONCILIACION
    Left = 392
    Top = 128
    object ViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ViajeID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object ViajeID_VEHICULO: TIntegerField
      FieldName = 'ID_VEHICULO'
    end
    object ViajeID_RECORRIDO: TIntegerField
      FieldName = 'ID_RECORRIDO'
    end
    object ViajelookChofNom: TStringField
      DisplayLabel = 'Nombre del Chofer'
      FieldKind = fkLookup
      FieldName = 'lookChofNom'
      LookupDataSet = Choferes
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_CHOFER'
      Size = 30
      Lookup = True
    end
    object ViajelookVehiNomb: TStringField
      DisplayLabel = 'Marca del Vehiculo'
      FieldKind = fkLookup
      FieldName = 'lookVehiMar'
      LookupDataSet = Vehiculo
      LookupKeyFields = 'ID'
      LookupResultField = 'MARCA'
      KeyFields = 'ID_VEHICULO'
      Size = 30
      Lookup = True
    end
    object ViajelookVehiMod: TStringField
      DisplayLabel = 'Modelo del Vehiculo'
      FieldKind = fkLookup
      FieldName = 'lookVehiNom'
      LookupDataSet = Vehiculo
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_VEHICULO'
      Size = 30
      Lookup = True
    end
    object ViajeFECHA: TDateField
      DisplayLabel = 'Fecha del Viaje'
      FieldName = 'FECHA'
    end
    object ViajelookVehCapac: TIntegerField
      DisplayLabel = 'Capacidad del Veh'#237'culo'
      FieldKind = fkLookup
      FieldName = 'lookVehCapac'
      LookupDataSet = Vehiculo
      LookupKeyFields = 'ID'
      LookupResultField = 'CAPACIDAD'
      KeyFields = 'ID_VEHICULO'
      Lookup = True
    end
    object ViajelookCodRec: TStringField
      DisplayLabel = 'Recorrido'
      FieldKind = fkLookup
      FieldName = 'lookCodRec'
      LookupDataSet = Recorrido
      LookupKeyFields = 'ID'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_RECORRIDO'
      Size = 10
      Lookup = True
    end
    object ViajelookRecorrido: TStringField
      DisplayLabel = 'Recorrido'
      FieldKind = fkLookup
      FieldName = 'lookRecorrido'
      LookupDataSet = Recorrido
      LookupKeyFields = 'ID'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_RECORRIDO'
      Size = 10
      Lookup = True
    end
    object ViajelookPatente: TStringField
      DisplayLabel = 'Patente del Veh'#237'culo'
      FieldKind = fkLookup
      FieldName = 'lookPatente'
      LookupDataSet = Vehiculo
      LookupKeyFields = 'ID'
      LookupResultField = 'PATENTE'
      KeyFields = 'ID_VEHICULO'
      Size = 6
      Lookup = True
    end
    object ViajelookChofApe: TStringField
      DisplayLabel = 'Apellido del Chofer'
      FieldKind = fkLookup
      FieldName = 'lookChofApe'
      LookupDataSet = Choferes
      LookupKeyFields = 'ID'
      LookupResultField = 'APELLIDO'
      KeyFields = 'ID_CHOFER'
      Lookup = True
    end
  end
  object qryViaje: TSQLDataSet
    CommandText = 'SELECT * FROM VIAJE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 392
    Top = 16
    object qryViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryViajeID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object qryViajeID_VEHICULO: TIntegerField
      FieldName = 'ID_VEHICULO'
    end
    object qryViajeID_RECORRIDO: TIntegerField
      FieldName = 'ID_RECORRIDO'
    end
    object qryViajeFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object prReservas: TDataSetProvider
    DataSet = qryReservas
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prReservasBeforeUpdateRecord
    Left = 464
    Top = 72
  end
  object Reservas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prReservas'
    BeforeInsert = ReservasBeforeInsert
    AfterPost = ReservasAfterPost
    AfterDelete = ReservasAfterDelete
    OnNewRecord = ReservasNewRecord
    OnReconcileError = CONCILIACION
    Left = 464
    Top = 128
    object ReservasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ReservasID_VIAJE: TIntegerField
      FieldName = 'ID_VIAJE'
    end
    object ReservasID_PASAJERO: TIntegerField
      FieldName = 'ID_PASAJERO'
    end
    object ReservasID_TARIFA: TIntegerField
      FieldName = 'ID_TARIFA'
    end
    object ReservasIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 2
    end
    object ReservasFECHA: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object ReservasFECHA_VENCIMIENTO: TDateField
      DisplayLabel = 'Vencimiento'
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object ReservaslookNomPasajero: TStringField
      DisplayLabel = 'Nombre del Pasajero'
      FieldKind = fkLookup
      FieldName = 'lookNomPasajero'
      LookupDataSet = LookPasaj
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PASAJERO'
      Size = 30
      Lookup = True
    end
    object ReservaslookApePasajro: TStringField
      DisplayLabel = 'Apellido del Pasajero'
      FieldKind = fkLookup
      FieldName = 'lookApePasajro'
      LookupDataSet = LookPasaj
      LookupKeyFields = 'ID'
      LookupResultField = 'APELLIDO'
      KeyFields = 'ID_PASAJERO'
      Size = 30
      Lookup = True
    end
    object ReservaslookTarifa: TStringField
      DisplayLabel = 'Tarifa'
      FieldKind = fkLookup
      FieldName = 'lookTarifa'
      LookupDataSet = Tarifa
      LookupKeyFields = 'ID'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_TARIFA'
      Size = 30
      Lookup = True
    end
    object ReservasL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object ReservasL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object ReservasCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 10
    end
    object ReservaslookL_FIN: TStringField
      DisplayLabel = 'Destino'
      FieldKind = fkLookup
      FieldName = 'lookL_FIN'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_FIN'
      Size = 30
      Lookup = True
    end
    object ReservaslookL_INICIO: TStringField
      DisplayLabel = 'Origen'
      FieldKind = fkLookup
      FieldName = 'lookL_INICIO'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_INICIO'
      Size = 30
      Lookup = True
    end
    object ReservasESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
  end
  object qryReservas: TSQLDataSet
    CommandText = 'SELECT * FROM RESERVAS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 464
    Top = 16
    object qryReservasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryReservasID_VIAJE: TIntegerField
      FieldName = 'ID_VIAJE'
    end
    object qryReservasID_PASAJERO: TIntegerField
      FieldName = 'ID_PASAJERO'
    end
    object qryReservasID_TARIFA: TIntegerField
      FieldName = 'ID_TARIFA'
    end
    object qryReservasIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 2
    end
    object qryReservasFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qryReservasFECHA_VENCIMIENTO: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object qryReservasL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object qryReservasL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object qryReservasCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qryReservasESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
  end
  object prRecorrido: TDataSetProvider
    DataSet = qryRecorrido
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prRecorridoBeforeUpdateRecord
    Left = 528
    Top = 72
  end
  object Recorrido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prRecorrido'
    BeforeInsert = RecorridoBeforeInsert
    BeforeEdit = RecorridoBeforeEdit
    BeforePost = RecorridoBeforePost
    AfterPost = RecorridoAfterPost
    BeforeDelete = RecorridoBeforeDelete
    AfterDelete = RecorridoAfterDelete
    OnNewRecord = RecorridoNewRecord
    OnReconcileError = CONCILIACION
    Left = 528
    Top = 128
    object RecorridoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object RecorridoL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object RecorridoL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object RecorridoESCALAS: TIntegerField
      DisplayLabel = 'Escalas'
      FieldName = 'ESCALAS'
    end
    object RecorridolookL_Inicio: TStringField
      DisplayLabel = 'Origen'
      FieldKind = fkLookup
      FieldName = 'lookL_Inicio'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_INICIO'
      Size = 30
      Lookup = True
    end
    object RecorridolookL_Fin: TStringField
      DisplayLabel = 'Destino'
      FieldKind = fkLookup
      FieldName = 'lookL_Fin'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_FIN'
      Size = 30
      Lookup = True
    end
    object RecorridoCODIGO: TStringField
      DisplayLabel = 'Recorrido'
      FieldName = 'CODIGO'
      Size = 10
    end
    object RecorridoDESCRIPCION: TStringField
      DisplayLabel = 'Descripci'#243'n'
      FieldName = 'DESCRIPCION'
    end
  end
  object qryRecorrido: TSQLDataSet
    CommandText = 'SELECT * FROM RECORRIDO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 528
    Top = 16
    object qryRecorridoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryRecorridoL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object qryRecorridoL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object qryRecorridoESCALAS: TIntegerField
      FieldName = 'ESCALAS'
    end
    object qryRecorridoCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qryRecorridoDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
    end
  end
  object qryCalculaDisponibilidad: TSQLDataSet
    CommandText = 
      'SELECT horario.id_localidad, horario.orden, reservas.id, reserva' +
      's.l_inicio, reservas.l_fin,'#13#10'       ( select horario.orden'#13#10'    ' +
      '     from horario'#13#10'         where horario.id_localidad = reserva' +
      's.l_inicio and horario.id_recorrido = viaje.id_recorrido ) orden' +
      '_inicio,'#13#10'       ( select horario.orden'#13#10'         from horario'#13#10 +
      '         where horario.id_localidad = reservas.l_fin and horario' +
      '.id_recorrido = viaje.id_recorrido) orden_final'#13#10#13#10'FROM reservas' +
      #13#10'   inner join viaje on (reservas.id_viaje = viaje.id)'#13#10'   inne' +
      'r join recorrido on (viaje.id_recorrido = recorrido.id)'#13#10'   inne' +
      'r join horario on (recorrido.id = horario.id_recorrido)'#13#10'WHERE v' +
      'iaje.id =:VIAJE and horario.orden >='#13#10#13#10'        ( select horario' +
      '.orden'#13#10'         from horario'#13#10'         where horario.id_localid' +
      'ad = reservas.l_inicio and horario.id_recorrido = viaje.id_recor' +
      'rido )'#13#10#13#10'         and horario.orden <'#13#10#13#10'       ( select horari' +
      'o.orden'#13#10'         from horario'#13#10'         where horario.id_locali' +
      'dad = reservas.l_fin and horario.id_recorrido = viaje.id_recorri' +
      'do)'#13#10#13#10#13#10'ORDER BY reservas.id ASC, horario.orden;'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VIAJE'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 56
    Top = 192
    object qryCalculaDisponibilidadID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object qryCalculaDisponibilidadORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object qryCalculaDisponibilidadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryCalculaDisponibilidadL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object qryCalculaDisponibilidadL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object qryCalculaDisponibilidadORDEN_INICIO: TIntegerField
      FieldName = 'ORDEN_INICIO'
    end
    object qryCalculaDisponibilidadORDEN_FINAL: TIntegerField
      FieldName = 'ORDEN_FINAL'
    end
  end
  object prCalculaDisponibilidad: TDataSetProvider
    DataSet = qryCalculaDisponibilidad
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 56
    Top = 256
  end
  object CalculaDisponibilidad: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'VIAJE'
        ParamType = ptInput
      end>
    ProviderName = 'prCalculaDisponibilidad'
    OnReconcileError = CONCILIACION
    Left = 56
    Top = 320
    object CalculaDisponibilidadID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object CalculaDisponibilidadORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object CalculaDisponibilidadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CalculaDisponibilidadL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object CalculaDisponibilidadL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object CalculaDisponibilidadORDEN_INICIO: TIntegerField
      FieldName = 'ORDEN_INICIO'
    end
    object CalculaDisponibilidadORDEN_FINAL: TIntegerField
      FieldName = 'ORDEN_FINAL'
    end
  end
  object qryArrayRecorrido: TSQLDataSet
    CommandText = 
      'select horario.orden, horario.id_localidad, horario.hora_salida,' +
      ' recorrido.l_inicio, recorrido.l_fin'#13#10'from viaje'#13#10'   inner join ' +
      'recorrido on (viaje.id_recorrido = recorrido.id)'#13#10'   inner join ' +
      'horario on (recorrido.id = horario.id_recorrido)'#13#10'where '#13#10'   ('#13#10 +
      '      (viaje.id =:VIAJE)'#13#10'   )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'VIAJE'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 160
    Top = 192
    object qryArrayRecorridoORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object qryArrayRecorridoID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object qryArrayRecorridoL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object qryArrayRecorridoL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object qryArrayRecorridoHORA_SALIDA: TTimeField
      FieldName = 'HORA_SALIDA'
    end
  end
  object prArrayRecorrido: TDataSetProvider
    DataSet = qryArrayRecorrido
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 160
    Top = 256
  end
  object ArrayRecorrido: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'VIAJE'
        ParamType = ptInput
      end>
    ProviderName = 'prArrayRecorrido'
    OnReconcileError = CONCILIACION
    Left = 160
    Top = 320
    object ArrayRecorridoORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
    object ArrayRecorridoID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object ArrayRecorridoL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object ArrayRecorridoHORA_SALIDA: TTimeField
      FieldName = 'HORA_SALIDA'
    end
    object ArrayRecorridoL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object ArrayRecorridolookCiudad: TStringField
      FieldKind = fkLookup
      FieldName = 'lookCiudad'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_LOCALIDAD'
      Lookup = True
    end
  end
  object qryCheckDniChoferes: TSQLDataSet
    CommandText = 'SELECT * FROM CONDUCTORES'#13#10'WHERE CONDUCTORES.DNI =:DNI;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DNI'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 816
    Top = 16
    object qryCheckDniChoferesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryCheckDniChoferesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qryCheckDniChoferesAPELLIDO: TStringField
      FieldName = 'APELLIDO'
      Size = 30
    end
    object qryCheckDniChoferesDNI: TStringField
      FieldName = 'DNI'
      Size = 10
    end
    object qryCheckDniChoferesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object qryCheckDniChoferesTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object qryCheckDniChoferesMAIL: TStringField
      FieldName = 'MAIL'
      Size = 40
    end
    object qryCheckDniChoferesLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
  end
  object qryPasajeros_Viaje: TSQLDataSet
    CommandText = 
      'SELECT RESERVAS.ID, RESERVAS.ID_PASAJERO, RESERVAS.ID_TARIFA, RE' +
      'SERVAS.IMPORTE, RESERVAS.FECHA, RESERVAS.FECHA_VENCIMIENTO, RESE' +
      'RVAS.CODIGO, RESERVAS.ID_VIAJE, RESERVAS.L_INICIO, RESERVAS.L_FI' +
      'N, RESERVAS.ESTADO'#13#10'FROM RESERVAS'#13#10'   INNER JOIN VIAJE ON (RESER' +
      'VAS.ID_VIAJE = VIAJE.ID)'#13#10'WHERE '#13#10'   ('#13#10'      (VIAJE.ID =:IDVIAJ' +
      'E)'#13#10'   )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IDVIAJE'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 720
    Top = 16
    object qryPasajeros_ViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryPasajeros_ViajeID_PASAJERO: TIntegerField
      FieldName = 'ID_PASAJERO'
    end
    object qryPasajeros_ViajeID_TARIFA: TIntegerField
      FieldName = 'ID_TARIFA'
    end
    object qryPasajeros_ViajeIMPORTE: TFMTBCDField
      FieldName = 'IMPORTE'
      Precision = 15
      Size = 2
    end
    object qryPasajeros_ViajeFECHA: TDateField
      FieldName = 'FECHA'
    end
    object qryPasajeros_ViajeFECHA_VENCIMIENTO: TDateField
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object qryPasajeros_ViajeCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object qryPasajeros_ViajeID_VIAJE: TIntegerField
      FieldName = 'ID_VIAJE'
    end
    object qryPasajeros_ViajeL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object qryPasajeros_ViajeL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
    object qryPasajeros_ViajeESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
  end
  object prPasajeros_Viaje: TDataSetProvider
    DataSet = qryPasajeros_Viaje
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 720
    Top = 72
  end
  object Pasajeros_Viaje: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prPasajeros_Viaje'
    AfterDelete = Pasajeros_ViajeAfterDelete
    OnReconcileError = CONCILIACION
    Left = 720
    Top = 128
    object Pasajeros_ViajeCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Size = 10
    end
    object Pasajeros_ViajeFECHA: TDateField
      DisplayLabel = 'Fecha'
      FieldName = 'FECHA'
    end
    object Pasajeros_ViajelookPasjApe: TStringField
      DisplayLabel = 'Apellido del Pasajero'
      FieldKind = fkLookup
      FieldName = 'lookPasjApe'
      LookupDataSet = LookPasaj
      LookupKeyFields = 'ID'
      LookupResultField = 'APELLIDO'
      KeyFields = 'ID_PASAJERO'
      Size = 30
      Lookup = True
    end
    object Pasajeros_ViajelookPajNom: TStringField
      DisplayLabel = 'Nombre del Pasajero'
      FieldKind = fkLookup
      FieldName = 'lookPajNom'
      LookupDataSet = LookPasaj
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_PASAJERO'
      Size = 30
      Lookup = True
    end
    object Pasajeros_ViajelookL_Inicio: TStringField
      DisplayLabel = 'Origen'
      FieldKind = fkLookup
      FieldName = 'lookL_Inicio'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_INICIO'
      Size = 10
      Lookup = True
    end
    object Pasajeros_ViajelookL_Fin: TStringField
      DisplayLabel = 'Destino'
      FieldKind = fkLookup
      FieldName = 'lookL_Fin'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'L_FIN'
      Size = 10
      Lookup = True
    end
    object Pasajeros_ViajeESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
    object Pasajeros_ViajeIMPORTE: TFMTBCDField
      DisplayLabel = 'Importe'
      FieldName = 'IMPORTE'
      currency = True
      Precision = 15
      Size = 2
    end
    object Pasajeros_ViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Pasajeros_ViajeID_PASAJERO: TIntegerField
      FieldName = 'ID_PASAJERO'
    end
    object Pasajeros_ViajeID_TARIFA: TIntegerField
      FieldName = 'ID_TARIFA'
    end
    object Pasajeros_ViajeFECHA_VENCIMIENTO: TDateField
      DisplayLabel = 'Vencimiento'
      FieldName = 'FECHA_VENCIMIENTO'
    end
    object Pasajeros_ViajeID_VIAJE: TIntegerField
      FieldName = 'ID_VIAJE'
    end
    object Pasajeros_ViajeL_INICIO: TIntegerField
      FieldName = 'L_INICIO'
    end
    object Pasajeros_ViajeL_FIN: TIntegerField
      FieldName = 'L_FIN'
    end
  end
  object qrypViaje: TSQLDataSet
    CommandText = 'SELECT * FROM VIAJE'#13#10#13#10'WHERE VIAJE.FECHA =:HOY;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'HOY'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 336
    Top = 192
    object qrypViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qrypViajeID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object qrypViajeID_VEHICULO: TIntegerField
      FieldName = 'ID_VEHICULO'
    end
    object qrypViajeID_RECORRIDO: TIntegerField
      FieldName = 'ID_RECORRIDO'
    end
    object qrypViajeFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object prpViaje: TDataSetProvider
    DataSet = qrypViaje
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 336
    Top = 256
  end
  object pViaje: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'HOY'
        ParamType = ptInput
      end>
    ProviderName = 'prpViaje'
    OnReconcileError = CONCILIACION
    Left = 336
    Top = 320
    object pViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object pViajeID_CHOFER: TIntegerField
      FieldName = 'ID_CHOFER'
    end
    object pViajeID_VEHICULO: TIntegerField
      FieldName = 'ID_VEHICULO'
    end
    object pViajeID_RECORRIDO: TIntegerField
      FieldName = 'ID_RECORRIDO'
    end
    object pViajeFECHA: TDateField
      DisplayLabel = 'Fecha del Viaje'
      FieldName = 'FECHA'
    end
    object pViajelookChofNomb: TStringField
      DisplayLabel = 'Apellido del Chofer'
      FieldKind = fkLookup
      FieldName = 'lookChofNomb'
      LookupDataSet = Choferes
      LookupKeyFields = 'ID'
      LookupResultField = 'APELLIDO'
      KeyFields = 'ID_CHOFER'
      Size = 30
      Lookup = True
    end
    object pViajelookVehiMar: TStringField
      DisplayLabel = 'Marca del Veh'#237'culo'
      FieldKind = fkLookup
      FieldName = 'lookVehiMar'
      LookupDataSet = Vehiculo
      LookupKeyFields = 'ID'
      LookupResultField = 'MARCA'
      KeyFields = 'ID_VEHICULO'
      Size = 30
      Lookup = True
    end
    object pViajelookVehNom: TStringField
      DisplayLabel = 'Nombre del Veh'#237'culo'
      FieldKind = fkLookup
      FieldName = 'lookVehNom'
      LookupDataSet = Vehiculo
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_VEHICULO'
      Size = 30
      Lookup = True
    end
    object pViajelookCodRec: TStringField
      DisplayLabel = 'Recorrido'
      FieldKind = fkLookup
      FieldName = 'lookCodRec'
      LookupDataSet = Recorrido
      LookupKeyFields = 'ID'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_RECORRIDO'
      Size = 10
      Lookup = True
    end
    object pViajelookVehCap: TIntegerField
      DisplayLabel = 'Capacidad del Veh'#237'culo'
      FieldKind = fkLookup
      FieldName = 'lookVehCap'
      LookupDataSet = Vehiculo
      LookupKeyFields = 'ID'
      LookupResultField = 'CAPACIDAD'
      KeyFields = 'ID_VEHICULO'
      Lookup = True
    end
    object pViajeCalDisp: TIntegerField
      DisplayLabel = 'Disponibilidad del tramo'
      FieldKind = fkInternalCalc
      FieldName = 'CalDisp'
    end
    object pViajeHoraSalida: TTimeField
      DisplayLabel = 'Hora de salida'
      FieldKind = fkInternalCalc
      FieldName = 'HoraSalida'
      DisplayFormat = 'hh:mm'
    end
  end
  object qryCheckDniPasajeros: TSQLDataSet
    CommandText = 'SELECT * FROM PASAJEROS'#13#10'WHERE PASAJEROS.DNI =:DNI;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DNI'
        ParamType = ptInput
        Size = 10
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 816
    Top = 72
    object qryCheckDniPasajerosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryCheckDniPasajerosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qryCheckDniPasajerosAPELLIDO: TStringField
      FieldName = 'APELLIDO'
      Size = 30
    end
    object qryCheckDniPasajerosTELEFONO: TStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object qryCheckDniPasajerosDNI: TStringField
      FieldName = 'DNI'
      Size = 10
    end
    object qryCheckDniPasajerosDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object qryCheckDniPasajerosLOCALIDAD: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
  end
  object prMarcoCalendario: TDataSetProvider
    DataSet = qryMarcoCalendario
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 256
    Top = 256
  end
  object MarcoCalendario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prMarcoCalendario'
    OnReconcileError = CONCILIACION
    Left = 256
    Top = 320
    object MarcoCalendarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object MarcoCalendarioFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object qryMarcoCalendario: TSQLDataSet
    CommandText = 
      'select viaje.id, viaje.fecha'#13#10'from viaje'#13#10'where (EXTRACT(YEAR FR' +
      'OM viaje.fecha) = EXTRACT(YEAR FROM current_date))'#13#10'order by via' +
      'je.fecha;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 256
    Top = 192
    object qryMarcoCalendarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryMarcoCalendarioFECHA: TDateField
      FieldName = 'FECHA'
    end
  end
  object prEstadoViaje: TDataSetProvider
    DataSet = qryEstadoViaje
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prEstadoViajeBeforeUpdateRecord
    Left = 392
    Top = 256
  end
  object EstadoViaje: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prEstadoViaje'
    BeforeEdit = EstadoViajeBeforeEdit
    BeforePost = EstadoViajeBeforePost
    AfterPost = EstadoViajeAfterPost
    AfterDelete = EstadoViajeAfterDelete
    OnNewRecord = EstadoViajeNewRecord
    OnReconcileError = CONCILIACION
    Left = 392
    Top = 320
    object EstadoViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object EstadoViajeID_VIAJE: TIntegerField
      FieldName = 'ID_VIAJE'
    end
    object EstadoViajeID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object EstadoViajeESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
  end
  object qryEstadoViaje: TSQLDataSet
    CommandText = 'SELECT * FROM ESTADOVIAJE;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 392
    Top = 192
    object qryEstadoViajeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryEstadoViajeID_VIAJE: TIntegerField
      FieldName = 'ID_VIAJE'
    end
    object qryEstadoViajeID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object qryEstadoViajeESTADO: TStringField
      FieldName = 'ESTADO'
      FixedChar = True
      Size = 1
    end
  end
  object prVerificaHorario: TDataSetProvider
    DataSet = qryVerificaHorario
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 464
    Top = 256
  end
  object VerificaHorario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prVerificaHorario'
    OnReconcileError = CONCILIACION
    Left = 464
    Top = 320
    object VerificaHorarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object qryVerificaHorario: TSQLDataSet
    CommandText = 
      'select horario.id'#13#10'from recorrido'#13#10'   inner join horario on (rec' +
      'orrido.id = horario.id_recorrido)'#13#10'where '#13#10'   ('#13#10'      (recorrid' +
      'o.id = :pidrecorrido)'#13#10'   )'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pidrecorrido'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 464
    Top = 192
    object qryVerificaHorarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object prHorario: TDataSetProvider
    DataSet = qryHorario
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prHorarioBeforeUpdateRecord
    Left = 592
    Top = 72
  end
  object Horario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prHorario'
    BeforeInsert = HorarioBeforeInsert
    BeforeEdit = HorarioBeforeEdit
    BeforePost = HorarioBeforePost
    AfterPost = HorarioAfterPost
    BeforeDelete = HorarioBeforeDelete
    AfterDelete = HorarioAfterDelete
    OnNewRecord = HorarioNewRecord
    OnReconcileError = CONCILIACION
    Left = 592
    Top = 128
    object HorarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object HorarioID_RECORRIDO: TIntegerField
      FieldName = 'ID_RECORRIDO'
    end
    object HorarioHORA_SALIDA: TTimeField
      DisplayLabel = 'Hora de Salida'
      FieldName = 'HORA_SALIDA'
      OnSetText = HorarioHORA_SALIDASetText
      DisplayFormat = 'hh:mm'
    end
    object HorarioID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object HorarioORDEN: TIntegerField
      DisplayLabel = 'Orden'
      FieldName = 'ORDEN'
      OnValidate = HorarioORDENValidate
    end
    object HorariolookCiudad: TStringField
      DisplayLabel = 'Localidad'
      FieldKind = fkLookup
      FieldName = 'lookCiudad'
      LookupDataSet = Localidad
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_LOCALIDAD'
      Lookup = True
    end
    object HorariolookRecorrido: TStringField
      DisplayLabel = 'Recorrido'
      FieldKind = fkLookup
      FieldName = 'lookRecorrido'
      LookupDataSet = Recorrido
      LookupKeyFields = 'ID'
      LookupResultField = 'CODIGO'
      KeyFields = 'ID_RECORRIDO'
      Lookup = True
    end
  end
  object qryHorario: TSQLDataSet
    CommandText = 'SELECT * FROM HORARIO;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 592
    Top = 16
    object qryHorarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryHorarioID_RECORRIDO: TIntegerField
      FieldName = 'ID_RECORRIDO'
    end
    object qryHorarioHORA_SALIDA: TTimeField
      FieldName = 'HORA_SALIDA'
      DisplayFormat = 'hh:mm'
    end
    object qryHorarioID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object qryHorarioORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
  end
  object qryCheckOrdenLocalidad: TSQLDataSet
    CommandText = 
      'SELECT * FROM HORARIO'#13#10'WHERE (HORARIO.ID_RECORRIDO =:pIdRecorrid' +
      'o) and (horario.orden=:pOrden);'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'pIdRecorrido'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pOrden'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 816
    Top = 128
    object qryCheckOrdenLocalidadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryCheckOrdenLocalidadID_RECORRIDO: TIntegerField
      FieldName = 'ID_RECORRIDO'
    end
    object qryCheckOrdenLocalidadHORA_SALIDA: TTimeField
      FieldName = 'HORA_SALIDA'
    end
    object qryCheckOrdenLocalidadID_LOCALIDAD: TIntegerField
      FieldName = 'ID_LOCALIDAD'
    end
    object qryCheckOrdenLocalidadORDEN: TIntegerField
      FieldName = 'ORDEN'
    end
  end
  object qryCheckCodLocalidad: TSQLDataSet
    CommandText = 'select * from  LOCALIDAD'#13#10'where localidad.codciudad =:pCodigo;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pCodigo'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 816
    Top = 176
    object qryCheckCodLocalidadID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryCheckCodLocalidadNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object qryCheckCodLocalidadCODCIUDAD: TStringField
      FieldName = 'CODCIUDAD'
      Size = 10
    end
    object qryCheckCodLocalidadPROVINCIA: TStringField
      FieldName = 'PROVINCIA'
      Size = 30
    end
  end
  object qryBoleto: TSQLDataSet
    CommandText = 'SELECT * FROM BOLETOS;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 648
    Top = 16
    object qryBoletoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryBoletoID_RESERVAS: TIntegerField
      FieldName = 'ID_RESERVAS'
    end
    object qryBoletoNUM_BOLETO: TStringField
      FieldName = 'NUM_BOLETO'
      Size = 10
    end
  end
  object prBoleto: TDataSetProvider
    DataSet = qryBoleto
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prBoletoBeforeUpdateRecord
    Left = 648
    Top = 72
  end
  object Boleto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prBoleto'
    AfterPost = BoletoAfterPost
    AfterDelete = BoletoAfterDelete
    OnNewRecord = BoletoNewRecord
    OnReconcileError = CONCILIACION
    Left = 648
    Top = 128
    object BoletoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object BoletoID_RESERVAS: TIntegerField
      FieldName = 'ID_RESERVAS'
    end
    object BoletoNUM_BOLETO: TStringField
      DisplayLabel = 'N'#250'mero de boleto'
      FieldName = 'NUM_BOLETO'
      Size = 10
    end
  end
  object qryLookPasaj: TSQLDataSet
    CommandText = 'SELECT * FROM PASAJEROS'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 576
    Top = 208
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMBRE'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'APELLIDO'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'TELEFONO'
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'DNI'
      Size = 10
    end
    object StringField5: TStringField
      FieldName = 'DIRECCION'
      Size = 40
    end
    object StringField6: TStringField
      FieldName = 'LOCALIDAD'
      Size = 40
    end
  end
  object prLookPasaj: TDataSetProvider
    DataSet = qryLookPasaj
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prPasajerosBeforeUpdateRecord
    Left = 576
    Top = 264
  end
  object LookPasaj: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prLookPasaj'
    BeforeInsert = PasajerosBeforeInsert
    BeforeEdit = PasajerosBeforeEdit
    BeforePost = PasajerosBeforePost
    AfterPost = PasajerosAfterPost
    BeforeDelete = PasajerosBeforeDelete
    AfterDelete = PasajerosAfterDelete
    OnNewRecord = PasajerosNewRecord
    OnReconcileError = CONCILIACION
    Left = 576
    Top = 320
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField7: TStringField
      DisplayLabel = 'Apellido'
      FieldName = 'APELLIDO'
      Size = 30
    end
    object StringField8: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 30
    end
    object StringField9: TStringField
      DisplayLabel = 'Tel'#233'fono'
      FieldName = 'TELEFONO'
      Size = 15
    end
    object StringField10: TStringField
      FieldName = 'DNI'
      OnValidate = PasajerosDNIValidate
      Size = 10
    end
    object StringField11: TStringField
      DisplayLabel = 'Direcci'#243'n'
      FieldName = 'DIRECCION'
      Size = 40
    end
    object StringField12: TStringField
      DisplayLabel = 'Localidad'
      FieldName = 'LOCALIDAD'
      Size = 40
    end
  end
  object prAnulaBoleto: TDataSetProvider
    DataSet = qryAnulaBoleto
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 648
    Top = 272
  end
  object AnulaBoleto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prAnulaBoleto'
    AfterPost = AnulaBoletoAfterPost
    AfterDelete = AnulaBoletoAfterDelete
    OnReconcileError = CONCILIACION
    Left = 648
    Top = 328
    object AnulaBoletoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object AnulaBoletoID_RESERVAS: TIntegerField
      FieldName = 'ID_RESERVAS'
    end
    object AnulaBoletoNUM_BOLETO: TStringField
      FieldName = 'NUM_BOLETO'
      Size = 10
    end
  end
  object qryAnulaBoleto: TSQLDataSet
    CommandText = 'SELECT * FROM BOLETOS'#13#10'where Boletos.id_reservas =:pIdReservas;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pIdReservas'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionDatos
    Left = 656
    Top = 216
    object qryAnulaBoletoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryAnulaBoletoID_RESERVAS: TIntegerField
      FieldName = 'ID_RESERVAS'
    end
    object qryAnulaBoletoNUM_BOLETO: TStringField
      FieldName = 'NUM_BOLETO'
      Size = 10
    end
  end
end
