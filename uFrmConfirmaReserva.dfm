inherited FrmConfirmaReserva: TFrmConfirmaReserva
  Left = 260
  Top = 136
  Width = 699
  Height = 502
  Caption = 'FrmConfirmaReserva'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 683
    Height = 464
    Align = alClient
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 197
      Top = 424
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 3
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
      Left = 355
      Top = 424
      Width = 75
      Height = 25
      TabOrder = 4
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 681
      Height = 384
      ActivePage = Tabsheet1
      Align = alTop
      MultiLine = True
      TabOrder = 0
      object Tabsheet1: TTabSheet
        Caption = 'Pasajero'
        object Panel2: TPanel
          Left = 8
          Top = 8
          Width = 649
          Height = 337
          BevelOuter = bvLowered
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 32
            Width = 37
            Height = 13
            Caption = 'Apellido'
            FocusControl = DBEdit1
          end
          object Label2: TLabel
            Left = 16
            Top = 88
            Width = 37
            Height = 13
            Caption = 'Nombre'
            FocusControl = DBEdit2
          end
          object Label3: TLabel
            Left = 16
            Top = 184
            Width = 42
            Height = 13
            Caption = 'Tel'#233'fono'
            FocusControl = DBEdit3
          end
          object Label4: TLabel
            Left = 16
            Top = 136
            Width = 18
            Height = 13
            Caption = 'DNI'
            FocusControl = DBEdit4
          end
          object Label5: TLabel
            Left = 16
            Top = 224
            Width = 43
            Height = 13
            Caption = 'Direcci'#243'n'
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 16
            Top = 264
            Width = 44
            Height = 13
            Caption = 'Localidad'
            FocusControl = DBEdit6
          end
          object DBEdit1: TDBEdit
            Left = 16
            Top = 48
            Width = 394
            Height = 21
            DataField = 'APELLIDO'
            DataSource = dsPasajeros
            Enabled = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 16
            Top = 104
            Width = 394
            Height = 21
            DataField = 'NOMBRE'
            DataSource = dsPasajeros
            Enabled = False
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 16
            Top = 200
            Width = 199
            Height = 21
            DataField = 'TELEFONO'
            DataSource = dsPasajeros
            Enabled = False
            TabOrder = 3
          end
          object DBEdit4: TDBEdit
            Left = 16
            Top = 152
            Width = 201
            Height = 21
            DataField = 'DNI'
            DataSource = dsPasajeros
            Enabled = False
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 16
            Top = 240
            Width = 524
            Height = 21
            DataField = 'DIRECCION'
            DataSource = dsPasajeros
            Enabled = False
            TabOrder = 4
          end
          object DBEdit6: TDBEdit
            Left = 16
            Top = 280
            Width = 524
            Height = 21
            DataField = 'LOCALIDAD'
            DataSource = dsPasajeros
            Enabled = False
            TabOrder = 5
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Tarifa'
        ImageIndex = 1
        object Label7: TLabel
          Left = 440
          Top = 288
          Width = 29
          Height = 13
          Caption = 'Precio'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 8
          Top = 136
          Width = 54
          Height = 13
          Caption = 'Descripci'#243'n'
        end
        object Label9: TLabel
          Left = 8
          Top = 64
          Width = 30
          Height = 13
          Caption = 'Desde'
          FocusControl = DBLookupComboBox1
        end
        object Label10: TLabel
          Left = 216
          Top = 64
          Width = 28
          Height = 13
          Caption = 'Hasta'
          FocusControl = DBLookupComboBox2
        end
        object Label12: TLabel
          Left = 8
          Top = 24
          Width = 28
          Height = 13
          Caption = 'Tarifa'
          FocusControl = DBLookupComboBox3
        end
        object Radiogroup1: TRadioGroup
          Left = 456
          Top = 28
          Width = 193
          Height = 129
          Caption = 'Opciones:'
          Items.Strings = (
            'Confirma'
            'Reserva')
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 440
          Top = 304
          Width = 212
          Height = 21
          DataField = 'PRECIO'
          DataSource = dsTarifa
          Enabled = False
          TabOrder = 6
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 80
          Width = 185
          Height = 21
          DataField = 'lookupDesde'
          DataSource = dsTarifa
          Enabled = False
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 216
          Top = 80
          Width = 185
          Height = 21
          DataField = 'lookupHasta'
          DataSource = dsTarifa
          Enabled = False
          TabOrder = 4
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 152
          Width = 393
          Height = 89
          DataField = 'DESCRIPCION'
          DataSource = dsTarifa
          Enabled = False
          TabOrder = 5
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 8
          Top = 40
          Width = 185
          Height = 21
          DataField = 'lookTarifa'
          DataSource = dsReservas
          TabOrder = 1
        end
        object Button3: TButton
          Left = 216
          Top = 40
          Width = 113
          Height = 25
          Caption = 'Agregar Nueva Tarifa'
          TabOrder = 2
          OnClick = Button3Click
        end
      end
    end
    object Button1: TButton
      Left = 256
      Top = 392
      Width = 53
      Height = 25
      Caption = '<<'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 324
      Top = 392
      Width = 53
      Height = 25
      Caption = '>>'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object dsPasajeros: TDataSource
    DataSet = DMDatos.Pasajeros
    Left = 16
    Top = 24
  end
  object dsTarifa: TDataSource
    DataSet = DMDatos.Tarifa
    Left = 64
    Top = 24
  end
  object dsReservas: TDataSource
    DataSet = DMDatos.Reservas
    Left = 120
    Top = 24
  end
end
