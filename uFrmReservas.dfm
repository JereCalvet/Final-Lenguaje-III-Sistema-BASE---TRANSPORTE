inherited FrmReservas: TFrmReservas
  Left = 255
  Top = 151
  Width = 1002
  Height = 541
  Caption = 'Reservas'
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
    Visible = False
  end
  object Label2: TLabel
    Left = 160
    Top = 8
    Width = 45
    Height = 13
    Caption = 'L_INICIO'
    FocusControl = DBEdit2
    Visible = False
  end
  object Label3: TLabel
    Left = 304
    Top = 8
    Width = 28
    Height = 13
    Caption = 'L_FIN'
    FocusControl = DBEdit3
    Visible = False
  end
  object Label11: TLabel
    Left = 152
    Top = 64
    Width = 43
    Height = 13
    Caption = 'ORIGEN:'
    FocusControl = DBLookupComboBox4
  end
  object Label12: TLabel
    Left = 392
    Top = 64
    Width = 44
    Height = 13
    Caption = 'DESTINO'
    FocusControl = DBLookupComboBox5
  end
  object Panel2: TPanel
    Left = 576
    Top = 8
    Width = 345
    Height = 217
    BevelInner = bvRaised
    TabOrder = 0
    object Label4: TLabel
      Left = 160
      Top = 8
      Width = 33
      Height = 26
      Caption = 'FECHA'#13#10
    end
  end
  object Panel1: TPanel
    Left = 16
    Top = 240
    Width = 905
    Height = 193
    BevelInner = bvRaised
    TabOrder = 8
    object Label13: TLabel
      Left = 16
      Top = 8
      Width = 102
      Height = 13
      Caption = 'VIAJES DISPONIBLES'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 889
      Height = 153
      DataSource = dsVIAJES
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FECHA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookCodRec'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HoraSalida'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ID_CHOFER'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_VEHICULO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_RECORRIDO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lookChofNomb'
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookVehiMar'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookVehNom'
          Width = 126
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookVehCap'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CalDisp'
          Width = 179
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 24
    Width = 134
    Height = 21
    DataField = 'ID'
    DataSource = dsRESERVAS
    TabOrder = 1
    Visible = False
  end
  object BitBtn2: TBitBtn
    Left = 472
    Top = 448
    Width = 97
    Height = 33
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 10
    OnClick = BitBtn2Click
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 24
    Width = 134
    Height = 21
    DataField = 'L_INICIO'
    DataSource = dsRESERVAS
    TabOrder = 2
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 304
    Top = 24
    Width = 134
    Height = 21
    DataField = 'L_FIN'
    DataSource = dsRESERVAS
    TabOrder = 3
    Visible = False
  end
  object DBLookupComboBox4: TDBLookupComboBox
    Left = 104
    Top = 80
    Width = 152
    Height = 21
    BiDiMode = bdLeftToRight
    DataField = 'lookL_INICIO'
    DataSource = dsRESERVAS
    ParentBiDiMode = False
    TabOrder = 5
    OnDropDown = DBLookupComboBox4DropDown
  end
  object DBLookupComboBox5: TDBLookupComboBox
    Left = 344
    Top = 80
    Width = 153
    Height = 21
    DataField = 'lookL_FIN'
    DataSource = dsRESERVAS
    TabOrder = 6
    OnDropDown = DBLookupComboBox5DropDown
  end
  object MonthCalendar1: TMonthCalendar
    Left = 592
    Top = 40
    Width = 321
    Height = 177
    Date = 41955.691142708330000000
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = MonthCalendar1Click
    OnGetMonthInfo = MonthCalendar1GetMonthInfo
  end
  object Button2: TButton
    Left = 248
    Top = 448
    Width = 105
    Height = 33
    Caption = 'Registrar Reserva'
    TabOrder = 9
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 24
    Top = 192
    Width = 145
    Height = 33
    Caption = 'Ver Reservas realizadas'
    TabOrder = 7
    OnClick = Button3Click
  end
  object dsVIAJES: TDataSource
    DataSet = DMDatos.pViaje
    Left = 48
    Top = 320
  end
  object dsRESERVAS: TDataSource
    DataSet = DMDatos.Reservas
    Left = 456
    Top = 8
  end
  object dsCalculoDisponibilidad: TDataSource
    DataSet = DMDatos.CalculaDisponibilidad
    Left = 520
    Top = 8
  end
  object dsArrayRecorrido: TDataSource
    DataSet = DMDatos.ArrayRecorrido
    Left = 576
    Top = 8
  end
  object dsMarcaCalendario: TDataSource
    DataSet = DMDatos.MarcoCalendario
    Left = 584
    Top = 80
  end
  object dsEstadoViaje: TDataSource
    DataSet = DMDatos.EstadoViaje
    Left = 520
    Top = 80
  end
end
