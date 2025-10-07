ALTER PROCEDURE [dbo].[dim_vendedores_sp] AS
BEGIN
    SELECT 
        v.[Clave]
        ,v.[Nombre]
    FROM [AutopartesO2025].[dbo].[Vendedor] v
END