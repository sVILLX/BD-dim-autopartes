SELECT
    TRIM(ee.[Empresa]) as Empresa
    ,TRIM(ee.[Folio]) as Folio
    ,COALESCE(ed.[Partida], -1) as Partida
    ,UPPER(TRIM(ed.Articulo)) as Articulo
    ,COALESCE(UPPER(TRIM(ee.[Cliente])), 'Not in source') as Cliente
    ,COALESCE(TRIM(ee.[Vendedor]), -1) as Vendedor
    ,TRIM(ee.[Moneda]) as Moneda
    ,CAST(CONVERT(VARCHAR(8), ee.[Fecha], 112) AS INT) AS TimeID
    ,TRIM(ee.[Operacion]) as Operacion
    ,ee.[pctDescuentoGlobal]
    ,ee.[TotalImporte]
    ,COALESCE(ee.[TotalDescuento], 0.0) as TotalDescuento
    ,ee.[TotalImpuesto]
    ,ee.[Total]
    ,TRIM(ed.Almacen) as Almacen
    ,ed.[Cantidad]
    ,ed.[CantidadUMedInv]
    ,TRIM(ed.DescripcionArticulo) as DescripcionArticulo
    ,COALESCE(ed.[pctDescuento], 0.0) as pctDescuento
    ,ed.[pctImpuesto]
    ,ed.[Precio]
    ,ed.[Total] as TotalDetalle
    ,COALESCE(ed.[TotalDescuento], 0.0) as TotalDescuentoDetalle
    ,ed.[TotalImporte] as TotalImporteDetalle
    ,ed.[TotalImpuesto] as TotalImpuestoDetalle
    ,TRIM(ed.[Ubicacion]) as Ubicacion
    ,UPPER(TRIM(ed.[UMedPartida])) as UMedPartida
FROM [AutopartesO2025].[dbo].[EntradaEncabezado] ee
LEFT JOIN [AutopartesO2025].[dbo].[EntradaDetalle] ed
    ON ee.Folio = ed.Folio  AND ee.Empresa = ed.Empresa