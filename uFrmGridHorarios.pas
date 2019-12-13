unit uFrmGridHorarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGrid, DBActns, ActnList, ImgList, DB, Grids,
  DBGrids, ComCtrls, ToolWin, StdCtrls, DBCtrls, ExtCtrls, Clipbrd;

type
  TFrmGridHorarios = class(TFrmPlantillaGrid)
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNAV1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGridHorarios: TFrmGridHorarios;

implementation

uses
  UDMDatos, uFrmRecorridoGrid, UFormMenu, UfrmDlgHorario;

{$R *.dfm}

procedure TFrmGridHorarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DMDatos.Horario.Close;
end;

procedure TFrmGridHorarios.DBNAV1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  if Button = nbInsert then
      begin
          DSBASE.DataSet.Insert;
          TFrmDlgHorario.MostrarModal
       end;

  if Button = nbEdit then
      begin
          DSBASE.DataSet.Edit;
          TFrmDlgHorario.MostrarModal
      end;
end;

procedure TFrmGridHorarios.FormCreate(Sender: TObject);
begin
  inherited;
  with DMDatos do
    begin
      Horario.Close;
      Horario.Filtered := False;
      Horario.Filter := 'ID_RECORRIDO ='+RecorridoID.AsString;
      Horario.filtered := True;
    end;
end;

procedure TFrmGridHorarios.FormShow(Sender: TObject);
begin
  inherited;
  if DMDatos.Horario.IsEmpty then
     begin
        DSBASE.DataSet.Insert;
       DMDatos.HorarioID_RECORRIDO.Value := DMDatos.RecorridoID.Value;
       label1.Caption := 'Código del recorrido: '+DMDatos.HorariolookRecorrido.AsString;
        DSBASE.DataSet.Cancel;
     end
  else
  label1.Caption := 'Código del recorrido: '+DMDatos.HorariolookRecorrido.AsString;
end;

end.
