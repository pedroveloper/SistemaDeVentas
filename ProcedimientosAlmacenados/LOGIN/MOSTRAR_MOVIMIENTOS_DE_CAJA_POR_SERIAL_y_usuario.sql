USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL_y_usuario]    Script Date: 7/5/2020 9:00:42 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL_y_usuario]

@serial varchar(50),
@idusuario int

AS
SELECT USUARIO2.Login,USUARIO2.Nombre_y_Apellido    FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
 inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Serial_PC = @serial    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA' and MOVIMIENTOCAJACIERRE.Id_usuario =@idusuario and USUARIO2.Estado ='ACTIVO'
