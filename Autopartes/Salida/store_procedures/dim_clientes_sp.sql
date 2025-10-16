ALTER PROCEDURE [dbo].[dim_clientes_sp] AS
BEGIN
    SELECT
        TRIM(c.[Clave]) as Clave
        ,COALESCE(NULLIF('',c.[RazonSocial]), 'Not in source') as RazonSocial
        ,COALESCE(NULLIF('',c.[CalleNumero]), 'Not in source') as CalleNumero
        ,COALESCE(c.[Colonia], 'Not in source') as Colonia
        ,TRIM(c.[Ciudad]) as Ciudad
        ,TRIM(c.[Estado]) as Estado
        ,TRIM(c.[Pais]) Pais
        ,CASE   
            WHEN c.[CodigoPostal] IS NULL OR c.[CodigoPostal] = '' THEN 'Not in source'
            ELSE c.[CodigoPostal]
        END AS CodigoPostal
        ,ct.[Descripcion] as ClienteTipo
        ,TRIM(c.[ClienteGrupo]) as ClienteGrupo
        ,TRIM(c.[Vendedor]) as Vendedor
        ,TRIM(c.[Moneda]) as Moneda
        ,TRIM(c.[CondicionPago]) as CondicionPago
        ,COALESCE(TRIM(c.[ZonaVenta]), 'Not in source') as ZonaVenta
    FROM [AutopartesO2025].[dbo].[Cliente] c
    LEFT JOIN [AutopartesO2025].[dbo].[ClienteTipo] ct
        on c.ClienteTipo = ct.Clave
    UNION ALL 
    SELECT 'Not in source', 'N/A', 'N/A', 'N/A', 'N/A', -1, -1, 'N/A', 'N/A', 'N/A', -1, 'N/A', 'N/A', 'N/A'
END