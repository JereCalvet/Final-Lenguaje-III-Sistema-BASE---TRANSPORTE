inherited FrmDlgOpciones: TFrmDlgOpciones
  Left = 260
  Top = 143
  Caption = 'Opciones'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Opcion'
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label2: TLabel
        Left = 24
        Top = 64
        Width = 43
        Height = 13
        Caption = 'Nombre*'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 104
        Width = 41
        Height = 13
        Caption = 'Agrupa*'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 40
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        Enabled = False
        TabOrder = 0
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 80
        Width = 334
        Height = 21
        DataField = 'NOMBRE'
        DataSource = DSBase
        TabOrder = 1
        OnContextPopup = DBEdit2ContextPopup
        OnKeyDown = DBEdit2KeyDown
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 120
        Width = 56
        Height = 21
        DataField = 'AGRUPA'
        DataSource = DSBase
        TabOrder = 2
        OnContextPopup = DBEdit3ContextPopup
        OnKeyDown = DBEdit3KeyDown
        OnKeyPress = DBEdit3KeyPress
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMSeguridad.Opciones
    Left = 120
    Top = 248
  end
end
