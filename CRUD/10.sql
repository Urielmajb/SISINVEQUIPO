/****** Object:  StoredProcedure [dbo].[Usp_Sel_Personas]    Script Date: 13/10/2021 15:26:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[Usp_Sel_CmbPersonas]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT IDPersona,CONCAT(Nombre, ' ',Apellido) AS Persona FROM dbo.tblPersonas
ELSE 
	SELECT * FROM dbo.tblPersonas  WHERE IDPersona =@ID