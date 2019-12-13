inherited FrmDlgRemitos: TFrmDlgRemitos
  Left = 323
  Top = 122
  Height = 551
  Caption = 'FrmDlgRemitos'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 513
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 648
      Top = 16
      Width = 101
      Height = 13
      Caption = 'NUMERO DE REMITO'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 40
      Width = 33
      Height = 13
      Caption = 'FECHA'
    end
    object Label4: TLabel
      Left = 24
      Top = 72
      Width = 107
      Height = 13
      Caption = 'NOMBRE DEL CLIENTE'
      FocusControl = DBLookupComboBox1
    end
    object Label5: TLabel
      Left = 24
      Top = 104
      Width = 51
      Height = 13
      Caption = 'DEPOSITO'
    end
    object DBEdit1: TDBEdit
      Left = 632
      Top = 32
      Width = 134
      Height = 21
      DataField = 'NUMERO'
      DataSource = DSRemito
      Enabled = False
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 144
      Top = 64
      Width = 274
      Height = 21
      DataField = 'lookupCliente'
      DataSource = DSRemito
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 0
      Top = 176
      Width = 913
      Height = 265
      TabOrder = 2
      object gridmov: TDBGrid
        Left = 1
        Top = 1
        Width = 911
        Height = 263
        Align = alClient
        DataSource = DSMovimientos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO_ART'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lookupArtDesc'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CANT'
            Width = 64
            Visible = True
          end>
      end
    end
    object dblkcbbNomDep: TDBLookupComboBox
      Left = 144
      Top = 96
      Width = 273
      Height = 21
      KeyField = 'NUMERO'
      ListField = 'NOMBRE'
      ListSource = DSDepositos
      TabOrder = 3
    end
    object Panel3: TPanel
      Left = 1
      Top = 440
      Width = 910
      Height = 72
      Align = alBottom
      TabOrder = 4
      object BitBtn1: TBitBtn
        Left = 240
        Top = 24
        Width = 89
        Height = 33
        Caption = 'OK'
        Default = True
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 472
        Top = 24
        Width = 89
        Height = 33
        TabOrder = 1
        OnClick = BitBtn2Click
        Kind = bkClose
      end
    end
    object DateTimePicker1: TDateTimePicker
      Left = 144
      Top = 32
      Width = 273
      Height = 21
      Date = 0.869948113417194700
      Time = 0.869948113417194700
      TabOrder = 5
    end
    object DBNavigator1: TDBNavigator
      Left = 16
      Top = 136
      Width = 240
      Height = 25
      DataSource = DSMovimientos
      TabOrder = 6
    end
  end
  object DSRemito: TDataSource
    DataSet = DMDatos.Remitos
    Left = 808
    Top = 8
  end
  object DSDepositos: TDataSource
    DataSet = DMDatos.Depositos
    Left = 808
    Top = 96
  end
  object DSMovimientos: TDataSource
    DataSet = DMDatos.Movimientos
    Left = 88
    Top = 248
  end
end
