inherited FrmGridTarifa: TFrmGridTarifa
  Left = 263
  Top = 161
  Width = 919
  Height = 485
  Caption = 'Tarifas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 903
    inherited DBNAV1: TDBNavigator
      Hints.Strings = ()
      OnClick = DBNAV1Click
    end
    inherited ToolBar1: TToolBar
      Width = 901
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 903
    Height = 350
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        FieldName = 'DESCRIPCION'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookupDesde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookupHasta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'L_INICIO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'L_FIN'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PRECIO'
        Visible = True
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMDatos.Tarifa
  end
end
