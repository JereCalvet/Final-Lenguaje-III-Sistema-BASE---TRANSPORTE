unit UqrPlantillaGenerica;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrPlantillaGenerica = class(TQuickRep)
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel3: TQRLabel;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    LblSubtitulo: TQRLabel;
  private

  public
     Class function Imprime(Subtitulo: string; Modo: string): Integer;
  end;

var
  qrPlantillaGenerica: TqrPlantillaGenerica;

implementation

{$R *.DFM}


Class function TqrPlantillaGenerica.Imprime(Subtitulo: string; Modo: string): Integer;
begin
  with Create(Application) do
    try
        lblSubtitulo.caption := Subtitulo;
        if Modo = 'v' then
          PreviewModal
        else
          Print;
    finally
      Free
    end;
end;

end.
