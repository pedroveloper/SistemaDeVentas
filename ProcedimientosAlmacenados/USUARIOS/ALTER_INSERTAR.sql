USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[insertar_usuario]    Script Date: 4/5/2020 11:50:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insertar_usuario] 
@nombres varchar(50),
@Login varchar(50),
@Password varchar(50),
@icono image,
@Nombre_de_icono varchar(MAX),
@Correo varchar(MAX),
@Rol varchar(max),
@Estado varchar(50)
as
if exists (select Login FROM USUARIO2 where Login = @Login and Nombre_de_icono = @Nombre_de_icono)
raiserror('YA EXISTE UN USUARIO CON ESE LOGIN O CON ESE ICONO, POR FAVOR INGRESE DE NUEVO',16,1)
ELSE
insert into USUARIO2
values(@nombres,@Login,@Password,@icono,@nombre_de_icono,@Correo,@Rol,@Estado)
