inherited FrmGridChoferes: TFrmGridChoferes
  Left = 258
  Top = 169
  Caption = 'Choferes'
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
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'APELLIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DNI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DIRECCION'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAIL'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCALIDAD'
        Width = 64
        Visible = True
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMDatos.Choferes
  end
end
