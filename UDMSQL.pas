unit UDMSQL;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, FMTBcd;

type
  TDMSQL = class(TDataModule)
    SQLConnectionSeguridad: TSQLConnection;
    spProximoID: TSQLStoredProc;
    SQLConnectionDatos: TSQLConnection;
    spProximoIDDatos: TSQLStoredProc;
    SQLConnectionReportes: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    function ProximoID(TIPO:string):Integer;
    function proximoIDDatos(TIPO:string):Integer;
var
  DMSQL: TDMSQL;

implementation

{$R *.dfm}

function ProximoID(TIPO:string):Integer;
    begin
      with DMSQL.spProximoID do
        begin
          ParamByName('TIPO').Value := TIPO;
          ExecProc;
          Result := ParamByName('VALOR').Value;
        end
    end;

function ProximoIDDatos(TIPO:string):Integer;
    begin
      with DMSQL.spProximoIDDatos do
        begin
          ParamByName('TIPO').Value := TIPO;
          ExecProc;
          Result := ParamByName('VALOR').Value;
        end
    end;

end.
