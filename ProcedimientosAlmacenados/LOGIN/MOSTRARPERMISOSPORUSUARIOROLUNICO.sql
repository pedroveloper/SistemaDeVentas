USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[mostrar_permisos_por_usuario_ROL_UNICO]    Script Date: 7/5/2020 8:51:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[mostrar_permisos_por_usuario_ROL_UNICO]
@LOGIN VARCHAR(50)
as 
select 
USUARIO2.Rol 
from USUARIO2 
where USUARIO2.LOGIN =@LOGIN and USUARIO2.Estado ='ACTIVO'