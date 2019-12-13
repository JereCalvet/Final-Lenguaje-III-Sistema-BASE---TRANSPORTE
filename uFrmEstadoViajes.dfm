inherited FrmEstadoViajes: TFrmEstadoViajes
  Left = 254
  Top = 165
  Width = 989
  Height = 491
  Caption = 'Estado de los Viajes'
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 464
    Top = 88
    Width = 166
    Height = 13
    Caption = 'Ciudad Marcada = Ciudad Cerrada'
  end
  object Label3: TLabel
    Left = 456
    Top = 128
    Width = 180
    Height = 13
    Caption = 'Ciudad Desmarcada = Ciudad Abierta'
  end
  object BitBtn1: TBitBtn
    Left = 296
    Top = 408
    Width = 89
    Height = 33
    TabOrder = 5
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 512
    Top = 408
    Width = 89
    Height = 33
    TabOrder = 6
    Kind = bkClose
  end
  object MonthCalendar1: TMonthCalendar
    Left = 112
    Top = 56
    Width = 191
    Height = 154
    Date = 42199.713923206020000000
    TabOrder = 1
    OnGetMonthInfo = MonthCalendar1GetMonthInfo
  end
  object CheckListBox1: TCheckListBox
    Left = 664
    Top = 40
    Width = 169
    Height = 161
    ItemHeight = 13
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 32
    Top = 256
    Width = 905
    Height = 145
    TabOrder = 4
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 106
      Height = 13
      Caption = 'VIAJES DISPONIBLES:'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 24
      Width = 865
      Height = 105
      DataSource = DsViaje
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
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
          FieldName = 'lookRecorrido'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lookChofApe'
          Width = 102
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
          FieldName = 'lookChofNom'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookVehiMar'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookVehiNom'
          Width = 123
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookVehCapac'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lookPatente'
          Visible = True
        end>
    end
  end
  object Button1: TButton
    Left = 664
    Top = 216
    Width = 89
    Height = 25
    Caption = 'Guardar Cambios'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 768
    Top = 216
    Width = 65
    Height = 25
    Caption = 'Reset'
    TabOrder = 3
    OnClick = Button2Click
  end
  object DsViaje: TDataSource
    DataSet = DMDatos.Viaje
    Left = 40
    Top = 40
  end
  object dsMarcoCalendario: TDataSource
    DataSet = DMDatos.MarcoCalendario
    Left = 40
    Top = 96
  end
  object dsArrayRecorrido: TDataSource
    DataSet = DMDatos.ArrayRecorrido
    Left = 40
    Top = 152
  end
  object dsEstadoViaje: TDataSource
    DataSet = DMDatos.EstadoViaje
    Left = 40
    Top = 208
  end
end
