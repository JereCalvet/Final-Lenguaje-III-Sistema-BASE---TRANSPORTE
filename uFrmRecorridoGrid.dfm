inherited FrmRecorridoGrid: TFrmRecorridoGrid
  Left = 252
  Top = 149
  Caption = 'Recorridos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNAV1: TDBNavigator
      Hints.Strings = ()
      ConfirmDelete = False
      TabOrder = 3
      BeforeAction = DBNAV1BeforeAction
      OnClick = DBNAV1Click
    end
    inherited Button1: TButton
      TabOrder = 2
    end
    object Button2: TButton
      Left = 680
      Top = 40
      Width = 81
      Height = 41
      Caption = 'Horarios'
      TabOrder = 1
      OnClick = Button2Click
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
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookL_Inicio'
        Visible = True
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
        FieldName = 'ESCALAS'
        Visible = False
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMDatos.Recorrido
  end
end
