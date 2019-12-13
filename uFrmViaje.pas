unit uFrmViaje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, DB, StdCtrls, Buttons, Grids, DBGrids,
  ExtCtrls, ComCtrls, DBCtrls, Mask;

type
  TFrmViaje = class(TFrmPlantillaGenerica)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dsRecorrido: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    dsViaje: TDataSource;
    MonthCalendar1: TMonthCalendar;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    dsChofer: TDataSource;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit7: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    Label5: TLabel;
    DBEdit9: TDBEdit;
    dsVehiculo: TDataSource;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label20: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmViaje: TFrmViaje;

implementation

uses
  UDMDatos;

{$R *.dfm}

procedure TFrmViaje.FormShow(Sender: TObject);
begin
  inherited;
  TabSheet1.Visible := FALSE;
  TabSheet1.TabVisible := FALSE;
  TabSheet2.Visible := FALSE;
  TabSheet2.TabVisible := FALSE;

  dsRecorrido.DataSet.Open;
  with DMDatos do
    begin
      Viaje.Open;
      if (Viaje.State = dsInsert) then
        begin
          Viaje.Insert;
          MonthCalendar1.Date := Now;
        end;
      if (Viaje.State = dsEdit) then
        begin
          Viaje.Edit;
          TabSheet1.Visible := True;
          TabSheet1.TabVisible := true;
          TabSheet2.Visible := True;
          TabSheet2.TabVisible := true;
          MonthCalendar1.Date := ViajeFECHA.Value;
        end;
    end;
end;

procedure TFrmViaje.BitBtn1Click(Sender: TObject);
begin
  inherited;
   with DMDatos do
    begin
        VerificaHorario.Close;
        qryVerificaHorario.Params.ParamByName('pidrecorrido').Value := RecorridoID.Value;
        VerificaHorario.Open;
        if VerificaHorario.IsEmpty then
           begin
             MessageDlg('El recorrido no tiene horarios asignados. No se puede seleccionar ese recorrido.',mtError,[mbOk],0);
             Abort;
           end;
        try
          ViajeFECHA.Value := MonthCalendar1.Date;
          ViajeID_RECORRIDO.Value := RecorridoID.Value;
          if (DBLookupComboBox4.KeyValue <> null) and (DBLookupComboBox1.KeyValue <> null) then
             Viaje.Post
          else
            Abort;
          MessageDlg('Viaje programado correctamente', mtInformation, [mbOK], 0);
          close;
          except
          DatabaseError('Error programando el viaje. Verifique si falta ingresar datos.');
        end
    end;
end;

procedure TFrmViaje.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dsViaje.DataSet.Cancel;
  close;
end;

procedure TFrmViaje.DBLookupComboBox4Click(Sender: TObject);     //apechofer
begin
  inherited;
  TabSheet1.Visible := True;
  TabSheet1.TabVisible := true;
  if (DBLookupComboBox1.KeyField <> '') then
    begin
     TabSheet1.Visible := True;
     TabSheet1.TabVisible := True;
    end;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TFrmViaje.DBLookupComboBox1Click(Sender: TObject);    //patente
begin
  inherited;
  TabSheet2.Visible := True;
  TabSheet2.TabVisible := True;
  if (DBLookupComboBox4.KeyField <> '') then
    begin
     TabSheet2.Visible := True;
     TabSheet2.TabVisible := True;
    end;
  PageControl1.ActivePage := TabSheet2;
end;

end.
