USE [DBEquipo]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Reunion]    Script Date: 13/10/2021 15:06:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Usp_Sel_Reunion]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0

	SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
ELSE 
	SELECT * FROM dbo.tblReunion WHERE IDReunion =@ID

