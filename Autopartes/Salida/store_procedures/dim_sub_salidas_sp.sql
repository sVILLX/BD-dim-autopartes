CREATE PROCEDURE dim_sub_salidas_sp AS
BEGIN
    SELECT
        TRIM(se.Folio) as Folio
    FROM [AutopartesO2025].[dbo].[SalidaEncabezado] se
END