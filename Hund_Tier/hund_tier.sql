USE [master]
GO
/****** Object:  Database [Hund_Tier]    Script Date: 27/9/2017 2:21:21 p. m. ******/
CREATE DATABASE [Hund_Tier]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hund_Tier', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Hund_Tier.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hund_Tier_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Hund_Tier_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hund_Tier] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hund_Tier].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hund_Tier] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hund_Tier] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hund_Tier] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hund_Tier] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hund_Tier] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hund_Tier] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hund_Tier] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Hund_Tier] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hund_Tier] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hund_Tier] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hund_Tier] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hund_Tier] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hund_Tier] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hund_Tier] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hund_Tier] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hund_Tier] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hund_Tier] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hund_Tier] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hund_Tier] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hund_Tier] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hund_Tier] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hund_Tier] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hund_Tier] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hund_Tier] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hund_Tier] SET  MULTI_USER 
GO
ALTER DATABASE [Hund_Tier] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hund_Tier] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hund_Tier] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hund_Tier] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Hund_Tier]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 27/9/2017 2:21:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Animal](
	[id_animal] [int] NOT NULL,
	[cod_tipo_animal] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[cod_raza] [int] NOT NULL,
	[cod_sexo] [int] NOT NULL,
	[cod_tamano] [int] NOT NULL,
	[cod_edad] [int] NOT NULL,
	[cod_pelo] [int] NOT NULL,
	[color1] [int] NOT NULL,
	[color2] [int] NULL,
	[cod_castrado] [int] NULL,
	[con_crias] [varchar](10) NULL,
	[cod_color_collar] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_animal] ASC,
	[cod_tipo_animal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Castracion]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Colores]    Script Date: 27/9/2017 2:21:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Colores](
	[id_color] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Colores] PRIMARY KEY CLUSTERED 
(
	[id_color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Edad_Animal]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Estados_Publicacion]    Script Date: 27/9/2017 2:21:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados_Publicacion](
	[cod_estado] [int] NOT NULL,
	[nombre_estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estados_Publicacion] PRIMARY KEY CLUSTERED 
(
	[cod_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gatos]    Script Date: 27/9/2017 2:21:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gatos](
	[id_gato] [int] NOT NULL,
	[nombre_gato] [varchar](50) NOT NULL,
	[raza_gato] [int] NOT NULL,
	[sexo_gato] [int] NOT NULL,
	[tamano_gato] [int] NOT NULL,
	[edad_gato] [int] NOT NULL,
	[pelo_gato] [int] NOT NULL,
	[color1] [int] NOT NULL,
	[color2] [int] NULL,
	[condicion_castrado] [int] NOT NULL,
	[condicion_crias] [int] NULL,
	[color_collar] [int] NULL,
 CONSTRAINT [PK_Gatos] PRIMARY KEY CLUSTERED 
(
	[id_gato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pelo_Animal]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Perros]    Script Date: 27/9/2017 2:21:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perros](
	[id_perro] [int] NOT NULL,
	[nombre_perro] [varchar](50) NOT NULL,
	[raza_perro] [int] NOT NULL,
	[sexo_perro] [int] NOT NULL,
	[tamano_perro] [int] NOT NULL,
	[edad_perro] [int] NOT NULL,
	[pelo_perro] [int] NOT NULL,
	[color1] [int] NOT NULL,
	[color2] [int] NULL,
	[condicion_castrado] [int] NULL,
	[condicion_crias] [int] NULL,
	[color_collar] [int] NULL,
 CONSTRAINT [PK_Perros] PRIMARY KEY CLUSTERED 
(
	[id_perro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 27/9/2017 2:21:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Publicacion](
	[cod_publicacion] [int] NOT NULL,
	[tipo_animal] [int] NOT NULL,
	[id_animal] [int] NOT NULL,
	[tipo_publicacion] [int] NOT NULL,
	[fecha_publicacion] [datetime] NOT NULL,
	[fecha_cerrada_publicacion] [datetime] NULL,
	[barrio] [int] NOT NULL,
	[descripcion] [varchar](1000) NOT NULL,
	[usuario_responsable] [int] NOT NULL,
	[telefono2] [varchar](50) NULL,
	[estado_publicacion] [int] NOT NULL,
	[ciudad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cod_publicacion] ASC,
	[id_animal] ASC,
	[tipo_animal] ASC,
	[tipo_publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Razas]    Script Date: 27/9/2017 2:21:21 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Razas](
	[cod_raza] [int] NOT NULL,
	[cod_tipo_animal] [int] NOT NULL,
	[nombre_raza] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Razas] PRIMARY KEY CLUSTERED 
(
	[cod_raza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Razas_Gatos]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Razas_Perros]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Sexo_Animal]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Tamano_Animal]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Tipo_Animal]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Tipo_Publicacion]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
