USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[eliminar_usuario]    Script Date: 4/5/2020 11:52:23 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[eliminar_usuario]
@idUsuario int,
@login varchar(50)
as
if exists(select login from USUARIO2 where @login = 'admin')
raiserror('EL USUARIO *admin* NO SE PUEDE ELIMINAR, SE ELIMINARIA EL ACCESO AL SISTEMA ',16,1)
else
Update USUARIO2 SET Estado = 'ELIMINADO' where idUsuario = @idUsuario AND Login <> 'admin'