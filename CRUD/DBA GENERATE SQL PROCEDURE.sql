
CREATE or ALTER PROCEDURE [dbo].[DBA_Generate_SQL_Structure] (
	  @p_TABLE_CATALOG AS varchar(100)
	, @p_TABLE_SCHEMA AS varchar(100)
	, @p_TABLE_NAME AS varchar(100)
	 ) 
AS

BEGIN
	IF (OBJECT_ID(@p_TABLE_SCHEMA + '.' + @p_TABLE_NAME,'U') IS NULL)
		BEGIN
			RAISERROR ('User table or view not found.', 16, 1)
			PRINT 'You may see this error, if you are not the owner of this table or view. In that case use @owner parameter to specify the owner name.'
			PRINT 'Make sure you have SELECT permission on that table or view.'
			RETURN -1
		END
	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	DECLARE 
		 @TABLE_NAME varchar(100)
		, @TABLE_SCHEMA varchar(100)
		, @COLUMN_NAME varchar(100)
		, @ORDINAL_POSITION integer
		, @DATA_TYPE  varchar(100)
		, @CHARACTER_MAXIMUM_LENGTH integer

		, @SQL_Stmt			nvarchar(1000)

		, @v_SQL_Columns		varchar(1000)
		, @v_SQL_Columns_AT		varchar(1000)
		, @v_SQL_Columns_type		varchar(1000)
		, @v_SQL_Columns_type2		varchar(1000)
		, @v_SQL_Columns_UPDATE		varchar(1000)
		, @v_SQL_Columns_IDENTITY	varchar(100)

		, @v_IS_Identity integer

	SET @v_SQL_Columns          = ''
	SET @v_SQL_Columns_AT       = ''
	SET @v_SQL_Columns_type     = ''
	SET @v_SQL_Columns_type2     = ''
	SET @v_SQL_Columns_UPDATE   = ''
	SET @v_SQL_Columns_IDENTITY = ''

	SET @v_IS_Identity = 0

	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	--

	SET @SQL_Stmt = '
	DECLARE Cursor_Cols CURSOR FOR 
		SELECT TABLE_NAME
			, TABLE_SCHEMA
			, COLUMN_NAME
			, ORDINAL_POSITION
			, DATA_TYPE
			, CHARACTER_MAXIMUM_LENGTH 
		FROM @p_TABLE_CATALOG.INFORMATION_SCHEMA.COLUMNS
		WHERE TABLE_NAME = ''@p_TABLE_NAME''
		ORDER BY ORDINAL_POSITION
	'
	SET @SQL_Stmt = REPLACE( @SQL_Stmt, '@p_TABLE_CATALOG', @p_TABLE_CATALOG)
	SET @SQL_Stmt = REPLACE( @SQL_Stmt, '@p_TABLE_NAME',    @p_TABLE_NAME)


	--PRINT @SQL_Stmt
	EXEC (@SQL_Stmt)

	OPEN Cursor_Cols
	FETCH NEXT FROM Cursor_Cols INTO @TABLE_NAME, @TABLE_SCHEMA, @COLUMN_NAME, @ORDINAL_POSITION, @DATA_TYPE, @CHARACTER_MAXIMUM_LENGTH

	WHILE @@FETCH_STATUS = 0 
	BEGIN

		SET @v_IS_Identity = COLUMNPROPERTY( OBJECT_ID(QUOTENAME(@TABLE_SCHEMA) + '.' + @p_TABLE_NAME), @COLUMN_NAME, 'IsIdentity') 
		IF ( @v_IS_Identity = 1)
			SET @v_SQL_Columns_IDENTITY = @COLUMN_NAME
		ELSE
			BEGIN
				SET @v_SQL_Columns      =  @v_SQL_Columns      + ', ' + @COLUMN_NAME 
				
			END
			
			IF NOT(@v_IS_Identity=1)
			BEGIN
				SET @v_SQL_Columns_type2 =  @v_SQL_Columns_type2 + ', ' + @COLUMN_NAME + ' AS ' + @DATA_TYPE +
						CASE
							WHEN @DATA_TYPE LIKE '%char%' THEN '(' + CAST( @CHARACTER_MAXIMUM_LENGTH AS varchar) + ')'
							ELSE ''
						END
			END
			
			
			SET @v_SQL_Columns_type =  @v_SQL_Columns_type + ', ' + @COLUMN_NAME + ' AS ' + @DATA_TYPE +
						CASE
							WHEN @DATA_TYPE LIKE '%char%' THEN '(' + CAST( @CHARACTER_MAXIMUM_LENGTH AS varchar) + ')'
							ELSE ''
						END
			
		IF ( @v_IS_Identity = 0)
			SET @v_SQL_Columns_UPDATE = @v_SQL_Columns_UPDATE + ', ' + @COLUMN_NAME + ' = ' + '@' + @COLUMN_NAME

		FETCH NEXT FROM Cursor_Cols INTO @TABLE_NAME, @TABLE_SCHEMA, @COLUMN_NAME, @ORDINAL_POSITION, @DATA_TYPE, @CHARACTER_MAXIMUM_LENGTH
	END 

	CLOSE Cursor_Cols
	DEALLOCATE Cursor_Cols

	
	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- 

	-- Eliminando ", " del final de la cadena

	SET @v_SQL_Columns_AT     = REPLACE(@v_SQL_Columns,      ', ', ', @')
	SET @v_SQL_Columns_type   = REPLACE(@v_SQL_Columns_type, ', ', ', @')
	SET @v_SQL_Columns_type2   = REPLACE(@v_SQL_Columns_type2, ', ', ', @')

	SET @v_SQL_Columns        = SUBSTRING( @v_SQL_Columns,      3, LEN(@v_SQL_Columns))
	SET @v_SQL_Columns_AT     = SUBSTRING( @v_SQL_Columns_AT,   3, LEN(@v_SQL_Columns_AT))
	SET @v_SQL_Columns_type   = SUBSTRING( @v_SQL_Columns_type, 3, LEN(@v_SQL_Columns_type))
	SET @v_SQL_Columns_type2   = SUBSTRING( @v_SQL_Columns_type2, 3, LEN(@v_SQL_Columns_type2))
	SET @v_SQL_Columns_UPDATE = SUBSTRING( @v_SQL_Columns_UPDATE, 3, LEN(@v_SQL_Columns_UPDATE))



	-- SELECT
	PRINT REPLICATE('-- ', 30)
	PRINT 'PRINT '' dbo.Usp_Sel_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Sel_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME))
	PRINT ' @ID int '  
	PRINT ' AS' 
	PRINT 'SET NOCOUNT ON'
	PRINT 'IF @ID = 0'
	PRINT CHAR(9) + 'SELECT * FROM ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME
	PRINT 'ELSE '
	PRINT CHAR(9) + 'SELECT * FROM ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME + ' WHERE ' + @v_SQL_Columns_IDENTITY + ' =@ID'
	PRINT 'GO'
	PRINT ''

	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- INSERT
	PRINT REPLICATE('-- ', 30)
	PRINT 'PRINT '' dbo.Usp_Ins_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Ins_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ' ( ' + @v_SQL_Columns_type2 + ' ) ' + ' AS' 
	PRINT 'BEGIN TRY'
	PRINT CHAR(9) + 'INSERT INTO ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME + ' ( ' + @v_SQL_Columns + ' ) '
	PRINT CHAR(9) + 'VALUES ' + ' ( ' + @v_SQL_Columns_AT + ' ) '
   -- PRINT CHAR(9) + 'SELECT SCOPE_IDENTITY() '
	PRINT 'END TRY'
	PRINT 'BEGIN CATCH'
	PRINT 
