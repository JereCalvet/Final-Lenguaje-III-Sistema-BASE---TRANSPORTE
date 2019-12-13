inherited FrmViaje: TFrmViaje
  Left = 247
  Top = 82
  Width = 873
  Height = 624
  Caption = 'Viaje'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 112
    Top = 16
    Width = 97
    Height = 13
    Caption = 'Seleccione la Fecha:'
  end
  object Label19: TLabel
    Left = 224
    Top = 280
    Width = 110
    Height = 13
    Caption = 'Seleccione el Recorrido'
    FocusControl = DBLookupComboBox3
  end
  object Label20: TLabel
    Left = 40
    Top = 232
    Width = 101
    Height = 13
    Caption = 'Seleccione un Chofer'
    FocusControl = DBLookupComboBox4
  end
  object Label3: TLabel
    Left = 40
    Top = 280
    Width = 102
    Height = 13
    Caption = 'Seleccione la Patente'
    FocusControl = DBLookupComboBox1
  end
  object Panel1: TPanel
    Left = 32
    Top = 328
    Width = 793
    Height = 201
    TabOrder = 5
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 135
      Height = 13
      Caption = 'RECORRIDOS DISPONIBLES'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 32
      Width = 913
      Height = 161
      DataSource = dsRecorrido
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'L_INICIO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lookL_Inicio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'L_FIN'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lookL_Fin'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRIPCION'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ESCALAS'
          Visible = False
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 544
    Width = 113
    Height = 33
    Caption = 'OK'
    Default = True
    TabOrder = 6
    OnClick = BitBtn1Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 464
    Top = 544
    Width = 113
    Height = 33
    TabOrder = 7
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object MonthCalendar1: TMonthCalendar
    Left = 48
    Top = 40
    Width = 257
    Height = 161
    Date = 41956.014839224540000000
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 392
    Top = 32
    Width = 433
    Height = 281
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Chofer'
      object Label7: TLabel
        Left = 432
        Top = 16
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label8: TLabel
        Left = 16
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Apellido'
        FocusControl = DBEdit2
      end
      object Label9: TLabel
        Left = 16
        Top = 48
        Width = 37
        Height = 13
        Caption = 'Nombre'
        FocusControl = DBEdit3
      end
      object Label10: TLabel
        Left = 16
        Top = 88
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
        FocusControl = DBEdit4
      end
      object Label11: TLabel
        Left = 16
        Top = 128
        Width = 42
        Height = 13
        Caption = 'Tel'#233'fono'
        FocusControl = DBEdit5
      end
      object Label12: TLabel
        Left = 16
        Top = 168
        Width = 18
        Height = 13
        Caption = 'Mail'
        FocusControl = DBEdit6
      end
      object Label13: TLabel
        Left = 16
        Top = 208
        Width = 44
        Height = 13
        Caption = 'Localidad'
        FocusControl = DBEdit7
      end
      object Label14: TLabel
        Left = 240
        Top = 128
        Width = 18
        Height = 13
        Caption = 'DNI'
        FocusControl = DBEdit8
      end
      object DBEdit1: TDBEdit
        Left = 432
        Top = 32
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 1
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 24
        Width = 394
        Height = 21
        DataField = 'APELLIDO'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 64
        Width = 394
        Height = 21
        DataField = 'NOMBRE'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 104
        Width = 393
        Height = 21
        DataField = 'DIRECCION'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 144
        Width = 199
        Height = 21
        DataField = 'TELEFONO'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 184
        Width = 393
        Height = 21
        DataField = 'MAIL'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 224
        Width = 393
        Height = 21
        DataField = 'LOCALIDAD'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 240
        Top = 144
        Width = 169
        Height = 21
        DataField = 'DNI'
        DataSource = dsChofer
        Enabled = False
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Veh'#237'culo'
      ImageIndex = 1
      object Label5: TLabel
        Left = 416
        Top = 192
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit9
        Visible = False
      end
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 33
        Height = 13
        Caption = 'Marca:'
        FocusControl = DBEdit10
      end
      object Label15: TLabel
        Left = 16
        Top = 64
        Width = 41
        Height = 13
        Caption = 'Nombre:'
        FocusControl = DBEdit11
      end
      object Label16: TLabel
        Left = 16
        Top = 104
        Width = 38
        Height = 13
        Caption = 'Modelo:'
        FocusControl = DBEdit12
      end
      object Label17: TLabel
        Left = 16
        Top = 144
        Width = 38
        Height = 13
        Caption = 'Patente'
        FocusControl = DBEdit13
      end
      object Label18: TLabel
        Left = 16
        Top = 184
        Width = 50
        Height = 13
        Caption = 'Capacidad'
        FocusControl = DBEdit14
      end
      object DBEdit9: TDBEdit
        Left = 416
        Top = 208
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = dsVehiculo
        Enabled = False
        TabOrder = 5
        Visible = False
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 40
        Width = 394
        Height = 21
        DataField = 'MARCA'
        DataSource = dsVehiculo
        Enabled = False
        TabOrder = 0
      end
      object DBEdit11: TDBEdit
        Left = 16
        Top = 80
        Width = 394
        Height = 21
        DataField = 'NOMBRE'
        DataSource = dsVehiculo
        Enabled = False
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 16
        Top = 120
        Width = 56
        Height = 21
        DataField = 'MODELO'
        DataSource = dsVehiculo
        Enabled = False
        TabOrder = 2
      end
      object DBEdit13: TDBEdit
        Left = 16
        Top = 160
        Width = 82
        Height = 21
        DataField = 'PATENTE'
        DataSource = dsVehiculo
        Enabled = False
        TabOrder = 3
      end
      object DBEdit14: TDBEdit
        Left = 16
        Top = 200
        Width = 30
        Height = 21
        DataField = 'CAPACIDAD'
        DataSource = dsVehiculo
        Enabled = False
        TabOrder = 4
      end
    end
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 224
    Top = 296
    Width = 144
    Height = 21
    DataField = 'lookRecorrido'
    DataSource = dsViaje
    TabOrder = 4
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 40
    Top = 248
    Width = 274
    Height = 21
    DataField = 'lookChofApe'
    DataSource = dsViaje
    TabOrder = 2
    OnClick = DBLookupComboBox4Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 40
    Top = 296
    Width = 169
    Height = 21
    DataField = 'lookPatente'
    DataSource = dsViaje
    TabOrder = 3
    OnClick = DBLookupComboBox1Click
  end
  object dsRecorrido: TDataSource
    DataSet = DMDatos.Recorrido
    Left = 8
    Top = 80
  end
  object dsViaje: TDataSource
    DataSet = DMDatos.Viaje
    Left = 16
    Top = 8
  end
  object dsChofer: TDataSource
    DataSet = DMDatos.Choferes
    Left = 8
    Top = 144
  end
  object dsVehiculo: TDataSource
    DataSet = DMDatos.Vehiculo
    Left = 8
    Top = 200
  end
end
