ALTER PROCEDURE [dbo].[dim_condicion_pago_sp] AS
BEGIN
	SELECT
		TRIM(cp.[Clave]) as Clave
		,cp.[Descripcion]
	FROM [AutopartesO2025].[dbo].[CondicionPago] cp
	UNION ALL 
	SELECT 'Not in source', 'N/A'
END