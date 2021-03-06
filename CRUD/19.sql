USE [DBEquipo]
GO
/****** Object:  StoredProcedure [dbo].[Usp_ConsultaReuniones]    Script Date: 22/10/2021 17:17:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   PROC [dbo].[Usp_ConsultaReuniones] (@FI DATE, @FF DATE)
AS
BEGIN 
set DATEFORMAT DMY;
set NOCOUNT ON; 
SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.hora, R.NOM_REUNION, R.fecharealizada, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E on E.ID_Equipo = R.ID_Equipo where fecharealizada BETWEEN @FI AND @FF
END