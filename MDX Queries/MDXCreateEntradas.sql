CREATE GLOBAL CUBE [Entradas]
STORAGE 'C:\Temp\Autopartes_dim\Entradas.cub'
FROM [Entradas_cube]
(
    -- fact entradas
    MEASURE [Entradas_cube].[Almacen],
    MEASURE [Entradas_cube].[Cantidad],
    MEASURE [Entradas_cube].[Cantidad Partidas],
    MEASURE [Entradas_cube].[Cantidad U Med Inv],
    MEASURE [Entradas_cube].[Count Entradas],
    MEASURE [Entradas_cube].[Fact Entradas Count],
    MEASURE [Entradas_cube].[Partida],
    MEASURE [Entradas_cube].[Pct Descuento],
    MEASURE [Entradas_cube].[Pct Descuento Global],
    MEASURE [Entradas_cube].[Pct Impuesto],
    MEASURE [Entradas_cube].[Precio],
    MEASURE [Entradas_cube].[Total],
    MEASURE [Entradas_cube].[Total Descuento],
    MEASURE [Entradas_cube].[Total Descuento Detalle],
    MEASURE [Entradas_cube].[Total Detalle],
    MEASURE [Entradas_cube].[Total Importe],
    MEASURE [Entradas_cube].[Total Importe Detalle],
    MEASURE [Entradas_cube].[Total Impuesto],
    MEASURE [Entradas_cube].[Total Impuesto Detalle],
    MEASURE [Entradas_cube].[Ubicacion],

    -- dimensiones
    DIMENSION [Entradas_cube].[Dim Articulos 1],
    DIMENSION [Entradas_cube].[Dim Clientes 1],
    DIMENSION [Entradas_cube].[Dim Moneda 1],
    DIMENSION [Entradas_cube].[Dim Sub Entradas 1],
    DIMENSION [Entradas_cube].[Dim Time 1],
    DIMENSION [Entradas_cube].[Dim Vendedores 1]
)