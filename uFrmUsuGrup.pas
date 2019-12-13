unit uFrmUsuGrup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmPlantillaGenerica, Grids, DBGrids, DB, StdCtrls;

type
  TFrmUsuGrup = class(TFrmPlantillaGenerica)
    DSUsuarios: TDataSource;
    DSUsuGrup: TDataSource;
    DSGrupAux: TDataSource;
    DBGridUsuarios: TDBGrid;
    DBGridUsuGrup: TDBGrid;
    DBGridGrupAux: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridGrupAuxDblClick(Sender: TObject);
    procedure DBGridUsuGrupDblClick(Sender: TObject);
    procedure DSUsuariosDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure refrescaDatos;
    { Public declarations }
  end;

var
  FrmUsuGrup: TFrmUsuGrup;

implementation

uses
  UDMSeguridad;

{$R *.dfm}

procedure TFrmUsuGrup.FormShow(Sender: TObject);
begin
  inherited;
  DSUsuarios.DataSet.Open;
  DSUsuGrup.DataSet.Open;
  DSGrupAux.DataSet.Open;
  refrescaDatos;
end;

procedure TFrmUsuGrup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DSUsuarios.DataSet.Close;
  DSUsuGrup.DataSet.Close;
  DSGrupAux.DataSet.Close;
end;

procedure TFrmUsuGrup.DBGridGrupAuxDblClick(Sender: TObject);
begin
  inherited;
  //alta en usugrup - baja aux
  with DMSeguridad do
    begin
    Usu_Grup.Insert;
    Usu_GrupID_USU.Value := UsuariosID.Value;
    Usu_GrupID_GRUPO.Value := GruposAuxID.Value;
    Usu_Grup.Post;
    GruposAux.Delete;
    end
end;

procedure TFrmUsuGrup.DBGridUsuGrupDblClick(Sender: TObject);
begin
  inherited;
  //alta aux - baja usu_grup
  with DMSeguridad do
    begin
      GruposAux.Insert;
      GruposAuxID.Value := Usu_GrupID_GRUPO.Value;
      GruposAuxNOMBRE.Value := Usu_GrupDescripcion.Value;
      GruposAux.Post;
      Usu_Grup.Delete;
    end;
end;

procedure TFrmUsuGrup.DSUsuariosDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  with DMSeguridad do
    begin
      Usu_Grup.Filtered := False;
      Usu_Grup.Filter := 'ID_USU ='+UsuariosID.AsString;
      Usu_Grup.filtered := True;
     refrescaDatos;
    end;
end;

procedure TFrmUsuGrup.refrescaDatos;
begin
  with DMSeguridad do
    begin
        GruposAux.Close;
        GruposAux.Open;
        while not Usu_Grup.Eof do
          if GruposAux.Locate('ID',Usu_GrupID_GRUPO.Value, []) then
            begin
              GruposAux.Delete;
              Usu_Grup.Next;
            end
    end;
end;

procedure TFrmUsuGrup.Button1Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
