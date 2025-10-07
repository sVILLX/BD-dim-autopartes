CREATE TABLE dim_articulos (
	clave NVARCHAR(50),
	Descripcion NVARCHAR(100),
	ArticuloTipo NVARCHAR(50),
	ArticuloGrupo NVARCHAR(50),
	ArticuloClase NVARCHAR(50),
	Almacenable NVARCHAR(50),
	Identificacion NVARCHAR(50),
	UMevInv NVARCHAR(50),
	UMedVta NVARCHAR(50),
	UMedCpa NVARCHAR(50),
	Moneda NVARCHAR(50),
	Precio MONEY,
	pctDescuento MONEY,
	UbicacionAlmacen NVARCHAR(50),
	UbicacionClave NVARCHAR(50)
)