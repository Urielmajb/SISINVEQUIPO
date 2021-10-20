CREATE OR ALTER PROC Usp_Auditoria (@FI DATE, @FF DATE)
AS
BEGIN 
set DATEFORMAT DMY;
set NOCOUNT ON; 
SELECT * FROM logTransacciones  where FECHA BETWEEN @FI AND @FF
END