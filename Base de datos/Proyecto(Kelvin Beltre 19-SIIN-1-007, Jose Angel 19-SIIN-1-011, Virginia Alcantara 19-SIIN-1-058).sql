/**Integrantes del Grupo**/
/**Nombre: Kelvin Enrique Beltre Vargas, Matricula: 19-SIIN-1-007, Seccion:0541**/
/**Nombre: Jose Angel Restituyo Ureña, Matricula: 19-SIIN-1-011, Seccion:0541**/
/**Nombre: Yaira Virginia Alcantara Medina, Matricula: 19-SIIN-1-058, Seccion:0541**/
USE [master]
GO
/****** Object:  Database [AsociacionIndustrialDAASIND]    Script Date: 3/5/2021 7:16:16 p. m. ******/
CREATE DATABASE [AsociacionIndustrialDAASIND]
 
USE [AsociacionIndustrialDAASIND]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 3/5/2021 7:16:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb ..Almacen') is not null
drop table Almacen
CREATE TABLE [dbo].[Almacen](
	[IdProducto] [nchar](25) NOT NULL,
	[Coste] [money] NULL,
	[Cantidad] [numeric](18, 0) NULL,
	[IdNombreEmpleado] [nvarchar](50) NULL,
 CONSTRAINT [PK_Almacen] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleOrdenPedido]    Script Date: 3/5/2021 7:16:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb ..DetalleOrdenPedido') is not null
