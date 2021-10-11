--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblReunion'

--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblReunion'


PRINT ' dbo.Usp_Sel_Reunion'
GO
CREATE PROCEDURE dbo.Usp_Sel_Reunion
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0

	SELECT R.IDReunion, R.IDPersona, P.Nombre AS NombreCompleto,  R.ID_Tipo, E.TipoReunion
	FROM 
	dbo.tblReunion R INNER JOIN IDPersona P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
ELSE 
	SELECT * FROM dbo.tblReunion WHERE IDReunion =@ID
GO
 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Ins_Reunion'
GO
CREATE PROCEDURE dbo.Usp_Ins_Reunion ( @IDPersona AS int, @ID_Tipo AS int, @NOM_REUNION AS varchar(200), @fecharealizada AS date, @hora AS varchar(10) )  AS
BEGIN TRY
	INSERT INTO dbo.tblReunion ( IDPersona, ID_Tipo, NOM_REUNION, fecharealizada, hora ) 
	VALUES  ( @IDPersona, @ID_Tipo, @NOM_REUNION, @fecharealizada, @hora ) 
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
PRINT ' dbo.Usp_Upd_Reunion'
GO
CREATE PROCEDURE dbo.Usp_Upd_Reunion ( @IDReunion AS int, @IDPersona AS int, @ID_Tipo AS int, @NOM_REUNION AS varchar(200), @fecharealizada AS date, @hora AS varchar(10) )  AS
BEGIN TRY
	UPDATE dbo.tblReunion
	SET IDPersona = @IDPersona
		, ID_Tipo = @ID_Tipo
		, NOM_REUNION = @NOM_REUNION
		, fecharealizada = @fecharealizada
		, hora = @hora
	WHERE IDReunion = @IDReunion
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
PRINT ' dbo.Usp_Del_Reunion'
GO
CREATE PROCEDURE dbo.Usp_Del_Reunion ( @IDReunion AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblReunion
	WHERE IDReunion = @IDReunion
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

