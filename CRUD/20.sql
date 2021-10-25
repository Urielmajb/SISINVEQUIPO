USE [DBEquipo]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Sel_Reunion]    Script Date: 22/10/2021 17:13:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Usp_Sel_Reunion]
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0


	SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.hora, R.NOM_REUNION, R.fecharealizada, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E on E.ID_Equipo = R.ID_Equipo

ELSE 
	SELECT * FROM dbo.tblReunion WHERE IDReunion =@ID