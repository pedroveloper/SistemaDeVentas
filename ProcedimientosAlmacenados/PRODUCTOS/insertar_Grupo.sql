USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[insertar_Grupo]    Script Date: 8/5/2020 10:50:44 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[insertar_Grupo]
@Grupo varchar(50),
@Por_defecto varchar(50)
as
if EXISTS (SELECT Linea FROM Grupo_de_Productos  where Linea = @Grupo  )
RAISERROR ('YA EXISTE UN GRUPO CON ESTE NOMBRE, Ingrese de nuevo', 16,1)
else
insert into Grupo_de_Productos  values (@Grupo, @Por_defecto)