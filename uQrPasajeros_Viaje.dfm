inherited qrPasajeros_Viaje: TqrPasajeros_Viaje
  DataSet = DMReportes.Pasajeros_Viaje
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  inherited ColumnHeaderBand1: TQRBand
    Top = 281
    Size.Values = (
      148.166666666666700000
      1899.708333333333000000)
    inherited QRLabel4: TQRLabel
      Left = 16
      Width = 102
      Size.Values = (
        66.145833333333330000
        42.333333333333330000
        42.333333333333330000
        269.875000000000000000)
      Caption = 'Apellido Pasajero'
      FontSize = 10
    end
    inherited QRLabel5: TQRLabel
      Left = 133
      Width = 101
      Size.Values = (
        66.145833333333330000
        351.895833333333300000
        42.333333333333330000
        267.229166666666700000)
      Caption = 'Nombre Pasajero'
      FontSize = 10
    end
    inherited QRLabel6: TQRLabel
      Left = 248
      Width = 49
      Size.Values = (
        66.145833333333330000
        656.166666666666700000
        42.333333333333330000
        129.645833333333300000)
      Caption = 'Tel'#233'fono'
      FontSize = 10
    end
    inherited QRLabel7: TQRLabel
      Left = 352
      Width = 22
      Size.Values = (
        66.145833333333330000
        931.333333333333300000
        42.333333333333330000
        58.208333333333330000)
      Caption = 'DNI'
      FontSize = 10
    end
    inherited QRLabel8: TQRLabel
      Left = 432
      Width = 55
      Size.Values = (
        66.145833333333330000
        1143.000000000000000000
        42.333333333333330000
        145.520833333333300000)
      Caption = 'Direcci'#243'n'
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 544
      Top = 16
      Width = 38
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333330000
        1439.333333333333000000
        42.333333333333330000
        100.541666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Desde'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel14: TQRLabel
      Left = 648
      Top = 16
      Width = 35
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333330000
        1714.500000000000000000
        42.333333333333330000
        92.604166666666670000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Hasta'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited DetailBand1: TQRBand
    Top = 337
    Size.Values = (
      105.833333333333300000
      1899.708333333333000000)
    inherited QRDBText1: TQRDBText
      Left = 16
      Width = 64
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        21.166666666666670000
        169.333333333333300000)
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'APELLIDO'
      FontSize = 10
    end
    inherited QRDBText2: TQRDBText
      Left = 144
      Width = 58
      Size.Values = (
        44.979166666666670000
        381.000000000000000000
        21.166666666666670000
        153.458333333333300000)
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'NOMBRE'
      FontSize = 10
    end
    inherited QRDBText3: TQRDBText
      Left = 240
      Size.Values = (
        44.979166666666670000
        635.000000000000000000
        21.166666666666670000
        185.208333333333300000)
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'TELEFONO'
      FontSize = 10
    end
    inherited QRDBText4: TQRDBText
      Left = 352
      Width = 22
      Size.Values = (
        44.979166666666670000
        931.333333333333300000
        21.166666666666670000
        58.208333333333330000)
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'DNI'
      FontSize = 10
    end
    inherited QRDBText5: TQRDBText
      Left = 424
      Width = 71
      Size.Values = (
        44.979166666666670000
        1121.833333333333000000
        21.166666666666670000
        187.854166666666700000)
      Alignment = taCenter
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'DIRECCION'
      FontSize = 10
    end
    object QRDBText9: TQRDBText
      Left = 624
      Top = 8
      Width = 78
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        21.166666666666670000
        206.375000000000000000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookFinResev'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText8: TQRDBText
      Left = 520
      Top = 8
      Width = 101
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1375.833333333333000000
        21.166666666666670000
        267.229166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookInicioReserva'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited PageFooterBand1: TQRBand
    Top = 425
    Size.Values = (
      127.000000000000000000
      1899.708333333333000000)
    inherited QRSysData4: TQRSysData
      Left = 640
      Size.Values = (
        44.979166666666670000
        1693.333333333333000000
        42.333333333333330000
        121.708333333333300000)
      FontSize = 10
    end
    inherited QRLabel9: TQRLabel
      Left = 504
      Size.Values = (
        44.979166666666670000
        1333.500000000000000000
        42.333333333333330000
        238.125000000000000000)
      FontSize = 10
    end
  end
  inherited PageHeaderBand1: TQRBand
    Height = 147
    Size.Values = (
      388.937500000000000000
      1899.708333333333000000)
    inherited QRLabel1: TQRLabel
      Size.Values = (
        44.979166666666670000
        1375.833333333333000000
        42.333333333333330000
        97.895833333333330000)
      FontSize = 10
    end
    inherited QRLabel2: TQRLabel
      Size.Values = (
        44.979166666666670000
        1375.833333333333000000
        127.000000000000000000
        74.083333333333330000)
      FontSize = 10
    end
    inherited QRSysData1: TQRSysData
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        42.333333333333330000
        95.250000000000000000)
      FontSize = 10
    end
    inherited QRSysData2: TQRSysData
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        127.000000000000000000
        97.895833333333330000)
      FontSize = 10
    end
    inherited QRLabel3: TQRLabel
      Size.Values = (
        87.312500000000000000
        661.458333333333300000
        63.500000000000000000
        396.875000000000000000)
      FontSize = 10
    end
    inherited QRImage1: TQRImage
      Size.Values = (
        108.479166666666700000
        232.833333333333300000
        63.500000000000000000
        129.645833333333300000)
    end
    inherited LblSubtitulo: TQRLabel
      Size.Values = (
        87.312500000000000000
        804.333333333333300000
        148.166666666666700000
        137.583333333333300000)
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 616
      Top = 88
      Width = 55
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        232.833333333333300000
        145.520833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookInicio'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText7: TQRDBText
      Left = 624
      Top = 120
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1651.000000000000000000
        317.500000000000000000
        113.770833333333300000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookFin'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 520
      Top = 88
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1375.833333333333000000
        232.833333333333300000
        113.770833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Origen:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 520
      Top = 120
      Width = 49
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1375.833333333333000000
        317.500000000000000000
        129.645833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Destino:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited SummaryBand1: TQRBand
    Top = 377
    Size.Values = (
      127.000000000000000000
      1899.708333333333000000)
    inherited QRSysData3: TQRSysData
      Left = 632
      Size.Values = (
        44.979166666666670000
        1672.166666666667000000
        42.333333333333330000
        206.375000000000000000)
      FontSize = 10
    end
    inherited QRLabel10: TQRLabel
      Left = 504
      Size.Values = (
        44.979166666666670000
        1333.500000000000000000
        42.333333333333330000
        288.395833333333300000)
      FontSize = 10
    end
  end
  object TitleBand1: TQRBand
    Left = 38
    Top = 185
    Width = 718
    Height = 96
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Frame.Width = 3
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      254.000000000000000000
      1899.708333333333000000)
    BandType = rbTitle
    object QRLabel15: TQRLabel
      Left = 24
      Top = 16
      Width = 113
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        42.333333333333330000
        298.979166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Apellido del Chofer:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 160
      Top = 16
      Width = 81
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        42.333333333333330000
        214.312500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookChofeApe'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel16: TQRLabel
      Left = 24
      Top = 64
      Width = 88
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        169.333333333333300000
        232.833333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'DNI del Chofer:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 24
      Top = 40
      Width = 112
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        105.833333333333300000
        296.333333333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Nombre del Chofer:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText11: TQRDBText
      Left = 160
      Top = 40
      Width = 85
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        105.833333333333300000
        224.895833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookChofeNom'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 160
      Top = 64
      Width = 79
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        423.333333333333300000
        169.333333333333300000
        209.020833333333300000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookChofeDNI'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel18: TQRLabel
      Left = 432
      Top = 16
      Width = 116
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1143.000000000000000000
        42.333333333333330000
        306.916666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Marca del Veh'#237'culo:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel19: TQRLabel
      Left = 424
      Top = 40
      Width = 125
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1121.833333333333000000
        105.833333333333300000
        330.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Nombre del Veh'#237'culo:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel20: TQRLabel
      Left = 424
      Top = 64
      Width = 125
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1121.833333333333000000
        169.333333333333300000
        330.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Patente del Veh'#237'culo:'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText13: TQRDBText
      Left = 590
      Top = 16
      Width = 87
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1561.041666666667000000
        42.333333333333330000
        230.187500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookVehiMarca'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText14: TQRDBText
      Left = 589
      Top = 40
      Width = 96
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1558.395833333333000000
        105.833333333333300000
        254.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookVehiNombre'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 589
      Top = 64
      Width = 96
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1558.395833333333000000
        169.333333333333300000
        254.000000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      Color = clWhite
      DataSet = DMReportes.Pasajeros_Viaje
      DataField = 'lookVehiPatente'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
end
