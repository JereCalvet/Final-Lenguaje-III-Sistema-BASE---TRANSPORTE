object DMSQL: TDMSQL
  OldCreateOrder = False
  Left = 355
  Top = 137
  Height = 326
  Width = 294
  object SQLConnectionSeguridad: TSQLConnection
    ConnectionName = 'Sistema1'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:C:\Users\Jeremias\Desktop\Esc\Lenguaje\Cent35' +
        '\Sistema1.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet=ISO8859_1'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 48
    Top = 8
  end
  object spProximoID: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VALOR'
        ParamType = ptOutput
        Size = 4
        Value = Null
      end>
    SQLConnection = SQLConnectionSeguridad
    StoredProcName = 'PROXIMOID'
    Left = 144
    Top = 8
  end
  object SQLConnectionDatos: TSQLConnection
    ConnectionName = 'datostransporte'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:C:\Users\Jeremias\Desktop\Esc\Lenguaje\Cent35' +
        '\SISTEMATRANSPORTE.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet=ISO8859_1'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 48
    Top = 80
  end
  object spProximoIDDatos: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VALOR'
        ParamType = ptOutput
        Size = 4
      end>
    SQLConnection = SQLConnectionDatos
    StoredProcName = 'PROXIOMOID'
    Left = 152
    Top = 80
  end
  object SQLConnectionReportes: TSQLConnection
    ConnectionName = 'datossql'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      
        'Database=localhost:C:\Users\Jeremias\Desktop\Esc\Lenguaje\Cent35' +
        '\SISTEMATRANSPORTE.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet=ISO8859_1'
      'SQLDialect=3'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 48
    Top = 144
  end
end
