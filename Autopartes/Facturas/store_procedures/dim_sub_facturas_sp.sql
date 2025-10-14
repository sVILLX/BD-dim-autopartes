ALTER PROCEDURE [dbo].[dim_sub_facturas_sp] AS
BEGIN
    SELECT
        TRIM(fe.[Folio]) as Folio
    FROM [AutopartesO2025].[dbo].[FacturaEncabezado] fe
END