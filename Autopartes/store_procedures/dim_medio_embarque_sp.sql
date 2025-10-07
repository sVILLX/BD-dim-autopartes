ALTER PROCEDURE [dbo].[dim_medio_embarque_sp] AS
BEGIN
    SELECT
        me.[Clave]
        ,me.[Descripcion]
    FROM [AutopartesO2025].[dbo].[MedioEmbarque] me
END