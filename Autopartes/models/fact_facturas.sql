SELECT 
    fe.[Folio]
    ,fd.[Partida]
    ,fe.[Empresa]
    ,fd.[Articulo]
    ,UPPER(fe.[Cliente]) as Cliente
    ,fe.[Vendedor]
    ,fe.[MedioEmbarque]
    ,fe.[CondicionPago]
    ,CAST(CONVERT(varchar(8), fe.Fecha, 112) as int) as TimeID

    ,fe.[TotalImporte] as TotalImporteFactura
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fe.[TotalImporte] / 17.00
        WHEN 'ER' THEN fe.[TotalImporte] / 0.93
        ELSE fe.[TotalImporte]
    END AS TotalImporteFacturaEstandarizado
    ,fd.[TotalImporte] as TotalImporteDetalle
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fd.[TotalImporte] / 17.00
        WHEN 'ER' THEN fd.[TotalImporte] / 0.93
        ELSE fd.[TotalImporte]
    END AS TotalImporteDetalleEstandarizado

    ,fe.[TotalDescuento] as TotalDescuentoFactura
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fe.[TotalDescuento] / 17.00
        WHEN 'ER' THEN fe.[TotalDescuento] / 0.93
        ELSE fe.[TotalDescuento]
    END AS TotalDescuentoFacturaEstandarizado
    ,fd.[TotalDescuento] as TotalDescuentoDetalle
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fd.[TotalDescuento] / 17.00
        WHEN 'ER' THEN fd.[TotalDescuento] / 0.93
        ELSE fd.[TotalDescuento]
    END AS TotalDescuentoDetalleEstandarizado

    ,fe.[TotalRetencion]
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fe.[TotalRetencion] / 17.00
        WHEN 'ER' THEN fe.[TotalRetencion] / 0.93
        ELSE fe.[TotalRetencion]
    END AS TotalRetencionEstandarizado
    ,fe.[Total] as TotalFactura
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fe.[Total] / 17.00
        WHEN 'ER' THEN fe.[Total] / 0.93
        ELSE fe.[Total]
    END AS TotalFacturaEstandarizado
    ,fd.[Total] as TotalDetalle
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fd.[Total] / 17.00
        WHEN 'ER' THEN fd.[Total] / 0.93
        ELSE fd.[Total]
    END AS TotalDetalleEstandarizado
    ,fd.[TotalImpuesto] as TotalImpuestoDetalle
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fd.[TotalImpuesto] / 17.00
        WHEN 'ER' THEN fd.[TotalImpuesto] / 0.93
        ELSE fd.[TotalImpuesto]
    END AS TotalImpuestoDetalleEstandarizado

    ,fd.[DescripcionArticulo]
    ,fd.[Cantidad]
    ,fd.[Almacen]
    ,fd.[Precio]
    ,CASE fe.[Moneda] 
        WHEN 'P' THEN fd.[Precio] / 17.00
        WHEN 'ER' THEN fd.[Precio] / 0.93
        ELSE fd.[Precio]
    END AS PrecioEstandarizado
    ,fd.[UMedPartida]
    ,fd.[CantidadUMedInv]
    ,fd.[pctDescuento]
    ,fd.[pctImpuesto]

    ,fe.[pctDescuentoGlobal]
    ,fe.[RacIVA]
    ,fe.[Moneda]
FROM [AutopartesO2025].[dbo].[FacturaEncabezado] fe
LEFT JOIN [AutopartesO2025].[dbo].[FacturaDetalle] fd 
    on fe.Folio = fd.Folio AND fe.Empresa = fd.Empresa
