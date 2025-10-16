CREATE PROCEDURE dim_sub_entradas_sp AS
BEGIN
    SELECT
        TRIM(ee.[Folio]) as Folio
    FROM [AutopartesO2025].[dbo].[EntradaEncabezado] ee
END