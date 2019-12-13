inherited FrmDlgLocalidad: TFrmDlgLocalidad
  Caption = 'Localidad'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Localidad'
      object Label1: TLabel
        Left = 16
        Top = 64
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label2: TLabel
        Left = 16
        Top = 104
        Width = 43
        Height = 13
        Caption = 'Nombre*'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 144
        Width = 43
        Height = 13
        Caption = 'Provincia'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 184
        Width = 84
        Height = 13
        Caption = 'Codigo de Ciudad'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 80
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DataSource1
        TabOrder = 0
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 120
        Width = 394
        Height = 21
        DataField = 'NOMBRE'
        DataSource = DataSource1
        TabOrder = 1
        OnContextPopup = DBEdit2ContextPopup
        OnKeyDown = DBEdit2KeyDown
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 160
        Width = 394
        Height = 21
        DataField = 'PROVINCIA'
        DataSource = DataSource1
        TabOrder = 2
        OnContextPopup = DBEdit3ContextPopup
        OnKeyDown = DBEdit3KeyDown
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 200
        Width = 134
        Height = 21
        DataField = 'CODCIUDAD'
        DataSource = DSBase
        TabOrder = 3
        OnContextPopup = DBEdit4ContextPopup
        OnKeyDown = DBEdit4KeyDown
        OnKeyPress = DBEdit4KeyPress
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMDatos.Localidad
  end
  object DataSource1: TDataSource
    DataSet = DMDatos.Localidad
    Left = 680
    Top = 88
  end
end
