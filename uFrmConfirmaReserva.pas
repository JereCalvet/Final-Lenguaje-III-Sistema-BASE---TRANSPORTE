unit uFrmConfirmaReserva;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, StdCtrls, Buttons, ExtCtrls, DB, Mask,
  DBCtrls, ComCtrls;

type
  TFrmConfirmaReserva = class(TFrmPlantillaGenerica)
    Panel1: TPanel;
    dsPasajeros: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    Tabsheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Radiogroup1: TRadioGroup;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    dsTarifa: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label12: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    dsReservas: TDataSource;
    Button3: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    protected
       procedure WMActivate (Var Message: TWMActivate); message WM_ACTIVATE;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfirmaReserva: TFrmConfirmaReserva;

implementation

uses UDMDatos, uFrmGridPasajeros, UFormMenu, uFrmReservas, uFrmGridTarifa;

{$R *.dfm}

procedure TFrmConfirmaReserva.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmConfirmaReserva.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with DMDatos do
    begin
        try
          ReservasID_PASAJERO.Value := PasajerosID.Value;
          ReservasID_TARIFA.Value := TarifaID.Value;
          ReservasID_VIAJE.Value := pViajeID.Value;
          ReservasIMPORTE.Value := TarifaPRECIO.Value;
          case Radiogroup1.ItemIndex of
            0: ReservasESTADO.Value := 'C';
            1: ReservasESTADO.Value := 'R';
          end;

          if (DMDatos.ReservasESTADO.Value <> '') then
            begin
              Reservas.Post;
              Reservas.Edit;
              ReservasCODIGO.Value := Format ('%.*d', [10, ReservasID.Value]);
              Reservas.Post;
              MessageDlg('Reserva realizada correctamente', mtInformation, [mbOK], 0);
              banderaReserva := True;
              close;
            end
          else
            MessageDlg('Debe ingresar una opcion: *Reserva o *Confima',mtError,[mbOK],0);
          except
          DatabaseError('Error en la grabacion');
        end
    end;
end;

procedure TFrmConfirmaReserva.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  i:integer;
  F:TForm;
begin
  for i := 0 to (Application.ComponentCount - 1) do
     begin
       if (Application.Components[i] is TForm) then
          begin
             F := TForm(Application.Components[i]);
             if ((F.Caption <> 'Reservas') and (F.Caption <> 'Menu')) then
                F.Close;
          end
     end;
end;


procedure TFrmConfirmaReserva.Button1Click(Sender: TObject);    //previous
begin
 // inherited;
  PageControl1.SelectNextPage(False);
end;

procedure TFrmConfirmaReserva.Button2Click(Sender: TObject);     //next
begin
  //inherited;
  PageControl1.SelectNextPage(True);
end;

procedure TFrmConfirmaReserva.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage := Tabsheet1;
  dsTarifa.DataSet.Open;
  DMDatos.Tarifa.Locate('L_INICIO; L_FIN', VarArrayOf([DMDatos.ReservasL_INICIO.Value , DMDatos.ReservasL_FIN.Value]),[]);

end;

procedure TFrmConfirmaReserva.Button3Click(Sender: TObject);
begin
  inherited;
  TFrmGridTarifa.MostrarModal;
end;

procedure TFrmConfirmaReserva.WMActivate(var Message: TWMActivate);
begin
  if DMDatos.Tarifa.State = dsInactive then
     DMDatos.Tarifa.Open;
end;

end.
