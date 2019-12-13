inherited FrmGridLocalidad: TFrmGridLocalidad
  Top = 166
  Caption = 'Localidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNAV1: TDBNavigator
      Hints.Strings = ()
      OnClick = DBNAV1Click
    end
  end
  inherited DBGrid1: TDBGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
  end
  inherited DSBASE: TDataSource
    DataSet = DMDatos.Localidad
  end
end
