SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LocalesXContribuyente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LocalesXContribuyente](
	[RUC] [varchar](20) NULL,
	[Ubigeo] [varchar](50) NULL,
	[TipoVia] [varchar](50) NULL,
	[NombreVia] [varchar](50) NULL,
	[CodigoZona] [varchar](50) NULL,
	[TipoZona] [varchar](50) NULL,
	[Numero] [varchar](50) NULL,
	[Kilometro] [varchar](50) NULL,
	[Interior] [varchar](50) NULL,
	[Lote] [varchar](50) NULL,
	[Departamento] [varchar](50) NULL,
	[Manzana] [varchar](50) NULL,
	[Espacio] [varchar](10) NULL
) ON [PRIMARY]
END
GO
