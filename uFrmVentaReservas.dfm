inherited FrmVentaReservas: TFrmVentaReservas
  Left = 326
  Top = 153
  Width = 597
  Height = 437
  Caption = 'Reporte de Reservas'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 399
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 56
      Top = 136
      Width = 85
      Height = 13
      Caption = 'Reservas de hoy:'
    end
    object Label2: TLabel
      Left = 56
      Top = 176
      Width = 78
      Height = 13
      Caption = 'Reservas entre:'
    end
    object Label3: TLabel
      Left = 293
      Top = 176
      Width = 6
      Height = 13
      Caption = 'Y'
    end
    object Button1: TButton
      Left = 472
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Reporte'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 472
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Reporte'
      TabOrder = 3
      OnClick = Button2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 152
      Top = 168
      Width = 89
      Height = 21
      Date = 41853.809594409720000000
      Time = 41853.809594409720000000
      TabOrder = 1
    end
    object DateTimePicker2: TDateTimePicker
      Left = 352
      Top = 168
      Width = 97
      Height = 21
      Date = 41853.809594409720000000
      Time = 41853.809594409720000000
      TabOrder = 2
    end
    object BitBtn1: TBitBtn
      Left = 472
      Top = 353
      Width = 75
      Height = 25
      Caption = '&Close'
      ModalResult = 2
      TabOrder = 4
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object dsBASE: TDataSource
    DataSet = DMReportes.ReservasRep
    Left = 48
    Top = 16
  end
end
