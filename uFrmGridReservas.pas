unit uFrmGridReservas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DBActns, ActnList, ImgList, DB, Grids,
  DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls;

type
  TFrmGridReservas = class(TFrmPlantillaGrid)
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBNAV1BeforeAction(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridReservas: TFrmGridReservas;

implementation

uses
  UDMDatos, uFrmReservas, uQrPasajeros_Viaje, uDMReportes, uQrBoleto;

{$R *.dfm}

procedure TFrmGridReservas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DMDatos.Boleto.Open;
  DMDatos.Boleto.Refresh;
  DMDatos.Boleto.Close;
  banderaGridReservas := true;
end;

procedure TFrmGridReservas.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   //inherited;
end;

procedure TFrmGridReservas.Button2Click(Sender: TObject);
begin
  inherited;
  with DMReportes do
    begin
      Pasajeros_Viaje.Close;
      qryPasajeros_Viaje.Params.ParamByName('pViaje').Value := DMDatos.pViajeID.Value;
      Pasajeros_Viaje.Open;
      TqrPasajeros_Viaje.Imprime('Pasajeros en el Viaje','v');
    end;
end;

procedure TFrmGridReservas.Button3Click(Sender: TObject);
begin
  inherited;
  with DMDatos do
    begin
       Boleto.Open;
       If Boleto.Locate('ID_RESERVAS', Pasajeros_ViajeID.Value,[]) then //el boleto ya fue impreso
         if MessageDlg('El boleto ya fue impreso con anterioridad. Desea Reimprimir?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
               DMReportes.ImpBoleto.Close;
               DMReportes.qryImpBoleto.Params.ParamByName('pIdReserva').Value := Pasajeros_ViajeID.Value;
               DMReportes.ImpBoleto.Open;
               qrBoleto.Preview;
            end
         else
            Abort
       else
        begin
          Boleto.Insert;
          BoletoID_RESERVAS.Value := Pasajeros_ViajeID.Value;
          Boleto.Post;
          Boleto.Edit;
          BoletoNUM_BOLETO.Value := Format('%.*d', [10, BoletoID.Value]);
          Boleto.Post;

          DMReportes.ImpBoleto.Close;
          DMReportes.qryImpBoleto.Params.ParamByName('pIdReserva').Value := Pasajeros_ViajeID.Value;
          DMReportes.ImpBoleto.Open;
          qrBoleto.Preview;
        end;
    end;
end;

procedure TFrmGridReservas.FormShow(Sender: TObject);
begin
  inherited;
  if DMDatos.Pasajeros_Viaje.State = dsInactive then
    DMDatos.Pasajeros_Viaje.Open;
end;

procedure TFrmGridReservas.DBNAV1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  //inherited;
   If (Button = nbdelete) then
      if MessageDlg('Desea anular la reserva?', mtConfirmation, [mbOK, mbCancel],0) = mrOk then
         begin
            DMDatos.AnulaBoleto.Close;
            DMDatos.qryAnulaBoleto.Params.ParamByName('pIdReservas').Value := DMDatos.Pasajeros_ViajeID.Value;
            DMDatos.AnulaBoleto.Open;
            if not (DMDatos.AnulaBoleto.IsEmpty) then
               begin
                  DMDatos.AnulaBoleto.Delete;
                  DMDatos.Pasajeros_Viaje.Refresh;
               end
            else
              begin
                DMDatos.Pasajeros_Viaje.Delete;
                Abort;
              end;
            MessageDlg('Reserva Anulada.', mtInformation, [mbOk],0);
         end
      else
        Abort;
   if Button = nbInsert then
     DSBASE.DataSet.Cancel;
end;

end.
