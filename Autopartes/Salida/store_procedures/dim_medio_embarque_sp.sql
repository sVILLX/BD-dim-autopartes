ALTER PROCEDURE [dbo].[dim_medio_embarque_sp] AS
BEGIN
    SELECT
        TRIM(me.[Clave]) as Clave
        ,me.[Descripcion]
    FROM [AutopartesO2025].[dbo].[MedioEmbarque] me
    UNION ALL 
    SELECT 'Not in source', 'N/A'
END