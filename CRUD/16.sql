CREATE OR ALTER PROC Usp_ConsultaReuniones (@FI DATE, @FF DATE)
AS
BEGIN 
set DATEFORMAT DMY;
set NOCOUNT ON; 
SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.hora, R.fecharealizada, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E ON E.ID_Equipo = R.IDReunion where fecharealizada BETWEEN @FI AND @FF
END

