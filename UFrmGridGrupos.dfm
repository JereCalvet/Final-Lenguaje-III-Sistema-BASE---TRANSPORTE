inherited FrmGridGrupos: TFrmGridGrupos
  Caption = 'Grupos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNAV1: TDBNavigator
      Hints.Strings = ()
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
        FieldName = 'NOMBRE'
        Visible = True
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMSeguridad.Grupos
  end
end
