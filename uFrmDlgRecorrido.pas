unit uFrmDlgRecorrido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaDlg, DB, StdCtrls, Buttons, ComCtrls, DBCtrls, Mask;

type
  TFrmDlgRecorrido = class(TFrmPlantillaDlg)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    function GenerarCodRecorrido(Desde: integer; Hasta: Integer): string;
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDlgRecorrido: TFrmDlgRecorrido;

implementation

uses
  UDMDatos,Clipbrd;

{$R *.dfm}

function TFrmDlgRecorrido.GenerarCodRecorrido(Desde,
  Hasta: Integer): string;
var
  tempstring: string;
begin
  with DMDatos do
    begin
      if Localidad.Locate('ID', RecorridoL_INICIO.Value,[]) then
         tempstring :=LocalidadCODCIUDAD.Value;
      if Localidad.Locate('ID', RecorridoL_FIN.Value,[]) then
         tempstring := tempstring+'_'+LocalidadCODCIUDAD.Value;
      Result := tempstring;
    end;
end;

procedure TFrmDlgRecorrido.DBEdit4KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmDlgRecorrido.DBEdit4ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
begin
  inherited;
  Handled := True;
end;

procedure TFrmDlgRecorrido.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  inherited;
  if (DMDatos.RecorridoL_INICIO.Value <> 0) and (DMDatos.RecorridoL_FIN.Value <> 0) then
      DMDatos.RecorridoCODIGO.Value := (GenerarCodRecorrido(DMDatos.RecorridoL_INICIO.Value, DMDatos.RecorridoL_FIN.Value));
end;

procedure TFrmDlgRecorrido.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  inherited;
  if (DMDatos.RecorridoL_INICIO.Value <> 0) and (DMDatos.RecorridoL_FIN.Value <> 0) then
      DMDatos.RecorridoCODIGO.Value := (GenerarCodRecorrido(DMDatos.RecorridoL_INICIO.Value, DMDatos.RecorridoL_FIN.Value));
end;

end.
