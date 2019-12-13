inherited FrmGridViajes: TFrmGridViajes
  Caption = 'Viajes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNAV1: TDBNavigator
      Hints.Strings = ()
      ConfirmDelete = False
      BeforeAction = DBNAV1BeforeAction
      OnClick = DBNAV1Click
    end
  end
  inherited DBGrid1: TDBGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_CHOFER'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_VEHICULO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_RECORRIDO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'lookCodRec'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FECHA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookChofNom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookVehiMar'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookVehiNom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookVehCapac'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CampoDisponibilidad'
        Visible = False
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMDatos.Viaje
  end
end
