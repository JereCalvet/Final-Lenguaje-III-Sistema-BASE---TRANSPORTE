inherited FrmDlgProveedores: TFrmDlgProveedores
  Caption = 'FrmDlgProveedores'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Proveedor'
      object Label1: TLabel
        Left = 56
        Top = 8
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 56
        Top = 48
        Width = 42
        Height = 13
        Caption = 'NOMBRE'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 56
        Top = 88
        Width = 55
        Height = 13
        Caption = 'DOMICILIO'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 56
        Top = 128
        Width = 57
        Height = 13
        Caption = 'LOCALIDAD'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 56
        Top = 168
        Width = 56
        Height = 13
        Caption = 'PROVINCIA'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 344
        Top = 120
        Width = 24
        Height = 13
        Caption = 'MAIL'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 344
        Top = 48
        Width = 24
        Height = 13
        Caption = 'CUIT'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 344
        Top = 84
        Width = 52
        Height = 13
        Caption = 'TELEFONO'
        FocusControl = DBEdit8
      end
      object DBEdit1: TDBEdit
        Left = 56
        Top = 24
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        Enabled = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 56
        Top = 64
        Width = 281
        Height = 21
        DataField = 'NOMBRE'
        DataSource = DSBase
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 56
        Top = 104
        Width = 281
        Height = 21
        DataField = 'DOMICILIO'
        DataSource = DSBase
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 56
        Top = 144
        Width = 281
        Height = 21
        DataField = 'LOCALIDAD'
        DataSource = DSBase
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 56
        Top = 184
        Width = 281
        Height = 21
        DataField = 'PROVINCIA'
        DataSource = DSBase
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 344
        Top = 136
        Width = 281
        Height = 21
        DataField = 'MAIL'
        DataSource = DSBase
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 344
        Top = 64
        Width = 281
        Height = 21
        DataField = 'CUIT'
        DataSource = DSBase
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 344
        Top = 100
        Width = 281
        Height = 21
        DataField = 'TELEFONO'
        DataSource = DSBase
        TabOrder = 7
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMDatos.Proveedores
  end
end
