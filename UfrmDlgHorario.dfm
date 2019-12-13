inherited FrmDlgHorario: TFrmDlgHorario
  Caption = 'Horario'
  ClientHeight = 424
  ClientWidth = 738
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Horario'
      object Label6: TLabel
        Left = 192
        Top = 288
        Width = 74
        Height = 13
        Caption = 'ID_LOCALIDAD'
        FocusControl = DBEdit4
      end
      object Label1: TLabel
        Left = 16
        Top = 0
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label2: TLabel
        Left = 512
        Top = 8
        Width = 78
        Height = 13
        Caption = 'ID_RECORRIDO'
        FocusControl = DBEdit2
        Visible = False
      end
      object Label3: TLabel
        Left = 488
        Top = 88
        Width = 75
        Height = 13
        Caption = 'Hora de Salida*'
      end
      object Label4: TLabel
        Left = 256
        Top = 8
        Width = 74
        Height = 13
        Caption = 'ID_LOCALIDAD'
        FocusControl = DBEdit5
        Visible = False
      end
      object Label5: TLabel
        Left = 24
        Top = 128
        Width = 36
        Height = 13
        Caption = 'Orden*'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 24
        Top = 88
        Width = 50
        Height = 13
        Caption = 'Localidad*'
        FocusControl = DBLookupComboBox1
      end
      object Label8: TLabel
        Left = 360
        Top = 8
        Width = 99
        Height = 13
        Caption = 'C'#243'digo del Recorrido'
        FocusControl = DBLookupComboBox2
      end
      object Label9: TLabel
        Left = 24
        Top = 56
        Width = 3
        Height = 13
      end
      object Label10: TLabel
        Left = 304
        Top = 248
        Width = 342
        Height = 13
        Caption = 
          'No hace falta asignarle hora de salida a la ultima localidad del' +
          ' recorrido.'
      end
      object DBEdit4: TDBEdit
        Left = 192
        Top = 304
        Width = 134
        Height = 21
        DataField = 'ID_LOCALIDAD'
        TabOrder = 7
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 16
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        TabOrder = 0
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 512
        Top = 24
        Width = 134
        Height = 21
        DataField = 'ID_RECORRIDO'
        DataSource = DSBase
        TabOrder = 3
        Visible = False
      end
      object DBEdit5: TDBEdit
        Left = 256
        Top = 24
        Width = 134
        Height = 21
        DataField = 'ID_LOCALIDAD'
        DataSource = DSBase
        TabOrder = 1
        Visible = False
      end
      object DBEdit6: TDBEdit
        Left = 24
        Top = 144
        Width = 134
        Height = 21
        DataField = 'ORDEN'
        DataSource = DSBase
        TabOrder = 6
        OnContextPopup = DBEdit6ContextPopup
        OnKeyDown = DBEdit6KeyDown
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 104
        Width = 274
        Height = 21
        DataField = 'lookCiudad'
        DataSource = DSBase
        TabOrder = 4
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 360
        Top = 24
        Width = 274
        Height = 21
        DataField = 'lookRecorrido'
        DataSource = DSBase
        Enabled = False
        TabOrder = 2
      end
      object DateTimePicker1: TDateTimePicker
        Left = 488
        Top = 104
        Width = 153
        Height = 21
        Date = 42217.000000000000000000
        Time = 42217.000000000000000000
        DateFormat = dfLong
        Kind = dtkTime
        TabOrder = 5
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMDatos.Horario
    Left = 240
    Top = 56
  end
end
