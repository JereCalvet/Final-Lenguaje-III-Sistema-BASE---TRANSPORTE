inherited FrmGridReservas: TFrmGridReservas
  Caption = 'Reservas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label1: TLabel [0]
      Left = 400
      Top = 48
      Width = 176
      Height = 13
      Caption = 'Pasajeros en la TOTALIDAD del viaje'
    end
    inherited DBNAV1: TDBNavigator
      Width = 260
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
      Hints.Strings = ()
      ConfirmDelete = False
      TabOrder = 4
      BeforeAction = DBNAV1BeforeAction
      OnClick = DBNAV1Click
    end
    inherited Button1: TButton
      TabOrder = 3
    end
    object Button2: TButton
      Left = 696
      Top = 40
      Width = 81
      Height = 41
      Caption = 'Imprimir Viaje'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 600
      Top = 40
      Width = 81
      Height = 41
      Caption = 'Imprimir Boleto'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  inherited DBGrid1: TDBGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgMultiSelect]
    Columns = <
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
        FieldName = 'FECHA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookPasjApe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lookPajNom'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_PASAJERO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_TARIFA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'FECHA_VENCIMIENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_VIAJE'
        Visible = False
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
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMDatos.Pasajeros_Viaje
  end
  inherited ActionList1: TActionList
    Left = 408
    Top = 40
  end
end