'	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)'
	PRINT 'END CATCH'
	PRINT 'GO'
	PRINT ''

	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- UPDATE
	PRINT REPLICATE('-- ', 30)
	PRINT 'PRINT '' dbo.Usp_Upd_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Upd_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ' ( ' + @v_SQL_Columns_type + ' ) ' + ' AS' 
	PRINT 'BEGIN TRY'
	PRINT CHAR(9) + 'UPDATE ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME 
	--PRINT CHAR(9) + 'SET ' + @v_SQL_Columns_UPDATE
	PRINT CHAR(9) + 'SET ' + REPLACE( @v_SQL_Columns_UPDATE, ', ', CHAR(10) + CHAR(9) + CHAR(9) + ', ')
	PRINT CHAR(9) + 'WHERE ' + @v_SQL_Columns_IDENTITY  + ' = ' + '@' + @v_SQL_Columns_IDENTITY
	--PRINT CHAR(9) + 'SELECT @' + @v_SQL_Columns_IDENTITY
	PRINT 'END TRY'
	PRINT 'BEGIN CATCH'
	PRINT 
'	-- Raise an error with the details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)'
	PRINT 'END CATCH'
	PRINT 'GO'
	PRINT ''


	-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
	-- DELETE
	PRINT REPLICATE('-- ', 30)

	SET @v_SQL_Columns_type = SUBSTRING( @v_SQL_Columns_type, 1, CHARINDEX( ', ', @v_SQL_Columns_type) - 1)
	
	PRINT 'PRINT '' dbo.Usp_Del_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ''''
	PRINT 'GO'
	PRINT 'CREATE PROCEDURE dbo.Usp_Del_' + substring(@p_TABLE_NAME,4,len(@p_TABLE_NAME)) + ' ( ' + @v_SQL_Columns_type + ' ) ' + ' AS'
	PRINT 'BEGIN TRY' 
	PRINT CHAR(9) + 'DELETE FROM ' + @TABLE_SCHEMA + '.' + @p_TABLE_NAME 
	PRINT CHAR(9) + 'WHERE ' + @v_SQL_Columns_IDENTITY + ' = ' + '@' + @v_SQL_Columns_IDENTITY 
	PRINT 'END TRY'
	PRINT 'BEGIN CATCH'
	PRINT 
'	-- Raise an error with t
 	-- 
 	-- 
 	-- he details of the exception
	DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
	SELECT @ErrMsg = ERROR_MESSAGE(),
		@ErrSeverity = ERROR_SEVERITY()
	
	RAISERROR(@ErrMsg, @ErrSeverity, 1)'
	PRINT 'END CATCH'
	PRINT 'GO'
	PRINT ''

END
