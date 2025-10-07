ALTER PROCEDURE [dbo].[dim_sub_facturas_sp] AS
BEGIN
    SELECT
        fe.[Folio]
    FROM [AutopartesO2025].[dbo].[FacturaEncabezado] fe
END