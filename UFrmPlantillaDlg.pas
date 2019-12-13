unit UFrmPlantillaDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, ComCtrls, StdCtrls, Buttons, DB;

type
  TFrmPlantillaDlg = class(TFrmPlantillaGenerica)
    DSBase: TDataSource;
    PageControl1: TPageControl;
    BitBtnGrabar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    TabSheet1: TTabSheet;
    procedure BitBtnGrabarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPlantillaDlg: TFrmPlantillaDlg;

implementation

{$R *.dfm}

procedure TFrmPlantillaDlg.BitBtnGrabarClick(Sender: TObject);
begin
  inherited;
    DSBase.DataSet.Post;
    close;
end;

procedure TFrmPlantillaDlg.BitBtnCancelarClick(Sender: TObject);
begin
  inherited;
    DSBase.DataSet.Cancel;
end;

procedure TFrmPlantillaDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   DSBase.DataSet.Cancel;
end;

procedure TFrmPlantillaDlg.FormShow(Sender: TObject);
begin
  inherited;
  DSBase.DataSet.Open;
end;

end.
