ALTER PROCEDURE [dbo].[dim_vendedores_sp] AS
BEGIN
    SELECT 
        TRIM(v.[Clave]) as Clave
        ,v.[Nombre]
    FROM [AutopartesO2025].[dbo].[Vendedor] v
END