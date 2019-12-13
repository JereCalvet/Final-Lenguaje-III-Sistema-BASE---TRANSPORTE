inherited FrmDlgRecorrido: TFrmDlgRecorrido
  Caption = 'Recorrido'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      Caption = 'Recorrido'
      object Label1: TLabel
        Left = 504
        Top = 160
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label2: TLabel
        Left = 504
        Top = 200
        Width = 45
        Height = 13
        Caption = 'L_INICIO'
        FocusControl = DBEdit2
        Visible = False
      end
      object Label3: TLabel
        Left = 504
        Top = 240
        Width = 28
        Height = 13
        Caption = 'L_FIN'
        FocusControl = DBEdit3
        Visible = False
      end
      object Label4: TLabel
        Left = 456
        Top = 80
        Width = 44
        Height = 13
        Caption = 'ESCALAS'
        FocusControl = DBEdit4
        Visible = False
      end
      object Label5: TLabel
        Left = 16
        Top = 32
        Width = 32
        Height = 13
        Caption = 'DESDE'
        FocusControl = DBLookupComboBox1
      end
      object Label6: TLabel
        Left = 16
        Top = 72
        Width = 33
        Height = 13
        Caption = 'HASTA'
        FocusControl = DBLookupComboBox2
      end
      object Label7: TLabel
        Left = 456
        Top = 32
        Width = 108
        Height = 13
        Caption = 'CODIGO_RECORRIDO'
        FocusControl = DBEdit5
      end
      object Label8: TLabel
        Left = 16
        Top = 128
        Width = 209
        Height = 13
        Caption = 'DESCRIPCION: (EJ: ma'#241'ana, tarde, noche)'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 504
        Top = 176
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        TabOrder = 5
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 504
        Top = 216
        Width = 134
        Height = 21
        DataField = 'L_INICIO'
        DataSource = DSBase
        TabOrder = 6
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 504
        Top = 256
        Width = 134
        Height = 21
        DataField = 'L_FIN'
        DataSource = DSBase
        TabOrder = 7
        Visible = False
      end
      object DBEdit4: TDBEdit
        Left = 456
        Top = 96
        Width = 134
        Height = 21
        DataField = 'ESCALAS'
        DataSource = DSBase
        TabOrder = 3
        Visible = False
        OnContextPopup = DBEdit4ContextPopup
        OnKeyDown = DBEdit4KeyDown
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 48
        Width = 404
        Height = 21
        DataField = 'lookL_Inicio'
        DataSource = DSBase
        TabOrder = 0
        OnCloseUp = DBLookupComboBox1CloseUp
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 16
        Top = 88
        Width = 404
        Height = 21
        DataField = 'lookL_Fin'
        DataSource = DSBase
        TabOrder = 2
        OnCloseUp = DBLookupComboBox2CloseUp
      end
      object DBEdit5: TDBEdit
        Left = 456
        Top = 48
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 144
        Width = 264
        Height = 21
        DataField = 'DESCRIPCION'
        DataSource = DSBase
        TabOrder = 4
      end
    end
  end
  inherited DSBase: TDataSource
    DataSet = DMDatos.Recorrido
    Left = 104
    Top = 72
  end
end
