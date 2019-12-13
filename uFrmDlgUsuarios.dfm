inherited FrmDlgUsuarios: TFrmDlgUsuarios
  Left = 252
  Top = 145
  Caption = 'Usuario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Left = 80
    inherited TabSheet1: TTabSheet
      Caption = 'Usuario'
      object Label1: TLabel
        Left = 8
        Top = 48
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label2: TLabel
        Left = 8
        Top = 88
        Width = 97
        Height = 13
        Caption = 'Nombre de Usuario*'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 128
        Width = 91
        Height = 13
        Caption = 'Nombre Completo*'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 168
        Width = 62
        Height = 13
        Caption = 'Contrase'#241'a*'
        FocusControl = DBEdit4
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 64
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        Enabled = False
        TabOrder = 0
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 104
        Width = 199
        Height = 21
        DataField = 'NOMBRE'
        DataSource = DSBase
        TabOrder = 1
        OnContextPopup = DBEdit2ContextPopup
        OnKeyDown = DBEdit2KeyDown
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 144
        Width = 542
        Height = 21
        DataField = 'NOMCOMP'
        DataSource = DSBase
        TabOrder = 2
        OnContextPopup = DBEdit3ContextPopup
        OnKeyDown = DBEdit3KeyDown
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 184
        Width = 264
        Height = 21
        DataField = 'PASSWORD'
        DataSource = DSBase
        TabOrder = 3
        OnContextPopup = DBEdit4ContextPopup
        OnKeyDown = DBEdit4KeyDown
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMSeguridad.Usuarios
    Left = 24
    Top = 16
  end
end
