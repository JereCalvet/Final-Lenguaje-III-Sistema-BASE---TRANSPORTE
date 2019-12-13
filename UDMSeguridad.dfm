object DMSeguridad: TDMSeguridad
  OldCreateOrder = False
  Left = 366
  Top = 151
  Height = 324
  Width = 799
  object qryUsuarios: TSQLDataSet
    CommandText = 'SELECT * FROM USUARIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 64
    Top = 16
    object qryUsuariosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryUsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 15
    end
    object qryUsuariosNOMCOMP: TStringField
      FieldName = 'NOMCOMP'
      Size = 50
    end
    object qryUsuariosPASSWORD: TStringField
      FieldName = 'PASSWORD'
    end
  end
  object prUsuarios: TDataSetProvider
    DataSet = qryUsuarios
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prUsuariosBeforeUpdateRecord
    Left = 64
    Top = 64
  end
  object Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prUsuarios'
    BeforePost = UsuariosBeforePost
    AfterPost = UsuariosAfterPost
    AfterDelete = UsuariosAfterDelete
    OnNewRecord = UsuariosNewRecord
    OnReconcileError = CONCILIACION
    Left = 64
    Top = 112
    object UsuariosID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ID'
      Required = True
    end
    object UsuariosNOMBRE: TStringField
      DisplayLabel = 'Nombre de Usuario'
      DisplayWidth = 20
      FieldName = 'NOMBRE'
      OnValidate = UsuariosNOMBREValidate
      Size = 15
    end
    object UsuariosNOMCOMP: TStringField
      DisplayLabel = 'Nombre Completo'
      DisplayWidth = 60
      FieldName = 'NOMCOMP'
      Size = 50
    end
    object UsuariosPASSWORD: TStringField
      DisplayLabel = 'Contrase'#241'a'
      DisplayWidth = 24
      FieldName = 'PASSWORD'
    end
  end
  object qryOpciones: TSQLDataSet
    CommandText = 'SELECT * FROM OPCIONES;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 152
    Top = 16
    object qryOpcionesID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryOpcionesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qryOpcionesAGRUPA: TStringField
      FieldName = 'AGRUPA'
      Size = 4
    end
  end
  object prOpciones: TDataSetProvider
    DataSet = qryOpciones
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prOpcionesBeforeUpdateRecord
    Left = 152
    Top = 64
  end
  object Opciones: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prOpciones'
    BeforePost = OpcionesBeforePost
    AfterPost = OpcionesAfterPost
    AfterDelete = OpcionesAfterDelete
    OnNewRecord = OpcionesNewRecord
    OnReconcileError = CONCILIACION
    Left = 152
    Top = 112
    object OpcionesID: TIntegerField
      DisplayWidth = 12
      FieldName = 'ID'
      Required = True
    end
    object OpcionesNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      DisplayWidth = 21
      FieldName = 'NOMBRE'
      OnValidate = OpcionesNOMBREValidate
      Size = 50
    end
    object OpcionesAGRUPA: TStringField
      DisplayLabel = 'Agrupa'
      DisplayWidth = 8
      FieldName = 'AGRUPA'
      Size = 4
    end
  end
  object qryGrupos: TSQLDataSet
    CommandText = 'SELECT * FROM GRUPOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 232
    Top = 16
    object qryGruposID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryGruposNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object prGrupos: TDataSetProvider
    DataSet = qryGrupos
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    BeforeUpdateRecord = prGruposBeforeUpdateRecord
    Left = 232
    Top = 64
  end
  object Grupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prGrupos'
    BeforePost = GruposBeforePost
    AfterPost = GruposAfterPost
    AfterDelete = GruposAfterDelete
    OnNewRecord = GruposNewRecord
    OnReconcileError = CONCILIACION
    Left = 232
    Top = 112
    object GruposID: TIntegerField
      DisplayWidth = 3
      FieldName = 'ID'
      Required = True
    end
    object GruposNOMBRE: TStringField
      DisplayWidth = 60
      FieldName = 'NOMBRE'
      OnValidate = GruposNOMBREValidate
      Size = 50
    end
  end
  object qryUsu_Grup: TSQLDataSet
    CommandText = 'SELECT * FROM USU_GRUP'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 312
    Top = 16
    object qryUsu_GrupID_USU: TIntegerField
      FieldName = 'ID_USU'
      Required = True
    end
    object qryUsu_GrupID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
  end
  object prUsu_Grup: TDataSetProvider
    DataSet = qryUsu_Grup
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 312
    Top = 64
  end
  object Usu_Grup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prUsu_Grup'
    AfterPost = Usu_GrupAfterPost
    AfterDelete = Usu_GrupAfterDelete
    OnReconcileError = CONCILIACION
    Left = 312
    Top = 112
    object Usu_GrupID_USU: TIntegerField
      DisplayWidth = 9
      FieldName = 'ID_USU'
      Required = True
    end
    object Usu_GrupID_GRUPO: TIntegerField
      DisplayWidth = 11
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object Usu_GrupDescripcion: TStringField
      DisplayLabel = 'Descripci'#243'n'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'Descripcion'
      LookupDataSet = Grupos
      LookupKeyFields = 'ID'
      LookupResultField = 'NOMBRE'
      KeyFields = 'ID_GRUPO'
      Size = 50
      Lookup = True
    end
  end
  object qryGrupo_Opc: TSQLDataSet
    CommandText = 'SELECT * FROM GRUPO_OPC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 400
    Top = 16
    object qryGrupo_OpcID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object qryGrupo_OpcID_OPC: TIntegerField
      FieldName = 'ID_OPC'
      Required = True
    end
  end
  object prGrupo_Opc: TDataSetProvider
    DataSet = qryGrupo_Opc
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 400
    Top = 64
  end
  object Grupo_Opc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prGrupo_Opc'
    AfterPost = Grupo_OpcAfterPost
    AfterDelete = Grupo_OpcAfterDelete
    OnReconcileError = CONCILIACION
    Left = 400
    Top = 112
    object Grupo_OpcID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Required = True
    end
    object Grupo_OpcID_OPC: TIntegerField
      FieldName = 'ID_OPC'
      Required = True
    end
  end
  object qryChkUsuarios: TSQLDataSet
    CommandText = 'SELECT * FROM USUARIOS '#13#10'WHERE USUARIOS.NOMBRE =:USER;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USER'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 56
    Top = 176
    object qryChkUsuariosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryChkUsuariosNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 15
    end
  end
  object qryGruposAux: TSQLDataSet
    CommandText = 'SELECT * FROM GRUPOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 568
    Top = 16
    object qryGruposAuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryGruposAuxNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object prGruposAux: TDataSetProvider
    DataSet = qryGruposAux
    Options = [poIncFieldProps, poPropogateChanges, poAllowCommandText]
    Left = 568
    Top = 64
  end
  object GruposAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prGrupos'
    OnReconcileError = CONCILIACION
    Left = 568
    Top = 120
    object GruposAuxID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object GruposAuxNOMBRE: TStringField
      DisplayLabel = 'Nombre'
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object qryLogin: TSQLDataSet
    CommandText = 
      'select opciones.agrupa'#13#10'from opciones'#13#10'   inner join grupo_opc o' +
      'n (opciones.id = grupo_opc.id_opc)'#13#10'   inner join usu_grup on (g' +
      'rupo_opc.id_grupo = usu_grup.id_grupo)'#13#10'where usu_grup.id_usu =:' +
      'USUARIO'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 656
    Top = 16
    object qryLoginAGRUPA: TStringField
      FieldName = 'AGRUPA'
      Size = 4
    end
  end
  object prLogin: TDataSetProvider
    DataSet = qryLogin
    Left = 656
    Top = 72
  end
  object Login: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    ProviderName = 'prLogin'
    Left = 656
    Top = 128
    object LoginAGRUPA: TStringField
      DisplayLabel = 'Agrupa'
      FieldName = 'AGRUPA'
      Size = 4
    end
  end
  object qryChkNomGrup: TSQLDataSet
    CommandText = 'SELECT * FROM GRUPOS '#13#10'WHERE GRUPOS.NOMBRE =:USER;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USER'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 232
    Top = 176
    object qryChkNomGrupID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryChkNomGrupNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
  end
  object qryChkNomOpc: TSQLDataSet
    CommandText = 'SELECT * FROM OPCIONES '#13#10'WHERE OPCIONES.NOMBRE =:USER;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USER'
        ParamType = ptInput
      end>
    SQLConnection = DMSQL.SQLConnectionSeguridad
    Left = 152
    Top = 176
    object qryChkNomOpcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryChkNomOpcNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 50
    end
    object qryChkNomOpcAGRUPA: TStringField
      FieldName = 'AGRUPA'
      Size = 4
    end
  end
end
