USE [BdPedd]
GO
/****** Object:  Table [dbo].[tbPeddAreaFuncional]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddAreaFuncional]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddAreaFuncional](
	[IdAreaFuncional] [int] IDENTITY(1,1) NOT NULL,
	[IdCompania] [int] NOT NULL,
	[NomArea] [varchar](120) NOT NULL,
	[DirArea] [varchar](200) NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_AreaFuncional] PRIMARY KEY CLUSTERED 
(
	[IdAreaFuncional] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddCabEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddCabEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddCabEvaluacion](
	[IdCabEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCompania] [int] NOT NULL,
	[NomEvaluacion] [varchar](200) NOT NULL,
	[DesEvaluacion] [varchar](2000) NULL,
	[InsEvaluacion] [varchar](2000) NULL,
	[dfInicio] [datetime] NOT NULL,
	[dfTermino] [datetime] NOT NULL,
	[IdTipoEvaluacion] [int] NOT NULL,
	[IdCompSucAreDep] [int] NOT NULL,
	[IdEstado] [tinyint] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddCargo]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddCargo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddCargo](
	[IdCargo] [smallint] IDENTITY(1,1) NOT NULL,
	[IdGrupoCargo] [smallint] NOT NULL,
	[NomCargo] [varchar](120) NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_Cargo] PRIMARY KEY CLUSTERED 
(
	[IdCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddCompania]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddCompania]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddCompania](
	[IdCompania] [int] IDENTITY(1,1) NOT NULL,
	[RutCompania] [int] NOT NULL,
	[DvCompania] [char](1) NOT NULL,
	[NomCompania] [varchar](120) NOT NULL,
	[GiroCompania] [varchar](200) NOT NULL,
	[DirCompania] [varchar](200) NOT NULL,
	[FonoCompania] [varchar](15) NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_Compania] PRIMARY KEY CLUSTERED 
(
	[IdCompania] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddDepartamento]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddDepartamento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddDepartamento](
	[IdDepartamento] [int] IDENTITY(1,1) NOT NULL,
	[IdAreaFuncional] [int] NOT NULL,
	[NomDepartamento] [varchar](120) NOT NULL,
	[DirDepartamento] [varchar](200) NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_Departamento] PRIMARY KEY CLUSTERED 
(
	[IdDepartamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddDetObjetivoEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddDetObjetivoEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddDetObjetivoEvaluacion](
	[IdDetObjetivoEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdObjetivoEvaluacion] [int] NOT NULL,
	[NomOjetivo] [varchar](90) NOT NULL,
	[DesOjetivo] [varchar](2000) NOT NULL,
	[MetEsperada] [varchar](2000) NOT NULL,
	[MetExcepcional] [varchar](2000) NOT NULL,
	[PondObjetivo] [tinyint] NOT NULL,
	[NotaObjetivo] [tinyint] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_DetObjetivoEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdDetObjetivoEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddEmpleado]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddEmpleado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddEmpleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[IdCompania] [int] NOT NULL,
	[IdSucursal] [int] NULL,
	[IdAreaFuncional] [int] NULL,
	[IdDepartamento] [int] NULL,
	[IdCargo] [smallint] NOT NULL,
	[RutEmpleado] [int] NOT NULL,
	[DvEmpleado] [char](1) NOT NULL,
	[NomEmpleado] [varchar](60) NOT NULL,
	[AplPatEmpleado] [varchar](30) NOT NULL,
	[AplMatEmpleado] [varchar](30) NOT NULL,
	[EmailEmpleado] [varchar](60) NOT NULL,
	[flgEvaluador] [bit] NOT NULL,
	[flgEvaluado] [bit] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddEstado]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddEstado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddEstado](
	[IdEstado] [tinyint] IDENTITY(1,1) NOT NULL,
	[CodEstado] [varchar](5) NOT NULL,
	[NomEstado] [varchar](60) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddFaseEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddFaseEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddFaseEvaluacion](
	[IdFaseEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCabEvaluacion] [int] NOT NULL,
	[IdTipoFaseEval] [int] NOT NULL,
	[dfInicio] [datetime] NOT NULL,
	[dfTermino] [datetime] NOT NULL,
	[NumOrden] [smallint] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_FaseEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdFaseEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddGrupoCargo]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddGrupoCargo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddGrupoCargo](
	[IdGrupoCargo] [smallint] IDENTITY(1,1) NOT NULL,
	[NomGrupoCargo] [varchar](120) NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_GrupoCargo] PRIMARY KEY CLUSTERED 
(
	[IdGrupoCargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddGrupoEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddGrupoEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddGrupoEvaluacion](
	[IdGrupoEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCabEvaluacion] [int] NOT NULL,
	[IdEvaluador] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdEstado] [tinyint] NULL,
 CONSTRAINT [PK_GrupoEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdGrupoEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddGrupoOpcRespuesta]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddGrupoOpcRespuesta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddGrupoOpcRespuesta](
	[IdGrupoOpcRespuesta] [smallint] IDENTITY(1,1) NOT NULL,
	[IdTipoRespuesta] [smallint] NOT NULL,
	[NomGrupoOpcRespuesta] [varchar](120) NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PKGrupoOpcRespuesta] PRIMARY KEY CLUSTERED 
(
	[IdGrupoOpcRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddObjetivoEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddObjetivoEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddObjetivoEvaluacion](
	[IdObjetivoEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCabEvaluacion] [int] NOT NULL,
	[IdEvaluador] [int] NOT NULL,
	[IdEvaluado] [int] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_ObjetivoEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdObjetivoEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddOpcRespuesta]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddOpcRespuesta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddOpcRespuesta](
	[IdOpcRespuesta] [smallint] IDENTITY(1,1) NOT NULL,
	[IdGrupoOpcRespuesta] [smallint] NOT NULL,
	[NomTipoRespuesta] [varchar](120) NOT NULL,
	[NumPuntaje] [tinyint] NOT NULL,
	[NumOrden] [tinyint] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_OpcRespuesta] PRIMARY KEY CLUSTERED 
(
	[IdOpcRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddParticipanteEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddParticipanteEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddParticipanteEvaluacion](
	[IdParticipanteEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdCabEvaluacion] [int] NOT NULL,
	[IdTipoParticipante] [tinyint] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_ParticipanteEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdParticipanteEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddRespEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddRespEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddRespEvaluacion](
	[IdRespEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[IdEvaluacion] [int] NOT NULL,
	[IdDetEvaluacion] [int] NOT NULL,
	[IdEmpleado] [int] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_RespEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdRespEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddSucursal]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddSucursal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddSucursal](
	[IdSucursal] [int] IDENTITY(1,1) NOT NULL,
	[IdCompania] [int] NOT NULL,
	[NomSucursal] [varchar](120) NOT NULL,
	[DirSucursal] [varchar](200) NOT NULL,
	[FonoCompania] [varchar](15) NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_Sucursal] PRIMARY KEY CLUSTERED 
(
	[IdSucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddTipoEvaluacion]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddTipoEvaluacion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddTipoEvaluacion](
	[IdTipoEvaluacion] [int] IDENTITY(1,1) NOT NULL,
	[NomTipoEvaluacion] [varchar](60) NOT NULL,
	[DesTipoEvaluacion] [varchar](2000) NOT NULL,
	[IdEstado] [tinyint] NULL,
 CONSTRAINT [PK_TipoEvaluacion] PRIMARY KEY CLUSTERED 
(
	[IdTipoEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddTipoFaseEval]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddTipoFaseEval]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddTipoFaseEval](
	[IdTipoFaseEval] [int] IDENTITY(1,1) NOT NULL,
	[NomTipoFaseEval] [varchar](60) NOT NULL,
	[NomLargoTipoFaseEval] [varchar](160) NOT NULL,
	[DesTipoFaseEval] [varchar](2000) NOT NULL,
	[NumOrden] [tinyint] NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoFaseEval] PRIMARY KEY CLUSTERED 
(
	[IdTipoFaseEval] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddTipoParticipante]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddTipoParticipante]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddTipoParticipante](
	[IdTipoParticipante] [tinyint] IDENTITY(1,1) NOT NULL,
	[NomParticipante] [varchar](30) NOT NULL,
	[DesParticipante] [varchar](600) NOT NULL,
	[IdEstado] [tinyint] NOT NULL,
 CONSTRAINT [PK_TipoParticipante] PRIMARY KEY CLUSTERED 
(
	[IdTipoParticipante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[tbPeddTipoRespuesta]    Script Date: 03-01-2020 21:28:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddTipoRespuesta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tbPeddTipoRespuesta](
	[IdTipoRespuesta] [smallint] IDENTITY(1,1) NOT NULL,
	[NomTipoRespuesta] [varchar](60) NOT NULL,
	[DesTipoRespuesta] [varchar](2000) NOT NULL,
 CONSTRAINT [PK_TipoRespuesta] PRIMARY KEY CLUSTERED 
(
	[IdTipoRespuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[tbPeddAreaFuncional] ON 

INSERT [dbo].[tbPeddAreaFuncional] ([IdAreaFuncional], [IdCompania], [NomArea], [DirArea], [IdEstado]) VALUES (1, 1, N'INFORMATICA', N'Blanco 444, 3er piso.', 1)
SET IDENTITY_INSERT [dbo].[tbPeddAreaFuncional] OFF
SET IDENTITY_INSERT [dbo].[tbPeddCabEvaluacion] ON 

INSERT [dbo].[tbPeddCabEvaluacion] ([IdCabEvaluacion], [IdCompania], [NomEvaluacion], [DesEvaluacion], [InsEvaluacion], [dfInicio], [dfTermino], [IdTipoEvaluacion], [IdCompSucAreDep], [IdEstado]) VALUES (1, 1, N'EVALUACION 2019', N'Evaluacion para toda la Empresa', N'Se debe seguir las fases indicadasssss', CAST(N'2019-01-10T00:00:00.000' AS DateTime), CAST(N'2019-12-31T00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tbPeddCabEvaluacion] ([IdCabEvaluacion], [IdCompania], [NomEvaluacion], [DesEvaluacion], [InsEvaluacion], [dfInicio], [dfTermino], [IdTipoEvaluacion], [IdCompSucAreDep], [IdEstado]) VALUES (2, 1, N'EVALUACION 2019 SUCURSAL', N'DVGNNCBVCVC', N'ZVFCVNCVCVCVBVCN', CAST(N'2019-03-05T00:00:00.000' AS DateTime), CAST(N'2019-08-20T00:00:00.000' AS DateTime), 4, 0, 1)
INSERT [dbo].[tbPeddCabEvaluacion] ([IdCabEvaluacion], [IdCompania], [NomEvaluacion], [DesEvaluacion], [InsEvaluacion], [dfInicio], [dfTermino], [IdTipoEvaluacion], [IdCompSucAreDep], [IdEstado]) VALUES (3, 1, N'EVALUACION BIENESTAR 2019', N'wwertyjn sdgfgjnf djjhfdh', N'dbdf 3485 fdgnfgkbjsnjkgnd', CAST(N'2019-04-01T00:00:00.000' AS DateTime), CAST(N'2019-12-26T00:00:00.000' AS DateTime), 3, 0, 1)
INSERT [dbo].[tbPeddCabEvaluacion] ([IdCabEvaluacion], [IdCompania], [NomEvaluacion], [DesEvaluacion], [InsEvaluacion], [dfInicio], [dfTermino], [IdTipoEvaluacion], [IdCompSucAreDep], [IdEstado]) VALUES (4, 1, N'EVALUACION SISTEMAS 2019', N'evaluacion para el area Sistemas', N'se debe seguir el proceso segun las fases indicadas', CAST(N'2019-04-05T00:00:00.000' AS DateTime), CAST(N'2019-12-28T00:00:00.000' AS DateTime), 2, 1, 1)
INSERT [dbo].[tbPeddCabEvaluacion] ([IdCabEvaluacion], [IdCompania], [NomEvaluacion], [DesEvaluacion], [InsEvaluacion], [dfInicio], [dfTermino], [IdTipoEvaluacion], [IdCompSucAreDep], [IdEstado]) VALUES (5, 1, N'EVALUACION', N'Evaluacion para toda la sucursal', N'continuar segun procedimiento indicado', CAST(N'2019-03-05T00:00:00.000' AS DateTime), CAST(N'2019-08-20T00:00:00.000' AS DateTime), 4, 0, 1)
SET IDENTITY_INSERT [dbo].[tbPeddCabEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[tbPeddCargo] ON 

INSERT [dbo].[tbPeddCargo] ([IdCargo], [IdGrupoCargo], [NomCargo], [IdEstado]) VALUES (1, 1, N'GERENTE GENERAL', 1)
INSERT [dbo].[tbPeddCargo] ([IdCargo], [IdGrupoCargo], [NomCargo], [IdEstado]) VALUES (2, 1, N'GERENTE FINANZAS', 1)
INSERT [dbo].[tbPeddCargo] ([IdCargo], [IdGrupoCargo], [NomCargo], [IdEstado]) VALUES (3, 1, N'GERENTE DE INFORMATICA', 1)
INSERT [dbo].[tbPeddCargo] ([IdCargo], [IdGrupoCargo], [NomCargo], [IdEstado]) VALUES (4, 1, N'GERENTE DE RRHH', 1)
SET IDENTITY_INSERT [dbo].[tbPeddCargo] OFF
SET IDENTITY_INSERT [dbo].[tbPeddCompania] ON 

INSERT [dbo].[tbPeddCompania] ([IdCompania], [RutCompania], [DvCompania], [NomCompania], [GiroCompania], [DirCompania], [FonoCompania], [IdEstado]) VALUES (1, 76285098, N'2', N'D&S Contnedores', N'Deposito Contenedores', N'Bernardo OHiggins 388, Valparaiso', N'(32)2513300', 1)
INSERT [dbo].[tbPeddCompania] ([IdCompania], [RutCompania], [DvCompania], [NomCompania], [GiroCompania], [DirCompania], [FonoCompania], [IdEstado]) VALUES (2, 12227166, N'8', N'VCI', N'BODEGAJE', N'ASDHJKMNBVC', N'256765', 1)
SET IDENTITY_INSERT [dbo].[tbPeddCompania] OFF
SET IDENTITY_INSERT [dbo].[tbPeddDepartamento] ON 

INSERT [dbo].[tbPeddDepartamento] ([IdDepartamento], [IdAreaFuncional], [NomDepartamento], [DirDepartamento], [IdEstado]) VALUES (1, 1, N'DESARROLLO SISTEMAS', N'Blanco 444, 3er piso.', 1)
INSERT [dbo].[tbPeddDepartamento] ([IdDepartamento], [IdAreaFuncional], [NomDepartamento], [DirDepartamento], [IdEstado]) VALUES (2, 1, N'INFRAESTRUCTURA', N'Blanco 444, 3er piso.', 1)
SET IDENTITY_INSERT [dbo].[tbPeddDepartamento] OFF
SET IDENTITY_INSERT [dbo].[tbPeddDetObjetivoEvaluacion] ON 

INSERT [dbo].[tbPeddDetObjetivoEvaluacion] ([IdDetObjetivoEvaluacion], [IdObjetivoEvaluacion], [NomOjetivo], [DesOjetivo], [MetEsperada], [MetExcepcional], [PondObjetivo], [NotaObjetivo], [IdEstado]) VALUES (1, 1, N'Desarrollar Sistema Bienestar RRHH', N'El Sistema de Bienestar debe ser desarrollado para el area de RRHH, siguiendo las especificaciones indicadas.', N'Desarrollar el sistema de Bienestar antes de terminar el mes de noviembre de 2019', N'Desarrollar el sistema de Bienestar antes de comenzar el mes de noviembre de 2019', 50, 95, 1)
INSERT [dbo].[tbPeddDetObjetivoEvaluacion] ([IdDetObjetivoEvaluacion], [IdObjetivoEvaluacion], [NomOjetivo], [DesOjetivo], [MetEsperada], [MetExcepcional], [PondObjetivo], [NotaObjetivo], [IdEstado]) VALUES (2, 1, N'Modificacion Sistema Maestros', N'Introducir cambios en Maestros de acuerdo a Gantt entregada en abril 2019', N'Desarrollar dichos cambios entre  mayo y julio 2019', N'Desarrollar dichos cambios entre  mayo y junio 2019', 25, 89, 1)
SET IDENTITY_INSERT [dbo].[tbPeddDetObjetivoEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[tbPeddEmpleado] ON 

INSERT [dbo].[tbPeddEmpleado] ([IdEmpleado], [IdCompania], [IdSucursal], [IdAreaFuncional], [IdDepartamento], [IdCargo], [RutEmpleado], [DvEmpleado], [NomEmpleado], [AplPatEmpleado], [AplMatEmpleado], [EmailEmpleado], [flgEvaluador], [flgEvaluado], [IdEstado]) VALUES (1, 1, 1, 1, 1, 0, 12227166, N'8', N'VICTOR', N'CONCHA', N'ITURRA', N'admin@dycsa.com', 1, 1, 1)
INSERT [dbo].[tbPeddEmpleado] ([IdEmpleado], [IdCompania], [IdSucursal], [IdAreaFuncional], [IdDepartamento], [IdCargo], [RutEmpleado], [DvEmpleado], [NomEmpleado], [AplPatEmpleado], [AplMatEmpleado], [EmailEmpleado], [flgEvaluador], [flgEvaluado], [IdEstado]) VALUES (2, 1, 1, 1, 1, 0, 1111111, N'1', N'ANDRES', N'CAMILLA', N'GOMEZ', N'andres.camilla@gmail.com', 0, 1, 1)
INSERT [dbo].[tbPeddEmpleado] ([IdEmpleado], [IdCompania], [IdSucursal], [IdAreaFuncional], [IdDepartamento], [IdCargo], [RutEmpleado], [DvEmpleado], [NomEmpleado], [AplPatEmpleado], [AplMatEmpleado], [EmailEmpleado], [flgEvaluador], [flgEvaluado], [IdEstado]) VALUES (3, 1, 1, 1, 1, 0, 2222222, N'2', N'MARCELO', N'ROJAS', N'GONZALEZ', N'marcelo.rojas@gmail.com', 0, 1, 1)
INSERT [dbo].[tbPeddEmpleado] ([IdEmpleado], [IdCompania], [IdSucursal], [IdAreaFuncional], [IdDepartamento], [IdCargo], [RutEmpleado], [DvEmpleado], [NomEmpleado], [AplPatEmpleado], [AplMatEmpleado], [EmailEmpleado], [flgEvaluador], [flgEvaluado], [IdEstado]) VALUES (4, 1, 1, 1, 1, 0, 3333333, N'3', N'ENZO', N'BADILLO', N'ZUÑIGA', N'enzo.badillo@gmail.com', 0, 1, 1)
SET IDENTITY_INSERT [dbo].[tbPeddEmpleado] OFF
SET IDENTITY_INSERT [dbo].[tbPeddEstado] ON 

INSERT [dbo].[tbPeddEstado] ([IdEstado], [CodEstado], [NomEstado]) VALUES (1, N'VGT', N'VIGENTE')
INSERT [dbo].[tbPeddEstado] ([IdEstado], [CodEstado], [NomEstado]) VALUES (2, N'NVGT', N'NO VIGENTE')
SET IDENTITY_INSERT [dbo].[tbPeddEstado] OFF
SET IDENTITY_INSERT [dbo].[tbPeddFaseEvaluacion] ON 

INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (1, 1, 1, CAST(N'2019-07-04T00:00:00.000' AS DateTime), CAST(N'2019-07-05T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (3, 1, 3, CAST(N'2019-07-05T00:00:00.000' AS DateTime), CAST(N'2019-07-05T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (8, 2, 1, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (9, 2, 2, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (10, 2, 3, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 3, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (11, 2, 4, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 4, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (12, 2, 5, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 5, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (13, 2, 6, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 6, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (14, 2, 7, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 7, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (15, 2, 8, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 8, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (1011, 3, 4, CAST(N'2019-06-03T00:00:00.000' AS DateTime), CAST(N'2019-07-01T00:00:00.000' AS DateTime), 1, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (1012, 3, 5, CAST(N'2019-08-01T00:00:00.000' AS DateTime), CAST(N'2019-08-31T00:00:00.000' AS DateTime), 2, 1)
INSERT [dbo].[tbPeddFaseEvaluacion] ([IdFaseEvaluacion], [IdCabEvaluacion], [IdTipoFaseEval], [dfInicio], [dfTermino], [NumOrden], [IdEstado]) VALUES (1013, 3, 7, CAST(N'2019-10-01T00:00:00.000' AS DateTime), CAST(N'2019-11-01T00:00:00.000' AS DateTime), 3, 1)
SET IDENTITY_INSERT [dbo].[tbPeddFaseEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[tbPeddGrupoCargo] ON 

INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (1, N'GERENTES', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (2, N'JEFES', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (3, N'ADMINISTRATIVOS', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (4, N'DIRECTORES', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (5, N'SUBGERENTES', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (6, N'SECRETARIAS', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (7, N'AGENTES', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (8, N'OPERADORES', 1)
INSERT [dbo].[tbPeddGrupoCargo] ([IdGrupoCargo], [NomGrupoCargo], [IdEstado]) VALUES (9, N'ADMINISTRADORES', 1)
SET IDENTITY_INSERT [dbo].[tbPeddGrupoCargo] OFF
SET IDENTITY_INSERT [dbo].[tbPeddGrupoEvaluacion] ON 

INSERT [dbo].[tbPeddGrupoEvaluacion] ([IdGrupoEvaluacion], [IdCabEvaluacion], [IdEvaluador], [IdEmpleado], [IdEstado]) VALUES (1, 1, 1, 3, 1)
INSERT [dbo].[tbPeddGrupoEvaluacion] ([IdGrupoEvaluacion], [IdCabEvaluacion], [IdEvaluador], [IdEmpleado], [IdEstado]) VALUES (11, 1, 1, 0, 1)
INSERT [dbo].[tbPeddGrupoEvaluacion] ([IdGrupoEvaluacion], [IdCabEvaluacion], [IdEvaluador], [IdEmpleado], [IdEstado]) VALUES (16, 1, 1, 2, 1)
SET IDENTITY_INSERT [dbo].[tbPeddGrupoEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[tbPeddGrupoOpcRespuesta] ON 

INSERT [dbo].[tbPeddGrupoOpcRespuesta] ([IdGrupoOpcRespuesta], [IdTipoRespuesta], [NomGrupoOpcRespuesta], [IdEstado]) VALUES (1, 1, N'TEMPORAL-FRECUENCIA', 1)
INSERT [dbo].[tbPeddGrupoOpcRespuesta] ([IdGrupoOpcRespuesta], [IdTipoRespuesta], [NomGrupoOpcRespuesta], [IdEstado]) VALUES (2, 1, N'SATISFACCION', 1)
INSERT [dbo].[tbPeddGrupoOpcRespuesta] ([IdGrupoOpcRespuesta], [IdTipoRespuesta], [NomGrupoOpcRespuesta], [IdEstado]) VALUES (3, 1, N'CONCORDANCIA', 1)
SET IDENTITY_INSERT [dbo].[tbPeddGrupoOpcRespuesta] OFF
SET IDENTITY_INSERT [dbo].[tbPeddObjetivoEvaluacion] ON 

INSERT [dbo].[tbPeddObjetivoEvaluacion] ([IdObjetivoEvaluacion], [IdCabEvaluacion], [IdEvaluador], [IdEvaluado], [IdEstado]) VALUES (1, 1, 1, 1, 1)
INSERT [dbo].[tbPeddObjetivoEvaluacion] ([IdObjetivoEvaluacion], [IdCabEvaluacion], [IdEvaluador], [IdEvaluado], [IdEstado]) VALUES (2, 1, 1, 4, 1)
SET IDENTITY_INSERT [dbo].[tbPeddObjetivoEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[tbPeddOpcRespuesta] ON 

INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (1, 1, N'Siempre', 5, 1, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (2, 1, N'Casi siempre', 4, 2, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (3, 1, N'Frecuentemente', 3, 3, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (4, 1, N'Casi nunca', 2, 4, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (5, 1, N'Nunca', 1, 5, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (6, 2, N'Muy satisfecho', 5, 1, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (7, 2, N'Satisfecho', 4, 2, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (8, 2, N'Poco satisfecho', 3, 3, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (9, 2, N'Insatisfecho', 2, 4, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (10, 2, N'Muy insatisfecho', 1, 5, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (11, 3, N'Muy de acuerdo', 5, 1, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (12, 3, N'De acuerdo', 4, 2, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (13, 3, N'Ni de acuerdo/ni en desacuerdo', 3, 3, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (14, 3, N'En desacuerdo', 4, 2, 1)
INSERT [dbo].[tbPeddOpcRespuesta] ([IdOpcRespuesta], [IdGrupoOpcRespuesta], [NomTipoRespuesta], [NumPuntaje], [NumOrden], [IdEstado]) VALUES (15, 3, N'Muy en desacuerdo', 5, 1, 1)
SET IDENTITY_INSERT [dbo].[tbPeddOpcRespuesta] OFF
SET IDENTITY_INSERT [dbo].[tbPeddParticipanteEvaluacion] ON 

INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (1002, 4, 2, 1, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (1003, 4, 2, 2, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (1004, 4, 2, 3, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (1005, 4, 2, 4, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (1006, 4, 1, 4, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (2037, 1, 2, 1, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (2038, 1, 2, 2, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (2039, 1, 2, 3, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (2040, 1, 2, 4, 1)
INSERT [dbo].[tbPeddParticipanteEvaluacion] ([IdParticipanteEvaluacion], [IdCabEvaluacion], [IdTipoParticipante], [IdEmpleado], [IdEstado]) VALUES (2041, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tbPeddParticipanteEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[tbPeddSucursal] ON 

INSERT [dbo].[tbPeddSucursal] ([IdSucursal], [IdCompania], [NomSucursal], [DirSucursal], [FonoCompania], [IdEstado]) VALUES (1, 1, N'CASA MATRIZ', N'BLANCO 895', N'32-222222', 1)
SET IDENTITY_INSERT [dbo].[tbPeddSucursal] OFF
SET IDENTITY_INSERT [dbo].[tbPeddTipoEvaluacion] ON 

INSERT [dbo].[tbPeddTipoEvaluacion] ([IdTipoEvaluacion], [NomTipoEvaluacion], [DesTipoEvaluacion], [IdEstado]) VALUES (1, N'ORGANIZACIONAL', N'Es una evaluacion destinada a todos los empleados de una organizacion o empresa.', 1)
INSERT [dbo].[tbPeddTipoEvaluacion] ([IdTipoEvaluacion], [NomTipoEvaluacion], [DesTipoEvaluacion], [IdEstado]) VALUES (2, N'AREAL', N'Es una evaluacion destinada a todos los empleados que pertenecen a un Area Funcional de una Organizacion o Empresa.', 1)
INSERT [dbo].[tbPeddTipoEvaluacion] ([IdTipoEvaluacion], [NomTipoEvaluacion], [DesTipoEvaluacion], [IdEstado]) VALUES (3, N'DEPARTAMENTAL', N'Es una evaluacion destinada a todos los empleados que pertenecen a un Departamento al interior de un Area Fucional, que a su vez depende de una Organizacion o Empresa.', 1)
INSERT [dbo].[tbPeddTipoEvaluacion] ([IdTipoEvaluacion], [NomTipoEvaluacion], [DesTipoEvaluacion], [IdEstado]) VALUES (4, N'SUCURSAL', N'Es una evaluacion destinada a todos los empleados que pertenecen a una Sucursal de una Organizacion o Empresa.', 1)
SET IDENTITY_INSERT [dbo].[tbPeddTipoEvaluacion] OFF
SET IDENTITY_INSERT [dbo].[tbPeddTipoFaseEval] ON 

INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (1, N'DIFUSION', N'DIFUSION DE EVALUACION', N'La Dirección de Desarrollo de Personas difundirá en todos los medios internos disponibles la fecha de inicio del proceso de evaluación, informando el cronograma de actividades, sus objetivos, derechos y deberes del evaluado y del evaluador y el link o dirección electrónica del sitio donde se encuentran los instrumentos para realizar todas las actividades del proceso de evaluación.', 1, 1)
INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (2, N'CAPACITACION', N'CAPACITACION A LOS PARTICIPANTES', N'La Dirección de Desarrollo de Personas capacitará a los participantes del proceso en aspectos formales, fundamentos de la evaluación, herramientas de definición de metas, entrevistas de retroalimentación, entre otros temas.', 2, 1)
INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (3, N'ENTREGA DE INSTRUMENTOS', N'ENTREGA DE INSTRUMENTOS DE EVALUACION', N'Una vez que se haya completado las bases de la evaluación para cada unidad y capacitado a los evaluadores, la Dirección de Desarrollo de Personas habilitará a cada evaluador el acceso a los respectivos instrumentos de evaluación para ingresar a la plataforma del sistema que los contiene.', 3, 1)
INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (4, N'FIJACION DE OBJETIVOS', N'ENTREVISTA DE FIJACION DE OBJETIVOS A EVALUAR', N'Al inicio del período correspondiente, el evaluador deberá explicitar y acordar con su evaluado las metas de rendimiento y desempeño esperado, de conformidad a las funciones que correspondieren al evaluado según su contrato y la descripción del respectivo cargo.', 4, 1)
INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (5, N'INGRESO DE DATOS', N'INGRESO DE DATOS A LA PLATAFORMA DE EVALUACION DE DESEMPEÑO', N'Una vez realizada la entrevista de fijación de objetivos, el evaluador deberá ingresar en la plataforma disponible las metas de rendimiento con sus respectivos indicadores en relación con el desempeño esperado.', 5, 1)
INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (6, N'REUNIÓN DE PROGRESO', N'REUNIÓN DE PROGRESO DEL PROCESO EVALUATIVO', N'El evaluador y el evaluado deberán reunirse a mitad del periodo para proceder a revisar el estado de avance de las metas definidas, atender a eventuales obstáculos en el alcance de las metas y acordar acciones que las aborden, así como incentivar, reforzar aciertos y retroalimentar para facilitar el alcance de metas y nivel de competencias esperado para el cargo desempeñado por el evaluado.', 6, 1)
INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (7, N'EVALUACION DESEMPEÑO', N'EVALUACION FINAL DE DESEMPEÑO', N'Al final del período respectivo, y en la oportunidad que determine el cronograma, cada evaluador realizará la evaluación final a su evaluado con anterioridad a la entrevista de retroalimentación del desempeño, y la ingresará en la plataforma. La evaluación final se realizará en la forma y con los instrumentos que determine la Dirección de Desarrollo de Personas.', 7, 1)
INSERT [dbo].[tbPeddTipoFaseEval] ([IdTipoFaseEval], [NomTipoFaseEval], [NomLargoTipoFaseEval], [DesTipoFaseEval], [NumOrden], [IdEstado]) VALUES (8, N'RETROALIMENTACION', N'ENTREVISTA FINAL DE RETROALIMENTACION', N'Una vez finalizada la evaluación, el evaluador citará al evaluado a una entrevista en la que le entregará el resultado de ésta en base a los objetivos y metas definidas al inicio del proceso. Igual comunicación se realizará respecto de las competencias del cargo.', 8, 1)
SET IDENTITY_INSERT [dbo].[tbPeddTipoFaseEval] OFF
SET IDENTITY_INSERT [dbo].[tbPeddTipoParticipante] ON 

INSERT [dbo].[tbPeddTipoParticipante] ([IdTipoParticipante], [NomParticipante], [DesParticipante], [IdEstado]) VALUES (1, N'EVALUADOR', N'Es el participante encargado de fijar los objetivos a evaluar de cada uno de sus evaluados. También es el encargado de ingresar los resultados de las evaluaciones a la plataforma de evaluación de desempeño', 1)
INSERT [dbo].[tbPeddTipoParticipante] ([IdTipoParticipante], [NomParticipante], [DesParticipante], [IdEstado]) VALUES (2, N'EVALUADO', N'Es el participante que es sometido a evaluación y responsable de cumplir los objetivos fijados al principio del proceso evaluativo.', 1)
SET IDENTITY_INSERT [dbo].[tbPeddTipoParticipante] OFF
SET IDENTITY_INSERT [dbo].[tbPeddTipoRespuesta] ON 

INSERT [dbo].[tbPeddTipoRespuesta] ([IdTipoRespuesta], [NomTipoRespuesta], [DesTipoRespuesta]) VALUES (1, N'Boton de opcion', N'Un boton de opcion al lado de cada elemento de un grupo de varias opciones mutuamente excluyentes; es decir, que solo pueda activar un boton de opcion cada vez')
INSERT [dbo].[tbPeddTipoRespuesta] ([IdTipoRespuesta], [NomTipoRespuesta], [DesTipoRespuesta]) VALUES (2, N'Casilla de verificacion', N'Una casilla de verificacion que se pueda activar o desactivar al lado de una opcion independiente. Tambien para insertar una casilla de verificacion al lado de cada elemento de un grupo de opciones que no sean mutuamente excluyentes; es decir, que pueda activar varias casillas de verificacion a la vez.')
INSERT [dbo].[tbPeddTipoRespuesta] ([IdTipoRespuesta], [NomTipoRespuesta], [DesTipoRespuesta]) VALUES (3, N'Cuadro de texto', N'Es un control en el que el evaluado puede escribir una linea de texto.')
INSERT [dbo].[tbPeddTipoRespuesta] ([IdTipoRespuesta], [NomTipoRespuesta], [DesTipoRespuesta]) VALUES (4, N'Control Area de texto', N'Es un control en el que el evaluado puede escribir varias lineas de texto.')
INSERT [dbo].[tbPeddTipoRespuesta] ([IdTipoRespuesta], [NomTipoRespuesta], [DesTipoRespuesta]) VALUES (5, N'Cuadro desplegable', N'Es un cuadro que muestra las opciones disponibles en un cuadro de lista desplegable. El evaluado puede seleccionar solo una de las opciones disponibles.')
SET IDENTITY_INSERT [dbo].[tbPeddTipoRespuesta] OFF
/****** Object:  Index [PK_CabEvaluacion]    Script Date: 03-01-2020 21:28:51 ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tbPeddCabEvaluacion]') AND name = N'PK_CabEvaluacion')
ALTER TABLE [dbo].[tbPeddCabEvaluacion] ADD  CONSTRAINT [PK_CabEvaluacion] PRIMARY KEY NONCLUSTERED 
(
	[IdCabEvaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbPeddCab__IdTip__1C873BEC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbPeddCabEvaluacion] ADD  CONSTRAINT [DF__tbPeddCab__IdTip__1C873BEC]  DEFAULT ((0)) FOR [IdTipoEvaluacion]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbPeddDet__NotaO__405A880E]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbPeddDetObjetivoEvaluacion] ADD  DEFAULT ((0)) FOR [NotaObjetivo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbPeddEmp__flgEv__0F2D40CE]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbPeddEmpleado] ADD  CONSTRAINT [DF__tbPeddEmp__flgEv__0F2D40CE]  DEFAULT ((0)) FOR [flgEvaluador]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tbPeddEmp__flgEv__10216507]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tbPeddEmpleado] ADD  CONSTRAINT [DF__tbPeddEmp__flgEv__10216507]  DEFAULT ((1)) FOR [flgEvaluado]
END
GO
/****** Object:  StoredProcedure [dbo].[sp_eddObjetivoEvaluacion_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_eddObjetivoEvaluacion_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_eddObjetivoEvaluacion_Update] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 06/10/19
-- =============================================
ALTER PROCEDURE [dbo].[sp_eddObjetivoEvaluacion_Update]
  @IdObjetivoEvaluacion INT = NULL
 ,@IdCabEvaluacion INT = NULL
 ,@IdEvaluador INT = NULL
 ,@IdEvaluado INT = NULL
 ,@IdEstado TINYINT = NULL
AS
 SET NOCOUNT OFF;

    UPDATE dbo.tbPeddObjetivoEvaluacion SET 
      IdCabEvaluacion = @IdCabEvaluacion
     ,IdEvaluador = @IdEvaluador
     ,IdEvaluado = @IdEvaluado
     ,IdEstado = @IdEstado
    WHERE (@IdObjetivoEvaluacion IS NULL OR @IdObjetivoEvaluacion=IdObjetivoEvaluacion)
   AND (@IdCabEvaluacion IS NULL OR @IdCabEvaluacion=IdCabEvaluacion)
   AND (@IdEvaluador IS NULL OR @IdEvaluador=IdEvaluador)
   AND (@IdEvaluado IS NULL OR @IdEvaluado=IdEvaluado)
   AND (@IdEstado IS NULL OR @IdEstado=IdEstado)
-- =====SELECT==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[sp_generate]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_generate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sp_generate] AS' 
END
GO
ALTER PROCEDURE [dbo].[sp_generate]  
  @tableName AS VARCHAR(100)  
AS  



-- sp_generate "Tb_Mae_Pais"
--CAPITALIZE TABLENAME  
--CAMBIO DE PRUEBA PARA GIT
SET @tableName = UPPER(LEFT(@tableName,1)) + RIGHT(@tableName, LEN(@tableName) -1)  
  
--SALTO DE LÍNEA  
DECLARE @nl AS CHAR  
SET @nl = CHAR(10) + CHAR(13)   
  
--CABECERA  
DECLARE @spHeaders AS VARCHAR(1000)  
SET @spHeaders = 'SET ANSI_NULLS ON' + @nl +  
'GO' + @nl +  
'SET QUOTED_IDENTIFIER ON' + @nl +  
'GO' + @nl +  
'-- =============================================' + @nl +  
'-- Author:  TU_NOMBRE' + @nl +  
'-- Create date: ' + CONVERT(VARCHAR, GETDATE(), 3) + @nl +  
'-- ============================================='  
  
DECLARE @table AS VARCHAR(MAX)  
DECLARE @column AS VARCHAR(MAX)  
DECLARE @data_type AS VARCHAR(MAX)  
DECLARE @length AS INT  
DECLARE @precision AS INT  
DECLARE @scale AS INT  
  
--PARÁMETROS  
DECLARE @spParameters AS VARCHAR(MAX) SET @spParameters = ''  
  
--LISTA DE CAMPOS  
DECLARE @fieldList AS VARCHAR(MAX) SET @fieldList = ''  
  
--LISTA DE CAMPOS PARA EL SET DEL UPDATE  
DECLARE @fieldSetList AS VARCHAR(MAX) SET @fieldSetList = ''  
  
--LISTA DE PARÁMETROS PARA EL INSERT  
DECLARE @insertParameters AS VARCHAR(MAX) SET @insertParameters = ''  
  
--CONDICIONES  
DECLARE @spConditions AS VARCHAR(MAX) SET @spConditions = ''  
  
DECLARE c CURSOR STATIC FOR  
select table_name, column_name, data_type, character_maximum_length,numeric_precision, numeric_scale from information_schema.columns where table_name = @tableName order by ordinal_position  
OPEN c FETCH NEXT FROM c INTO @table, @column, @data_type, @length, @precision, @scale  
WHILE @@FETCH_STATUS = 0 BEGIN  
  
 SET @spParameters = @spParameters + (CASE WHEN LEN(@spParameters) >0 THEN @nl + ' ,' ELSE '  ' END) + '@' + @column + ' ' + UPPER(@data_type) + (CASE @data_type WHEN 'VARCHAR' THEN '('+CAST(@length AS VARCHAR)+')' WHEN 'DECIMAL' THEN '('+CAST(@precision AS VARCHAR)+', '+CAST(@scale AS VARCHAR)+')' ELSE '' END) + ' = NULL'  
 SET @fieldList = @fieldList + (CASE WHEN LEN(@fieldList) >0 THEN @nl + '    ,' ELSE '' END) + @column  
 SET @spConditions = @spConditions + (CASE WHEN LEN(@spConditions) >0 THEN @nl + '   AND ' ELSE '' END) + '(@' + @column + ' IS NULL OR @' + @column + '=' + @column + ')'  
 SET @fieldSetList = @fieldSetList + (CASE WHEN LEN(@fieldSetList) >0 THEN @nl + '     ,' ELSE '      ' END) + @column + ' = @' + @column  
 SET @insertParameters = @insertParameters + (CASE WHEN LEN(@insertParameters) >0 THEN @nl + '    ,' ELSE '' END) + '@' + @column  
  
 FETCH NEXT FROM c INTO @table, @column, @data_type, @length, @precision, @scale  
END  
CLOSE c DEALLOCATE c  
  
--********************************  
--*********** SELECT *************  
--********************************  
DECLARE @SELECT AS VARCHAR(MAX)  
SET @SELECT = @spHeaders + @nl  
SET @SELECT = @SELECT + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) ) + '_Select' + @nl  
SET @SELECT = @SELECT + @spParameters + @nl  
SET @SELECT = @SELECT + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @SELECT = @SELECT + '    SELECT ' + @fieldList + @nl  
SET @SELECT = @SELECT + '    FROM ' + @table + @nl  
SET @SELECT = @SELECt + '    WHERE ' + @spConditions + @nl  
--********************************  
--*********** SELECT ALL**********  
--********************************  
DECLARE @SELECTALL AS VARCHAR(MAX)  
SET @SELECTALL = @spHeaders + @nl  
SET @SELECTALL = @SELECTALL + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_SelAll' + @nl  
-- SET @SELECT = @SELECT + @spParameters + @nl  
SET @SELECTALL = @SELECTALL + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @SELECTALL = @SELECTALL + '    SELECT ' + @fieldList + @nl  
SET @SELECTALL = @SELECTALL + '    FROM ' + @table + @nl    
--********************************  
--*********** UPDATE *************  
--********************************  
DECLARE @UPDATE AS VARCHAR(MAX)  
SET @UPDATE = @spHeaders + @nl  
SET @UPDATE = @UPDATE + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) ) + '_Update' + @nl  
SET @UPDATE = @UPDATE + @spParameters + @nl  
SET @UPDATE = @UPDATE + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @UPDATE = @UPDATE + '    UPDATE ' + @table + ' SET ' + @nl  
SET @UPDATE = @UPDATE + @fieldSetList + @nl  
SET @UPDATE = @UPDATE + '    WHERE ' + @spConditions + @nl  
  
--********************************  
--*********** DELETE *************  
--********************************  
DECLARE @DELETE AS VARCHAR(MAX)  
SET @DELETE = @spHeaders + @nl  
SET @DELETE = @DELETE + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_Delete' + @nl  
SET @DELETE = @DELETE + @spParameters + @nl  
SET @DELETE = @DELETE + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @DELETE = @DELETE + '    DELETE FROM ' + @table + @nl  
SET @DELETE = @DELETE + '    WHERE ' + @spConditions + @nl  
  
--********************************  
--*********** INSERT *************  
--********************************  
DECLARE @INSERT AS VARCHAR(MAX)  
SET @INSERT = @spHeaders + @nl  
SET @INSERT = @INSERT + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_Insert' + @nl  
SET @INSERT = @INSERT + @spParameters + @nl  
SET @INSERT = @INSERT + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @INSERT = @INSERT + '    INSERT INTO ' + @table + '(' + @nl  
SET @INSERT = @INSERT + '     ' + @fieldList + @nl  
SET @INSERT = @INSERT + ' )' + @nl + ' VALUES(' + @nl + '     ' + @insertParameters + @nl  
SET @INSERT = @INSERT + ' )' + @nl  
  
--********************************  
--*********** EXISTS *************  
--********************************  
DECLARE @EXISTS AS VARCHAR(MAX)  
SET @EXISTS = @spHeaders + @nl  
SET @EXISTS = @EXISTS + 'CREATE PROCEDURE sp_' + SUBSTRING ( @tableName ,4 , LEN(@tableName) )  + '_Exists' + @nl  
SET @EXISTS = @EXISTS + @spParameters + @nl  
SET @EXISTS = @EXISTS + ' ,@exists BIT OUT' + @nl  
SET @EXISTS = @EXISTS + 'AS' + @nl + ' SET NOCOUNT OFF;' + @nl + @nl  
SET @EXISTS = @EXISTS + '    IF EXISTS (' + @nl + ' SELECT ' + LEFT(@fieldList,CHARINDEX(@nl,@fieldList))  
SET @EXISTS = @EXISTS + '    FROM ' + @table + @nl  
SET @EXISTS = @EXISTS + '    WHERE ' + @spConditions + @nl + ' )' + @nl  
SET @EXISTS = @EXISTS + ' SET @exists = 1' + @nl + ' ELSE SET @exists = 0'  
  
--MOSTRAR GENERADOS  
PRINT + '-- =====INSERT==================================' + @nl + @INSERT  
PRINT + '-- =====DELETE==================================' + @nl + @DELETE  
PRINT + '-- =====UPDATE==================================' + @nl + @UPDATE  
PRINT + '-- =====SELECT==================================' + @nl + @SELECT  
PRINT + '-- =====SELECT==================================' + @nl + @SELECTALL
PRINT + '-- =====EXISTS==================================' + @nl + @EXISTS

GO
/****** Object:  StoredProcedure [dbo].[spPeddAreaFuncional_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddAreaFuncional_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddAreaFuncional_Delete] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddAreaFuncional_Delete]
(
 @IdAreaFuncional   INT = NULL,
 @IdEstado      TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar un Area Funcional         
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddAreaFuncional_Delete 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  DELETE dbo.tbPeddAreaFuncional
  WHERE  IdAreaFuncional = @IdAreaFuncional 
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar eliminar un Area Funcional.',16,1)
    RETURN -1
   END
   
  RETURN 0 
   
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddAreaFuncional_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddAreaFuncional_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddAreaFuncional_Exists] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddAreaFuncional_Exists]
(
 @IdAreaFuncional INT = NULL,
 @exists          BIT OUT
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Comprobar existencia de un Area Funcional         
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : DECLARE @exists BIT
                    EXEC dbo.spPeddAreaFuncional_Exists 1,@exists OUT
                    SELECT @exists
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SET NOCOUNT OFF;

  IF EXISTS (
             SELECT 1
             FROM   dbo.tbPeddAreaFuncional
             WHERE  IdAreaFuncional = @IdAreaFuncional
            ) 
   SET @exists = 1
  ELSE 
   SET @exists = 0
 
  RETURN 0
 
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddAreaFuncional_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddAreaFuncional_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddAreaFuncional_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddAreaFuncional_Insert]
(
 @IdCompania INT = NULL,
 @NomArea    VARCHAR(120) = NULL,
 @DirArea    VARCHAR(200) = NULL,
 @IdEstado   TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Agregar un Area Funcional         
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddAreaFuncional_Insert 1,'RECURSOS HUMANOS', 'BLANCO 973, VALPARAISO',1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  INSERT INTO dbo.tbPeddAreaFuncional
  (
   IdCompania,
   NomArea,
   DirArea,
   IdEstado
  )
  VALUES
  (
   @IdCompania,
   @NomArea,
   @DirArea,
   @IdEstado
  )
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error el intentar insertar un Area Funcional.',16,1)
    RETURN -1
   END
  
  RETURN 0
  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddAreaFuncional_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddAreaFuncional_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddAreaFuncional_SelAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddAreaFuncional_SelAll]
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener todas las Areas Funcionales         
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddAreaFuncional_SelAll
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  SELECT IdAreaFuncional,
         IdCompania,
         NomArea,
         DirArea,
         IdEstado
  FROM   dbo.tbPeddAreaFuncional
    
  RETURN 0  
    
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddAreaFuncional_SelByIdCompania]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddAreaFuncional_SelByIdCompania]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddAreaFuncional_SelByIdCompania] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddAreaFuncional_SelByIdCompania]
(
 @IdCompania INT
)
AS
/*
=============================================================================
Sistema           : Core   
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener todas las Areas Funcionales de una Compania         
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddAreaFuncional_SelByIdCompania 1
=============================================================================
Modificaciones    :                                                                                  
=============================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------
=============================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  SELECT IdAreaFuncional,
         IdCompania,
         NomArea,
         DirArea,
         IdEstado
  FROM   dbo.tbPeddAreaFuncional
  WHERE  IdCompania = @IdCompania
    
  RETURN 0  
    
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddAreaFuncional_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddAreaFuncional_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddAreaFuncional_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddAreaFuncional_Select]
(
  @IdAreaFuncional INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener un Area Funcional por Id    
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddAreaFuncional_Select 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  SELECT IdAreaFuncional,
         IdCompania,
         NomArea,
         DirArea,
         IdEstado
  FROM   dbo.tbPeddAreaFuncional
  WHERE  IdAreaFuncional = @IdAreaFuncional
   
  RETURN 0 
 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddAreaFuncional_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddAreaFuncional_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddAreaFuncional_Update] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddAreaFuncional_Update]
(
 @IdAreaFuncional INT = NULL,
 @IdCompania      INT = NULL,
 @NomArea         VARCHAR(120) = NULL,
 @DirArea         VARCHAR(200) = NULL,
 @IdEstado        TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Actualizar datos de un Area Funcional    
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddAreaFuncional_Update 1,1,'RECURSOS HUMANOS','BLANCO 999, VALPARAISO',1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  UPDATE dbo.tbPeddAreaFuncional
  SET    IdCompania      = @IdCompania,
         NomArea         = @NomArea,
         DirArea         = @DirArea,
         IdEstado        = @IdEstado
  WHERE  IdAreaFuncional = @IdAreaFuncional
  
  RETURN 0  
 END   

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_Delete]
(
  @IdCabEvaluacion INT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar una evaluacion por Id         
Creado por        : Victor Concha                                   
Fecha de Creacion : 28/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCabEvaluacion_Delete 2000
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  DELETE dbo.tbPeddCabEvaluacion
  WHERE  IdCabEvaluacion  = @IdCabEvaluacion

  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar eliminr una Evaluacion.',16,1)
    RETURN -1
   END
   
  RETURN 0 
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_Exists] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 24/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_Exists]
  @IdCabEvaluacion INT = NULL
 ,@IdCompania INT = NULL
 ,@NomEvaluacion VARCHAR(200) = NULL
 ,@DesEvaluacion VARCHAR(2000) = NULL
 ,@InsEvaluacion VARCHAR(2000) = NULL
 ,@dfInicio DATETIME = NULL
 ,@dfTermino DATETIME = NULL
 ,@IdEstado TINYINT = NULL
 ,@exists BIT OUT
AS
 SET NOCOUNT OFF;

    IF EXISTS (
 SELECT IdCabEvaluacion
    FROM dbo.tbPeddCabEvaluacion
    WHERE (@IdCabEvaluacion IS NULL OR @IdCabEvaluacion=IdCabEvaluacion)
   AND (@IdCompania IS NULL OR @IdCompania=IdCompania)
   AND (@NomEvaluacion IS NULL OR @NomEvaluacion=NomEvaluacion)
   AND (@DesEvaluacion IS NULL OR @DesEvaluacion=DesEvaluacion)
   AND (@InsEvaluacion IS NULL OR @InsEvaluacion=InsEvaluacion)
   AND (@dfInicio IS NULL OR @dfInicio=dfInicio)
   AND (@dfTermino IS NULL OR @dfTermino=dfTermino)
   AND (@IdEstado IS NULL OR @IdEstado=IdEstado)
 )
 SET @exists = 1
 ELSE SET @exists = 0
GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_Insert]
(
 @IdCompania       INT = NULL,
 @NomEvaluacion    VARCHAR(200) = NULL,
 @DesEvaluacion    VARCHAR(2000) = NULL,
 @InsEvaluacion    VARCHAR(2000) = NULL,
 @StInicio         VARCHAR(10) = NULL,
 @StTermino        VARCHAR(10) = NULL,
 @IdTipoEvaluacion INT=NULL,
 @IdCompSucAreDep  INT=NULL,
 @IdEstado         TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Grabar una nueva evaluacion de una Empresa.         
Creado por        : Victor Concha                                   
Fecha de Creacion : 28/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCabEvaluacion_Insert 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  
  DECLARE @dfInicio   DATETIME,
          @dfTermino DATETIME
 
  SELECT @dfInicio = CONVERT(DATETIME,@StInicio,103)
  SELECT @dfTermino = CONVERT(DATETIME,@StTermino,103)

  INSERT INTO dbo.tbPeddCabEvaluacion
  (
   IdCompania,
   NomEvaluacion,
   DesEvaluacion,
   InsEvaluacion,
   dfInicio,
   dfTermino,
   IdTipoEvaluacion,
   IdCompSucAreDep,
   IdEstado
  )
  VALUES
  (
   @IdCompania,
   @NomEvaluacion,
   @DesEvaluacion,
   @InsEvaluacion,
   @dfInicio,
   @dfTermino,
   @IdTipoEvaluacion,
   @IdCompSucAreDep,
   @IdEstado
  )
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar grabar una evaluacion.',16,1)
    RETURN -1
   END
   
  SELECT @@IDENTITY AS 'IdCabEvaluacion' 
  
  RETURN 0
 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_SelAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_SelAll]
(
 @IdCompania INT
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener todas evaluaciones de una Empresa.         
Creado por        : Victor Concha                                   
Fecha de Creacion : 24/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCabEvaluacion_SelAll 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  SELECT Ev.IdCabEvaluacion,
         Ev.IdCompania,
         Ev.NomEvaluacion,
         Ev.DesEvaluacion,
         Ev.InsEvaluacion,
         CONVERT(VARCHAR(10),Ev.dfInicio,103) AS dfInicio,
         CONVERT(VARCHAR(10),Ev.dfTermino,103) AS dfTermino,
         Ev.IdTipoEvaluacion,
         Ev.IdCompSucAreDep,
         Ev.IdEstado,
         (
          SELECT COUNT(1)
          FROM   dbo.tbPeddFaseEvaluacion Fe
          WHERE  Fe.IdCabEvaluacion = Ev.IdCabEvaluacion          
         ) AS NumFases
  FROM   dbo.tbPeddCabEvaluacion Ev
  WHERE  Ev.IdCompania = @IdCompania
  ORDER BY Ev.IdCabEvaluacion ASC
    
  RETURN 0  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_SelByAct]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_SelByAct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_SelByAct] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_SelByAct]
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Listar todas las evaluaciones activas         
Creado por        : Victor Concha                                   
Fecha de Creacion : 02/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCabEvaluacion_SelByAct 
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  DECLARE @dfActual DATETIME
  
  SET @dfActual = GETDATE()
 
  SELECT Ev.IdCabEvaluacion,
         Ev.IdCompania,
         Ev.NomEvaluacion,
         Ev.DesEvaluacion,
         Ev.InsEvaluacion,
         CONVERT(VARCHAR(10),Ev.dfInicio,103) AS dfInicio,
         CONVERT(VARCHAR(10),Ev.dfTermino,103) AS dfTermino,
         Ev.IdTipoEvaluacion,
         Ev.IdCompSucAreDep,
         Ev.IdEstado,
         (
          SELECT COUNT(1)
          FROM   dbo.tbPeddFaseEvaluacion Fe
          WHERE  Fe.IdCabEvaluacion = Ev.IdCabEvaluacion          
         ) AS NumFases
  FROM   dbo.tbPeddCabEvaluacion Ev
  WHERE  @dfActual BETWEEN Ev.dfInicio AND Ev.dfTermino
  ORDER BY Ev.IdCabEvaluacion ASC
    
  RETURN 0  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_SelByNom]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_SelByNom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_SelByNom] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_SelByNom]
(
 @IdCompania    INT = NULL,
 @NomEvaluacion VARCHAR(200) = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Buscar una evaluacion por Id Empresa y Nombre.         
Creado por        : Victor Concha                                   
Fecha de Creacion : 28/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCabEvaluacion_SelByNom 1, 'EVALUACION 2019'
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  SELECT IdCabEvaluacion,
         IdCompania,
         NomEvaluacion,
         DesEvaluacion,
         InsEvaluacion,
         CONVERT(VARCHAR(10),dfInicio,103) AS dfInicio,
         CONVERT(VARCHAR(10),dfTermino,103) AS dfTermino,
         IdTipoEvaluacion,
         IdCompSucAreDep,
         IdEstado
  FROM   dbo.tbPeddCabEvaluacion
  WHERE  IdCompania    = @IdCompania
  AND    NomEvaluacion = @NomEvaluacion
  
  RETURN 0 
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_Select]
(
  @IdCabEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Buscar una evaluacion por Id         
Creado por        : Victor Concha                                   
Fecha de Creacion : 28/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCabEvaluacion_Select 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT IdCabEvaluacion,
         IdCompania,
         NomEvaluacion,
         DesEvaluacion,
         InsEvaluacion,
         CONVERT(VARCHAR(10),dfInicio,103) AS dfInicio,
         CONVERT(VARCHAR(10),dfTermino,103) AS dfTermino,
         IdTipoEvaluacion,
         IdCompSucAreDep,
         IdEstado
  FROM   dbo.tbPeddCabEvaluacion
  WHERE  IdCabEvaluacion = @IdCabEvaluacion
 
  RETURN 0
 
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCabEvaluacion_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCabEvaluacion_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCabEvaluacion_Update] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCabEvaluacion_Update]
(
 @IdCabEvaluacion  INT = NULL,
 @IdCompania       INT = NULL,
 @NomEvaluacion    VARCHAR(200) = NULL,
 @DesEvaluacion    VARCHAR(2000) = NULL,
 @InsEvaluacion    VARCHAR(2000) = NULL,
 @StInicio         VARCHAR(10) = NULL,
 @StTermino        VARCHAR(10) = NULL,
 @IdTipoEvaluacion INT = NULL,
 @IdCompSucAreDep  INT = NULL,
 @IdEstado         TINYINT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Actualizar una evaluacion por Id         
Creado por        : Victor Concha                                   
Fecha de Creacion : 28/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCabEvaluacion_Update 1,1,'EVALUACION 2019', 'Evaluacion para toda la Empresa', 'Se debe seguir las fases indicadas', '01/01/2019', '31/11/2019',1,0,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  DECLARE @dfInicio  VARCHAR(10),
          @dfTermino VARCHAR(10),
          @dfPasoIni DATETIME,
          @dfPasoFin DATETIME
          
  IF ISDATE(@StInicio) = 1   
   SELECT @dfPasoIni = CONVERT(DATETIME,@StInicio)    
  ELSE
   BEGIN
    RAISERROR('Error al intentar actualizar una Evaluacion (Fecha Inicio).',16,1)
    RETURN -1
   END

    
  IF ISDATE(@StTermino) = 1   
   SELECT @dfPasoFin = CONVERT(DATETIME,@StTermino)    
  ELSE
   BEGIN
    RAISERROR('Error al intentar actualizar una Evaluacion (Fecha Termino).',16,1)
    RETURN -1
   END 
   
  SELECT @dfInicio = CONVERT(VARCHAR(10),@dfPasoIni,103)
  SELECT @dfTermino = CONVERT(VARCHAR(10),@dfPasoFin,103)
  
  UPDATE dbo.tbPeddCabEvaluacion 
  SET    IdCompania    = @IdCompania,
         NomEvaluacion = @NomEvaluacion,
         DesEvaluacion = @DesEvaluacion,
         InsEvaluacion = @InsEvaluacion,
         dfInicio      = @dfPasoIni,
         dfTermino     = @dfTermino,
         IdTipoEvaluacion = @IdTipoEvaluacion, 
         IdCompSucAreDep = @IdCompSucAreDep,
         IdEstado      = @IdEstado
  WHERE  IdCabEvaluacion = @IdCabEvaluacion

  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar actualizar una Evaluacion.',16,1)
    RETURN -1
   END

  RETURN 0
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCargo_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCargo_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCargo_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCargo_Delete]
(
 @IdCargo SMALLINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar un cargo       
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCargo_Delete 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  DELETE dbo.tbPeddCargo
  WHERE  IdCargo = @IdCargo
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar eliminar un Cargo.',16,1)
    RETURN -1
   END

  RETURN 0

 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCargo_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCargo_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCargo_Exists] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCargo_Exists]
(
 @IdGrupoCargo SMALLINT = NULL,
 @NomCargo     VARCHAR(120) = NULL,
 @exists       BIT OUT
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Comprobar existencia de un cargo       
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCargo_Exists 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  IF EXISTS (
             SELECT 1
             FROM   dbo.tbPeddCargo
             WHERE  IdGrupoCargo = @IdGrupoCargo
             AND    NomCargo     = @NomCargo
            )
   SET @exists = 1
  ELSE 
   SET @exists = 0
  
  RETURN 0
 END

 
GO
/****** Object:  StoredProcedure [dbo].[spPeddCargo_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCargo_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCargo_Insert] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 11/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddCargo_Insert]
  @IdCargo SMALLINT = NULL
 ,@IdGrupoCargo SMALLINT = NULL
 ,@NomCargo VARCHAR(120) = NULL
 ,@IdEstado TINYINT = NULL
AS
 SET NOCOUNT OFF;

    INSERT INTO tbPeddCargo(
     IdCargo
    ,IdGrupoCargo
    ,NomCargo
    ,IdEstado
 )
 VALUES(
     @IdCargo
    ,@IdGrupoCargo
    ,@NomCargo
    ,@IdEstado
 )
-- =====DELETE==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCargo_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCargo_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCargo_SelAll] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 11/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddCargo_SelAll]
AS
 SET NOCOUNT OFF;

    SELECT IdCargo
    ,IdGrupoCargo
    ,NomCargo
    ,IdEstado
    FROM tbPeddCargo
-- =====EXISTS==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCargo_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCargo_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCargo_Select] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 11/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddCargo_Select]
  @IdCargo SMALLINT = NULL
 ,@IdGrupoCargo SMALLINT = NULL
 ,@NomCargo VARCHAR(120) = NULL
 ,@IdEstado TINYINT = NULL
AS
 SET NOCOUNT OFF;

    SELECT IdCargo
    ,IdGrupoCargo
    ,NomCargo
    ,IdEstado
    FROM tbPeddCargo
    WHERE (@IdCargo IS NULL OR @IdCargo=IdCargo)
   AND (@IdGrupoCargo IS NULL OR @IdGrupoCargo=IdGrupoCargo)
   AND (@NomCargo IS NULL OR @NomCargo=NomCargo)
   AND (@IdEstado IS NULL OR @IdEstado=IdEstado)
-- =====SELECT==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCargo_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCargo_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCargo_Update] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 11/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddCargo_Update]
  @IdCargo SMALLINT = NULL
 ,@IdGrupoCargo SMALLINT = NULL
 ,@NomCargo VARCHAR(120) = NULL
 ,@IdEstado TINYINT = NULL
AS
 SET NOCOUNT OFF;

    UPDATE tbPeddCargo SET 
      IdGrupoCargo = @IdGrupoCargo
     ,NomCargo = @NomCargo
     ,IdEstado = @IdEstado
    WHERE (@IdCargo IS NULL OR @IdCargo=IdCargo)
   AND (@IdGrupoCargo IS NULL OR @IdGrupoCargo=IdGrupoCargo)
   AND (@NomCargo IS NULL OR @NomCargo=NomCargo)
   AND (@IdEstado IS NULL OR @IdEstado=IdEstado)
-- =====SELECT==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCompania_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCompania_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCompania_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCompania_Delete]
(
 @IdCompania INT = NULL,
 @IdEstado   TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar una campania           
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCompania_Delete 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SET NOCOUNT OFF;

  DELETE dbo.tbPeddCompania
  WHERE  IdCompania = @IdCompania

  IF @@error != 0
   BEGIN
    RAISERROR('Error al intentar eliminar una Compania.',16,1)
    RETURN -1
   END
   
  RETURN 0 
   
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCompania_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCompania_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCompania_Exists] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCompania_Exists]
(
  @IdCompania INT = NULL,
  @exists BIT OUT
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Comprobar existencia de una campania           
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : DECLARE @exists BIT 
                    EXEC dbo.spPeddCompania_Exists 1,@exists OUT
                    SELECT @exists
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SET NOCOUNT OFF;

  IF EXISTS (
             SELECT 1
             FROM   dbo.tbPeddCompania
             WHERE  IdCompania = @IdCompania

            )
   SET @exists = 1
  ELSE 
   SET @exists = 0
 
  RETURN 0
 
 END

 
GO
/****** Object:  StoredProcedure [dbo].[spPeddCompania_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCompania_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCompania_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCompania_Insert]
(
 @RutCompania  INT = NULL,
 @DvCompania   CHAR = NULL,
 @NomCompania  VARCHAR(120) = NULL,
 @GiroCompania VARCHAR(200) = NULL,
 @DirCompania  VARCHAR(200) = NULL,
 @FonoCompania VARCHAR(15) = NULL,
 @IdEstado     TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Insertar una campania           
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCompania_Insert 76285098,'2','D&S Contnedores','Deposito Contenedores','Bernardo OHiggins 388, Valparaiso','(32)2513300',1 
 
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  INSERT INTO dbo.tbPeddCompania
  (
   RutCompania,
   DvCompania,
   NomCompania,
   GiroCompania,
   DirCompania,
   FonoCompania,
   IdEstado
  )
  VALUES
  (
   @RutCompania,
   @DvCompania,
   @NomCompania,
   @GiroCompania,
   @DirCompania,
   @FonoCompania,
   @IdEstado
  )
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al insertar nueva compania.',16,1)
    RETURN -1
   END
   
  SELECT @@IDENTITY AS 'IdCompania' 
 
  RETURN 0
 
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCompania_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCompania_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCompania_SelAll] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCompania_SelAll]
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtner todas las companias existentes end la plataforma           
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCompania_SelAll 
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SET NOCOUNT OFF;

  SELECT IdCompania,
         RutCompania,
         DvCompania,
         NomCompania,
         GiroCompania,
         DirCompania,
         FonoCompania,
         IdEstado
  FROM   dbo.tbPeddCompania
  
  RETURN 0
  
 END

SET ANSI_NULLS OFF

GO
/****** Object:  StoredProcedure [dbo].[spPeddCompania_SelByRut]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCompania_SelByRut]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCompania_SelByRut] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddCompania_SelByRut]
(
 @RutCompania  INT
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtner todas las companias existentes end la plataforma           
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCompania_SelByRut 76285098
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT IdCompania,
         RutCompania,
         DvCompania,
         NomCompania,
         GiroCompania,
         DirCompania,
         FonoCompania,
         IdEstado
  FROM   dbo.tbPeddCompania
  WHERE  RutCompania  = @RutCompania
  
  RETURN 0
  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCompania_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCompania_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCompania_Select] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCompania_Select]
(
  @IdCompania INT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtner todas las companias existentes end la plataforma           
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCompania_Select 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SET NOCOUNT OFF;

  SELECT IdCompania,
         RutCompania,
         DvCompania,
         NomCompania,
         GiroCompania,
         DirCompania,
         FonoCompania,
         IdEstado
  FROM   dbo.tbPeddCompania
  WHERE  IdCompania  = @IdCompania
  
  RETURN 0
  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddCompania_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddCompania_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddCompania_Update] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddCompania_Update]
(
 @IdCompania   INT = NULL,
 @RutCompania  INT = NULL,
 @DvCompania   CHAR = NULL,
 @NomCompania  VARCHAR(120) = NULL,
 @GiroCompania VARCHAR(200) = NULL,
 @DirCompania  VARCHAR(200) = NULL,
 @FonoCompania VARCHAR(15) = NULL,
 @IdEstado     TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Actualizar datos de una compania           
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddCompania_Update 1,76285098,'2','D&S Contnedores','Deposito Contenedores','Bernardo OHiggins 388, Valparaiso','(32)2513300',1 
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SET NOCOUNT OFF;

  UPDATE dbo.tbPeddCompania 
  SET    RutCompania  = @RutCompania,
         DvCompania   = @DvCompania,
         NomCompania  = @NomCompania,
         GiroCompania = @GiroCompania,
         DirCompania  = @DirCompania,
         FonoCompania = @FonoCompania,
         IdEstado     = @IdEstado
  WHERE  IdCompania   = @IdCompania
  
  IF @@error != 0
   BEGIN
    RAISERROR('Error al actualizar tabla Compania.',16,1)
    RETURN -1
   END
    
  RETURN 0  
    
 END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddDepartamento_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddDepartamento_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddDepartamento_SelAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddDepartamento_SelAll]
(
  @IdAreaFuncional INT = NULL
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener Departamentos de un Area Funcional      
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/10/2019                              
Comando Prueba    : EXEC dbo.spPeddDepartamento_SelAll 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN

  SELECT IdDepartamento ,
         IdAreaFuncional,
         NomDepartamento,
         DirDepartamento,
         IdEstado 
  FROM   dbo.tbPeddDepartamento
  WHERE  IdAreaFuncional = @IdAreaFuncional
   
  RETURN 0
   
 END
GO
/****** Object:  StoredProcedure [dbo].[spPeddDepartamento_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddDepartamento_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddDepartamento_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddDepartamento_Select]
(
  @IdDepartamento INT = NULL
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener un Departamento por Id       
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/10/2019                              
Comando Prueba    : EXEC dbo.spPeddDepartamento_Select 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN

  SELECT IdDepartamento ,
         IdAreaFuncional,
         NomDepartamento,
         DirDepartamento,
         IdEstado 
  FROM   dbo.tbPeddDepartamento
  WHERE  IdDepartamento = @IdDepartamento
   
  RETURN 0
   
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddDetObjetivoEvaluacion_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddDetObjetivoEvaluacion_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddDetObjetivoEvaluacion_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddDetObjetivoEvaluacion_Insert]
(
 @IdObjetivoEvaluacion INT           = NULL,
 @NomOjetivo           VARCHAR(90)   = NULL,
 @DesOjetivo           VARCHAR(2000) = NULL,
 @MetEsperada          VARCHAR(2000) = NULL,
 @MetExcepcional       VARCHAR(2000) = NULL,
 @PondObjetivo         TINYINT       = NULL,
 @IdEstado             TINYINT       = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Inserta el Detalle de un Objetivo        
Creado por        : Victor Concha                                   
Fecha de Creacion : 12/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddDetObjetivoEvaluacion_Insert 1,1,1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  MOTIVO                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  DECLARE @NotaObjetivo TINYINT
  
  SET @NotaObjetivo = 0

  INSERT INTO dbo.tbPeddDetObjetivoEvaluacion
  (
   IdObjetivoEvaluacion,
   NomOjetivo,
   DesOjetivo,
   MetEsperada,
   MetExcepcional,
   PondObjetivo,
   NotaObjetivo,
   IdEstado 
  )
  VALUES
  (
   @IdObjetivoEvaluacion ,
   @NomOjetivo           ,
   @DesOjetivo           ,
   @MetEsperada          ,
   @MetExcepcional       ,
   @PondObjetivo         ,
   @NotaObjetivo         ,                  
   @IdEstado             
  )
 
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al insertar un Detalle Objetivo',16,1)
    RETURN -1
   END
 
  SELECT @@IDENTITY AS 'IdDetObjetivoEvaluacion'
  
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddDetObjetivoEvaluacion_SelByEvalEmp]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddDetObjetivoEvaluacion_SelByEvalEmp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddDetObjetivoEvaluacion_SelByEvalEmp] AS' 
END
GO

ALTER PROCEDURE [dbo].[SpPeddDetObjetivoEvaluacion_SelByEvalEmp]
(
 @IdCabEvaluacion INT = NULL,
 @IdEvaluado      INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtiene el Detalle de un Objetivo por Evalaucion y Empleado Evaluado        
Creado por        : Victor Concha                                   
Fecha de Creacion : 15/10/2019                                                                    
Comando Prueba    : EXEC dbo.SpPeddDetObjetivoEvaluacion_SelByEvalEmp 1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  MOTIVO                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT Dob.IdDetObjetivoEvaluacion,
         Dob.IdObjetivoEvaluacion,
         Dob.NomOjetivo          ,
         Dob.DesOjetivo          ,
         Dob.MetEsperada         ,
         Dob.MetExcepcional      ,
         Dob.PondObjetivo        ,
         Dob.NotaObjetivo        ,
         Dob.IdEstado                
  FROM   dbo.tbPeddObjetivoEvaluacion    Obj,
         dbo.tbPeddDetObjetivoEvaluacion Dob
  WHERE  Obj.IdCabEvaluacion      = @IdCabEvaluacion
  AND    Obj.IdEvaluado           = @IdEvaluado
  AND    Dob.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion    
  ORDER BY  Dob.IdDetObjetivoEvaluacion ASC 
 
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddDetObjetivoEvaluacion_UpdNota]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddDetObjetivoEvaluacion_UpdNota]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddDetObjetivoEvaluacion_UpdNota] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddDetObjetivoEvaluacion_UpdNota]
(
 @IdDetObjetivoEvaluacion INT     = NULL,
 @NotaObjetivo            TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Actualiza Nota en un Detalle de un Objetivo        
Creado por        : Victor Concha                                   
Fecha de Creacion : 17/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddDetObjetivoEvaluacion_UpdNota 1,95
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  MOTIVO                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  UPDATE dbo.tbPeddDetObjetivoEvaluacion
  SET    NotaObjetivo = @NotaObjetivo
  WHERE  IdDetObjetivoEvaluacion = @IdDetObjetivoEvaluacion
 
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al actualizar nota un Detalle Objetivo',16,1)
    RETURN -1
   END
  
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddEmpleado_SelByEval]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEmpleado_SelByEval]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEmpleado_SelByEval] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddEmpleado_SelByEval]
(
  @IdCabEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener lista de empleados evaluados en una evaluacion     
Creado por        : Victor Concha                                   
Fecha de Creacion : 06/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddEmpleado_SelByEval 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT Emp.IdEmpleado      ,
         Emp.IdCompania      ,
         Emp.IdSucursal      ,
         Emp.IdAreaFuncional ,
         Emp.IdDepartamento  ,
         Emp.IdCargo         ,
         Emp.RutEmpleado     ,
         Emp.DvEmpleado      ,
         Emp.NomEmpleado     ,
         Emp.AplPatEmpleado  ,
         Emp.AplMatEmpleado  ,
         Emp.EmailEmpleado   ,
         Emp.flgEvaluador    ,
         Emp.flgEvaluado     
  FROM   dbo.tbPeddEmpleado Emp,
         dbo.tbPeddParticipanteEvaluacion PrEv,
         dbo.tbPeddTipoParticipante TpPr
  WHERE  PrEv.IdCabEvaluacion    = @IdCabEvaluacion
  AND    TpPr.IdTipoParticipante = PrEv.IdTipoParticipante
  AND    TpPr.NomParticipante    = 'EVALUADO'
  AND    Emp.IdEmpleado          = PrEv.IdEmpleado
 
  RETURN 0
 
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddEmpleado_SelByMail]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEmpleado_SelByMail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEmpleado_SelByMail] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddEmpleado_SelByMail]
(
  @EmailEmpleado VARCHAR(60) = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Buscar un empleado por email       
Creado por        : Victor Concha                                   
Fecha de Creacion : 05/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddEmpleado_SelByMail 'vconcha@disal.cl'
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT IdEmpleado      ,
         IdCompania      ,
         IdSucursal      ,
         IdAreaFuncional ,
         IdDepartamento  ,
         IdCargo         ,
         RutEmpleado     ,
         DvEmpleado      ,
         NomEmpleado     ,
         AplPatEmpleado  ,
         AplMatEmpleado  ,
         EmailEmpleado   ,
         flgEvaluador    ,
         flgEvaluado     
  FROM   dbo.tbPeddEmpleado
  WHERE  UPPER(EmailEmpleado) = UPPER(@EmailEmpleado)
 
  RETURN 0
 
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddEmpleado_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEmpleado_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEmpleado_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddEmpleado_Select]
(
  @IdEmpleado INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener Empleado por Id    
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddEmpleado_Select 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT IdEmpleado      ,
         IdCompania      ,
         IdSucursal      ,
         IdAreaFuncional ,
         IdDepartamento  ,
         IdCargo         ,
         RutEmpleado     ,
         DvEmpleado      ,
         NomEmpleado     ,
         AplPatEmpleado  ,
         AplMatEmpleado  ,
         EmailEmpleado   ,
         flgEvaluador    ,
         flgEvaluado     
  FROM   dbo.tbPeddEmpleado
  WHERE  IdEmpleado = @IdEmpleado
 
  RETURN 0
 
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddEstado_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEstado_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEstado_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddEstado_Delete]
(
 @IdEstado TINYINT = NULL
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar un estado       
Creado por        : Victor Concha                                   
Fecha de Creacion : 22/09/2019                              
Comando Prueba    : EXEC dbo.spPeddEstado_Delete 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Practica                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN

  DELETE dbo.tbPeddEstado
  WHERE  IdEstado = @IdEstado

  IF @@ERROR !=0
   BEGIN
    RAISERROR('Error el intentar eliminar un Estado.',16,1)
    RETURN -1
   END
   
  RETURN 0 
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddEstado_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEstado_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEstado_Exists] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddEstado_Exists]
(
  @IdEstado TINYINT = NULL
 ,@CodEstado VARCHAR(5) = NULL
 ,@NomEstado VARCHAR(60) = NULL
 ,@exists BIT OUT
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar un estado       
Creado por        : Victor Concha                                   
Fecha de Creacion : 22/09/2019                              
Comando Prueba    : EXEC dbo.spPeddEstado_Exists 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Practica                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/


    IF EXISTS (
 SELECT IdEstado
    FROM dbo.tbPeddEstado
    WHERE (@IdEstado IS NULL OR @IdEstado=IdEstado)
   AND (@CodEstado IS NULL OR @CodEstado=CodEstado)
   AND (@NomEstado IS NULL OR @NomEstado=NomEstado)
 )
 SET @exists = 1
 ELSE SET @exists = 0

GO
/****** Object:  StoredProcedure [dbo].[spPeddEstado_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEstado_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEstado_Insert] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 22/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddEstado_Insert]
  @IdEstado TINYINT = NULL
 ,@CodEstado VARCHAR(5) = NULL
 ,@NomEstado VARCHAR(60) = NULL
AS
 SET NOCOUNT OFF;

    INSERT INTO dbo.tbPeddEstado(
     IdEstado
    ,CodEstado
    ,NomEstado
 )
 VALUES(
     @IdEstado
    ,@CodEstado
    ,@NomEstado
 )
-- =====DELETE==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddEstado_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEstado_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEstado_SelAll] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddEstado_SelAll]
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Listar todos los estados       
Creado por        : Victor Concha                                   
Fecha de Creacion : 22/09/2019                              
Comando Prueba    : EXEC dbo.spPeddEstado_SelAll
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Practica                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
 
  SELECT IdEstado,
         CodEstado,
         NomEstado
  FROM  dbo.tbPeddEstado

  RETURN 0
 END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddEstado_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEstado_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEstado_Select] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 22/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddEstado_Select]
  @IdEstado TINYINT = NULL
 ,@CodEstado VARCHAR(5) = NULL
 ,@NomEstado VARCHAR(60) = NULL
AS
 SET NOCOUNT OFF;

    SELECT IdEstado
    ,CodEstado
    ,NomEstado
    FROM tbPeddEstado
    WHERE (@IdEstado IS NULL OR @IdEstado=IdEstado)
   AND (@CodEstado IS NULL OR @CodEstado=CodEstado)
   AND (@NomEstado IS NULL OR @NomEstado=NomEstado)
-- =====SELECT==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddEstado_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddEstado_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddEstado_Update] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 22/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddEstado_Update]
(
  @IdEstado TINYINT = NULL
 ,@CodEstado VARCHAR(5) = NULL
 ,@NomEstado VARCHAR(60) = NULL
) 
AS
 SET NOCOUNT OFF;

    UPDATE do.tbPeddEstado SET 
      CodEstado = @CodEstado
     ,NomEstado = @NomEstado
    WHERE (@IdEstado IS NULL OR @IdEstado=IdEstado)
   AND (@CodEstado IS NULL OR @CodEstado=CodEstado)
   AND (@NomEstado IS NULL OR @NomEstado=NomEstado)
-- =====SELECT==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[SpPeddEvaluacionActiva_SelByEmp]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddEvaluacionActiva_SelByEmp]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddEvaluacionActiva_SelByEmp] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddEvaluacionActiva_SelByEmp]
(
 @IdEmpleado INT = NULL,
 @IdCompania INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Buscar las evaluaciones para un empleado evaluado       
Creado por        : Victor Concha                                   
Fecha de Creacion : 05/10/2019                                                                    
Comando Prueba    : EXEC dbo.SpPeddEvaluacionActiva_SelByEmp 1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  DECLARE @dfActual DATETIME

  SET @dfActual = GETDATE()

  SELECT CbEv.IdCompania,
         CbEv.IdCabEvaluacion,
         CbEv.NomEvaluacion,
         CONVERT(VARCHAR(10),CbEv.dfInicio,103) AS dfInicio,
         CONVERT(VARCHAR(10),CbEv.dfTermino,103) AS dfTermino
  FROM   dbo.tbPeddCabEvaluacion CbEv,
         dbo.tbPeddParticipanteEvaluacion PrEv,
         dbo.tbPeddTipoParticipante TpEv
  WHERE  CbEv.IdCompania      = @IdCompania
  AND    @dfActual      BETWEEN CbEv.dfInicio AND CbEv.dfTermino
  AND    PrEv.IdCabEvaluacion = CbEv.IdCabEvaluacion
  AND    PrEv.IdEmpleado      = @IdEmpleado
  AND    TpEv.IdTipoParticipante = PrEv.IdTipoParticipante
  AND    TpEv.NomParticipante    = 'EVALUADO'
  
  RETURN 0
  
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddEvaluacionActiva_SelByJef]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddEvaluacionActiva_SelByJef]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddEvaluacionActiva_SelByJef] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddEvaluacionActiva_SelByJef]
(
 @IdEmpleado INT = NULL,
 @IdCompania INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Buscar las evaluaciones de un evaluador       
Creado por        : Victor Concha                                   
Fecha de Creacion : 05/10/2019                                                                    
Comando Prueba    : EXEC dbo.SpPeddEvaluacionActiva_SelByJef 1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  DECLARE @dfActual DATETIME

  SET @dfActual = GETDATE()

  SELECT CbEv.IdCompania,
         CbEv.IdCabEvaluacion,
         CbEv.NomEvaluacion,
         CONVERT(VARCHAR(10),CbEv.dfInicio,103) AS dfInicio,
         CONVERT(VARCHAR(10),CbEv.dfTermino,103) AS dfTermino,
         (
          (
          ISNULL(
                 (
                  SELECT COUNT(Doj.NotaObjetivo)
                  FROM   dbo.tbPeddDetObjetivoEvaluacion Doj,
                         dbo.tbPeddObjetivoEvaluacion Obj
                  WHERE  Obj.IdCabEvaluacion = CbEv.IdCabEvaluacion
                  AND    Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                  AND    Doj.NotaObjetivo > 0
                 ),0 
                )
          ) * 1.00
          /
          (
          CASE
           WHEN ISNULL(
                       (
                        SELECT COUNT(Doj.NotaObjetivo)
                        FROM   dbo.tbPeddDetObjetivoEvaluacion Doj,
                               dbo.tbPeddObjetivoEvaluacion Obj
                        WHERE  Obj.IdCabEvaluacion = CbEv.IdCabEvaluacion
                        AND    Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                       ),1
                      ) = 1 THEN 1
           WHEN ISNULL(
                       (
                        SELECT COUNT(Doj.NotaObjetivo)
                        FROM   dbo.tbPeddDetObjetivoEvaluacion Doj,
                               dbo.tbPeddObjetivoEvaluacion Obj
                        WHERE  Obj.IdCabEvaluacion = CbEv.IdCabEvaluacion
                        AND    Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                       ),1
                      ) = 0 THEN 1
           ELSE (
                 SELECT COUNT(Doj.NotaObjetivo)
                 FROM   dbo.tbPeddDetObjetivoEvaluacion Doj,
                               dbo.tbPeddObjetivoEvaluacion Obj
                 WHERE  Obj.IdCabEvaluacion = CbEv.IdCabEvaluacion
                 AND    Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                )
          END         
          ) * 1.00   
         ) * 100 AS Avance
  INTO   #TpEvalActiva       
  FROM   dbo.tbPeddCabEvaluacion CbEv,
         dbo.tbPeddParticipanteEvaluacion PrEv,
         dbo.tbPeddTipoParticipante TpEv
  WHERE  CbEv.IdCompania      = @IdCompania
  AND    @dfActual      BETWEEN CbEv.dfInicio AND CbEv.dfTermino
  AND    PrEv.IdCabEvaluacion = CbEv.IdCabEvaluacion
  AND    PrEv.IdEmpleado      = @IdEmpleado
  AND    TpEv.IdTipoParticipante = PrEv.IdTipoParticipante
  AND    TpEv.NomParticipante    = 'EVALUADOR'
  
  
  SELECT IdCompania,
         IdCabEvaluacion,
         NomEvaluacion,
         dfInicio,
         dfTermino,
         CONVERT(INT,Avance) AS Avance
  FROM   #TpEvalActiva 
  
  
  IF OBJECT_ID('tempdb..#TpEvalActiva') IS NOT NULL
    DROP TABLE #TpEvalActiva
  
  RETURN 0
  
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddFaseEvaluacion_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddFaseEvaluacion_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddFaseEvaluacion_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddFaseEvaluacion_Delete]
(
  @IdFaseEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Elimina una Fase de Evaluacion        
Creado por        : Victor Concha                                   
Fecha de Creacion : 30/11/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddFaseEvaluacion_Delete 1400
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  DELETE dbo.tbPeddFaseEvaluacion
  WHERE  IdFaseEvaluacion = @IdFaseEvaluacion
    
  IF @@ERROR != 0
   RETURN -1
    
    
  RETURN 0

 END
   
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddFaseEvaluacion_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddFaseEvaluacion_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddFaseEvaluacion_Exists] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 29/09/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddFaseEvaluacion_Exists]
  @IdFaseEvaluacion INT = NULL
 ,@IdCabEvaluacion INT = NULL
 ,@IdTipoFaseEval INT = NULL
 ,@dfInicio DATETIME = NULL
 ,@dfTermino DATETIME = NULL
 ,@NumOrden SMALLINT = NULL
 ,@IdEstado TINYINT = NULL
 ,@exists BIT OUT
AS

    IF EXISTS (
 SELECT IdFaseEvaluacion
    FROM dbo.tbPeddFaseEvaluacion
    WHERE (@IdFaseEvaluacion IS NULL OR @IdFaseEvaluacion=IdFaseEvaluacion)
   AND (@IdCabEvaluacion IS NULL OR @IdCabEvaluacion=IdCabEvaluacion)
   AND (@IdTipoFaseEval IS NULL OR @IdTipoFaseEval=IdTipoFaseEval)
   AND (@dfInicio IS NULL OR @dfInicio=dfInicio)
   AND (@dfTermino IS NULL OR @dfTermino=dfTermino)
   AND (@NumOrden IS NULL OR @NumOrden=NumOrden)
   AND (@IdEstado IS NULL OR @IdEstado=IdEstado)
 )
 SET @exists = 1
 ELSE SET @exists = 0

GO
/****** Object:  StoredProcedure [dbo].[spPeddFaseEvaluacion_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddFaseEvaluacion_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddFaseEvaluacion_Insert] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddFaseEvaluacion_Insert]
(
 @IdCabEvaluacion INT = NULL,
 @IdTipoFaseEval INT = NULL,
 @dfInicio VARCHAR(10) = NULL,
 @dfTermino VARCHAR(10) = NULL,
 @NumOrden SMALLINT = NULL,
 @IdEstado TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Inserta Fases de una Evaluacion        
Creado por        : Victor Concha                                   
Fecha de Creacion : 30/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddFaseEvaluacion_Insert 1,1,'01/04/2019','30/04/2019',1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  INSERT INTO dbo.tbPeddFaseEvaluacion
  (
   IdCabEvaluacion,
   IdTipoFaseEval,
   dfInicio,
   dfTermino,
   NumOrden,
   IdEstado
  )
  VALUES
  (
   @IdCabEvaluacion,
   @IdTipoFaseEval,
   @dfInicio,
   @dfTermino,
   @NumOrden,
   @IdEstado
  )
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar grabar Fase de una Evaluación.',16,1)
   END

  RETURN 0
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddFaseEvaluacion_SelByEval]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddFaseEvaluacion_SelByEval]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddFaseEvaluacion_SelByEval] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddFaseEvaluacion_SelByEval]
(
 @IdCabEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Listar todas las fases de una evaluacion           
Creado por        : Victor Concha                                   
Fecha de Creacion : 29/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddFaseEvaluacion_SelByEval 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SELECT IdFaseEvaluacion,
         IdCabEvaluacion,
         IdTipoFaseEval,
         dfInicio,
         dfTermino,
         NumOrden,
         IdEstado
  FROM   dbo.tbPeddFaseEvaluacion
  WHERE  IdCabEvaluacion = @IdCabEvaluacion
    
  RETURN 0  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddFaseEvaluacion_SelByEvalAct]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddFaseEvaluacion_SelByEvalAct]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddFaseEvaluacion_SelByEvalAct] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddFaseEvaluacion_SelByEvalAct]
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Listar todas las fases de una evaluacion activa         
Creado por        : Victor Concha                                   
Fecha de Creacion : 29/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddFaseEvaluacion_SelByEvalAct 
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  DECLARE @dfActual DATETIME
  
  SET @dfActual = GETDATE()
 
  SELECT ISNULL(Fe.IdFaseEvaluacion,0) AS IdFaseEvaluacion,
         Ce.IdCabEvaluacion,
         Ce.NomEvaluacion,
         ISNULL(Fe.IdTipoFaseEval,0) AS IdTipoFaseEval,
         CASE 
          WHEN ISNULL(Fe.dfInicio,'') = '' THEN ''
          ELSE  CONVERT(VARCHAR(10),Fe.dfInicio,103)
         END  AS dfInicio,
         CASE 
          WHEN ISNULL(Fe.dfTermino,'') = '' THEN ''
          ELSE CONVERT(VARCHAR(10),Fe.dfTermino,103)
         END  AS dfTermino,
         ISNULL(Fe.NumOrden,0) AS NumOrden,
         ISNULL(Fe.IdEstado,0) AS IdEstado,
         (
          SELECT COUNT(1)
          FROM   dbo.tbPeddFaseEvaluacion Fev
          WHERE  Fev.IdCabEvaluacion = Ce.IdCabEvaluacion 
         ) AS NumFases,
         (
          SELECT TfEval.NomTipoFaseEval
          FROM   dbo.tbPeddTipoFaseEval TfEval
          WHERE  TfEval.IdTipoFaseEval = Fe.IdTipoFaseEval 
         ) AS NomTipoFaseEval
  FROM   dbo.tbPeddCabEvaluacion Ce
  LEFT JOIN  dbo.tbPeddFaseEvaluacion Fe
  ON     Ce.IdCabEvaluacion = Fe.IdCabEvaluacion
  WHERE  @dfActual BETWEEN Ce.dfInicio AND Ce.dfTermino
    
  RETURN 0  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddFaseEvaluacion_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddFaseEvaluacion_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddFaseEvaluacion_Select] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddFaseEvaluacion_Select]
(
  @IdFaseEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener una fase de una evaluacion por Id         
Creado por        : Victor Concha                                   
Fecha de Creacion : 03/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddFaseEvaluacion_Select 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT IdFaseEvaluacion,
         IdCabEvaluacion,
         IdTipoFaseEval,
         CONVERT(VARCHAR(10),dfInicio,103) AS dfInicio,
         CONVERT(VARCHAR(10),dfTermino,103) AS dfTermino,
         NumOrden,
         IdEstado
  FROM   dbo.tbPeddFaseEvaluacion
  WHERE  IdFaseEvaluacion = @IdFaseEvaluacion
   
  RETURN 0 
  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddFaseEvaluacion_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddFaseEvaluacion_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddFaseEvaluacion_Update] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddFaseEvaluacion_Update]
(
 @IdFaseEvaluacion INT = NULL,
 @StInicio         VARCHAR(10) = NULL,
 @StTermino        VARCHAR(10) = NULL,
 @IdEstado         TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Elimina una Fase de Evaluacion        
Creado por        : Victor Concha                                   
Fecha de Creacion : 30/11/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddFaseEvaluacion_Update 1400, '01/01/2019', '01/04/2019'
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
   DECLARE @dfInicio   DATETIME,
           @dfTermino  DATETIME
 
  SELECT @dfInicio = CONVERT(DATETIME,@StInicio,103)
  SELECT @dfTermino = CONVERT(DATETIME,@StTermino,103)

  UPDATE dbo.tbPeddFaseEvaluacion 
  SET    dfInicio  = @dfInicio,
         dfTermino = @dfTermino,
         IdEstado  = @IdEstado
  WHERE  IdFaseEvaluacion = @IdFaseEvaluacion

  IF @@ERROR != 0
   RETURN -1

  RETURN 0

 END

SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddGrupoEvaluacion_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddGrupoEvaluacion_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddGrupoEvaluacion_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddGrupoEvaluacion_Delete]
(
  @IdGrupoEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar un registro grupo de evaluacion.
Creado por        : Victor Concha                                   
Fecha de Creacion : 08/12/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddGrupoEvaluacion_Delete 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  DELETE dbo.tbPeddGrupoEvaluacion
  WHERE  IdGrupoEvaluacion = @IdGrupoEvaluacion
   
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al eliminar un Grupo de Evaluacion',16,1)
    RETURN -1
   END
   
  RETURN 0 
   
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddGrupoEvaluacion_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddGrupoEvaluacion_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddGrupoEvaluacion_Exists] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddGrupoEvaluacion_Exists]
(
 @IdCabEvaluacion INT = NULL,
 @IdEvaluador     INT = NULL,
 @IdEmpleado      INT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Comprueba que existe un grupo de evaluacion.
Creado por        : Victor Concha                                   
Fecha de Creacion : 08/12/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddGrupoEvaluacion_Exists 1,1,2
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  DECLARE @Existe CHAR(1)
 
  IF EXISTS (
             SELECT IdGrupoEvaluacion
             FROM   dbo.tbPeddGrupoEvaluacion
             WHERE  IdCabEvaluacion = @IdCabEvaluacion
             AND    IdEvaluador     = @IdEvaluador
             AND    IdEmpleado      = @IdEmpleado
            )
    SET @Existe = 'S'
   ELSE 
    SET @Existe = 'N'
    
    
   SELECT @Existe
    
   RETURN 0
   
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddGrupoEvaluacion_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddGrupoEvaluacion_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddGrupoEvaluacion_Insert] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddGrupoEvaluacion_Insert]
(
 @IdCabEvaluacion   INT = NULL,
 @IdEvaluador       INT = NULL,
 @IdEmpleado        INT = NULL,
 @IdEstado          TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Insertar grupo de evaluacion con su respectivo evaluador.  
Creado por        : Victor Concha                                   
Fecha de Creacion : 08/12/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddGrupoEvaluacion_Insert 1,1,2,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  INSERT INTO dbo.tbPeddGrupoEvaluacion
  (
   IdCabEvaluacion,
   IdEvaluador,
   IdEmpleado,
   IdEstado
  )
  VALUES
  (
   @IdCabEvaluacion,
   @IdEvaluador,
   @IdEmpleado,
   @IdEstado
  )

  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al insertar un Grupo de Evaluacion',16,1)
    RETURN -1
   END
 
  SELECT @@IDENTITY AS 'IdGrupoEvaluacion'

  RETURN 0
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddGrupoEvaluacion_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddGrupoEvaluacion_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddGrupoEvaluacion_SelAll] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddGrupoEvaluacion_SelAll]
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Lista todos los grupos de evaluacion.
Creado por        : Victor Concha                                   
Fecha de Creacion : 08/12/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddGrupoEvaluacion_SelAll
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
   SELECT IdGrupoEvaluacion,
          IdCabEvaluacion,
          IdEvaluador,
          IdEmpleado,
          IdEstado
   FROM   dbo.tbPeddGrupoEvaluacion
   
  RETURN 0
 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddGrupoEvaluacion_SelByJefe]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddGrupoEvaluacion_SelByJefe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddGrupoEvaluacion_SelByJefe] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddGrupoEvaluacion_SelByJefe]
(
  @IdCabEvaluacion INT = NULL,
  @IdEvaluador     INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtiene listado de evaluados de un evaluador
Creado por        : Victor Concha                                   
Fecha de Creacion : 08/12/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddGrupoEvaluacion_SelByJefe 1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

   SELECT GEval.IdGrupoEvaluacion,
          GEval.IdCabEvaluacion,
          GEval.IdEvaluador,
          GEval.IdEmpleado,
          Emp.AplPatEmpleado + ' ' + Emp.AplMatEmpleado + ' ' + Emp.NomEmpleado AS NomEmpleado,
          GEval.IdEstado
   FROM   dbo.tbPeddGrupoEvaluacion GEval,
          dbo.tbPeddEmpleado Emp
   WHERE  GEval.IdCabEvaluacion = @IdCabEvaluacion
   AND    GEval.IdEvaluador     = @IdEvaluador
   AND    Emp.IdEmpleado        = GEval.IdEmpleado 

   RETURN 0

 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddGrupoEvaluacion_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddGrupoEvaluacion_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddGrupoEvaluacion_Select] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddGrupoEvaluacion_Select]
(
  @IdGrupoEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtiene un grupo de evaluacion.
Creado por        : Victor Concha                                   
Fecha de Creacion : 08/12/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddGrupoEvaluacion_Select 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

   SELECT IdGrupoEvaluacion,
          IdCabEvaluacion,
          IdEvaluador,
          IdEmpleado,
          IdEstado
   FROM   dbo.tbPeddGrupoEvaluacion
   WHERE  IdGrupoEvaluacion = @IdGrupoEvaluacion

   RETURN 0

 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddGrupoEvaluacion_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddGrupoEvaluacion_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddGrupoEvaluacion_Update] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddGrupoEvaluacion_Update]
(
 @IdGrupoEvaluacion INT = NULL,
 @IdCabEvaluacion   INT = NULL,
 @IdEvaluador       INT = NULL,
 @IdEmpleado        INT = NULL,
 @IdEstado          TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtiene un grupo de evaluacion.
Creado por        : Victor Concha                                   
Fecha de Creacion : 08/12/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddGrupoEvaluacion_Update 1,1,1,2,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  UPDATE dbo.tbPeddGrupoEvaluacion 
  SET    IdCabEvaluacion = @IdCabEvaluacion,
         IdEvaluador     = @IdEvaluador,
         IdEmpleado      = @IdEmpleado,
         IdEstado        = @IdEstado
  WHERE  IdGrupoEvaluacion = @IdGrupoEvaluacion

  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al actualizar un Grupo de Evaluacion',16,1)
    RETURN -1
   END

  RETURN 0

 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddObjetivoEvaluacion_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddObjetivoEvaluacion_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddObjetivoEvaluacion_Delete] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 06/10/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddObjetivoEvaluacion_Delete]
  @IdObjetivoEvaluacion INT = NULL
 ,@IdCabEvaluacion INT = NULL
 ,@IdEvaluador INT = NULL
 ,@IdEvaluado INT = NULL
 ,@IdEstado TINYINT = NULL
AS
 SET NOCOUNT OFF;

    DELETE FROM tbPeddObjetivoEvaluacion
    WHERE (@IdObjetivoEvaluacion IS NULL OR @IdObjetivoEvaluacion=IdObjetivoEvaluacion)
   AND (@IdCabEvaluacion IS NULL OR @IdCabEvaluacion=IdCabEvaluacion)
   AND (@IdEvaluador IS NULL OR @IdEvaluador=IdEvaluador)
   AND (@IdEvaluado IS NULL OR @IdEvaluado=IdEvaluado)
   AND (@IdEstado IS NULL OR @IdEstado=IdEstado)
-- =====UPDATE==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddObjetivoEvaluacion_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddObjetivoEvaluacion_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddObjetivoEvaluacion_Exists] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 06/10/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddObjetivoEvaluacion_Exists]
  @IdObjetivoEvaluacion INT = NULL
 ,@IdCabEvaluacion INT = NULL
 ,@IdEvaluador INT = NULL
 ,@IdEvaluado INT = NULL
 ,@IdEstado TINYINT = NULL
 ,@exists BIT OUT
AS
 SET NOCOUNT OFF;

    IF EXISTS (
 SELECT IdObjetivoEvaluacion
    FROM dbo.tbPeddObjetivoEvaluacion
    WHERE (@IdObjetivoEvaluacion IS NULL OR @IdObjetivoEvaluacion=IdObjetivoEvaluacion)
   AND (@IdCabEvaluacion IS NULL OR @IdCabEvaluacion=IdCabEvaluacion)
   AND (@IdEvaluador IS NULL OR @IdEvaluador=IdEvaluador)
   AND (@IdEvaluado IS NULL OR @IdEvaluado=IdEvaluado)
   AND (@IdEstado IS NULL OR @IdEstado=IdEstado)
 )
 SET @exists = 1
 ELSE SET @exists = 0

GO
/****** Object:  StoredProcedure [dbo].[spPeddObjetivoEvaluacion_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddObjetivoEvaluacion_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddObjetivoEvaluacion_Insert] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddObjetivoEvaluacion_Insert]
(
 @IdCabEvaluacion INT     = NULL,
 @IdEvaluador     INT     = NULL,
 @IdEvaluado      INT     = NULL,
 @IdEstado        TINYINT = NULL
) 
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Inserta Objetivos de una Evaluacion        
Creado por        : Victor Concha                                   
Fecha de Creacion : 12/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddObjetivoEvaluacion_Insert 1,1,1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  MOTIVO                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  INSERT INTO dbo.tbPeddObjetivoEvaluacion
  (
   IdCabEvaluacion,
   IdEvaluador,
   IdEvaluado,
   IdEstado
  )
  VALUES
  (
   @IdCabEvaluacion,
   @IdEvaluador,
   @IdEvaluado,
   @IdEstado
  )
 
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al insertar un Objetivo de Evaluacion',16,1)
    RETURN -1
   END
 
  SELECT @@IDENTITY AS 'IdObjetivoEvaluacion'
  
  RETURN 0
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddObjetivoEvaluacion_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddObjetivoEvaluacion_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddObjetivoEvaluacion_SelAll] AS' 
END
GO
-- =============================================
-- Author:  TU_NOMBRE
-- Create date: 06/10/19
-- =============================================
ALTER PROCEDURE [dbo].[spPeddObjetivoEvaluacion_SelAll]
AS
 SET NOCOUNT OFF;

    SELECT IdObjetivoEvaluacion
    ,IdCabEvaluacion
    ,IdEvaluador
    ,IdEvaluado
    ,IdEstado
    FROM dbo.tbPeddObjetivoEvaluacion
-- =====EXISTS==================================
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddObjetivoEvaluacion_SelByEval]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddObjetivoEvaluacion_SelByEval]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddObjetivoEvaluacion_SelByEval] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddObjetivoEvaluacion_SelByEval]
(
 @IdCabEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Listar objetivos de un empleado (para una evaluacion en curso)
Creado por        : Victor Concha                                   
Fecha de Creacion : 07/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddObjetivoEvaluacion_SelByEval 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
  SELECT ISNULL(Ob.IdObjetivoEvaluacion,0) AS IdObjetivoEvaluacion,
         Ev.IdCabEvaluacion,
         ISNULL(Ob.IdEvaluador,0) AS IdEvaluador,
         Pr.IdEmpleado AS IdEvaluado,
         (
          SELECT Em.AplPatEmpleado + ' ' + Em.AplMatEmpleado  + ' '  + Em.NomEmpleado
          FROM   dbo.tbPeddEmpleado Em
          WHERE  Em.IdEmpleado = Pr.IdEmpleado
         ) AS NomEmpleado,
         ISNULL(Ob.IdEstado,0) AS IdEstado
  FROM   dbo.tbPeddCabEvaluacion Ev
  LEFT JOIN dbo.tbPeddObjetivoEvaluacion Ob
  ON   Ev.IdCabEvaluacion = Ob.IdCabEvaluacion       
  INNER JOIN dbo.tbPeddParticipanteEvaluacion Pr
  ON   Ev.IdCabEvaluacion = Pr.IdCabEvaluacion 
  AND  Pr.IdTipoParticipante = (
                                SELECT IdTipoParticipante
                                FROM   dbo.tbPeddTipoParticipante
                                WHERE  NomParticipante = 'EVALUADO'
                               )
  WHERE  Ev.IdCabEvaluacion = @IdCabEvaluacion


  RETURN 0

 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[SpPeddObjetivoEvaluacion_SelByJefe]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddObjetivoEvaluacion_SelByJefe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddObjetivoEvaluacion_SelByJefe] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddObjetivoEvaluacion_SelByJefe]
(
 @IdCabEvaluacion INT = NULL,
 @IdEvaluador     INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener listado por Evaluador        
Creado por        : Victor Concha                                   
Fecha de Creacion : 13/10/2019                                                                    
Comando Prueba    : EXEC dbo.SpPeddObjetivoEvaluacion_SelByJefe 1,1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT Obj.IdObjetivoEvaluacion ,
         Obj.IdCabEvaluacion      ,
         Evl.NomEvaluacion        ,
         Obj.IdEvaluador          ,
         Obj.IdEvaluado           ,
         Emp.AplPatEmpleado + ' ' + Emp.AplMatEmpleado + ' ' + Emp.NomEmpleado AS NombreEvaluado,
         (
          (
          ISNULL(
                 (
                  SELECT COUNT(NotaObjetivo)
                  FROM   dbo.tbPeddDetObjetivoEvaluacion Doj
                  WHERE  Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                  AND    Doj.NotaObjetivo > 0
                 ),0 
                )
          ) * 1.00
          /
          (
          CASE
           WHEN ISNULL(
                       (
                        SELECT COUNT(NotaObjetivo)
                        FROM   dbo.tbPeddDetObjetivoEvaluacion Doj
                        WHERE  Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                       ),1
                      ) = 1 THEN 1
           WHEN ISNULL(
                       (
                        SELECT COUNT(NotaObjetivo)
                        FROM   dbo.tbPeddDetObjetivoEvaluacion Doj
                        WHERE  Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                       ),1
                      ) = 0 THEN 1
           ELSE (
                 SELECT COUNT(NotaObjetivo)
                 FROM   dbo.tbPeddDetObjetivoEvaluacion Doj
                 WHERE  Doj.IdObjetivoEvaluacion = Obj.IdObjetivoEvaluacion
                )
          END         
          ) * 1.00   
         ) * 100 AS Avance,
         Obj.IdEstado
  INTO   #TpSalida       
  FROM   dbo.tbPeddObjetivoEvaluacion Obj,
         dbo.tbPeddCabEvaluacion Evl,
         dbo.tbPeddEmpleado Emp
  WHERE  Obj.IdCabEvaluacion = @IdCabEvaluacion
  AND    Obj.IdEvaluador     = @IdEvaluador
  AND    Evl.IdCabEvaluacion = Obj.IdCabEvaluacion  
  AND    Emp.IdEmpleado      = Obj.IdEvaluado 
 
 
  SELECT IdObjetivoEvaluacion ,
         IdCabEvaluacion      ,
         NomEvaluacion        ,
         IdEvaluador          ,
         IdEvaluado           ,
         NombreEvaluado       ,
         CONVERT(INT,Avance) AS Avance,
         IdEstado
  FROM   #TpSalida 
 
  IF OBJECT_ID('tempdb..#TpSalida') IS NOT NULL
    DROP TABLE #TpSalida
 
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddParticipanteEvaluacion_InsByAfun]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddParticipanteEvaluacion_InsByAfun]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsByAfun] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsByAfun]
(
 @IdCabEvaluacion INT = NULL,
 @IdAreaFuncional INT = NULL
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Insertar Participantes por Area Funcional 
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/10/2019                              
Comando Prueba    : EXEC dbo.SpPeddParticipanteEvaluacion_InsByAfun 1,1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  
  --EVALUADOS
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdAreaFuncional  = @IdAreaFuncional
  AND    Em.flgEvaluado      = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADO'
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluado.',16,1)
    RETURN -1
   END
   
  --EVALUADORES 
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdAreaFuncional  = @IdAreaFuncional
  AND    Em.flgEvaluador     = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADOR'
   
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluador.',16,1)
    RETURN -1
   END 
 
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddParticipanteEvaluacion_InsByCom]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddParticipanteEvaluacion_InsByCom]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsByCom] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsByCom]
(
 @IdCabEvaluacion INT = NULL,
 @IdCompania      INT = NULL
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Insertar Participantes por Compania    
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/10/2019                              
Comando Prueba    : EXEC dbo.SpPeddParticipanteEvaluacion_InsByCom 1,1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  
  --EVALUADOS
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdCompania       = @IdCompania
  AND    Em.flgEvaluado      = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADO'
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluado.',16,1)
    RETURN -1
   END
   
   
   
  --EVALUADORES 
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdCompania       = @IdCompania
  AND    Em.flgEvaluador     = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADOR'
   
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluador.',16,1)
    RETURN -1
   END 
  
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddParticipanteEvaluacion_InsByDep]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddParticipanteEvaluacion_InsByDep]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsByDep] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsByDep]
(
 @IdCabEvaluacion INT = NULL,
 @IdDepartamento  INT = NULL
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Insertar Participantes por Departamento    
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/10/2019                              
Comando Prueba    : EXEC dbo.SpPeddParticipanteEvaluacion_InsByDep 1,1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  
  --EVALUADOS
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdDepartamento   = @IdDepartamento
  AND    Em.flgEvaluado      = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADO'
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluado.',16,1)
    RETURN -1
   END
   
  --EVALUADORES 
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdDepartamento   = @IdDepartamento
  AND    Em.flgEvaluador     = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADOR'
   
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluador.',16,1)
    RETURN -1
   END 
  
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddParticipanteEvaluacion_InsBySuc]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddParticipanteEvaluacion_InsBySuc]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsBySuc] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_InsBySuc]
(
 @IdCabEvaluacion INT = NULL,
 @IdSucursal      INT = NULL
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Insertar Participantes por Sucursal    
Creado por        : Victor Concha                                   
Fecha de Creacion : 10/10/2019                              
Comando Prueba    : EXEC dbo.SpPeddParticipanteEvaluacion_InsBySuc 1,1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  
  --EVALUADOS
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdSucursal       = @IdSucursal
  AND    Em.flgEvaluado      = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADO'
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluado.',16,1)
    RETURN -1
   END
   
  --EVALUADORES 
  INSERT INTO dbo.tbPeddParticipanteEvaluacion
  (
   IdCabEvaluacion    ,
   IdTipoParticipante ,
   IdEmpleado         ,
   IdEstado
  )
  SELECT @IdCabEvaluacion   ,
         Tpp.IdTipoParticipante,
         Em.IdEmpleado         ,
         Est.IdEstado
  FROM   dbo.tbPeddEmpleado Em,
         dbo.tbPeddEstado Est,
         dbo.tbPeddTipoParticipante Tpp
  WHERE  Em.IdSucursal       = @IdSucursal
  AND    Em.flgEvaluador     = 1
  AND    Est.NomEstado       = 'VIGENTE'
  AND    Tpp.NomParticipante = 'EVALUADOR'
   
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar insertar Participante Evaluador.',16,1)
    RETURN -1
   END 
  
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddParticipanteEvaluacion_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddParticipanteEvaluacion_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_SelAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_SelAll]
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener todos los participantes de evaluaciones end curso
Creado por        : Victor Concha                                   
Fecha de Creacion : 23/11/2019                              
Comando Prueba    : EXEC dbo.SpPeddParticipanteEvaluacion_SelAll 
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  
  --EVALUADOS

  SELECT  Eval.IdCabEvaluacion         ,
          Eval.NomEvaluacion           ,
          Pte.IdParticipanteEvaluacion ,
          Pte.IdTipoParticipante       ,
          Tpt.NomParticipante          ,
          Pte.IdEmpleado               ,
          Emp.AplPatEmpleado + ' ' + Emp.AplMatEmpleado + ' ' + Emp.NomEmpleado AS NomEmpleado,
          Pte.IdEstado    
  FROM    dbo.tbPeddParticipanteEvaluacion Pte,
          dbo.tbPeddTipoParticipante Tpt,
          dbo.tbPeddEmpleado Emp,
          dbo.tbPeddCabEvaluacion Eval,
          dbo.tbPeddCompania Com
  --WHERE   Com.IdCompania         = @IdCompania
  WHERE   Eval.IdCompania        = Com.IdCompania
  AND     GETDATE()        BETWEEN Eval.dfInicio AND Eval.dfTermino
  AND     Pte.IdCabEvaluacion    = Eval.IdCabEvaluacion
  AND     Tpt.IdTipoParticipante = Pte.IdTipoParticipante
  AND     Emp.IdEmpleado         = Pte.IdEmpleado
  
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddParticipanteEvaluacion_SelByEval]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddParticipanteEvaluacion_SelByEval]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_SelByEval] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_SelByEval]
(
 @IdCabEvaluacion INT = NULL
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener Participantes por Compania
Creado por        : Victor Concha                                   
Fecha de Creacion : 11/10/2019                              
Comando Prueba    : EXEC dbo.SpPeddParticipanteEvaluacion_SelByEval 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  
  --EVALUADOS

  SELECT  Pte.IdParticipanteEvaluacion ,
          Pte.IdCabEvaluacion          ,
          Pte.IdTipoParticipante       ,
          Tpt.NomParticipante          ,
          Pte.IdEmpleado               ,
          Emp.AplPatEmpleado + ' ' + Emp.AplMatEmpleado + ' ' + Emp.NomEmpleado AS NomEmpleado,
          Pte.IdEstado    
  FROM    dbo.tbPeddParticipanteEvaluacion Pte,
          dbo.tbPeddTipoParticipante Tpt,
          dbo.tbPeddEmpleado Emp
  WHERE   Pte.IdCabEvaluacion    = @IdCabEvaluacion
  AND     Tpt.IdTipoParticipante = Pte.IdTipoParticipante
  AND     Emp.IdEmpleado         = Pte.IdEmpleado
 
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[SpPeddParticipanteEvaluacion_SelDist]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpPeddParticipanteEvaluacion_SelDist]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_SelDist] AS' 
END
GO
ALTER PROCEDURE [dbo].[SpPeddParticipanteEvaluacion_SelDist]
(
 @IdCabEvaluacion INT = NULL,
 @IdEvaluador     INT = NULL
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener todos los participantes de evaluaciones en curso
Creado por        : Victor Concha                                   
Fecha de Creacion : 09/12/2019                              
Comando Prueba    : EXEC dbo.SpPeddParticipanteEvaluacion_SelDist 1,1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  
  --EVALUADOS

  SELECT  DISTINCT
          Pte.IdEmpleado               ,
          Emp.AplPatEmpleado + ' ' + Emp.AplMatEmpleado + ' ' + Emp.NomEmpleado AS NomEmpleado,
          Pte.IdEstado
  INTO    #TpParticipantes          
  FROM    dbo.tbPeddCabEvaluacion Eval,
          dbo.tbPeddParticipanteEvaluacion Pte,
          dbo.tbPeddEmpleado Emp
  WHERE   Eval.IdCabEvaluacion   = @IdCabEvaluacion
  AND     GETDATE()        BETWEEN Eval.dfInicio AND Eval.dfTermino
  AND     Pte.IdCabEvaluacion    = Eval.IdCabEvaluacion
  AND     Emp.IdEmpleado         = Pte.IdEmpleado
  AND     Emp.IdEmpleado        != @IdEvaluador 
  AND     Emp.IdEmpleado NOT IN (
                                 SELECT IdEmpleado
                                 FROM   dbo.tbPeddGrupoEvaluacion
                                 WHERE  IdCabEvaluacion = Pte.IdCabEvaluacion
                                )

  
  SELECT IdEmpleado,
         NomEmpleado,
         IdEstado
  FROM   #TpParticipantes 
  ORDER BY NomEmpleado ASC
  
  DROP TABLE #TpParticipantes 
  
  
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddSucursal_Delete]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddSucursal_Delete]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddSucursal_Delete] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddSucursal_Delete]
(
 @IdSucursal INT = NULL,
 @IdEstado   TINYINT = NULL
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Eliminar una sucursal        
Creado por        : Victor Concha                                   
Fecha de Creacion : 17/09/2019                              
Comando Prueba    : EXEC dbo.spPeddSucursal_Delete 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Practica                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
 
  DELETE dbo.tbPeddSucursal
  WHERE IdSucursal = @IdSucursal

  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar eliminar una Sucursal.',16,1)
    RETURN -1
   END

  RETURN 0

 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddSucursal_Exists]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddSucursal_Exists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddSucursal_Exists] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddSucursal_Exists]
(
  @IdSucursal  INT = NULL,
  @NomSucursal VARCHAR(120) = NULL,
  @exists      BIT OUT
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Consultar existencia de una sucursal        
Creado por        : Victor Concha                                   
Fecha de Creacion : 17/09/2019                              
Comando Prueba    : DECLARE @exists BIT
                    EXEC dbo.spPeddSucursal_Exists NULL,'CASA MATRIZ', @exists OUT
                    SELECT @exists
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Practica                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN
  IF EXISTS (
             SELECT IdSucursal
             FROM   dbo.tbPeddSucursal
             WHERE  NomSucursal = @NomSucursal
            )
   SET @exists = 1
  ELSE 
   SET @exists = 0
 
  RETURN 0
 END

GO
/****** Object:  StoredProcedure [dbo].[spPeddSucursal_Insert]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddSucursal_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddSucursal_Insert] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddSucursal_Insert]
(
 @IdCompania   INT = NULL,
 @NomSucursal  VARCHAR(120) = NULL,
 @DirSucursal  VARCHAR(200) = NULL,
 @FonoCompania VARCHAR(15) = NULL,
 @IdEstado     TINYINT = NULL
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Insertar una sucursal        
Creado por        : Victor Concha                                   
Fecha de Creacion : 17/09/2019                              
Comando Prueba    : EXEC dbo.spPeddSucursal_Insert 1,'CASA MATRIZ','BLANCO 865, VALPARAISO','',1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Practica                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN

  INSERT INTO dbo.tbPeddSucursal
  (
   IdCompania,
   NomSucursal,
   DirSucursal,
   FonoCompania,
   IdEstado
  )
  VALUES
  (
   @IdCompania,
   @NomSucursal,
   @DirSucursal,
   @FonoCompania,
   @IdEstado
  )
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar grabar una sucursal.',16,1)
    RETURN -1
   END
  
  RETURN 0
 END 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddSucursal_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddSucursal_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddSucursal_SelAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddSucursal_SelAll]
(
 @IdCompania INT
)
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener todas las sucursales de una Empresa        
Creado por        : Victor Concha                                   
Fecha de Creacion : 20/09/2019                              
Comando Prueba    : EXEC dbo.spPeddSucursal_SelAll 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN

  SELECT IdSucursal,
         IdCompania,
         NomSucursal,
         DirSucursal,
         FonoCompania,
         IdEstado
  FROM   dbo.tbPeddSucursal
  WHERE  IdCompania = @IdCompania
    
  RETURN 0  
 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddSucursal_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddSucursal_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddSucursal_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddSucursal_Select]
(
  @IdSucursal INT = NULL
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener una sucursal por Id       
Creado por        : Victor Concha                                   
Fecha de Creacion : 20/09/2019                              
Comando Prueba    : EXEC dbo.spPeddSucursal_Select 1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Motivo                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN

  SELECT IdSucursal,
         IdCompania,
         NomSucursal,
         DirSucursal,
         FonoCompania,
         IdEstado
  FROM   dbo.tbPeddSucursal
  WHERE  IdSucursal = @IdSucursal
   
  RETURN 0
   
 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddSucursal_Update]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddSucursal_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddSucursal_Update] AS' 
END
GO

ALTER PROCEDURE [dbo].[spPeddSucursal_Update]
(
 @IdSucursal   INT = NULL,
 @IdCompania   INT = NULL,
 @NomSucursal  VARCHAR(120) = NULL,
 @DirSucursal  VARCHAR(200) = NULL,
 @FonoCompania VARCHAR(15) = NULL,
 @IdEstado     TINYINT = NULL
) 
AS
/*
======================================================================================= 
Sistema           : Core                                  
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtener una sucursal por Id       
Creado por        : Victor Concha                                   
Fecha de Creacion : 20/09/2019                              
Comando Prueba    : EXEC dbo.spPeddSucursal_Update 1,1,'CASA MATRIZ','BLANCO 895','32-222222',1
=======================================================================================
Modificaciones    :                                                                   
=======================================================================================
Fecha       Programador  Practica                                                           
---------------------------------------------------------------------------------------
=======================================================================================
*/
 BEGIN

  UPDATE dbo.tbPeddSucursal 
  SET    NomSucursal  = @NomSucursal,
         DirSucursal  = @DirSucursal,
         FonoCompania = @FonoCompania,
         IdEstado     = @IdEstado
  WHERE IdSucursal = @IdSucursal
  AND   IdCompania = @IdCompania
  
  IF @@ERROR != 0
   BEGIN
    RAISERROR('Error al intentar actualizar una Sucursal.',16,1)
    RETURN -1
   END

  RETURN 0  
 END
 
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddTipoEvaluacion_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddTipoEvaluacion_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddTipoEvaluacion_SelAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddTipoEvaluacion_SelAll]
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtner todas los Tipos de Evaluaciones           
Creado por        : Victor Concha                                   
Fecha de Creacion : 24/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddTipoEvaluacion_SelAll 
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  SELECT IdTipoEvaluacion,
         NomTipoEvaluacion,
         DesTipoEvaluacion,
         IdEstado
  FROM   dbo.tbPeddTipoEvaluacion
    
  RETURN 0  
 END
