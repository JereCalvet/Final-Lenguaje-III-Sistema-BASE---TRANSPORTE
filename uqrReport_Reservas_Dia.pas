unit uqrReport_Reservas_Dia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UqrPlantillaGenerica, QRCtrls, QuickRpt, ExtCtrls;

type
  TqrReport_Reservas_Dia = class(TqrPlantillaGenerica)
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel13: TQRLabel;
    QRExpr1: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  qrReport_Reservas_Dia: TqrReport_Reservas_Dia;

implementation

uses
  UDMDatos, uDMReportes;

{$R *.dfm}

end.
