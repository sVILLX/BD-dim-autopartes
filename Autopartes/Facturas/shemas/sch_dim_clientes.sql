CREATE TABLE dim_clientes (
		Clave INT,
		RazonSocial NVARCHAR(50),
		CalleNumero NVARCHAR(50),
		Colonia NVARCHAR(50),
		Ciudad NVARCHAR(50),
		Estado INT,
		Pais INT,
		CodigoPostal NVARCHAR(50),
		ClienteTipo NVARCHAR(50),
		ClienteGrupo NVARCHAR(50),
		Vendedor INT,
		Moneda NVARCHAR(50),
		CondicionPago NVARCHAR(50),
		ZonaVenta NVARCHAR(50)
)