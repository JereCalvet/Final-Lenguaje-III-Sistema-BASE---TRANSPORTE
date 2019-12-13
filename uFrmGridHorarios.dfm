inherited FrmGridHorarios: TFrmGridHorarios
  Left = 225
  Top = 162
  Caption = 'Horarios'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel [0]
      Left = 400
      Top = 65
      Width = 3
      Height = 13
    end
    object Label2: TLabel [1]
      Left = 400
      Top = 36
      Width = 253
      Height = 26
      Caption = 
        'Se deben ingresar una por una, todas las localidades'#13#10'del recorr' +
        'ido con su respectivo orden y horario.'
    end
    inherited ToolBar1: TToolBar [2]
      Height = 32
      ButtonHeight = 22
    end
    inherited Button1: TButton
      Top = 48
      TabOrder = 2
    end
    inherited DBNAV1: TDBNavigator [4]
      Hints.Strings = ()
      TabOrder = 1
      OnClick = DBNAV1Click
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_RECORRIDO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_LOCALIDAD'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'lookRecorrido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookCiudad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORDEN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA_SALIDA'
        Visible = True
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMDatos.Horario
  end
end
