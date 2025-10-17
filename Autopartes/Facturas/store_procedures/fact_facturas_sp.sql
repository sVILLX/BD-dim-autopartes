ALTER PROCEDURE [dbo].[fact_facturas_sp] AS
BEGIN
    SELECT 
        TRIM(fe.[Folio]) as Folio
        ,COALESCE(fd.[Partida], -1) as Partida
        ,TRIM(fe.[Empresa]) as Empresa
        ,TRIM(fd.[Articulo]) as Articulo
        ,COALESCE(UPPER(TRIM(fe.[Cliente])), 'Not in source') as Cliente
        ,COALESCE(TRIM(fe.[Vendedor]), -1) as Vendedor
        ,COALESCE(TRIM(fe.[MedioEmbarque]), 'Not in source') as MedioEmbarque
        ,COALESCE(TRIM(fe.[CondicionPago]), 'Not in source') as CondicionPago
        ,CAST(CONVERT(varchar(8), fe.Fecha, 112) as int) as TimeID

        ,fe.[TotalImporte] as TotalImporteFactura
        ,fd.[TotalImporte] as TotalImporteDetalle

        ,COALESCE(fe.[TotalDescuento], 0.0) as TotalDescuentoFactura
        ,COALESCE(fd.[TotalDescuento], 0.0) as TotalDescuentoDetalle

        ,fe.[TotalRetencion]
        ,fe.[Total] as TotalFactura
        ,fd.[Total] as TotalDetalle
        ,fd.[TotalImpuesto] as TotalImpuestoDetalle

        ,TRIM(fd.[DescripcionArticulo]) as DescripcionArticulo
        ,fd.[Cantidad]
        ,TRIM(fd.[Almacen]) as Almacen
        ,fd.[Precio]
        ,TRIM(fd.[UMedPartida]) UMedPartida
        ,fd.[CantidadUMedInv]
        ,COALESCE(fd.[pctDescuento], 0.0) as pctDescuento
        ,fd.[pctImpuesto]

        ,COALESCE(fe.[pctDescuentoGlobal], 0.0) as pctDescuentoGlobal
        ,TRIM(fe.[RacIVA]) as RacIVA
        ,TRIM(fe.[Moneda]) as Moneda
        ,1 as CantidadPartidas
        ,(1.0/sub.NumeroPartidas) as count_facturas
    FROM [AutopartesO2025].[dbo].[FacturaEncabezado] fe
    LEFT JOIN [AutopartesO2025].[dbo].[FacturaDetalle] fd 
        ON fe.Folio = fd.Folio AND fe.Empresa = fd.Empresa

    LEFT JOIN (
        SELECT
            fe.Folio
            ,COUNT(fd.Partida) as NumeroPartidas
        FROM [AutopartesO2025].[dbo].[FacturaEncabezado] fe
        JOIN [AutopartesO2025].[dbo].[FacturaDetalle] fd 
            ON fe.Folio = fd.Folio AND fe.Empresa = fd.Empresa
        GROUP BY fe.Folio
    ) AS sub
        ON fe.Folio = sub.Folio
END