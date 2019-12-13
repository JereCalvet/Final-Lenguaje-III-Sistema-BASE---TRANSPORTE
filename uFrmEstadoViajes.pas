unit uFrmEstadoViajes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, DB, Grids, DBGrids, ExtCtrls, StdCtrls,
  CheckLst, ComCtrls, Buttons, DateUtils;

type
  TFrmEstadoViajes = class(TFrmPlantillaGenerica)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    MonthCalendar1: TMonthCalendar;
    CheckListBox1: TCheckListBox;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DsViaje: TDataSource;
    dsMarcoCalendario: TDataSource;
    Label1: TLabel;
    dsArrayRecorrido: TDataSource;
    Button1: TButton;
    Button2: TButton;
    dsEstadoViaje: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1GetMonthInfo(Sender: TObject; Month: Cardinal;
      var MonthBoldInfo: Cardinal);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    protected
       procedure WMNotify(var Message: TWMNotify); message WM_NOTIFY;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstadoViajes: TFrmEstadoViajes;

implementation

uses
  UDMDatos, CommCtrl, UDMSeguridad;

{$R *.dfm}

procedure TFrmEstadoViajes.WMNotify(var Message: TWMNotify);
begin
  if integer(PNMHdr(message.NMHdr)^.code)=integer(MCN_SELECT) then
    begin
     // inherited;
      CheckListBox1.Items.Clear;
      with DMDatos do
        begin
          Viaje.Close;
          qryViaje.Params.ParamByName('FECHACALENDARIO').AsDate := MonthCalendar1.Date;
          Viaje.Open;
          if Viaje.IsEmpty then
            begin
              MessageDlg('No hay viajes programados para esta fecha',mtError,[mbOK],0);
              Viaje.Close;
            end;
        end;
    end;
  inherited;  
end;

procedure TFrmEstadoViajes.FormCreate(Sender: TObject);
begin
  inherited;
  with DMDatos do
    begin
      qryViaje.Params.Clear;
      qryViaje.Params.CreateParam(ftDate, 'FECHACALENDARIO', ptInput);
      qryViaje.CommandText := 'SELECT * FROM VIAJE WHERE (VIAJE.FECHA =:FECHACALENDARIO)';
      MonthCalendar1.Date := Now();
    end;
end;

procedure TFrmEstadoViajes.MonthCalendar1GetMonthInfo(Sender: TObject;
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

procedure TFrmEstadoViajes.DBGrid1CellClick(Column: TColumn);   //creo un listbox con el reccorido de los viajes
begin
  inherited;
   if not(DMDatos.Viaje.IsEmpty) then
     begin
        with DMDatos do
          begin
            ArrayRecorrido.Close;
            ArrayRecorrido.Params.ParamByName('VIAJE').Value := ViajeID.Value;
            ArrayRecorrido.Open;
            CheckListBox1.Clear;
            ArrayRecorrido.First;
            while not (ArrayRecorrido.Eof) do
              begin
                CheckListBox1.AddItem(ArrayRecorridolookCiudad.Value, Self.CheckListBox1);
                if EstadoViaje.State = dsinactive then EstadoViaje.Open;
                EstadoViaje.Filtered := False;
                EstadoViaje.Filter := 'ID_VIAJE ='+ViajeID.AsString;
                EstadoViaje.Filtered := True;
                If EstadoViaje.Locate('ID_LOCALIDAD', ArrayRecorridoID_LOCALIDAD.Value,[]) then   //check o uncheck segun estado viaje | else = la ciudad no existe en la tabla estado porque nunca se modifico el estado del viaje(se da por entendido que esta abierta)
                   begin
                     if (EstadoViajeESTADO.Value = 'C') then
                       begin
                         CheckListBox1.Checked[CheckListBox1.Items.IndexOf(ArrayRecorridolookCiudad.Value)]:= True;
                         CheckListBox1.State[CheckListBox1.Items.IndexOf(ArrayRecorridolookCiudad.Value)]:= cbChecked;
                       end;
                     if (EstadoViajeESTADO.Value = 'A') then
                       begin
                         CheckListBox1.Checked[CheckListBox1.Items.IndexOf(ArrayRecorridolookCiudad.Value)]:= False;
                         CheckListBox1.State[CheckListBox1.Items.IndexOf(ArrayRecorridolookCiudad.Value)]:= cbUnchecked;
                       end;
                   end
                else
                   begin
                      CheckListBox1.Checked[CheckListBox1.Items.IndexOf(ArrayRecorridolookCiudad.Value)]:= False;
                      CheckListBox1.State[CheckListBox1.Items.IndexOf(ArrayRecorridolookCiudad.Value)]:= cbUnchecked;
                   end;
                ArrayRecorrido.Next;
              end;
          end;
     end;
end;

procedure TFrmEstadoViajes.Button2Click(Sender: TObject);  //boton reset
begin
  inherited;
  DBGrid1CellClick(DBGrid1.Columns[2]);
end;

procedure TFrmEstadoViajes.Button1Click(Sender: TObject);     //boton guardar cambios
var
  a : Integer;
  v : Variant;
begin
  inherited;
  //ShowMessage(IntToStr(CheckListBox1.Items.Count));
   if not(DMDatos.Viaje.IsEmpty) and (CheckListBox1.Items.Count <> 0 ) then
     begin
        for a := 0 to CheckListBox1.Items.Count-1 do   //recorro el listbox ya cargado con ciudades y tildes
          begin
            with DMDatos do
              begin
                v := Localidad.Lookup('NOMBRE',CheckListBox1.Items[a],'ID');
                EstadoViaje.Filtered := False;
                EstadoViaje.Filter := 'ID_VIAJE ='+ViajeID.AsString;
                EstadoViaje.Filtered := True;
                if EstadoViaje.Locate('ID_LOCALIDAD', v,[]) then // si encontre la ciudad en estadoviaje, edito el estado segun la tilde en el checklistbox
                   begin
                      EstadoViaje.Edit;
                      if CheckListBox1.Checked[a] then
                         EstadoViajeESTADO.Value := 'C'
                      else
                         EstadoViajeESTADO.Value := 'A';
                      EstadoViaje.Post;
                   end
                else     //no encontre la ciudad en estado viaje, inserto la ciudad y su estado segun la tilde en el checklistbox
                   begin
                      EstadoViaje.Insert;
                      EstadoViajeID_VIAJE.Value := ViajeID.Value;
                      EstadoViajeID_LOCALIDAD.Value := v;
                      if CheckListBox1.Checked[a] then
                        EstadoViajeESTADO.Value := 'C'
                      else
                        EstadoViajeESTADO.Value := 'A';
                      EstadoViaje.Post;
                   end;
              end;
          end;
        MessageDlg('Estado del viaje actualizado', mtInformation, [mbOK], 0);
     end;
end;

procedure TFrmEstadoViajes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dsViaje.DataSet.Close;
  dsMarcoCalendario.DataSet.Close;
  dsArrayRecorrido.DataSet.Close;
  dsEstadoViaje.DataSet.Close;
end;

procedure TFrmEstadoViajes.FormShow(Sender: TObject);
begin
  inherited;
  dsEstadoViaje.DataSet.Open;
  dsMarcoCalendario.DataSet.Close;
  dsArrayRecorrido.DataSet.Close;
  dsEstadoViaje.DataSet.Close;
   if not (DMSeguridad.PuedeEjecutar('910')) then
     Button1.Enabled := False;
end;

end.
