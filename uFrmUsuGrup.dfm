inherited FrmUsuGrup: TFrmUsuGrup
  Left = 211
  Top = 142
  Width = 1022
  Height = 557
  Caption = 'Grupos de usuarios'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 72
    Width = 41
    Height = 13
    Caption = 'Usuarios'
  end
  object Label2: TLabel
    Left = 408
    Top = 72
    Width = 76
    Height = 13
    Caption = 'Grupo Asignado'
  end
  object Label3: TLabel
    Left = 712
    Top = 72
    Width = 83
    Height = 13
    Caption = 'Grupo sin asignar'
  end
  object DBGridUsuarios: TDBGrid
    Left = 24
    Top = 112
    Width = 273
    Height = 313
    DataSource = DSUsuarios
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMCOMP'
        Visible = True
      end>
  end
  object DBGridUsuGrup: TDBGrid
    Left = 312
    Top = 112
    Width = 321
    Height = 313
    DataSource = DSUsuGrup
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridUsuGrupDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Descripcion'
        Title.Caption = 'Grupos'
        Visible = True
      end>
  end
  object DBGridGrupAux: TDBGrid
    Left = 648
    Top = 112
    Width = 321
    Height = 313
    DataSource = DSGrupAux
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridGrupAuxDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Title.Caption = 'Grupos'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 792
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DSUsuarios: TDataSource
    DataSet = DMSeguridad.Usuarios
    OnDataChange = DSUsuariosDataChange
    Left = 40
    Top = 40
  end
  object DSUsuGrup: TDataSource
    DataSet = DMSeguridad.Usu_Grup
    Left = 352
    Top = 48
  end
  object DSGrupAux: TDataSource
    DataSet = DMSeguridad.GruposAux
    Left = 648
    Top = 40
  end
end
