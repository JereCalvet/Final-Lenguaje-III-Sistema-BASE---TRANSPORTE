inherited FrmGridUsuarios: TFrmGridUsuarios
  Left = 297
  Top = 176
  Caption = 'Usuarios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNAV1: TDBNavigator
      Hints.Strings = ()
      OnClick = DBNAV1Click
    end
    inherited ToolBar1: TToolBar
      Height = 32
      ButtonWidth = 43
      EdgeBorders = []
      ParentColor = False
      inherited btnprior: TToolButton
        Left = 43
      end
      inherited btnnext: TToolButton
        Left = 86
      end
      inherited btnlast: TToolButton
        Left = 129
      end
      inherited btninsert: TToolButton
        Left = 172
      end
      inherited btndelete: TToolButton
        Left = 215
      end
      inherited btnedit: TToolButton
        Left = 258
      end
      inherited btnpost: TToolButton
        Left = 301
      end
      inherited btncancel: TToolButton
        Left = 344
      end
      inherited btnrefresh: TToolButton
        Left = 387
      end
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
      end
      item
        Expanded = False
        FieldName = 'NOMCOMP'
        Width = 188
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASSWORD'
        Visible = True
      end>
  end
  inherited DSBASE: TDataSource
    DataSet = DMSeguridad.Usuarios
  end
end
