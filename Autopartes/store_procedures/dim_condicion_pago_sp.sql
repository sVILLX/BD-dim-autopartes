ALTER PROCEDURE [dbo].[dim_condicion_pago_sp] AS
BEGIN
	SELECT
		cp.[Clave]
		,cp.[Descripcion]
	FROM [AutopartesO2025].[dbo].[CondicionPago] cp
END