SET ANSI_NULLS ON

GO
/****** Object:  StoredProcedure [dbo].[spPeddTipoEvaluacion_Select]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddTipoEvaluacion_Select]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddTipoEvaluacion_Select] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddTipoEvaluacion_Select]
(
 @IdTipoEvaluacion INT = NULL
)
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtner Tipo de Evaluaciones por ID          
Creado por        : Victor Concha                                   
Fecha de Creacion : 09/10/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddTipoEvaluacion_Select 1
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Practica                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN

  SELECT IdTipoEvaluacion,
         NomTipoEvaluacion,
         DesTipoEvaluacion,
         IdEstado
  FROM   dbo.tbPeddTipoEvaluacion
  WHERE  IdTipoEvaluacion = @IdTipoEvaluacion
    
  RETURN 0  
 END
GO
/****** Object:  StoredProcedure [dbo].[spPeddTipoFaseEval_SelAll]    Script Date: 03-01-2020 21:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spPeddTipoFaseEval_SelAll]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spPeddTipoFaseEval_SelAll] AS' 
END
GO
ALTER PROCEDURE [dbo].[spPeddTipoFaseEval_SelAll]
AS
/*
===================================================================================================== 
Sistema           : Core                                                                             
Subsistema        : Plataforma de evaluacion de desempeno
Objetivo          : Obtner todas las Fases de una Evaluacion estandar        
Creado por        : Victor Concha                                   
Fecha de Creacion : 29/09/2019                                                                    
Comando Prueba    : EXEC dbo.spPeddTipoFaseEval_SelAll 
=====================================================================================================
Modificaciones    :                                                                                  
=====================================================================================================
Fecha       Programador  Motivo                                                                      
-----------------------------------------------------------------------------------------------------
=====================================================================================================
*/
 BEGIN
 
  SELECT IdTipoFaseEval  ,
         NomTipoFaseEval ,
         NomLargoTipoFaseEval,
         DesTipoFaseEval ,
         NumOrden        ,
         IdEstado
  FROM   dbo.tbPeddTipoFaseEval
  
  RETURN 0
  
 END

SET ANSI_NULLS OFF

GO
