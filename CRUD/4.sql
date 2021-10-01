-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Sel_Personas'
GO
CREATE PROCEDURE dbo.Usp_Sel_Personas
 @ID int 
 AS
SET NOCOUNT ON
IF @ID = 0
	SELECT * FROM dbo.tblPersonas
ELSE 
	SELECT * FROM dbo.tblPersonas  WHERE IDPersona =@ID
GO
 
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
PRINT ' dbo.Usp_Ins_Personas'
GO
CREATE PROCEDURE dbo.Usp_Ins_Personas ( @Nombre AS varchar(100), @Apellido AS varchar(100), @Cargo AS varchar(100), @Area AS varchar(100), @ACTIVO AS char(1), @Fechaprestamo AS date, @FechaEntrega AS date )  AS
BEGIN TRY
	INSERT INTO dbo.tblPersonas ( Nombre, Apellido, Cargo, Area, ACTIVO, Fechaprestamo, FechaEntrega ) 
	VALUES  ( @Nombre, @Apellido, @Cargo, @Area, @ACTIVO, @Fechaprestamo, @FechaEntrega ) 
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
PRINT ' dbo.Usp_Upd_Personas'
GO
CREATE PROCEDURE dbo.Usp_Upd_Personas ( @IDPersona AS int, @Nombre AS varchar(100), @Apellido AS varchar(100), @Cargo AS varchar(100), @Area AS varchar(100), @ACTIVO AS char(1), @Fechaprestamo AS date, @FechaEntrega AS date )  AS
BEGIN TRY
	UPDATE dbo.tblPersonas
	SET Nombre = @Nombre
		, Apellido = @Apellido
		, Cargo = @Cargo
		, Area = @Area
		, ACTIVO = @ACTIVO
		, Fechaprestamo = @Fechaprestamo
		, FechaEntrega = @FechaEntrega
	WHERE IDPersona = @IDPersona
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
PRINT ' dbo.Usp_Del_Personas'
GO
CREATE PROCEDURE dbo.Usp_Del_Personas ( @IDPersona AS int )  AS
BEGIN TRY
	DELETE FROM dbo.tblPersonas
	WHERE IDPersona = @IDPersona
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
