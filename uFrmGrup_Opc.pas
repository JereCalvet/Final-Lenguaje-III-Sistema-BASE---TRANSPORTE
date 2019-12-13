unit uFrmGrup_Opc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, DB, StdCtrls, Buttons, Grids, DBGrids,
  ImgList, ExtCtrls;

type
  TFrmGrup_Opc = class(TFrmPlantillaGenerica)
    DBGridGrupos: TDBGrid;
    DBGridOpc: TDBGrid;
    DBGridGrup_Opc: TDBGrid;
    btnSalir: TBitBtn;
    DSGrupos: TDataSource;
    DSOpc: TDataSource;
    DSGrup_Opc: TDataSource;
    Image1: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    procedure DBGridOpcDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridOpcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSGruposDataChange(Sender: TObject; Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGrup_Opc: TFrmGrup_Opc;

implementation

uses
  UDMSeguridad, UFormMenu;

{$R *.dfm}

procedure TFrmGrup_Opc.DBGridOpcDblClick(Sender: TObject);
begin
  inherited;
  with DMSeguridad do
    if (Grupo_Opc.Locate('ID_GRUPO; ID_OPC', VarArrayOf([GruposID.Value , OpcionesID.Value]), [])) then
        Grupo_Opc.Delete
    else
       begin
        Grupo_Opc.Insert;
        Grupo_OpcID_OPC.Value := OpcionesID.Value;
        Grupo_OpcID_GRUPO.Value := GruposID.Value;
        Grupo_Opc.Post
       end;

    DBGridOpc.Refresh;
end;

procedure TFrmGrup_Opc.FormShow(Sender: TObject);
begin
  inherited;
  DSOpc.DataSet.Open;
  DSGrupos.DataSet.Open;
  DSGrup_Opc.DataSet.Open;
end;

procedure TFrmGrup_Opc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DSOpc.DataSet.Close;
  DSGrupos.DataSet.Close;
  DSGrup_Opc.DataSet.Close;
end;

procedure TFrmGrup_Opc.DBGridOpcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  with DMSeguridad do
    if Column.Title.Caption = 'Estado' then
      if Grupo_Opc.Locate('ID_GRUPO; ID_OPC', VarArrayOf([GruposID.Value , OpcionesID.Value]), []) then
         DBGridOpc.Canvas.Draw(Rect.Left+12, Rect.Top, Image1.picture.graphic)
      else
         DBGridOpc.Canvas.Draw(Rect.Left+12, Rect.Top, Image2.picture.graphic);

end;

procedure TFrmGrup_Opc.DSGruposDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  DBGridOpc.Refresh;
end;

procedure TFrmGrup_Opc.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DMSeguridad.Usuarios.Open;
  DMSeguridad.Login.Active := False;
  DMSeguridad.Login.Params.ParamByName('USUARIO').Value := DMSeguridad.UsuariosID.Value;
  DMSeguridad.Login.Active := True;

end;

procedure TFrmGrup_Opc.FormCreate(Sender: TObject);
begin
  inherited;
  DMSeguridad.Opciones.Close;
  DMSeguridad.qryOpciones.CommandText:=   'SELECT * FROM OPCIONES order by strlen(OPCIONES.agrupa), opciones.agrupa asc; ';
end;

end.
