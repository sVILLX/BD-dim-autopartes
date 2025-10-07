SELECT
	DISTINCT
	CAST(CONVERT(varchar(8), fe.Fecha, 112) as int) as TimeID
	,YEAR(fe.Fecha) as Year_
	,MONTH(fe.Fecha) as Month_
	,DAY(fe.Fecha) as Day_
	,DATEPART(QUARTER, fe.Fecha) as Trimestre
	,CEILING(MONTH(fe.Fecha) / 4.0) as Cuatrimestre
	,CEILING(MONTH(fe.Fecha) / 6.0) as Semestre
	,DATEPART(WEEKDAY, fe.Fecha) as DiaSemanaNumero
	,DATENAME(WEEKDAY, fe.Fecha) as DiaSemanaNombre
	,fe.Fecha
FROM [AutopartesO2025].[dbo].FacturaEncabezado fe;
