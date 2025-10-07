SELECT
    a.[clave]
    ,a.[Descripcion]
    ,at_.[Descripcion] as 'ArticuloTipo'
    ,ag.[Descripcion] as 'ArticuloGrupo'
    ,ac.[Descripcion] as 'ArticuloClase'
    ,a.[Almacenable]
    ,a.[Identificacion]
    ,a.[UMedInv]
    ,a.[UMedVta]
    ,a.[UMedCpa]
    ,COALESCE(a.[Moneda], 'Not in source') as Moneda
    ,a.[Precio]
    ,a.[pctDescuento]
    ,COALESCE(a.[UbicacionAlmacen], 'Not in source') as UbicacionAlmacen
    ,COALESCE(a.[UbicacionClave], 'Not in source') as UbicacionClave
FROM [AutopartesO2025].[dbo].[Articulo] a
LEFT JOIN [AutopartesO2025].[dbo].[ArticuloGrupo] ag 
    on a.ArticuloGrupo = ag.Clave
LEFT JOIN [AutopartesO2025].[dbo].[ArticuloClase] ac
    on a.ArticuloClase = ac.Clave
LEFT JOIN [AutopartesO2025].[dbo].[ArticuloTipo] at_
    on a.ArticuloTipo = at_.Clave
