SELECT
    TRIM(a.[clave]) as Clave
    ,TRIM(a.[Descripcion]) as Descripcion
    ,COALESCE(TRIM(at_.[Descripcion]), 'Not in source') as ArticuloTipo
    ,COALESCE(TRIM(ag.[Descripcion]), 'Not in source') as ArticuloGrupo
    ,COALESCE(TRIM(ac.[Descripcion]), 'Not in source') as ArticuloClase
    ,a.[Almacenable]
    ,a.[Identificacion]
    ,TRIM(a.[UMedInv]) as UMedInv
    ,TRIM(a.[UMedVta]) as UMedVta
    ,TRIM(a.[UMedCpa]) as UMedCpa
    ,COALESCE(TRIM(a.[Moneda]), 'Not in source') as Moneda
    ,a.[Precio]
    ,a.[pctDescuento]
    ,COALESCE(TRIM(a.[UbicacionAlmacen]), 'Not in source') as UbicacionAlmacen
    ,COALESCE(TRIM(a.[UbicacionClave]), 'Not in source') as UbicacionClave
FROM [AutopartesO2025].[dbo].[Articulo] a
LEFT JOIN [AutopartesO2025].[dbo].[ArticuloGrupo] ag 
    on a.ArticuloGrupo = ag.Clave
LEFT JOIN [AutopartesO2025].[dbo].[ArticuloClase] ac
    on a.ArticuloClase = ac.Clave
LEFT JOIN [AutopartesO2025].[dbo].[ArticuloTipo] at_
    on a.ArticuloTipo = at_.Clave
