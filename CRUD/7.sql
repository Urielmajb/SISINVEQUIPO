--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblTipoReunion'

PRINT ' dbo.Usp_Sel_TipoReunion'
GO
CREATE PROCEDURE dbo.Usp_Sel_TipoReunion
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT * FROM dbo.tblTipoReunion
ELSE 
	SELECT * FROM dbo.tblTipoReunion WHERE ID_Tipo =@ID
GO
 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Ins_TipoReunion'
GO
CREATE PROCEDURE dbo.Usp_Ins_TipoReunion ( @TipoReunion AS varchar(50) )  AS
BEGIN TRY
	INSERT INTO dbo.tblTipoReunion ( TipoReunion ) 
	VALUES  ( @TipoReunion ) 
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
PRINT ' dbo.Usp_Upd_TipoReunion'
GO
CREATE PROCEDURE dbo.Usp_Upd_TipoReunion ( @ID_Tipo AS int, @TipoReunion AS varchar(50) )  AS
BEGIN TRY
	UPDATE dbo.tblTipoReunion
	SET TipoReunion = @TipoReunion
	WHERE ID_Tipo = @ID_Tipo
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
PRINT ' dbo.Usp_Del_TipoReunion'
GO
CREATE PROCEDURE dbo.Usp_Del_TipoReunion ( @ID_Tipo AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblTipoReunion
	WHERE ID_Tipo = @ID_Tipo
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
 
