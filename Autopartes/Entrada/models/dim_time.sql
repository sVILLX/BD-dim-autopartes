SELECT
	DISTINCT
	CAST(CONVERT(varchar(8), ee.Fecha, 112) as int) as TimeID
	,YEAR(ee.Fecha) as Year_
	,MONTH(ee.Fecha) as Month_
	,DAY(ee.Fecha) as Day_
	,DATEPART(QUARTER, ee.Fecha) as Trimestre
	,CEILING(MONTH(ee.Fecha) / 6.0) as Semestre
	,CEILING(MONTH(ee.Fecha) / 4.0) as Cuatrimestre
	,DATEPART(WEEKDAY, ee.Fecha) as DiaSemanaNumero
	,DATENAME(WEEKDAY, ee.Fecha) as DiaSemanaNombre
	,ee.Fecha
FROM [AutopartesO2025].[dbo].EntradaEncabezado ee;
