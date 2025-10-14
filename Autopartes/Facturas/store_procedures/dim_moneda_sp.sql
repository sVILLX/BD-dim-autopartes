CREATE PROCEDURE dim_moneda_sp AS
BEGIN
    SELECT
        TRIM([Clave]) as Clave
        ,TRIM([Descripcion]) as Descripcion
        ,TRIM([Tipo]) as Tipo
    FROM [AutopartesO2025].[dbo].[Moneda]
END 