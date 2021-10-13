USE [DBEquipo]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Personas]    Script Date: 13/10/2021 16:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Usp_Sel_Personas]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT IDPersona, CONCAT(Nombre, ' ',Apellido) AS Persona, Cargo, Area, ACTIVO, Fechaprestamo, FechaEntrega FROM dbo.tblPersonas
ELSE 
	SELECT * FROM dbo.tblPersonas  WHERE IDPersona =@ID