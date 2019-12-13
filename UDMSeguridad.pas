unit UDMSeguridad;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TDMSeguridad = class(TDataModule)
    qryUsuarios: TSQLDataSet;
    prUsuarios: TDataSetProvider;
    Usuarios: TClientDataSet;
    qryOpciones: TSQLDataSet;
    prOpciones: TDataSetProvider;
    Opciones: TClientDataSet;
    qryGrupos: TSQLDataSet;
    prGrupos: TDataSetProvider;
    Grupos: TClientDataSet;
    qryUsu_Grup: TSQLDataSet;
    prUsu_Grup: TDataSetProvider;
    Usu_Grup: TClientDataSet;
    qryGrupo_Opc: TSQLDataSet;
    prGrupo_Opc: TDataSetProvider;
    Grupo_Opc: TClientDataSet;
    qryUsuariosID: TIntegerField;
    qryUsuariosNOMBRE: TStringField;
    qryUsuariosNOMCOMP: TStringField;
    qryUsuariosPASSWORD: TStringField;
    UsuariosID: TIntegerField;
    UsuariosNOMBRE: TStringField;
    UsuariosNOMCOMP: TStringField;
    UsuariosPASSWORD: TStringField;
    qryOpcionesID: TIntegerField;
    qryOpcionesNOMBRE: TStringField;
    qryOpcionesAGRUPA: TStringField;
    OpcionesID: TIntegerField;
    OpcionesNOMBRE: TStringField;
    OpcionesAGRUPA: TStringField;
    qryGruposID: TIntegerField;
    qryGruposNOMBRE: TStringField;
    GruposID: TIntegerField;
    GruposNOMBRE: TStringField;
    qryUsu_GrupID_USU: TIntegerField;
    qryUsu_GrupID_GRUPO: TIntegerField;
    Usu_GrupID_USU: TIntegerField;
    Usu_GrupID_GRUPO: TIntegerField;
    qryGrupo_OpcID_GRUPO: TIntegerField;
    qryGrupo_OpcID_OPC: TIntegerField;
    Grupo_OpcID_GRUPO: TIntegerField;
    Grupo_OpcID_OPC: TIntegerField;
    qryChkUsuarios: TSQLDataSet;
    qryChkUsuariosID: TIntegerField;
    qryChkUsuariosNOMBRE: TStringField;
    qryGruposAux: TSQLDataSet;
    prGruposAux: TDataSetProvider;
    GruposAux: TClientDataSet;
    Usu_GrupDescripcion: TStringField;
    qryGruposAuxID: TIntegerField;
    qryGruposAuxNOMBRE: TStringField;
    GruposAuxID: TIntegerField;
    GruposAuxNOMBRE: TStringField;
    qryLogin: TSQLDataSet;
    prLogin: TDataSetProvider;
    Login: TClientDataSet;
    qryLoginAGRUPA: TStringField;
    LoginAGRUPA: TStringField;
    qryChkNomGrup: TSQLDataSet;
    qryChkNomGrupID: TIntegerField;
    qryChkNomGrupNOMBRE: TStringField;
    qryChkNomOpc: TSQLDataSet;
    qryChkNomOpcID: TIntegerField;
    qryChkNomOpcNOMBRE: TStringField;
    qryChkNomOpcAGRUPA: TStringField;
    procedure CONCILIACION(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure UsuariosAfterDelete(DataSet: TDataSet);
    procedure UsuariosAfterPost(DataSet: TDataSet);
    procedure OpcionesAfterPost(DataSet: TDataSet);
    procedure OpcionesAfterDelete(DataSet: TDataSet);
    procedure GruposAfterDelete(DataSet: TDataSet);
    procedure GruposAfterPost(DataSet: TDataSet);
    procedure Usu_GrupAfterPost(DataSet: TDataSet);
    procedure Usu_GrupAfterDelete(DataSet: TDataSet);
    procedure Grupo_OpcAfterDelete(DataSet: TDataSet);
    procedure Grupo_OpcAfterPost(DataSet: TDataSet);
    procedure prUsuariosBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure UsuariosNewRecord(DataSet: TDataSet);
    procedure prOpcionesBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure prGruposBeforeUpdateRecord(Sender: TObject;
      SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
      UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure OpcionesNewRecord(DataSet: TDataSet);
    procedure GruposNewRecord(DataSet: TDataSet);
    procedure UsuariosNOMBREValidate(Sender: TField);
    function PuedeEjecutar(Opcion: string):Boolean;
    procedure UsuariosBeforePost(DataSet: TDataSet);
    procedure GruposBeforePost(DataSet: TDataSet);
    procedure GruposNOMBREValidate(Sender: TField);
    procedure OpcionesNOMBREValidate(Sender: TField);
    procedure OpcionesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMSeguridad: TDMSeguridad;

implementation

uses
  UDMSQL;

{$R *.dfm}

procedure TDMSeguridad.CONCILIACION(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  ApplicationShowException(e);
  Abort;
end;


procedure TDMSeguridad.UsuariosAfterDelete(DataSet: TDataSet);
begin
  Usuarios.ApplyUpdates(0);
end;

procedure TDMSeguridad.UsuariosAfterPost(DataSet: TDataSet);
begin
  Usuarios.ApplyUpdates(0);
end;

procedure TDMSeguridad.OpcionesAfterPost(DataSet: TDataSet);
begin
  Opciones.ApplyUpdates(0);
end;

procedure TDMSeguridad.OpcionesAfterDelete(DataSet: TDataSet);
begin
  Opciones.ApplyUpdates(0);
end;

procedure TDMSeguridad.GruposAfterDelete(DataSet: TDataSet);
begin
  Grupos.ApplyUpdates(0);
end;

procedure TDMSeguridad.GruposAfterPost(DataSet: TDataSet);
begin
  Grupos.ApplyUpdates(0);
end;

procedure TDMSeguridad.Usu_GrupAfterPost(DataSet: TDataSet);
begin
  Usu_Grup.ApplyUpdates(0);
end;

procedure TDMSeguridad.Usu_GrupAfterDelete(DataSet: TDataSet);
begin
  Usu_Grup.ApplyUpdates(0);
end;

procedure TDMSeguridad.Grupo_OpcAfterDelete(DataSet: TDataSet);
begin
  Grupo_Opc.ApplyUpdates(0);
end;

procedure TDMSeguridad.Grupo_OpcAfterPost(DataSet: TDataSet);
begin
  Grupo_Opc.ApplyUpdates(0);
end;

procedure TDMSeguridad.prUsuariosBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := ProximoID('USUARIOS');
end;

procedure TDMSeguridad.UsuariosNewRecord(DataSet: TDataSet);
begin
  UsuariosID.Value := -1;
end;

procedure TDMSeguridad.prOpcionesBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := ProximoID('OPCIONES');
end;

procedure TDMSeguridad.prGruposBeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet;
  UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
      DeltaDS.FieldByName('ID').NewValue := ProximoID('GRUPOS');
end;

procedure TDMSeguridad.OpcionesNewRecord(DataSet: TDataSet);
begin
  OpcionesID.Value := -1;
end;

procedure TDMSeguridad.GruposNewRecord(DataSet: TDataSet);
begin
  GruposID.Value := -1;
end;

procedure TDMSeguridad.UsuariosNOMBREValidate(Sender: TField);
begin
   qryChkUsuarios.Close;
   qryChkUsuarios.ParamByName('USER').value := UsuariosNOMBRE.Value;
   qryChkUsuarios.Open;

   if not(qryChkUsuarios.IsEmpty) then
      if (Usuarios.State = dsInsert) or (UsuariosID.Value <> qryChkUsuariosID.Value) then
          DatabaseError('El nombre de usuario ya existe.');
end;

function TDMSeguridad.PuedeEjecutar(Opcion: string): Boolean;
begin
  Result := Login.Locate('AGRUPA',Opcion,[]);
end;

procedure TDMSeguridad.UsuariosBeforePost(DataSet: TDataSet);
begin
  if UsuariosNOMBRE.Value = '' then
    DatabaseError('Debe ingresar un nombre de Usuario');
  if UsuariosNOMCOMP.Value = '' then
    DatabaseError('Debe ingresar un nombre completo');
  if UsuariosPASSWORD.Value = '' then
    DatabaseError('Debe ingresar una contraseña');
  if not (UsuariosNOMCOMP.Value = '') then
    UsuariosNOMCOMP.Value:=AnsiUpperCase(UsuariosNOMCOMP.Value);
end;

procedure TDMSeguridad.GruposBeforePost(DataSet: TDataSet);
begin
  if GruposNOMBRE.Value = '' then
    DatabaseError('Debe ingresar un nombre de Grupo');
  if not (GruposNOMBRE.Value = '') then
     GruposNOMBRE.Value:=AnsiUpperCase(GruposNOMBRE.Value);
end;

procedure TDMSeguridad.GruposNOMBREValidate(Sender: TField);
begin
  qryChkNomGrup.Close;
  qryChkNomGrup.ParamByName('USER').value := GruposNOMBRE.Value;
  qryChkNomGrup.Open;

  if not(qryChkNomGrup.IsEmpty) then
      if (Grupos.State = dsInsert) or (GruposID.Value <> qryChkNomGrupID.Value) then
          DatabaseError('El nombre de grupo ya existe.');
end;

procedure TDMSeguridad.OpcionesNOMBREValidate(Sender: TField);
begin
  qryChkNomOpc.Close;
  qryChkNomOpc.ParamByName('USER').value := OpcionesNOMBRE.Value;
  qryChkNomOpc.Open;

  if not(qryChkNomOpc.IsEmpty) then
      if (Opciones.State = dsInsert) or (OpcionesID.Value <> qryChkNomOpcID.Value) then
          DatabaseError('El nombre de la opcion ya existe.');
end;

procedure TDMSeguridad.OpcionesBeforePost(DataSet: TDataSet);
begin
  if (OpcionesNOMBRE.Value = '') then
    DatabaseError('Debe ingresar un nombre');
  if (OpcionesAGRUPA.Value = '') then
    DatabaseError('Debe ingresar un numero de opción');
  if not (OpcionesNOMBRE.Value = '') then
    OpcionesNOMBRE.Value:=AnsiUpperCase(OpcionesNOMBRE.Value);
end;

end.
