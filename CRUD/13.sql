--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblDetalle_ReunionEquipos'

-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Sel_Detalle_ReunionEquipos'
GO
CREATE PROCEDURE dbo.Usp_Sel_Detalle_ReunionEquipos
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT * FROM dbo.tblDetalle_ReunionEquipos
ELSE 
	SELECT * FROM dbo.tblDetalle_ReunionEquipos WHERE  IDReunion=@ID
GO
 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Ins_Detalle_ReunionEquipos'
GO
CREATE PROCEDURE dbo.Usp_Ins_Detalle_ReunionEquipos ( @IDReunion AS int, @ID_Equipo AS int, @CANTIDAD AS int, @FILA AS int )  AS
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
GO
 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Upd_Detalle_ReunionEquipos'
GO
CREATE PROCEDURE dbo.Usp_Upd_Detalle_ReunionEquipos ( @IDReunion AS int, @ID_Equipo AS int, @CANTIDAD AS int, @FILA AS int )  AS
BEGIN TRY
	UPDATE dbo.tblDetalle_ReunionEquipos
	SET IDReunion = @IDReunion
		, ID_Equipo = @ID_Equipo
		, CANTIDAD = @CANTIDAD
		, FILA = @FILA
	WHERE  IDReunion = @IDReunion
END TRY
BEGIN CATCH
	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO
 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Del_Detalle_ReunionEquipos'
GO
CREATE PROCEDURE dbo.Usp_Del_Detalle_ReunionEquipos ( @IDReunion AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblDetalle_ReunionEquipos
	WHERE  IDReunion = @IDReunion
END TRY
BEGIN CATCH
	-- Raise an error with t
 	-- 
 	-- 
 	-- he details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)
END CATCH
GO