drop table DetalleOrdenPedido
CREATE TABLE [dbo].[DetalleOrdenPedido](
	[CodigoPro] [numeric](18, 0) NOT NULL,
	[IdResultadoPro] [nchar](30) NULL,
	[Cantidad] [numeric](18, 0) NULL,
	[Precio] [money] NULL,
	[NombreCliente] [nchar](20) NULL,
 CONSTRAINT [PK_DetalleOrdenPedido] PRIMARY KEY CLUSTERED 
(
	[CodigoPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EnsamblePro]    Script Date: 3/5/2021 7:16:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb ..EnsamblePro') is not null
drop table EnsamblePro
CREATE TABLE [dbo].[EnsamblePro](
	[IdResultadoPro] [nchar](30) NOT NULL,
	[Maquina] [nchar](20) NULL,
	[IdProducto] [nchar](25) NULL,
	[CodigoPro] [numeric](18, 0) NULL,
 CONSTRAINT [PK_EnsamblePro] PRIMARY KEY CLUSTERED 
(
	[IdResultadoPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcesoOperativo]    Script Date: 3/5/2021 7:16:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb ..ProcesoOperativo') is not null
drop table ProcesoOperativo
CREATE TABLE [dbo].[ProcesoOperativo](
	[CodigoPro] [numeric](18, 0) NOT NULL,
	[IdResultadoPro] [nchar](30) NULL,
	[Cantidad] [numeric](18, 0) NULL,
	[IdProveedor] [nvarchar](50) NULL,
	[Tipo de Envio] [nchar](30) NULL,
 CONSTRAINT [PK_ProcesoOperativo] PRIMARY KEY CLUSTERED 
(
	[CodigoPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcesoVenta]    Script Date: 3/5/2021 7:16:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb ..ProcesoVenta') is not null
drop table ProcesoVenta
CREATE TABLE [dbo].[ProcesoVenta](
	[IdProveedor] [nvarchar](50) NOT NULL,
	[FormaPago] [nchar](30) NULL,
	[CodigoPro] [numeric](18, 0) NULL,
	[IdResltadoPro] [nchar](30) NULL,
	[Tipo de Envio] [nchar](30) NULL,
	[DireccionEntrega] [text] NULL,
 CONSTRAINT [PK_ProcesoVenta] PRIMARY KEY CLUSTERED 
(
	[IdProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TablaEmpleado]    Script Date: 3/5/2021 7:16:16 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
if OBJECT_ID('tempdb ..TablaEmpleado') is not null
drop table TablaEmpleado
CREATE TABLE [dbo].[TablaEmpleado](
	[IdNombreEmpleado] [nvarchar](50) NOT NULL,
	[Direccion] [text] NULL,
	[Correo] [nvarchar](50) NULL,
	[Sueldo] [money] NULL,
 CONSTRAINT [PK_TablaEmpleado] PRIMARY KEY CLUSTERED 
(
	[IdNombreEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Arc Chute                ', 12.0000, CAST(789 AS Numeric(18, 0)), N'Victor Peña ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Armaduras                ', 30.0000, CAST(465 AS Numeric(18, 0)), N'Vidal Antonio ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Base                     ', 46.0000, CAST(894 AS Numeric(18, 0)), N'Jose Enrique ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Cheri                    ', 25.0000, CAST(800 AS Numeric(18, 0)), N'Evelin de la Rosa')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Collar                   ', 25.0000, CAST(216 AS Numeric(18, 0)), N'Virginia Alcantara')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Contacto                 ', 78.0000, CAST(1475 AS Numeric(18, 0)), N' Lucia Encarnacion')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Cover                    ', 50.0000, CAST(745 AS Numeric(18, 0)), N'Dilan Sebastian Beltre')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Handel                   ', 65.0000, CAST(445 AS Numeric(18, 0)), N'Luis Garcia ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Moving                   ', 30.0000, CAST(500 AS Numeric(18, 0)), N'Jose Restituyo ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Nut                      ', 26.0000, CAST(455 AS Numeric(18, 0)), N'Ronald Amparo ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Screw                    ', 14.0000, CAST(364 AS Numeric(18, 0)), N'Richard Paterson ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Stop Plate               ', 45.0000, CAST(485 AS Numeric(18, 0)), N'Antonio Guzman ')
INSERT [dbo].[Almacen] ([IdProducto], [Coste], [Cantidad], [IdNombreEmpleado]) VALUES (N'Terminal                 ', 44.0000, CAST(354 AS Numeric(18, 0)), N'Edwin Ovalles ')
GO
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(111 AS Numeric(18, 0)), N'Base+Armadura+Cover           ', CAST(200 AS Numeric(18, 0)), 276.0000, N'Jose Nova           ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(112 AS Numeric(18, 0)), N'Base+Armaduras                ', CAST(425 AS Numeric(18, 0)), 465.0000, N'Alturo Ramirez      ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(113 AS Numeric(18, 0)), N'Base+Armaduras+Cheri          ', CAST(422 AS Numeric(18, 0)), 455.0000, N'Julian Acosta       ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(114 AS Numeric(18, 0)), N'Base+Collar                   ', CAST(465 AS Numeric(18, 0)), 501.0000, N'Yolanda Garcia      ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(115 AS Numeric(18, 0)), N'Base+Contacto+Terminal        ', CAST(500 AS Numeric(18, 0)), 625.0000, N'Esteban Lugo        ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(116 AS Numeric(18, 0)), N'Base+cover+Handel             ', CAST(325 AS Numeric(18, 0)), 395.0000, N'Dionis Disla        ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(117 AS Numeric(18, 0)), N'Base+Moving+Stop plate        ', CAST(453 AS Numeric(18, 0)), 470.0000, N'Stanley Guzman      ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(118 AS Numeric(18, 0)), N'Base+Terminal                 ', CAST(365 AS Numeric(18, 0)), 421.0000, N'Anderlin Suero      ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(119 AS Numeric(18, 0)), N'Cuarta P Breaker              ', CAST(425 AS Numeric(18, 0)), 465.0000, N'Hipolito Garcia     ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(120 AS Numeric(18, 0)), N'Primera P Breaker             ', CAST(502 AS Numeric(18, 0)), 628.0000, N'Teresa Dolores      ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(121 AS Numeric(18, 0)), N'Printeada Breaker             ', CAST(532 AS Numeric(18, 0)), 680.0000, N'Bryan de Jesus      ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(122 AS Numeric(18, 0)), N'Segunda P Breaker             ', CAST(495 AS Numeric(18, 0)), 598.0000, N'Raul Encarnacion    ')
INSERT [dbo].[DetalleOrdenPedido] ([CodigoPro], [IdResultadoPro], [Cantidad], [Precio], [NombreCliente]) VALUES (CAST(123 AS Numeric(18, 0)), N'Tercera P Breaker             ', CAST(425 AS Numeric(18, 0)), 465.0000, N'Sandra Perdomo      ')
GO
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+Armadura+Cover           ', N'Ternal Manual       ', N'Armaduras                ', CAST(111 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+Armaduras                ', N'Termal Manual       ', N'Base                     ', CAST(112 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+Armaduras+Cheri          ', N'Shunt Forming       ', N'Arc Chute                ', CAST(113 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+Collar                   ', N'Maquina Stop Plate  ', N'Collar                   ', CAST(114 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+Contacto+Terminal        ', N'Termal Automatica   ', N'Contacto                 ', CAST(115 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+cover+Handel             ', N'Arc Chute           ', N'Cover                    ', CAST(116 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+Moving+Stop plate        ', N'Stop Plate          ', N'Moving                   ', CAST(117 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Base+Terminal                 ', N'Operacion Manual    ', N'Terminal                 ', CAST(118 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Cuarta P Breaker              ', N'Maquina Laser       ', N'Stop Plate               ', CAST(119 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Primera P Breaker             ', N'Shunt Forming       ', N'Cheri                    ', CAST(120 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Printeada Breaker             ', N'Maquina ase         ', N'Handel                   ', CAST(121 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Segunda P Breaker             ', N'Maquina Dielectrica ', N'Nut                      ', CAST(122 AS Numeric(18, 0)))
INSERT [dbo].[EnsamblePro] ([IdResultadoPro], [Maquina], [IdProducto], [CodigoPro]) VALUES (N'Tercera P Breaker             ', N'Maquina Magnetica   ', N'Screw                    ', CAST(123 AS Numeric(18, 0)))
GO
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(111 AS Numeric(18, 0)), N'Base+Armadura+Cover           ', CAST(200 AS Numeric(18, 0)), N'NextEra Energy', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(112 AS Numeric(18, 0)), N'Base+Armaduras                ', CAST(425 AS Numeric(18, 0)), N'Duke Energy', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(113 AS Numeric(18, 0)), N'Base+Armaduras+Cheri          ', CAST(422 AS Numeric(18, 0)), N'Dominion Resources', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(114 AS Numeric(18, 0)), N'Base+Collar                   ', CAST(465 AS Numeric(18, 0)), N'Southern Company ', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(115 AS Numeric(18, 0)), N'Base+Contacto+Terminal        ', CAST(500 AS Numeric(18, 0)), N'Exelon ', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(116 AS Numeric(18, 0)), N'Base+cover+Handel             ', CAST(325 AS Numeric(18, 0)), N'American Electric ', N'Transporte Areo               ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(117 AS Numeric(18, 0)), N'Base+Moving+Stop plate        ', CAST(453 AS Numeric(18, 0)), N'Public Service Enterprise Group', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(118 AS Numeric(18, 0)), N'Base+Terminal                 ', CAST(365 AS Numeric(18, 0)), N'Xcel Energy ', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(119 AS Numeric(18, 0)), N'Cuarta P Breaker              ', CAST(425 AS Numeric(18, 0)), N'Consolidated Edison', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(120 AS Numeric(18, 0)), N'Primera P Breaker             ', CAST(502 AS Numeric(18, 0)), N'PG&E', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(121 AS Numeric(18, 0)), N'Printeada Breaker             ', CAST(532 AS Numeric(18, 0)), N'Chevron', N'Transporte Terrestre          ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(122 AS Numeric(18, 0)), N'Segunda P Breaker             ', CAST(495 AS Numeric(18, 0)), N'Siemens', N'Transporte maritimo           ')
INSERT [dbo].[ProcesoOperativo] ([CodigoPro], [IdResultadoPro], [Cantidad], [IdProveedor], [Tipo de Envio]) VALUES (CAST(123 AS Numeric(18, 0)), N'Tercera P Breaker             ', CAST(425 AS Numeric(18, 0)), N'ING Energy O', N'Transporte Aereo              ')
GO
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'American Electric ', N'Tarjeta Debito                ', CAST(111 AS Numeric(18, 0)), N'Base+Armadura+Cover           ', N'Transporte Terrestre          ', N'Distrito Nacional, Maximo Gomez esquina Correa y Sidron ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Chevron', N'Via Operativa                 ', CAST(112 AS Numeric(18, 0)), N'Base+Armaduras                ', N'Transporte Terrestre          ', N'Santo Domingo, 27 de febrero, Esquina Juan de Molfa')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Consolidated Edison', N'Financiacion                  ', CAST(113 AS Numeric(18, 0)), N'Base+Armaduras+Cheri          ', N'Transporte Terrestre          ', N'Satno Domingo, Correa y Sidron, Zona Universitaria ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Dominion Resources', N'Bancaria                      ', CAST(114 AS Numeric(18, 0)), N'Base+Collar                   ', N'Transporte Terrestre          ', N'Santo Domingo, avenida Independencia, Zona Colonial ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Duke Energy', N'Paypal                        ', CAST(115 AS Numeric(18, 0)), N'Base+Contacto+Terminal        ', N'Transporte Terrestre          ', N'Santiago de Los Caballeros, Ensanche Bermudez ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Exelon ', N'Amazon Pay                    ', CAST(116 AS Numeric(18, 0)), N'Base+cover+Handel             ', N'Transporte Aereo              ', N'Estados Unidos, Wichita, E Waterman St ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'ING Energy O', N'Stripe                        ', CAST(117 AS Numeric(18, 0)), N'Base+Moving+Stop plate        ', N'Transporte Terrestre          ', N'San Pedro de Macoris, Blanco ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'NextEra Energy', N'Tarjeta Credito               ', CAST(118 AS Numeric(18, 0)), N'Base+Terminal                 ', N'Transporte Terrestre          ', N'San Cristobal, Calle Los Regidores ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'PG&E', N'Efectivo                      ', CAST(119 AS Numeric(18, 0)), N'Cuarta P Breaker              ', N'Transporte Terrestre          ', N'Bani, Calle el numero con Jose Valera ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Public Service Enterprise Group', N'Cheque Nominativo             ', CAST(120 AS Numeric(18, 0)), N'Primera P Breaker             ', N'Transporte Terrestre          ', N'Azua, Los magos calle Beller ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Siemens', N'Transferencia Electronica     ', CAST(121 AS Numeric(18, 0)), N'Printeada Breaker             ', N'Transporte Terrestre          ', N'Azua, Calle 16 de Agosto ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Southern Company ', N'Cheque                        ', CAST(122 AS Numeric(18, 0)), N'Segunda P Breaker             ', N'Transporte maritimo           ', N'España, Campo de Criptana, Calle Brasil  ')
INSERT [dbo].[ProcesoVenta] ([IdProveedor], [FormaPago], [CodigoPro], [IdResltadoPro], [Tipo de Envio], [DireccionEntrega]) VALUES (N'Xcel Energy ', N'Googel Pay                    ', CAST(123 AS Numeric(18, 0)), N'Tercera P Breaker             ', N'Transporte Aereo              ', NULL)
GO
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N' Lucia Encarnacion', N'Santo Domingo, avenida Independencia, Residencial Ofelia ', N'LuciaAA@gmail.com', 24000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Antonio Guzman ', N'Distrito Nacional Pradera Verde', N'Aguzman1@gmail.com', 16000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Dilan Sebastian Beltre', N'Distrito Nacional Zona Universitaria ', N'Dilan08@gmail.com', 20000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Edwin Ovalles ', N'Distrito Nacional, avenida Independecia, Calle San Juan ', N'EdOvalles@gmail.com', 14000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Evelin de la Rosa ', N'Santo Domingo, Sarasota edificio 3 ', N'EveSAN@gmail.com', 20000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Jose Enrique', N'Santo Domingo Prolongacion Guacanagarix', N'Jose1996@gmail.com', 18000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Jose Restituyo', N'Distrito Nacional, avenida independencia Km8,  Calle 1', N'jose345@gmail.com', 25000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Luis Garcia ', N'Santo Domingo, Ebaristo Marales', N'LusiG@gmail.com', 18000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Richard Paterson', N'Santo Domingo, calle clinical Rurales ', N'RiPater@gmail.com', 18000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Ronald Amparo', N'Santo Domingo, zona Oriental, calle 1', N'RonAmparo@gmail.com', 18500.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Victor Peña', N'Santoi Domingo, avenida Independencia , Miramar', N'VIpE@gmail.com', 14000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Vidal Antonio ', N'Santo Domingo, avenida Independecia, 30 de mayo ', N'VidalA12@gmail.com', 18000.0000)
INSERT [dbo].[TablaEmpleado] ([IdNombreEmpleado], [Direccion], [Correo], [Sueldo]) VALUES (N'Virginia Alcantara', N'Distrito Nacional, Calle El Dimante', N'VirginiaA345@gmail.com', 15000.0000)
GO
ALTER TABLE [dbo].[Almacen]  WITH CHECK ADD  CONSTRAINT [FK_Almacen_TablaEmpleado] FOREIGN KEY([IdNombreEmpleado])
REFERENCES [dbo].[TablaEmpleado] ([IdNombreEmpleado])
GO
ALTER TABLE [dbo].[Almacen] CHECK CONSTRAINT [FK_Almacen_TablaEmpleado]
GO
ALTER TABLE [dbo].[DetalleOrdenPedido]  WITH CHECK ADD  CONSTRAINT [FK_DetalleOrdenPedido_ProcesoOperativo] FOREIGN KEY([CodigoPro])
REFERENCES [dbo].[ProcesoOperativo] ([CodigoPro])
GO
ALTER TABLE [dbo].[DetalleOrdenPedido] CHECK CONSTRAINT [FK_DetalleOrdenPedido_ProcesoOperativo]
GO
ALTER TABLE [dbo].[EnsamblePro]  WITH CHECK ADD  CONSTRAINT [FK_EnsamblePro_Almacen] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Almacen] ([IdProducto])
GO
ALTER TABLE [dbo].[EnsamblePro] CHECK CONSTRAINT [FK_EnsamblePro_Almacen]
GO
ALTER TABLE [dbo].[ProcesoOperativo]  WITH CHECK ADD  CONSTRAINT [FK_ProcesoOperativo_EnsamblePro] FOREIGN KEY([IdResultadoPro])
REFERENCES [dbo].[EnsamblePro] ([IdResultadoPro])
GO
ALTER TABLE [dbo].[ProcesoOperativo] CHECK CONSTRAINT [FK_ProcesoOperativo_EnsamblePro]
GO
ALTER TABLE [dbo].[ProcesoOperativo]  WITH CHECK ADD  CONSTRAINT [FK_ProcesoOperativo_ProcesoVenta] FOREIGN KEY([IdProveedor])
REFERENCES [dbo].[ProcesoVenta] ([IdProveedor])
GO
ALTER TABLE [dbo].[ProcesoOperativo] CHECK CONSTRAINT [FK_ProcesoOperativo_ProcesoVenta]
GO
ALTER TABLE [dbo].[ProcesoVenta]  WITH CHECK ADD  CONSTRAINT [FK_ProcesoVenta_DetalleOrdenPedido] FOREIGN KEY([CodigoPro])
REFERENCES [dbo].[DetalleOrdenPedido] ([CodigoPro])
GO
ALTER TABLE [dbo].[ProcesoVenta] CHECK CONSTRAINT [FK_ProcesoVenta_DetalleOrdenPedido]
GO
USE [master]
GO
ALTER DATABASE [AsociacionIndustrialDAASIND] SET  READ_WRITE 
GO