/****** Object:  Table [dbo].[Usuarios]    Script Date: 27/9/2017 2:21:21 p. m. ******/
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
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Castrado1] FOREIGN KEY([cod_castrado])
REFERENCES [dbo].[Castracion] ([id_castrado])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Castrado1]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Color_1] FOREIGN KEY([color1])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Color_1]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Color_2] FOREIGN KEY([color2])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Color_2]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Edad_Animal] FOREIGN KEY([cod_edad])
REFERENCES [dbo].[Edad_Animal] ([codigo_edad])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Edad_Animal]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Pelo_Animal] FOREIGN KEY([cod_pelo])
REFERENCES [dbo].[Pelo_Animal] ([codigo_pelo])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Pelo_Animal]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Razas] FOREIGN KEY([cod_raza])
REFERENCES [dbo].[Razas] ([cod_raza])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Razas]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Sexo1] FOREIGN KEY([cod_sexo])
REFERENCES [dbo].[Sexo_Animal] ([codigo_sexo])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Sexo1]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Tamano_animal] FOREIGN KEY([cod_tamano])
REFERENCES [dbo].[Tamano_Animal] ([codigo_tamano])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Tamano_animal]
GO
ALTER TABLE [dbo].[Animal]  WITH CHECK ADD  CONSTRAINT [FK_Animal_Tipo_Animal] FOREIGN KEY([cod_tipo_animal])
REFERENCES [dbo].[Tipo_Animal] ([codigo_animal])
GO
ALTER TABLE [dbo].[Animal] CHECK CONSTRAINT [FK_Animal_Tipo_Animal]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Colores1] FOREIGN KEY([color1])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Colores1]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Colores2] FOREIGN KEY([color2])
REFERENCES [dbo].[Colores] ([id_color])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Colores2]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Cond_Castrado] FOREIGN KEY([condicion_castrado])
REFERENCES [dbo].[Castracion] ([id_castrado])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Cond_Castrado]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Edad] FOREIGN KEY([edad_perro])
REFERENCES [dbo].[Edad_Animal] ([codigo_edad])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Edad]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Pelo] FOREIGN KEY([pelo_perro])
REFERENCES [dbo].[Pelo_Animal] ([codigo_pelo])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Pelo]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Razas] FOREIGN KEY([raza_perro])
REFERENCES [dbo].[Razas_Perros] ([id_raza])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Razas]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Sexos] FOREIGN KEY([sexo_perro])
REFERENCES [dbo].[Sexo_Animal] ([codigo_sexo])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Sexos]
GO
ALTER TABLE [dbo].[Perros]  WITH CHECK ADD  CONSTRAINT [FK_Perros_Tamano] FOREIGN KEY([tamano_perro])
REFERENCES [dbo].[Tamano_Animal] ([codigo_tamano])
GO
ALTER TABLE [dbo].[Perros] CHECK CONSTRAINT [FK_Perros_Tamano]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Barrios] FOREIGN KEY([barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Barrios]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Estado_Publicacion] FOREIGN KEY([estado_publicacion])
REFERENCES [dbo].[Estados_Publicacion] ([cod_estado])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Estado_Publicacion]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Tipo_Publicacion] FOREIGN KEY([tipo_publicacion])
REFERENCES [dbo].[Tipo_Publicacion] ([id_tipo_publicacion])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Tipo_Publicacion]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Usuario] FOREIGN KEY([usuario_responsable])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Usuario]
GO
ALTER TABLE [dbo].[Razas]  WITH CHECK ADD  CONSTRAINT [FK_Razas_Tipo_Animal] FOREIGN KEY([cod_tipo_animal])
REFERENCES [dbo].[Tipo_Animal] ([codigo_animal])
GO
ALTER TABLE [dbo].[Razas] CHECK CONSTRAINT [FK_Razas_Tipo_Animal]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Barrios1] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Barrios1]
GO
USE [master]
GO
ALTER DATABASE [Hund_Tier] SET  READ_WRITE 
GO
