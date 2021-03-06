SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contribuyentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Contribuyentes](
	[RUC] [varchar](20) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Estado] [varchar](50) NULL,
	[Condicion] [varchar](50) NULL,
	[Ubigeo] [varchar](20) NULL,
	[TipoVia] [varchar](50) NULL,
	[NombreVia] [varchar](50) NULL,
	[CodigoZona] [varchar](50) NULL,
	[TipoZona] [varchar](50) NULL,
	[Numero] [varchar](50) NULL,
	[Interior] [varchar](50) NULL,
	[Lote] [varchar](50) NULL,
	[Departamento] [varchar](50) NULL,
	[Manzana] [varchar](50) NULL,
	[Kilometro] [varchar](50) NULL,
	[Espacio] [varchar](10) NULL
 CONSTRAINT [PK_Contribuyentes] PRIMARY KEY CLUSTERED 
(
	[RUC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Contribuyentes]') AND name = N'IX_Contribuyentes')
CREATE NONCLUSTERED INDEX [IX_Contribuyentes] ON [dbo].[Contribuyentes]
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
