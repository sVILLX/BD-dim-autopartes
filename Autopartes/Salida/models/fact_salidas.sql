SELECT
    TRIM(se.[Empresa]) as Empresa
    ,TRIM(se.[Folio]) as Folio
    ,COALESCE(sd.[Partida], -1) as Partida
    ,UPPER(TRIM(sd.Articulo)) as Articulo
    ,COALESCE(UPPER(TRIM(se.[Cliente])), 'Not in source') as Cliente
    ,COALESCE(TRIM(se.[Vendedor]), -1) as Vendedor
    ,TRIM(se.[Moneda]) as Moneda
    ,CAST(CONVERT(VARCHAR(8), se.[Fecha], 112) AS INT) AS TimeID
    ,COALESCE(TRIM(se.[CondicionPago]), 'Not in source') as CondicionPago
    ,COALESCE(TRIM(se.[MedioEmbarque]), 'Not in source') as MedioEmbarque
    ,COALESCE(se.[pctDescuentoGlobal], 0.0) as pctDescuentoGlobal
    ,se.[TotalImporte]
    ,COALESCE(se.[TotalDescuento], 0.0) as TotalDescuento
    ,se.[TotalImpuesto]
    ,se.[Total]
    ,TRIM(sd.[Almacen]) as Almacen
    ,sd.[Cantidad]
    ,sd.[CantidadUMedInv]
    ,TRIM(sd.[DescripcionArticulo]) as DescripcionArticulo
    ,COALESCE(sd.[pctDescuento], 0.0) as pctDescuento
    ,sd.[pctImpuesto]
    ,sd.[Precio]
    ,sd.[Total] as TotalDetalle
    ,COALESCE(sd.[TotalDescuento], 0.0) as TotalDescuentoDetalle
    ,sd.[TotalImporte] as TotalImporteDetalle
    ,sd.[TotalImpuesto] as TotalImpuestoDetalle
    ,TRIM(sd.[Ubicacion]) as Ubicacion
    ,UPPER(TRIM(sd.[UMedPartida])) as UMedPartida
FROM [AutopartesO2025].[dbo].[SalidaEncabezado] se
LEFT JOIN [AutopartesO2025].[dbo].[SalidaDetalle] sd
    ON se.Folio = sd.Folio and se.Empresa = sd.Empresa