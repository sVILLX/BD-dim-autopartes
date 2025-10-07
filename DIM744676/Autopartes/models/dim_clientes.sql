SELECT
    c.[Clave]
    ,COALESCE(NULLIF('',c.[RazonSocial]), 'Not in source') as RazonSocial
    ,COALESCE(NULLIF('',c.[CalleNumero]), 'Not in source') as CalleNumero
    ,COALESCE(c.[Colonia], 'Not in source') as Colonia
    ,c.[Ciudad]
    ,c.[Estado]
    ,c.[Pais]
    ,CASE   
        WHEN c.[CodigoPostal] IS NULL OR c.[CodigoPostal] = '' THEN 'Not in source'
        ELSE c.[CodigoPostal]
    END AS CodigoPostal
    ,ct.[Descripcion] as 'ClienteTipo'
    ,c.[ClienteGrupo]
    ,c.[Vendedor]
    ,c.[Moneda]
    ,c.[CondicionPago]
    ,COALESCE(c.[ZonaVenta], 'Not in source') as ZonaVenta
FROM [AutopartesO2025].[dbo].[Cliente] c
LEFT JOIN [AutopartesO2025].[dbo].[ClienteTipo] ct
	on c.ClienteTipo = ct.Clave