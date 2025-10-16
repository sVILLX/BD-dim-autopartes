ALTER PROCEDURE [dbo].[PoblarAutopartes] AS
BEGIN
	-- primero borramos los datos anteriores para no duplicar data
	DELETE [dbo].[fact_facturas]
	DELETE [dbo].[fact_entradas]
	DELETE [dbo].[fact_salidas]
	DELETE [dbo].[dim_articulos]
	DELETE [dbo].[dim_clientes]
	DELETE [dbo].[dim_condicion_pago]
	DELETE [dbo].[dim_medio_embarque]
	DELETE [dbo].[dim_moneda]
	DELETE [dbo].[dim_sub_facturas]
	DELETE [dbo].[dim_sub_entradas]
	DELETE [dbo].[dim_sub_salidas]
	DELETE [dbo].[dim_time]
	DELETE [dbo].[dim_vendedores]

	-- luego insertamos los datos

	INSERT INTO [dbo].[dim_articulos]
	EXEC [dbo].[dim_articulos_sp]
	PRINT 'Step 1: created [dim_articulos]'

	INSERT INTO [dbo].[dim_clientes]
	EXEC [dbo].[dim_clientes_sp]
	PRINT 'Step 1: created [dim_clientes]'

	INSERT INTO [dbo].[dim_condicion_pago]
	EXEC [dbo].[dim_condicion_pago_sp]
	PRINT 'Step 1: created [dim_condicion_pago]'

	INSERT INTO [dbo].[dim_medio_embarque]
	EXEC [dbo].[dim_medio_embarque_sp]
	PRINT 'Step 1: created [dim_medio_embarque]'

	INSERT INTO [dbo].[dim_moneda]
	EXEC [dbo].[dim_moneda_sp]
	PRINT 'Step 1: created [dim_moneda]'

	INSERT INTO [dbo].[dim_sub_facturas]
	EXEC [dbo].[dim_sub_facturas_sp]
	PRINT 'Step 1: created [dim_sub_facturas]'

	INSERT INTO [dbo].[dim_sub_entradas]
	EXEC [dbo].[dim_sub_entradas_sp]
	PRINT 'Step 1: created [dim_sub_entradas]'

	INSERT INTO [dbo].[dim_sub_salidas]
	EXEC [dbo].[dim_sub_salidas_sp]
	PRINT 'Step 1: created [dim_sub_salidas]'

	INSERT INTO [dbo].[dim_time]
	EXEC [dbo].[dim_time_sp]
	PRINT 'Step 1: created [dim_time]'

	INSERT INTO [dbo].[dim_vendedores]
	EXEC [dbo].[dim_vendedores_sp]
	PRINT 'Step 1: created [dim_vendedores]'

	INSERT INTO [dbo].[fact_facturas]
	EXEC [dbo].[fact_facturas_sp]
	PRINT 'Step 1: created [fact_facturas]'

	INSERT INTO [dbo].[fact_entradas]
	EXEC [dbo].[fact_entradas_sp]
	PRINT 'Step 1: created [fact_entradas]'

	INSERT INTO [dbo].[fact_salidas]
	EXEC [dbo].[fact_salidas_sp]
	PRINT 'Step 1: created [fact_salidas]'
END