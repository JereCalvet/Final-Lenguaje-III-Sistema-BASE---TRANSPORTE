unit uQrBoleto;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrBoleto = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    TitleBand1: TQRBand;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape9: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRShape10: TQRShape;
    QRLabel14: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRShape18: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText18: TQRDBText;
    PageFooterBand1: TQRBand;
    QRShape19: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape20: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText20: TQRDBText;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private

  public

  end;

var
  qrBoleto: TqrBoleto;

implementation

uses
  uDMReportes;

{$R *.DFM}

procedure TqrBoleto.QuickRepStartPage(Sender: TCustomQuickRep);
begin
  QRShape1.Height := PageHeaderBand1.Height;
  QRShape2.Height := TitleBand1.Height;
  QRShape19.Height := PageFooterBand1.Height;
  QRLabel12.Caption := 'FECHA DE EXPEDICION:';
end;

end.
