unit uQrPasajeros_Viaje;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UqrPlantillaGenerica, QRCtrls, QuickRpt, ExtCtrls;

type
  TqrPasajeros_Viaje = class(TqrPlantillaGenerica)
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText8: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrPasajeros_Viaje: TqrPasajeros_Viaje;

implementation

uses
  uDMReportes;

{$R *.dfm}

end.
