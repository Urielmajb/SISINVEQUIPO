PRINT ' dbo.Usp_Sel_Equipo'
GO
CREATE OR ALTER PROCEDURE dbo.Usp_Sel_Equipo
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT E.ID_Equipo, E.NOM_EQUIPO, D.Dispositivo AS NOMBRE_DISPOTIVO, E.CODIGO_ACTIVO
	FROM dbo.tblEquipo E INNER JOIN tblDispositivo D on D.ID_dispo = E.ID_dispo
ELSE 
	SELECT * FROM dbo.tblEquipo WHERE ID_Equipo =@ID
GO
 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Ins_Equipo'
GO
CREATE PROCEDURE dbo.Usp_Ins_Equipo ( @ID_dispo AS int, @NOM_EQUIPO AS varchar(100), @CODIGO_ACTIVO AS varchar(50), @ACTIVO AS char(1) )  AS
BEGIN TRY
	INSERT INTO dbo.tblEquipo ( ID_dispo, NOM_EQUIPO, CODIGO_ACTIVO, ACTIVO ) 
	VALUES  ( @ID_dispo, @NOM_EQUIPO, @CODIGO_ACTIVO, @ACTIVO ) 
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
PRINT ' dbo.Usp_Upd_Equipo'
GO
CREATE PROCEDURE dbo.Usp_Upd_Equipo ( @ID_Equipo AS int, @ID_dispo AS int, @NOM_EQUIPO AS varchar(100), @CODIGO_ACTIVO AS varchar(50), @ACTIVO AS char(1) )  AS
BEGIN TRY
	UPDATE dbo.tblEquipo
	SET ID_dispo = @ID_dispo
		, NOM_EQUIPO = @NOM_EQUIPO
		, CODIGO_ACTIVO = @CODIGO_ACTIVO
		, ACTIVO = @ACTIVO
	WHERE ID_Equipo = @ID_Equipo
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
PRINT ' dbo.Usp_Del_Equipo'
GO
CREATE PROCEDURE dbo.Usp_Del_Equipo ( @ID_Equipo AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblEquipo
	WHERE ID_Equipo = @ID_Equipo
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
 