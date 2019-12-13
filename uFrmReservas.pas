unit uFrmReservas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, Grids, DBGrids, DB, ExtCtrls, ComCtrls,
  StdCtrls, Buttons, Mask, DBCtrls, DateUtils;

type
  TFrmReservas = class(TFrmPlantillaGenerica)
    Panel1: TPanel;
    dsVIAJES: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsRESERVAS: TDataSource;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label12: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label13: TLabel;
    dsCalculoDisponibilidad: TDataSource;
    dsArrayRecorrido: TDataSource;
    MonthCalendar1: TMonthCalendar;
    Button2: TButton;
    Button3: TButton;
    dsMarcaCalendario: TDataSource;
    dsEstadoViaje: TDataSource;
    Panel2: TPanel;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MonthCalendar1GetMonthInfo(Sender: TObject; Month: Cardinal;
      var MonthBoldInfo: Cardinal);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBLookupComboBox4DropDown(Sender: TObject);
    procedure DBLookupComboBox5DropDown(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    protected
      procedure WMNotify(var Message: TWMNotify); message WM_NOTIFY;  //(ON MONTHCALENDAR CLICK), DETECTA SI ES UNA FECHA O UN CLICK EN CUALQUIER LADO DEL CALENDARIO Y EJECUTA EL CODIGO SEGUN CORRESPONDA
      procedure WMActivate (Var Message: TWMActivate); message WM_ACTIVATE;
  private
    { Private declarations }
  public
    function CalcularDisponibilidad(IDVIAJE: Integer; DESDE:Integer; HASTA: integer): Integer;
    { Public declarations }
  end;

var
  FrmReservas: TFrmReservas;
  banderaReserva: Boolean;
  banderaGridReservas : Boolean;
  dbBoxDesde, dbBoxHasta : Integer;

implementation

uses
  UDMDatos, uFrmGridReservas, uFrmGridPasajeros,
  uFrmDlgPasajeros, CommCtrl;

{$R *.dfm}

procedure TFrmReservas.FormShow(Sender: TObject);  //muestra form
begin
  inherited;
  dsRESERVAS.DataSet.Open;
  dsEstadoViaje.DataSet.Open;
  dsRESERVAS.DataSet.Insert;
end;

procedure TFrmReservas.BitBtn2Click(Sender: TObject);         //cierra form
begin
  inherited;
  dsRESERVAS.DataSet.Cancel;
  dsRESERVAS.DataSet.Close;
  dsVIAJES.DataSet.Close;
  dsCalculoDisponibilidad.DataSet.Close;
  DMDatos.Pasajeros.Close;
  DMDatos.Tarifa.Close;
  dsArrayRecorrido.DataSet.Close;
  dsMarcaCalendario.DataSet.Close;
  dsEstadoViaje.DataSet.Close;
  close;
end;

function TFrmReservas.CalcularDisponibilidad(IDVIAJE, DESDE, HASTA: integer): Integer;
var
  Reserva_Ciudad: array of integer;   // este procedimiento recibe como parametro el id de recorrido correspondiente al viaje
  tamanoArray, I, a, b, compara: Integer;
begin
  tamanoArray := 0;
  with DMDatos do
    begin
      CalculaDisponibilidad.Close;
      CalculaDisponibilidad.Params.ParamByName('VIAJE').value := IDVIAJE;
      CalculaDisponibilidad.Open;

      ArrayRecorrido.Close;
      ArrayRecorrido.Params.ParamByName('VIAJE').value := IDVIAJE;
      ArrayRecorrido.Open;

      while not (ArrayRecorrido.Eof) do  //determino el tamaño del array: comparando ArrayReccoridoOrden.value con una variable inicialmente vacia (tamaño array)
        begin
          if (ArrayRecorridoORDEN.Value > tamanoArray) then
              tamanoArray := ArrayRecorridoORDEN.Value;
          ArrayRecorrido.Next;
        end;

      SetLength( Reserva_Ciudad, tamanoArray);  //seteo el tamaño segun la cantidad de ciudades
      for a := 0 to tamanoArray  -1 do              //cargo el array en blanco
        Reserva_Ciudad[a] := 0;

      //cargo los datos en el vector
      try
        while not (CalculaDisponibilidad.Eof) do
          begin
            for I := (CalculaDisponibilidadORDEN.Value -1) to (CalculaDisponibilidadORDEN.Value -1)  do              // cargo el vector
                Reserva_Ciudad[I] := Reserva_Ciudad[I] + 1;

            CalculaDisponibilidad.Next;
          end;
      except
        MessageDlg('Error cargando el vector',mtError,[mbOK],0);
      end;

      {I := 0;
      Memo1.Clear;
      for I := 0 to tamanoArray -1  do              // muestro vector
        begin
          //ShowMessage(IntToStr(I));
          Memo1.lines.Add(IntToStr(Reserva_Ciudad[I]));
         end;}

      //I := 0;        ´prueba
      ArrayRecorrido.Locate('ID_LOCALIDAD',DESDE,[]);
      a := ArrayRecorridoORDEN.Value;
      ArrayRecorrido.Locate('ID_LOCALIDAD',HASTA,[]);
      I := (ArrayRecorridoORDEN.Value -1);
      for b := (a -1) to (I -1)  do       // recorro vector entre parametros: L_INICIO y L_FIN
        if (Reserva_Ciudad[b] >= compara )then
            compara := Reserva_Ciudad[b];                  //---ALERTA CODIGO MODIFICADO DEL ORIGINAL---

      compara := (pViajelookVehCap.Value - compara);   //resto capacidad - reservas x ciudad
      Result := compara;
      Reserva_Ciudad := nil;
    end;
end;

procedure TFrmReservas.Button2Click(Sender: TObject);    //buscar un pasajero
begin
  inherited;
  if DMDatos.EstadoViaje.State = dsInactive then
    DMDatos.EstadoViaje.Open;
  if (DBLookupComboBox4.KeyValue <> null) and (DBLookupComboBox5.KeyValue <> null) and (MonthCalendar1.Date <> null) then
     begin
       if dsVIAJES.DataSet.IsEmpty then
          begin
          MessageDlg('Seleccione la fecha del viaje',mtError,[mbOK],0);
          Abort;
          end;
       if (DMDatos.EstadoViaje.Locate('ID_VIAJE; ID_LOCALIDAD', VarArrayOf([DMDatos.pViajeID.Value, DBLookupComboBox4.KeyValue]), [])) and (DMDatos.EstadoViajeESTADO.Value = 'C') then
          begin
          MessageDlg('Viaje cerrado',mtError,[mbOK],0);
          Abort;
          end;
        if (DMDatos.pViajeCalDisp.Value <= 0) then
          begin
           MessageDlg('No se pueden realizar reservas, no hay Disposibilidad.', mtError, [mbOK],0);
           Abort;
          end;
// if MessageDlg('No se pueden realizar reservas, no hay Disposibilidad. Desea cerrar el viaje?', mtWarning, [mbNo, mbOK], 0) = mrOk then
//            if (DMDatos.EstadoViaje.Locate('ID_VIAJE; ID_LOCALIDAD', VarArrayOf([DMDatos.pViajeID.Value, DBLookupComboBox4.KeyValue]), [])) then
//               begin
//                 DMDatos.EstadoViaje.Edit;
//                 DMDatos.EstadoViajeESTADO.Value := 'C';
//                 DMDatos.EstadoViaje.Post;
//                 MessageDlg('Estado del viaje actualizado',mtInformation,[mbOK],0);
//                 DMDatos.pViaje.Close;
//               end
//            else
//               begin
//                 DMDatos.EstadoViaje.Insert;
//                 DMDatos.EstadoViajeID_VIAJE.Value := DMDatos.pViajeID.Value;
//                 DMDatos.EstadoViajeID_LOCALIDAD.Value := DBLookupComboBox4.KeyValue;
//                 DMDatos.EstadoViajeESTADO.Value := 'C';
//                 DMDatos.EstadoViaje.Post;
//                 MessageDlg('Estado del viaje actualizado',mtInformation,[mbOK],0);
//                 DMDatos.pViaje.Close;
//               end;
//          Abort;
//        end;
       DMDatos.ReservasFECHA.Value := MonthCalendar1.Date;
       DMDatos.ReservasFECHA_VENCIMIENTO.Value := MonthCalendar1.Date +7;
       DMDatos.ReservasID_VIAJE.Value := DMDatos.pViajeID.Value;
       TFrmGridPasajeros.MostrarModal;
     end
  else
     MessageDlg('Indique origen, destino y la fecha.',mtInformation,[mbOK],0);
end;

procedure TFrmReservas.WMNotify(var message: TWMNotify);  //(ON MONTHCALENDAR CLICK), DETECTA SI ES UNA FECHA O UN CLICK EN CUALQUIER LADO DEL CALENDARIO Y EJECUTA EL CODIGO SEGUN CORRESPONDA
var
OrdenD,OrdenH: Integer;
//ContadorArray,a: Integer;
//Guarda_IDsViaje: array of integer;
SaltoReg: Boolean;
begin
  if integer(PNMHdr(message.NMHdr)^.code)=integer(MCN_SELECT) then
    begin
    //  inherited;
    if (not DBLookupComboBox4.ListVisible)  and (not DBLookupComboBox4.ListVisible) then
      if (DBLookupComboBox4.KeyValue <> null) and (DBLookupComboBox5.KeyValue <> null) and (MonthCalendar1.Date <> null) then
         begin
           with DMDatos do
              begin
                pViaje.Close;
                pViaje.Params.ParamByName('HOY').AsDate :=  MonthCalendar1.Date; //FormatDateTime('dd.mm.yyyy', Now());
                pViaje.Open;
                if not (pViaje.IsEmpty) then
                  begin
                    //SetLength(Guarda_IDsViaje, pViaje.RecordCount);
                    //for a := 0 to pViaje.RecordCount-1 do              //cargo el array en blanco
                    //    Guarda_IDsViaje[a] := 0;
                    //ContadorArray := 0;
                    pViaje.First;
                    while not (pViaje.Eof) do
                      begin
                        SaltoReg := false;
                        ArrayRecorrido.Close;
                        ArrayRecorrido.Params.ParamByName('VIAJE').value := pViajeID.Value;
                        ArrayRecorrido.Open;
                        if (not ArrayRecorrido.Locate('ID_LOCALIDAD',DBLookupComboBox4.KeyValue,[])) or (not ArrayRecorrido.Locate('ID_LOCALIDAD',DBLookupComboBox5.KeyValue,[])) then
                          begin
                            pviaje.Delete;
                            SaltoReg := true;
                          end
                        else
                          begin
                            ArrayRecorrido.Locate('ID_LOCALIDAD',DBLookupComboBox4.KeyValue,[]);
                            OrdenD := ArrayRecorridoORDEN.Value;
                            ArrayRecorrido.Locate('ID_LOCALIDAD',DBLookupComboBox5.KeyValue,[]);
                            OrdenH := ArrayRecorridoORDEN.Value;
                            if (OrdenD < OrdenH) and (OrdenD <> OrdenH) then
                              begin                                      // si el orden origen es menor o diferente que el orden destino guardo ID
                                //Guarda_IDsViaje[ContadorArray] := pViajeID.Value;
                                //ContadorArray := ContadorArray +1;
                                if EstadoViaje.State = dsInactive then EstadoViaje.Open;
                              end
                            else
                              begin
                                pviaje.Delete;
                                SaltoReg := true;
                              end
                          end;
                        if not (SaltoReg) then
                          begin
                            dsVIAJES.DataSet.Edit;
                            pViajeCalDisp.Value := CalcularDisponibilidad(pViajeID.Value,DBLookupComboBox4.KeyValue,DBLookupComboBox5.KeyValue);
                            ArrayRecorrido.Locate('ID_LOCALIDAD',DBLookupComboBox4.KeyValue,[]);
                            pViajeHoraSalida.Value := ArrayRecorridoHORA_SALIDA.Value;
                            pViaje.Next
                          end;
                      end;
                    //Guarda_IDsViaje := nil;
                    if pViaje.IsEmpty then
                       MessageDlg('No hay viajes dentro de ese rango',mtError,[mbOK],0);
                  end
                else
                  begin
                    MessageDlg('No hay viajes programados para esta fecha',mtError,[mbOK],0);
                    Abort
                  end
              end;
         end
    end;
  inherited;
end;

procedure TFrmReservas.DBGrid1DblClick(Sender: TObject);  // ver reservas asignadas al viaje en la grilla
begin
  inherited;
  DMDatos.qryPasajeros_Viaje.Close;
  DMDatos.qryPasajeros_Viaje.ParamByName('IDVIAJE').value := DMDatos.pViajeID.Value;
  DMDatos.qryPasajeros_Viaje.Open;
  if (DMDatos.pViajeID.Value <> 0) then
      if (DMDatos.qryPasajeros_Viaje.IsEmpty) then
          DatabaseError('Este viaje no tiene reservas asignadas')
      else
          TFrmGridReservas.MostrarModal;
end;

procedure TFrmReservas.Button3Click(Sender: TObject);   //veo reservas asiganas al viaje en la grilla con un boton
begin
  inherited;
  DMDatos.qryPasajeros_Viaje.Close;
  DMDatos.qryPasajeros_Viaje.ParamByName('IDVIAJE').value := DMDatos.pViajeID.Value;
  DMDatos.qryPasajeros_Viaje.Open;
  if DMDatos.pViajeID.Value <> 0 then
     if not (DMDatos.qryPasajeros_Viaje.IsEmpty) then
        TFrmGridReservas.MostrarModal
     else
       MessageDlg('Este viaje no tiene reservas asignadas',mtError,[mbOK],0);
end;

procedure TFrmReservas.MonthCalendar1GetMonthInfo(Sender: TObject;       //marca en el calendario con negrita los dias con viajes
  Month: Cardinal; var MonthBoldInfo: Cardinal);
var
  anio, mes, dia : word;
  xFechaActual : TDateTime;
  x: array of Cardinal;
  i: integer;
begin
  //inherited;
   x := Nil;
  DecodeDate(MonthCalendar1.Date, anio, mes, dia);
  case Month of
    1: if mes = 12 then
          anio := anio + 1;
    12: if mes = 1 then
           anio := anio - 1;
  end;
  xFechaActual := EncodeDate(anio, Month, 1);
  i := -1;
  with DMDatos.MarcoCalendario do
    begin
      mes := mes +1;
      Close;
      Filtered := False;
      Filter := 'FECHA      >= ' + QuotedStr(DateToStr(StartOfTheMonth(xFechaActual))) +
                ' AND FECHA <= ' + QuotedStr(DateToStr(EndOfTheMonth(xFechaActual)));
      Filtered := True;
      Open;
      if IsEmpty then
        Exit;
      SetLength(x, RecordCount);
      while not(Eof) do
        begin
          Inc(i);
          DecodeDate(FieldByName('FECHA').AsDateTime, anio, mes, dia);
          x[i] := dia;
          Next;
        end;
        Close;
    end;
    MonthCalendar1.BoldDays(x, MonthBoldInfo);
end;

procedure TFrmReservas.MonthCalendar1Click(Sender: TObject);
begin
 //  GetCursorPos(MausPos);
    {obtengo la posicion del mouse en el momento de la seleccion del viaje para luego, en caso que
     abra la grilla con todas las reservas asiganadas al viaje; justo cuando la grilla se cierra, simulo un click en el calendario
     para poder actualizar el calculo de disponibilidad}
end;

procedure TFrmReservas.FormCreate(Sender: TObject);
begin
  inherited;
  MonthCalendar1.Date := now();
end;

procedure TFrmReservas.WMActivate(Var Message: TWMActivate);
begin
  if dsRESERVAS.DataSet.State <> dsinsert then
    begin
      DMDatos.Reservas.Open;
      DMDatos.Reservas.Insert;
    end;
  if banderaReserva = true then
     begin
        dsRESERVAS.DataSet.Close;
        dsVIAJES.DataSet.Close;
        dsCalculoDisponibilidad.DataSet.Close;
        dsArrayRecorrido.DataSet.Close;
        dsMarcaCalendario.DataSet.Close;
        dsEstadoViaje.DataSet.Close;
        DMDatos.Pasajeros.Close;
        DMDatos.Tarifa.Close;
        dsRESERVAS.DataSet.Open;
        dsRESERVAS.DataSet.Insert;
        DBLookupComboBox4.ListFieldIndex := 0;
        DBLookupComboBox5.ListFieldIndex := 0;
        banderaReserva := False;
     end;

  if banderaGridReservas = true then
     begin
        banderaGridReservas := False;
        dsVIAJES.DataSet.Close;
     end;
end;
procedure TFrmReservas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   if DMDatos.EstadoViaje.State = dsInactive then
      DMDatos.EstadoViaje.Open;
   if (DMDatos.EstadoViaje.Locate('ID_VIAJE; ID_LOCALIDAD', VarArrayOf([DMDatos.pViajeID.Value, DBLookupComboBox4.KeyValue]), [])) and (DMDatos.EstadoViajeESTADO.Value = 'C') then
       DBGrid1.Canvas.Brush.Color := clRed
   else
       DBGrid1.Canvas.Brush.Color := clTeal;
   DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFrmReservas.DBLookupComboBox4DropDown(Sender: TObject);
begin
  inherited;
  dsVIAJES.DataSet.Close;
end;

procedure TFrmReservas.DBLookupComboBox5DropDown(Sender: TObject);
begin
  inherited;
  dsVIAJES.DataSet.Close;
end;

procedure TFrmReservas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
    dsRESERVAS.DataSet.Close;
    dsVIAJES.DataSet.Close;
    DMDatos.Pasajeros.Close;
    DMDatos.Tarifa.Close;
    dsCalculoDisponibilidad.DataSet.Close;
    dsArrayRecorrido.DataSet.Close;
    dsMarcaCalendario.DataSet.Close;
    dsEstadoViaje.DataSet.Close;
end;

end.
