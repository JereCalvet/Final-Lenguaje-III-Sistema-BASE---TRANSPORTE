object FormMenu: TFormMenu
  Left = 212
  Top = 123
  Width = 977
  Height = 543
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button4: TButton
    Left = 832
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 1
    OnClick = Button4Click
  end
  object actmmb1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 961
    Height = 26
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'actmmb1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = actUsuarios
                Caption = '&Usuarios'
                ShortCut = 16469
              end
              item
                Action = actGrupos
                Caption = '&Grupos'
                ShortCut = 16455
              end
              item
                Action = actOpciones
                Caption = '&Opciones'
                ShortCut = 16463
              end
              item
                Caption = '-'
              end
              item
                Action = actGrup_Opc
                Caption = 'O&pciones de grupos'
              end
              item
                Action = actUsu_Grup
                Caption = 'G&rupos de usuarios'
              end>
            Caption = '(S&eguridad)'
          end
          item
            Items = <
              item
                Action = Chofer
                Caption = '&Chofer'
                ShortCut = 16451
              end
              item
                Action = Pasajero
                Caption = '&Pasajero'
                ShortCut = 16464
              end
              item
                Action = Vehiculo
                Caption = '&Vehiculo'
                ShortCut = 16470
              end
              item
                Action = Localidad
                Caption = '&Localidad'
                ShortCut = 16460
              end
              item
                Action = Tarifa
                Caption = '&Tarifa'
                ShortCut = 16468
              end
              item
                Action = Recorridos
                Caption = '&Recorridos'
                ShortCut = 16466
              end
              item
                Caption = '-'
              end
              item
                Action = Reserva
                Caption = 'R&eserva'
                ShortCut = 16453
              end
              item
                Items = <
                  item
                    Action = actActViajes
                    Caption = '&Listado de Viajes'
                    ShortCut = 16457
                  end
                  item
                    Action = actEstadoViaje
                    Caption = '&Abrir/Cerrar Viajes'
                  end>
                Caption = '(V&iajes)'
              end>
            Caption = '(A&rchivo)'
          end
          item
            Items = <
              item
                Action = actReporteReseva
                Caption = '&Reporte Venta'
              end>
            Caption = '(Re&portes)'
          end>
        ActionBar = actmmb1
      end>
    OnUpdate = ActionManager1Update
    Left = 40
    Top = 64
    StyleName = 'XP Style'
    object actUsuarios: TAction
      Tag = 10
      Category = '(Seguridad)'
      Caption = 'Usuarios'
      Enabled = False
      ShortCut = 16469
      OnExecute = actUsuariosExecute
    end
    object actGrupos: TAction
      Tag = 20
      Category = '(Seguridad)'
      Caption = 'Grupos'
      Enabled = False
      ShortCut = 16455
      OnExecute = actGruposExecute
    end
    object actOpciones: TAction
      Tag = 30
      Category = '(Seguridad)'
      Caption = 'Opciones'
      Enabled = False
      ShortCut = 16463
      OnExecute = actOpcionesExecute
    end
    object actGrup_Opc: TAction
      Tag = 40
      Category = '(Seguridad)'
      Caption = 'Opciones de grupos'
      Enabled = False
      OnExecute = actGrup_OpcExecute
    end
    object actUsu_Grup: TAction
      Tag = 50
      Category = '(Seguridad)'
      Caption = 'Grupos de usuarios'
      Enabled = False
      OnExecute = actUsu_GrupExecute
    end
    object Chofer: TAction
      Tag = 100
      Category = '(Archivo)'
      Caption = 'Chofer'
      Enabled = False
      ShortCut = 16451
      OnExecute = ChoferExecute
    end
    object Pasajero: TAction
      Tag = 200
      Category = '(Archivo)'
      Caption = 'Pasajero'
      Enabled = False
      ShortCut = 16464
      OnExecute = PasajeroExecute
    end
    object Vehiculo: TAction
      Tag = 300
      Category = '(Archivo)'
      Caption = 'Vehiculo'
      Enabled = False
      ShortCut = 16470
      OnExecute = VehiculoExecute
    end
    object Localidad: TAction
      Tag = 400
      Category = '(Archivo)'
      Caption = 'Localidad'
      Enabled = False
      ShortCut = 16460
      OnExecute = LocalidadExecute
    end
    object Tarifa: TAction
      Tag = 500
      Category = '(Archivo)'
      Caption = 'Tarifa'
      Enabled = False
      ShortCut = 16468
      OnExecute = TarifaExecute
    end
    object Recorridos: TAction
      Tag = 600
      Category = '(Archivo)'
      Caption = 'Recorridos'
      Enabled = False
      ShortCut = 16466
      OnExecute = RecorridosExecute
    end
    object Reserva: TAction
      Tag = 700
      Category = '(Archivo)'
      Caption = 'Reserva'
      Enabled = False
      ShortCut = 16453
      OnExecute = ReservaExecute
    end
    object actActViajes: TAction
      Tag = 800
      Category = '(Viajes)'
      Caption = 'Listado de Viajes'
      Enabled = False
      ShortCut = 16457
      OnExecute = actActViajesExecute
    end
    object actEstadoViaje: TAction
      Tag = 900
      Category = '(Viajes)'
      Caption = 'Abrir/Cerrar Viajes'
      Enabled = False
      OnExecute = actEstadoViajeExecute
    end
    object actReporteReseva: TAction
      Tag = 2000
      Category = '(Reportes)'
      Caption = 'Reporte Venta'
      OnExecute = actReporteResevaExecute
    end
  end
end
