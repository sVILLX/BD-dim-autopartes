CREATE GLOBAL CUBE [Salidas]
STORAGE 'C:\Temp\Autopartes_dim\Salidas.cub'
FROM [Salidas_cube]
(
    -- fact salidas
    MEASURE [Salidas_cube].[Almacen],
    MEASURE [Salidas_cube].[Cantidad],
    MEASURE [Salidas_cube].[Cantidad Partidas],
    MEASURE [Salidas_cube].[Cantidad U Med Inv],
    MEASURE [Salidas_cube].[Count Salidas],
    MEASURE [Salidas_cube].[Fact Salidas Count],
    MEASURE [Salidas_cube].[Partida],
    MEASURE [Salidas_cube].[Pct Descuento],
    MEASURE [Salidas_cube].[Pct Descuento Global],
    MEASURE [Salidas_cube].[Pct Impuesto],
    MEASURE [Salidas_cube].[Precio],
    MEASURE [Salidas_cube].[Total],
    MEASURE [Salidas_cube].[Total Descuento],
    MEASURE [Salidas_cube].[Total Descuento Detalle],
    MEASURE [Salidas_cube].[Total Detalle],
    MEASURE [Salidas_cube].[Total Importe],
    MEASURE [Salidas_cube].[Total Importe Detalle],
    MEASURE [Salidas_cube].[Total Impuesto],
    MEASURE [Salidas_cube].[Total Impuesto Detalle],
    MEASURE [Salidas_cube].[Ubicacion],

    -- dimensiones
    DIMENSION [Salidas_cube].[Dim Articulos 3],
    DIMENSION [Salidas_cube].[Dim Clientes 3],
    DIMENSION [Salidas_cube].[Dim Condicion Pago 2],
    DIMENSION [Salidas_cube].[Dim Medio Embarque 2],
    DIMENSION [Salidas_cube].[Dim Moneda 3],
    DIMENSION [Salidas_cube].[Dim Sub Salidas 1],
    DIMENSION [Salidas_cube].[Dim Time 3],
    DIMENSION [Salidas_cube].[Dim Vendedores 3]
)