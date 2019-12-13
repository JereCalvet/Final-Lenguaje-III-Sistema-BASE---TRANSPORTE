unit UFrmPlantillaGenerica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TFrmPlantillaGenerica = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    Class function MostrarModal:TModalResult;
  end;

var
  FrmPlantillaGenerica: TFrmPlantillaGenerica;

implementation

uses
  UFormMenu, uFrmReservas;

{$R *.dfm}

{ TFrmPlantillaGenerica }

class function TFrmPlantillaGenerica.MostrarModal: TModalResult;
begin
  with Create(Application) do
    try
      Result := showmodal
    finally
      Release
    end;
end;

end.
