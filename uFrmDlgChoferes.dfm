inherited FrmDlgChoferes: TFrmDlgChoferes
  Caption = 'Chofer'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Chofer'
      object Label1: TLabel
        Left = 512
        Top = 0
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 43
        Height = 13
        Caption = 'Apellido*'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 336
        Top = 24
        Width = 43
        Height = 13
        Caption = 'Nombre*'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 104
        Width = 49
        Height = 13
        Caption = 'Direcci'#243'n*'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 336
        Top = 64
        Width = 48
        Height = 13
        Caption = 'Tel'#233'fono*'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 8
        Top = 152
        Width = 18
        Height = 13
        Caption = 'Mail'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 8
        Top = 192
        Width = 44
        Height = 13
        Caption = 'Localidad'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 8
        Top = 60
        Width = 24
        Height = 13
        Caption = 'DNI*'
        FocusControl = DBEdit8
      end
      object DBEdit1: TDBEdit
        Left = 512
        Top = 16
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        TabOrder = 0
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 40
        Width = 321
        Height = 21
        DataField = 'APELLIDO'
        DataSource = DSBase
        TabOrder = 1
        OnContextPopup = DBEdit2ContextPopup
        OnKeyDown = DBEdit2KeyDown
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 336
        Top = 40
        Width = 201
        Height = 21
        DataField = 'NOMBRE'
        DataSource = DSBase
        TabOrder = 2
        OnContextPopup = DBEdit3ContextPopup
        OnKeyDown = DBEdit3KeyDown
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 120
        Width = 524
        Height = 21
        DataField = 'DIRECCION'
        DataSource = DSBase
        TabOrder = 5
        OnContextPopup = DBEdit4ContextPopup
        OnKeyDown = DBEdit4KeyDown
      end
      object DBEdit5: TDBEdit
        Left = 336
        Top = 80
        Width = 199
        Height = 21
        DataField = 'TELEFONO'
        DataSource = DSBase
        TabOrder = 4
        OnContextPopup = DBEdit5ContextPopup
        OnKeyDown = DBEdit5KeyDown
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 168
        Width = 524
        Height = 21
        DataField = 'MAIL'
        DataSource = DSBase
        TabOrder = 6
        OnContextPopup = DBEdit6ContextPopup
        OnKeyDown = DBEdit6KeyDown
      end
      object DBEdit7: TDBEdit
        Left = 8
        Top = 208
        Width = 524
        Height = 21
        DataField = 'LOCALIDAD'
        DataSource = DSBase
        TabOrder = 7
        OnContextPopup = DBEdit7ContextPopup
        OnKeyDown = DBEdit7KeyDown
      end
      object DBEdit8: TDBEdit
        Left = 8
        Top = 76
        Width = 134
        Height = 21
        DataField = 'DNI'
        DataSource = DSBase
        TabOrder = 3
        OnContextPopup = DBEdit8ContextPopup
        OnKeyDown = DBEdit8KeyDown
        OnKeyPress = DBEdit8KeyPress
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMDatos.Choferes
    Left = 152
    Top = 64
  end
end
