USE [Hund_Tier]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Animal](
	[id_animal] [int] NOT NULL,
	[tipo_animal] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[raza_animal_perro] [int] NOT NULL,
	[raza_animal_gato] [int] NOT NULL,
	[sexo_animal] [int] NOT NULL,
	[tamano_animal] [int] NOT NULL,
	[edad_animal] [int] NOT NULL,
	[pelo_animal] [int] NOT NULL,
	[color1] [varchar](10) NOT NULL,
	[color2] [varchar](10) NULL,
	[id_castrado] [int] NULL,
	[con_crias] [int] NULL,
	[color_collar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Barrios] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Castracion]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Castracion](
	[id_castrado] [int] NOT NULL,
	[nombre] [nchar](10) NULL,
 CONSTRAINT [PK_Castracion] PRIMARY KEY CLUSTERED 
(
	[id_castrado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Edad_Animal]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Edad_Animal](
	[codigo_edad] [int] NOT NULL,
	[nombre_edad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Edad_Animal] PRIMARY KEY CLUSTERED 
(
	[codigo_edad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelo_Animal]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelo_Animal](
	[codigo_pelo] [int] NOT NULL,
	[nombre_pelo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_pelo_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_pelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Razas_Gatos]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Razas_Gatos](
	[id_raza] [int] NOT NULL,
	[nombre_raza] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Razas_Gatos] PRIMARY KEY CLUSTERED 
(
	[id_raza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Razas_Perros]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Razas_Perros](
	[id_raza] [int] NOT NULL,
	[nombre_raza] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Razas_Perros] PRIMARY KEY CLUSTERED 
(
	[id_raza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sexo_Animal]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sexo_Animal](
	[codigo_sexo] [int] NOT NULL,
	[nombre_sexo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sexo_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_sexo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tamano_Animal]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tamano_Animal](
	[codigo_tamano] [int] NOT NULL,
	[nombre_tamano] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tamano_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_tamano] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Animal]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Animal](
	[codigo_animal] [int] NOT NULL,
	[nombre_tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_animal] PRIMARY KEY CLUSTERED 
(
	[codigo_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Publicacion]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Publicacion](
	[id_tipo_publicacion] [int] NOT NULL,
	[nombre_publicacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_publicacion] PRIMARY KEY CLUSTERED 
(
	[id_tipo_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 20/9/2017 9:09:05 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[num_telefono] [varchar](50) NULL,
	[email] [varchar](50) NOT NULL,
	[id_barrio] [int] NOT NULL,
	[calle] [varchar](50) NULL,
	[numero] [varchar](50) NULL,
	[piso] [int] NULL,
	[departamento] [varchar](50) NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[habilitado] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Animal] ADD  DEFAULT ((0)) FOR [raza_animal_perro]
GO
ALTER TABLE [dbo].[Animal] ADD  DEFAULT ((0)) FOR [raza_animal_gato]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Castrado] FOREIGN KEY([id_castrado])
REFERENCES [dbo].[Castracion] ([id_castrado])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Castrado]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Edad] FOREIGN KEY([edad_animal])
REFERENCES [dbo].[Edad_Animal] ([codigo_edad])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Edad]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Pelo] FOREIGN KEY([pelo_animal])
REFERENCES [dbo].[Pelo_Animal] ([codigo_pelo])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Pelo]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Raza_Gato] FOREIGN KEY([raza_animal_gato])
REFERENCES [dbo].[Razas_Gatos] ([id_raza])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Raza_Gato]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Raza_Perro] FOREIGN KEY([raza_animal_perro])
REFERENCES [dbo].[Razas_Perros] ([id_raza])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Raza_Perro]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Sexo] FOREIGN KEY([sexo_animal])
REFERENCES [dbo].[Sexo_Animal] ([codigo_sexo])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Sexo]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Tamano] FOREIGN KEY([tamano_animal])
REFERENCES [dbo].[Tamano_Animal] ([codigo_tamano])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Tamano]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Tipo] FOREIGN KEY([id_animal])
REFERENCES [dbo].[Tipo_Animal] ([codigo_animal])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Tipo]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Barrios1] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Barrios1]
GO
