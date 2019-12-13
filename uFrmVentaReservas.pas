unit uFrmVentaReservas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, Buttons, ComCtrls, StdCtrls, ExtCtrls,
  Grids, DBGrids, DB;

type
  TFrmVentaReservas = class(TFrmPlantillaGenerica)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    dsBASE: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVentaReservas: TFrmVentaReservas;

implementation

uses
  uDMReportes, uqrReport_Reservas_Dia, UDMSeguridad;

{$R *.dfm}

procedure TFrmVentaReservas.FormShow(Sender: TObject);
begin
  inherited;
  DateTimePicker1.Date := Now;
  DateTimePicker2.Date := Now;
end;

procedure TFrmVentaReservas.Button2Click(Sender: TObject);
begin
  inherited;
    if (DMSeguridad.PuedeEjecutar('2200')) then
    begin
  with DMReportes do
    begin
       ReservasRep.Close;
       ReservasRep.Params.Clear;
       ReservasRep.Params.CreateParam(ftDate,'pDESDE',ptInput);
       ReservasRep.Params.CreateParam(ftDate,'pHASTA',ptInput);
       qryReservasRep.CommandText :=  '  SELECT * FROM reservas WHERE reservas.fecha BETWEEN :pDESDE AND :pHASTA; ';
       ReservasRep.Params.ParamByName('pDESDE').Value := DateTimePicker1.Date;
       ReservasRep.Params.ParamByName('pHASTA').Value := DateTimePicker2.Date;
       ReservasRep.Open;

       if ReservasRep.IsEmpty then
          if MessageDlg('No hay reservas. Desea continuar?',mtInformation,[mbOK,mbCancel],0) = mrOK then
            begin
              if not (ReservasRepSUM.IsNull) then
                begin
                  ReservasRep.Edit;
                  ReservasRepTotal.Value := ReservasRepSUM.Value;
                  ReservasRep.Post;
                end;
              TqrReport_Reservas_Dia.Imprime('Reservas entre '+DateToStr(DateTimePicker1.Date)+' y '+DateToStr(DateTimePicker2.Date),'v');
            end
          else
            Abort
       else
         begin
           if not (ReservasRepSUM.IsNull) then
              begin
                ReservasRep.Edit;
                ReservasRepTotal.Value := ReservasRepSUM.Value;
                ReservasRep.Post;
              end;
             TqrReport_Reservas_Dia.Imprime('Reservas entre '+DateToStr(DateTimePicker1.Date)+' y '+DateToStr(DateTimePicker2.Date),'v');
         end;
    end;
end
else
     DatabaseError('No esta autorizado');
end;

procedure TFrmVentaReservas.Button1Click(Sender: TObject);
begin
  inherited;
  if (DMSeguridad.PuedeEjecutar('2100')) then
  begin
   with DMReportes do
    begin
       ReservasRep.Close;
       ReservasRep.Params.Clear;
       ReservasRep.Params.CreateParam(ftDate,'pHOY',ptInput);
       qryReservasRep.CommandText :=  '  SELECT * FROM reservas WHERE reservas.fecha =:pHOY;';
       ReservasRep.Params.ParamByName('pHOY').Value := Now;
       ReservasRep.Open;
       if ReservasRep.IsEmpty then
          if MessageDlg('No hay reservas. Desea continuar?',mtInformation,[mbOK,mbCancel],0) = mrOK then
            begin
              if not (ReservasRepSUM.IsNull) then
                begin
                  ReservasRep.Edit;
                  ReservasRepTotal.Value := ReservasRepSUM.Value;
                  ReservasRep.Post;
                end;
              TqrReport_Reservas_Dia.Imprime('Reservas de '+DateToStr(Now),'v');
            end
          else
            Abort
       else
         begin
           if not (ReservasRepSUM.IsNull) then
              begin
                ReservasRep.Edit;
                ReservasRepTotal.Value := ReservasRepSUM.Value;
                ReservasRep.Post;
              end;
             TqrReport_Reservas_Dia.Imprime('Reservas de '+DateToStr(Now),'v');
         end;
    end;
  end
  else
      DatabaseError('No esta autorizado');
end;
end.
