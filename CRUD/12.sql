USE [DBEquipo]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Ins_Detalle_ReunionEquipos]    Script Date: 14/10/2021 19:44:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Usp_Ins_Detalle_ReunionEquipos] ( @IDReunion AS int, @ID_Equipo AS int, @CANTIDAD AS int, @FILA AS int )  AS
BEGIN TRY
	INSERT INTO dbo.tblDetalle_ReunionEquipos ( IDReunion, ID_Equipo, CANTIDAD, FILA ) 
	VALUES  ( @IDReunion, @ID_Equipo, @CANTIDAD, @FILA ) 
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
