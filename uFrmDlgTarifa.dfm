inherited FrmDlgTarifa: TFrmDlgTarifa
  Left = 257
  Top = 164
  Caption = 'Tarifa'
  ClientHeight = 394
  ClientWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    Left = 24
    inherited TabSheet1: TTabSheet
      Caption = 'Tarifa'
      object Label1: TLabel
        Left = 64
        Top = 0
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label4: TLabel
        Left = 309
        Top = 224
        Width = 35
        Height = 13
        Caption = 'Precio*'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 24
        Top = 104
        Width = 60
        Height = 13
        Caption = 'Descripci'#243'n*'
      end
      object Label2: TLabel
        Left = 200
        Top = 0
        Width = 45
        Height = 13
        Caption = 'L_INICIO'
        FocusControl = DBEdit2
        Visible = False
      end
      object Label3: TLabel
        Left = 336
        Top = 0
        Width = 28
        Height = 13
        Caption = 'L_FIN'
        FocusControl = DBEdit3
        Visible = False
      end
      object Label6: TLabel
        Left = 24
        Top = 48
        Width = 36
        Height = 13
        Caption = 'Desde*'
        FocusControl = DBLookupComboBox1
      end
      object Label7: TLabel
        Left = 336
        Top = 48
        Width = 34
        Height = 13
        Caption = 'Hasta*'
        FocusControl = DBLookupComboBox2
      end
      object Label8: TLabel
        Left = 496
        Top = 8
        Width = 77
        Height = 13
        Caption = 'C'#243'digo de tarifa'
      end
      object DBEdit1: TDBEdit
        Left = 64
        Top = 16
        Width = 134
        Height = 21
        DataField = 'ID'
        DataSource = DSBase
        TabOrder = 0
        Visible = False
      end
      object DBEdit4: TDBEdit
        Left = 222
        Top = 240
        Width = 212
        Height = 21
        DataField = 'PRECIO'
        DataSource = DSBase
        TabOrder = 7
        OnContextPopup = DBEdit4ContextPopup
        OnKeyDown = DBEdit4KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 200
        Top = 16
        Width = 134
        Height = 21
        DataField = 'L_INICIO'
        DataSource = DSBase
        TabOrder = 1
        Visible = False
      end
      object DBEdit3: TDBEdit
        Left = 336
        Top = 16
        Width = 134
        Height = 21
        DataField = 'L_FIN'
        DataSource = DSBase
        TabOrder = 2
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 64
        Width = 289
        Height = 21
        DataField = 'lookupDesde'
        DataSource = DSBase
        TabOrder = 4
        OnCloseUp = DBLookupComboBox1CloseUp
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 336
        Top = 64
        Width = 297
        Height = 21
        DataField = 'lookupHasta'
        DataSource = DSBase
        TabOrder = 5
        OnCloseUp = DBLookupComboBox2CloseUp
      end
      object DBMemo1: TDBMemo
        Left = 24
        Top = 120
        Width = 609
        Height = 89
        DataField = 'DESCRIPCION'
        DataSource = DSBase
        TabOrder = 6
        OnKeyDown = DBMemo1KeyDown
      end
      object DBEdit5: TDBEdit
        Left = 496
        Top = 24
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DSBase
        Enabled = False
        TabOrder = 3
      end
    end
  end
  inherited BitBtnGrabar: TBitBtn
    Left = 220
    Top = 352
    Height = 33
  end
  inherited BitBtnCancelar: TBitBtn
    Left = 412
    Top = 352
    Height = 33
  end
  inherited DSBase: TDataSource
    DataSet = DMDatos.Tarifa
    Left = 48
    Top = 48
  end
end
