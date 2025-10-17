CREATE PROCEDURE fact_entradas_sp AS
BEGIN 
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
        ,1 as CantidadPartidas
        ,(1.0/sub.NumeroPartidas) as count_entradas
    FROM [AutopartesO2025].[dbo].[EntradaEncabezado] ee
    LEFT JOIN [AutopartesO2025].[dbo].[EntradaDetalle] ed
        ON ee.Folio = ed.Folio  AND ee.Empresa = ed.Empresa

    LEFT JOIN (
        SELECT 
            ee.Folio
            ,COUNT(ed.Partida) as NumeroPartidas
        FROM [AutopartesO2025].[dbo].[EntradaEncabezado] ee
        JOIN [AutopartesO2025].[dbo].[EntradaDetalle] ed   
            ON ee.Folio = ed.Folio
        GROUP BY ee.Folio
    ) AS sub
        ON ee.Folio = sub.Folio
END