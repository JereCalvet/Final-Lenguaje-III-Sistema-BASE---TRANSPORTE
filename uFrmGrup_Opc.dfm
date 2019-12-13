inherited FrmGrup_Opc: TFrmGrup_Opc
  Width = 989
  Height = 507
  Caption = 'Opciones de Grupos'
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 208
    Top = 384
    Width = 17
    Height = 17
    Picture.Data = {
      07544269746D617042010000424D420100000000000076000000280000001100
      0000110000000100040000000000CC0000000000000000000000100000001000
      0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00777777777777777770000000777777000007777770000000777700BBBBB0
      0777700000007770BBBBBBBBB07770000000770BBBBBBBBBBB0770000000770B
      BB00000BBB077000000070BBB0BBBBB0BBB07000000070BB0BBBBBBB0BB07000
      000070BBBBBBBBBBBBB07000000070BBBBBBBBBBBBB07000000070BBB00BBB00
      BBB070000000770BB00BBB00BB0770000000770BBBBBBBBBBB07700000007770
      BBBBBBBBB07770000000777700BBBBB007777000000077777700000777777000
      0000777777777777777770000000}
    Stretch = True
    Visible = False
  end
  object Image2: TImage
    Left = 248
    Top = 384
    Width = 17
    Height = 17
    Picture.Data = {
      07544269746D6170F6000000424DF60000000000000076000000280000001000
      0000100000000100040000000000800000000000000000000000100000001000
      0000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00777770000077777777700AAAAA007777770AAAAAAAAA077770AAAAAAAAAA
      A07770AA0AAAAA0AA0770AAA00AAA00AAA070AAAA00000AAAA070AAAAAAAAAAA
      AA070AAAAAAAAAAAAA070AAA00AAA00AAA0770AA00AAA00AA07770AAAAAAAAAA
      A077770AAAAAAAAA077777700AAAAA0077777777700000777777777777777777
      7777}
    Stretch = True
    Visible = False
  end
  object DBGridGrupos: TDBGrid
    Left = 32
    Top = 96
    Width = 161
    Height = 265
    DataSource = DSGrupos
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
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Visible = True
      end>
  end
  object DBGridOpc: TDBGrid
    Left = 280
    Top = 96
    Width = 201
    Height = 265
    DataSource = DSOpc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridOpcDrawColumnCell
    OnDblClick = DBGridOpcDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Visible = True
      end
      item
        Expanded = False
        Title.Caption = 'Estado'
        Width = 42
        Visible = True
      end>
  end
  object DBGridGrup_Opc: TDBGrid
    Left = 624
    Top = 96
    Width = 145
    Height = 265
    DataSource = DSGrup_Opc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object btnSalir: TBitBtn
    Left = 784
    Top = 408
    Width = 75
    Height = 25
    TabOrder = 4
    Kind = bkClose
  end
  object BitBtn1: TBitBtn
    Left = 504
    Top = 408
    Width = 137
    Height = 25
    Caption = 'Actualizar Permisos'
    TabOrder = 3
    OnClick = BitBtn1Click
    Kind = bkRetry
  end
  object DSGrupos: TDataSource
    DataSet = DMSeguridad.Grupos
    OnDataChange = DSGruposDataChange
    Left = 48
    Top = 40
  end
  object DSOpc: TDataSource
    DataSet = DMSeguridad.Opciones
    Left = 288
    Top = 48
  end
  object DSGrup_Opc: TDataSource
    DataSet = DMSeguridad.Grupo_Opc
    Left = 640
    Top = 48
  end
end
