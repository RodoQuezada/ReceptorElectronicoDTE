USE [BdMaestros]
GO
/****** Object:  Table [dbo].[TbMasAreas]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMasAreas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TbMasAreas](
	[ID] [int] NOT NULL,
	[CodArea] [varchar](50) NULL,
	[RutEmpresa] [nvarchar](50) NOT NULL,
	[Nombre] [nchar](50) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
	[AuditNoEliminar] [tinyint] NOT NULL,
	[AuditFechaCreacion] [datetime] NOT NULL,
	[AuditUltimaFechaActualiza] [datetime] NULL,
	[AuditUsuarioActualiza] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TbMasEmpresas]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMasEmpresas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TbMasEmpresas](
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[AuditFechaCreacion] [datetime] NOT NULL,
	[AuditUltimaFechaActualiza] [datetime] NULL,
	[ID] [tinyint] NOT NULL,
	[Rut] [nvarchar](50) NOT NULL,
	[AuditUsuarioActualiza] [nvarchar](50) NULL,
 CONSTRAINT [PK_TbMasEmpresas] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TbMasEstado]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMasEstado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TbMasEstado](
	[ID] [int] NOT NULL,
	[CodEstado] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
	[AuditNoEliminar] [tinyint] NOT NULL,
	[AuditFechaCreacion] [datetime] NOT NULL,
	[AuditUltimaFechaActualiza] [datetime] NULL,
	[AuditUsuarioActualiza] [nvarchar](50) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TbMasNombreEval]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMasNombreEval]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TbMasNombreEval](
	[ID] [int] NOT NULL,
	[CodNombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](150) NULL,
	[AuditUsuarioActualiza] [nvarchar](50) NULL,
	[AuditUltimaFechaActu] [datetime] NULL,
	[AuditFechaCreacion] [datetime] NOT NULL,
	[AuditNoEliminar] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TbMasProveedores]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMasProveedores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TbMasProveedores](
	[ID] [int] NOT NULL,
	[Rut] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Fono] [nvarchar](50) NULL,
	[Direccion] [nvarchar](150) NULL,
	[Correo] [nvarchar](50) NULL,
	[CodEstado] [nvarchar](50) NOT NULL,
	[AuditNoEliminar] [tinyint] NOT NULL,
	[AuditUltimaFechaActualiza] [datetime] NULL,
	[AuditFechaCreacion] [datetime] NOT NULL,
	[AuditUsuarioActualiza] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TbMasSucursal]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMasSucursal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TbMasSucursal](
	[ID] [int] NOT NULL,
	[RutEmpresa] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Descripcion] [nvarchar](150) NULL,
	[Direccion] [nvarchar](250) NULL,
	[AuditNoEliminar] [tinyint] NOT NULL,
	[AuditFechaCreacion] [datetime] NOT NULL,
	[AuditUltimaFechaActualiza] [datetime] NULL,
	[AuditUsuarioActualiza] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TbMasUsuario]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TbMasUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TbMasUsuario](
	[ID] [int] NOT NULL,
	[Rut] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Cargo] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](50) NOT NULL,
	[CodEstado] [nvarchar](50) NOT NULL,
	[CodSucursal] [nvarchar](50) NOT NULL,
	[AuditNoEliminar] [tinyint] NOT NULL,
	[AuditFechaCreacion] [datetime] NOT NULL,
	[AuditUltimaFechaActualiza] [datetime] NULL,
	[AuditUsuarioActualiza] [nvarchar](50) NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[TbMasEmpresas] ([Nombre], [Descripcion], [AuditFechaCreacion], [AuditUltimaFechaActualiza], [ID], [Rut], [AuditUsuarioActualiza]) VALUES (N'Empresa 1', N'Empresa 1', CAST(N'2019-01-01T00:00:00.000' AS DateTime), NULL, 1, N'Empresa 1', NULL)
/****** Object:  StoredProcedure [dbo].[sp_maestros_empresa_insert]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_maestros_empresa_insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_maestros_empresa_insert] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_maestros_empresa_insert]
(
@Rut nvarchar(50) = null,
@Nombre nvarchar(50) = null,
@Descripcion nvarchar(50) = null,
@AuditFechaCreacion DateTime, 
@AuditUltimaFechaActualiza DateTime,
@AuditUsuarioActualiza nvarchar(50) = null
)	

AS
BEGIN

	INSERT INTO [dbo].[TbMasEmpresas]
	(
	Rut,
	Nombre,
	Descripcion,
	AuditFechaCreacion,
	AuditUltimaFechaActualiza,
	AuditUsuarioActualiza
	)
	VALUES (
	@Rut,
	@Nombre,
	@Descripcion,
	@AuditFechaCreacion,
	@AuditUltimaFechaActualiza,
	@AuditUsuarioActualiza)

	  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al insertar un Grupo de Evaluacion',16,1)
    RETURN -1
   END

     RETURN 0
 END
SET ANSI_NULLS ON
GO
/****** Object:  StoredProcedure [dbo].[sp_maestros_empresa_selectAll]    Script Date: 03-01-2020 21:43:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_maestros_empresa_selectAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_maestros_empresa_selectAll] AS' 
END
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_maestros_empresa_selectAll]
(
@variable varchar(25) = null
)
AS
BEGIN
	SET NOCOUNT ON;
  
	SELECT ID,
	 Rut,
	 Nombre,
	 Descripcion,
	 AuditFechaCreacion,
	 AuditUltimaFechaActualiza,
	 AuditUsuarioActualiza
	FROM [dbo].[TbMasEmpresas]

	 RETURN 0  
 END
SET ANSI_NULLS ON
GO
