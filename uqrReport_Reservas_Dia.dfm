inherited qrReport_Reservas_Dia: TqrReport_Reservas_Dia
  DataSet = DMReportes.ReservasRep
  Functions.Strings = (
    'PAGENUMBER'
    'COLUMNNUMBER'
    'REPORTTITLE'
    'SUM')
  Functions.DATA = (
    '0'
    '0'
    #39#39
    '')
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    100.000000000000000000
    100.000000000000000000
    0.000000000000000000)
  Units = Native
  inherited ColumnHeaderBand1: TQRBand
    Size.Values = (
      148.166666666666700000
      1899.708333333333000000)
    inherited QRLabel4: TQRLabel
      Left = 120
      Width = 121
      Size.Values = (
        66.145833333333330000
        317.500000000000000000
        42.333333333333330000
        320.145833333333300000)
      Caption = 'Apellido del pasajero'
      FontSize = 10
    end
    inherited QRLabel5: TQRLabel
      Left = 251
      Width = 120
      Size.Values = (
        66.145833333333330000
        664.104166666666700000
        42.333333333333330000
        317.500000000000000000)
      Caption = 'Nombre del pasajero'
      FontSize = 10
    end
    inherited QRLabel6: TQRLabel
      Left = 8
      Width = 109
      Size.Values = (
        66.145833333333330000
        21.166666666666670000
        42.333333333333330000
        288.395833333333300000)
      Caption = 'Codigo de Reserva'
      FontSize = 10
    end
    inherited QRLabel7: TQRLabel
      Left = 400
      Width = 38
      Size.Values = (
        66.145833333333330000
        1058.333333333333000000
        42.333333333333330000
        100.541666666666700000)
      Alignment = taCenter
      Caption = 'Desde'
      FontSize = 10
    end
    inherited QRLabel8: TQRLabel
      Left = 488
      Width = 35
      Size.Values = (
        66.145833333333330000
        1291.166666666667000000
        42.333333333333330000
        92.604166666666670000)
      Alignment = taCenter
      Caption = 'Hasta'
      FontSize = 10
    end
    object QRLabel11: TQRLabel
      Left = 576
      Top = 16
      Width = 32
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333330000
        1524.000000000000000000
        42.333333333333330000
        84.666666666666670000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Tarifa'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 656
      Top = 16
      Width = 44
      Height = 25
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        66.145833333333330000
        1735.666666666667000000
        42.333333333333330000
        116.416666666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Importe'
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited DetailBand1: TQRBand
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      105.833333333333300000
      1899.708333333333000000)
    inherited QRDBText1: TQRDBText
      Left = 152
      Width = 60
      Size.Values = (
        44.979166666666670000
        402.166666666666700000
        21.166666666666670000
        158.750000000000000000)
      Alignment = taCenter
      DataSet = DMReportes.ReservasRep
      DataField = 'lookApePj'
      FontSize = 10
    end
    inherited QRDBText2: TQRDBText
      Left = 272
      Width = 64
      Size.Values = (
        44.979166666666670000
        719.666666666666700000
        21.166666666666670000
        169.333333333333300000)
      DataSet = DMReportes.ReservasRep
      DataField = 'lookNomPj'
      FontSize = 10
    end
    inherited QRDBText3: TQRDBText
      Left = 16
      Width = 52
      Size.Values = (
        44.979166666666670000
        42.333333333333330000
        21.166666666666670000
        137.583333333333300000)
      Alignment = taLeftJustify
      DataSet = DMReportes.ReservasRep
      DataField = 'CODIGO'
      FontSize = 10
    end
    inherited QRDBText4: TQRDBText
      Left = 376
      Width = 75
      Size.Values = (
        44.979166666666670000
        994.833333333333300000
        21.166666666666670000
        198.437500000000000000)
      DataSet = DMReportes.ReservasRep
      DataField = 'lookCiudadIn'
      FontSize = 10
    end
    inherited QRDBText5: TQRDBText
      Left = 464
      Width = 80
      Size.Values = (
        44.979166666666670000
        1227.666666666667000000
        21.166666666666670000
        211.666666666666700000)
      Alignment = taCenter
      DataSet = DMReportes.ReservasRep
      DataField = 'lookCiudadFn'
      FontSize = 10
    end
    object QRDBText6: TQRDBText
      Left = 560
      Top = 8
      Width = 65
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1481.666666666667000000
        21.166666666666670000
        171.979166666666700000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.ReservasRep
      DataField = 'lookDesTar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 9
    end
    object QRDBText7: TQRDBText
      Left = 651
      Top = 8
      Width = 59
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1722.437500000000000000
        21.166666666666670000
        156.104166666666700000)
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Color = clWhite
      DataSet = DMReportes.ReservasRep
      DataField = 'IMPORTE'
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  inherited PageFooterBand1: TQRBand
    Size.Values = (
      127.000000000000000000
      1899.708333333333000000)
    inherited QRSysData4: TQRSysData
      Left = 376
      Size.Values = (
        44.979166666666670000
        994.833333333333300000
        42.333333333333330000
        121.708333333333300000)
      FontSize = 10
    end
    inherited QRLabel9: TQRLabel
      Left = 264
      Size.Values = (
        44.979166666666670000
        698.500000000000000000
        42.333333333333330000
        238.125000000000000000)
      FontSize = 10
    end
  end
  inherited PageHeaderBand1: TQRBand
    Size.Values = (
      283.104166666666700000
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
      Left = 528
      Size.Values = (
        44.979166666666670000
        1397.000000000000000000
        127.000000000000000000
        74.083333333333330000)
      FontSize = 10
    end
    inherited QRSysData1: TQRSysData
      Left = 632
      Size.Values = (
        44.979166666666670000
        1672.166666666667000000
        42.333333333333330000
        95.250000000000000000)
      FontSize = 10
    end
    inherited QRSysData2: TQRSysData
      Left = 632
      Size.Values = (
        44.979166666666670000
        1672.166666666667000000
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
  end
  inherited SummaryBand1: TQRBand
    Size.Values = (
      127.000000000000000000
      1899.708333333333000000)
    inherited QRSysData3: TQRSysData
      Left = 144
      Size.Values = (
        44.979166666666670000
        381.000000000000000000
        42.333333333333330000
        206.375000000000000000)
      FontSize = 10
    end
    inherited QRLabel10: TQRLabel
      Left = 24
      Size.Values = (
        44.979166666666670000
        63.500000000000000000
        42.333333333333330000
        288.395833333333300000)
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 544
      Top = 16
      Width = 37
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1439.333333333333000000
        42.333333333333330000
        97.895833333333330000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'Total: '
      Color = clWhite
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
    object QRExpr1: TQRExpr
      Left = 640
      Top = 16
      Width = 146
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        1693.333333333333000000
        42.333333333333330000
        386.291666666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = True
      Color = clWhite
      ResetAfterPrint = False
      Transparent = False
      WordWrap = True
      Expression = 'SUM(ReservasRep.Total)'
      Mask = '$#,##0.00'
      FontSize = 10
    end
  end
end
