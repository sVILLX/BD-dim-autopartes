CREATE GLOBAL CUBE [Facturas]
STORAGE 'C:\Temp\Autopartes_dim\Facturas.cub'
FROM [Facturas_cube]
(
    -- fact facturas
    MEASURE [Facturas_cube].[Almacen],
    MEASURE [Facturas_cube].[Cantidad],
    MEASURE [Facturas_cube].[Cantidad Partidas],
    MEASURE [Facturas_cube].[Cantidad U Med Inv],
    MEASURE [Facturas_cube].[Count Facturas],
    MEASURE [Facturas_cube].[Fact Facturas Count],
    MEASURE [Facturas_cube].[Partida],
    MEASURE [Facturas_cube].[Pct Descuento],
    MEASURE [Facturas_cube].[Pct Descuento Global],
    MEASURE [Facturas_cube].[Pct Impuesto],
    MEASURE [Facturas_cube].[Precio],
    MEASURE [Facturas_cube].[Rac IVA],
    MEASURE [Facturas_cube].[Total Descuento Detalle],
    MEASURE [Facturas_cube].[Total Descuento Factura],
    MEASURE [Facturas_cube].[Total Detalle],
    MEASURE [Facturas_cube].[Total Factura],
    MEASURE [Facturas_cube].[Total Importe Detalle],
    MEASURE [Facturas_cube].[Total Importe Factura],
    MEASURE [Facturas_cube].[Total Impuesto Detalle],
    MEASURE [Facturas_cube].[Total Retencion],

    -- dimensiones
    DIMENSION [Facturas_cube].[Dim Articulos 2],
    DIMENSION [Facturas_cube].[Dim Clientes 2],
    DIMENSION [Facturas_cube].[Dim Condicion Pago 1],
    DIMENSION [Facturas_cube].[Dim Medio Embarque 1],
    DIMENSION [Facturas_cube].[Dim Moneda 2],
    DIMENSION [Facturas_cube].[Dim Sub Facturas 1],
    DIMENSION [Facturas_cube].[Dim Time 2],
    DIMENSION [Facturas_cube].[Dim Vendedores 2]
)