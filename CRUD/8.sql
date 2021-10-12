CREATE OR ALTER PROCEDURE Usp_Construir_Grid_Equipo
AS
BEGIN
    SELECT E.ID_Equipo,
	       E.NOM_EQUIPO,
		   E.CANTIDAD,
		   E.CODIGO_ACTIVO
	FROM [dbo].[tblEquipo] E
END

CREATE OR ALTER PROCEDURE Usp_Construir_Grid_Dispositivo
AS
BEGIN
    SELECT D.ID_dispo,
	       D.Dispositivo
	FROM [dbo].[tblDispositivo] D
END