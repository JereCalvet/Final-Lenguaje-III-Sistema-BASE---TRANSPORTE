inherited FrmDlgGrupos: TFrmDlgGrupos
  Left = 261
  Top = 155
  Caption = 'Grupo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Grupo'
      object Label1: TLabel
        Left = 16
        Top = 32
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label2: TLabel
        Left = 16
        Top = 72
        Width = 43
        Height = 13
        Caption = 'Nombre*'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 48
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        Enabled = False
        TabOrder = 0
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 88
        Width = 246
        Height = 21
        DataField = 'NOMBRE'
        DataSource = DSBase
        TabOrder = 1
        OnContextPopup = DBEdit2ContextPopup
        OnKeyDown = DBEdit2KeyDown
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMSeguridad.Grupos
    Top = 192
  end
end
