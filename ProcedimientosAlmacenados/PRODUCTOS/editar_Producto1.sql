USE [BASESISTEMA]
GO
/****** Object:  StoredProcedure [dbo].[editar_Producto1]    Script Date: 8/5/2020 10:46:33 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[editar_Producto1]
@Id_Producto1 int,
 @Descripcion varchar(50),
		    @Imagen varchar(50),			         
         
          @Id_grupo INT,
		  @Usa_inventarios varchar(50),
	  @Stock varchar(50),
           @Precio_de_compra numeric(18,2),
           @Fecha_de_vencimiento varchar(50),
           @Precio_de_venta numeric(18,2),
           @Codigo varchar(50),
           @Se_vende_a varchar(50),
           @Impuesto varchar(50),
           @Stock_minimo numeric(18,2),
           @Precio_mayoreo numeric(18,2)
		 	,@A_partir_de numeric(18,2)
as 

if EXISTS (SELECT Descripcion FROM Producto1  where (Descripcion = @Descripcion and Id_Producto1 <>@Id_Producto1 ) )

RAISERROR ('YA EXISTE UN PRODUCTO  CON ESTE NOMBRE, POR FAVOR INGRESE DE NUEVO', 16,1)

else if EXISTS (SELECT Codigo  FROM Producto1  where (Codigo  = @Codigo  and Id_Producto1 <>@Id_Producto1 ))

RAISERROR ('YA EXISTE UN PRODUCTO  CON ESTE CODIGO, POR FAVOR INGRESE DE NUEVO/ SE GENERARA CODIGO AUTOMATICO', 16,1)

else if EXISTS (SELECT Descripcion,Codigo  FROM Producto1  where (Descripcion <> @Descripcion and Id_Producto1 =@Id_Producto1 ) OR (Codigo<>@Codigo and Id_Producto1 = @Id_Producto1))

update Producto1 set  

      Descripcion =@Descripcion ,
		  Imagen =  @Imagen ,			         
         
         Id_grupo = @Id_grupo 	,
		  Usa_inventarios =@Usa_inventarios ,
		  Stock = @Stock ,
           Precio_de_compra =@Precio_de_compra ,
        Fecha_de_vencimiento =   @Fecha_de_vencimiento ,
          Precio_de_venta = @Precio_de_venta ,
         Codigo =  @Codigo ,
         Se_vende_a =  @Se_vende_a ,
           Impuesto =@Impuesto,
           Stock_minimo =@Stock_minimo ,
         Precio_mayoreo =  @Precio_mayoreo 
		 	,A_partir_de=@A_partir_de 
where id_Producto1=@Id_Producto1
