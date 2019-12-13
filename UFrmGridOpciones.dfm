inherited FrmGridOpciones: TFrmGridOpciones
  Left = 228
  Top = 151
  Caption = 'Opciones'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNAV1: TDBNavigator
      Hints.Strings = ()
      OnClick = DBNAV1Click
    end
  end
  inherited DBGrid1: TDBGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
      end
      item
        Expanded = False
        FieldName = 'AGRUPA'
        Width = 64
        Visible = True
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMSeguridad.Opciones
  end
end
