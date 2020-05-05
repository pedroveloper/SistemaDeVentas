USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[buscar_usuario]    Script Date: 5/5/2020 2:30:12 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[buscar_usuario] 
@letra varchar(50)
as
select idUsuario, Nombre_y_Apellido as [Nombres], Login, Password, icono, Nombre_de_icono, Correo, Rol FROM USUARIO2
where Nombre_y_Apellido + Login Like '%' + @letra + '%' AND Estado = 'ACTIVO' ;
