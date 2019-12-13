unit uFrmDlgTarifa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaDlg, DB, StdCtrls, Buttons, ComCtrls, DBCtrls, Mask;

type
  TFrmDlgTarifa = class(TFrmPlantillaDlg)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    procedure DBEdit4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function GenerarCodTarifa(Desde: integer; Hasta: Integer): string;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDlgTarifa: TFrmDlgTarifa;

implementation

uses
  UDMDatos,Clipbrd;

{$R *.dfm}

procedure TFrmDlgTarifa.DBEdit4ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgTarifa.DBMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((ssCtrl in Shift) AND (Key = ord('V'))) or ((ssShift in Shift) and (Key = VK_INSERT)) then
     begin
       if Clipboard.HasFormat(CF_TEXT) then
          ClipBoard.Clear;
       Key := 0;
     end;
end;

function TFrmDlgTarifa.GenerarCodTarifa(Desde, Hasta: Integer): string;
var
  tempstring: string;
begin
    with DMDatos do
    begin
      if Localidad.Locate('ID', TarifaL_INICIO.Value,[]) then
         tempstring :=LocalidadCODCIUDAD.Value;
      if Localidad.Locate('ID', TarifaL_FIN.Value,[]) then
         tempstring := tempstring+'_'+LocalidadCODCIUDAD.Value;
      Result := tempstring;
    end;
end;

procedure TFrmDlgTarifa.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  inherited;
    if (DMDatos.TarifaL_INICIO.Value <> 0) and (DMDatos.TarifaL_FIN.Value <> 0) then
        DMDatos.TarifaCODIGO.Value := GenerarCodTarifa(DMDatos.TarifaL_INICIO.Value, DMDatos.TarifaL_FIN.Value);
end;

procedure TFrmDlgTarifa.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  inherited;
   if (DMDatos.TarifaL_INICIO.Value <> 0) and (DMDatos.TarifaL_FIN.Value <> 0) then
        DMDatos.TarifaCODIGO.Value := GenerarCodTarifa(DMDatos.TarifaL_INICIO.Value, DMDatos.TarifaL_FIN.Value);
end;

procedure TFrmDlgTarifa.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if ((ssCtrl in Shift) AND (Key = ord('V'))) or ((ssShift in Shift) and (Key = VK_INSERT)) then
     begin
       if Clipboard.HasFormat(CF_TEXT) then
          ClipBoard.Clear;
       Key := 0;
     end;
end;


end.
