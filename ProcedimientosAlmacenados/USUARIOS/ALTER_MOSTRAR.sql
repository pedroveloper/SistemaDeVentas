USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario]    Script Date: 5/5/2020 12:22:05 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[mostrar_usuario] 
as
select idUsuario, Nombre_y_Apellido as [Nombres], Login, Password
	, icono, Nombre_de_icono, Correo, Rol FROM USUARIO2 where Estado = 'ACTIVO'