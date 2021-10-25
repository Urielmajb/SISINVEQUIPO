SELECT E.ID_Equipo, E.NOM_EQUIPO, D.Dispositivo AS NOMBRE_DISPOTIVO, E.CODIGO_ACTIVO, E.CANTIDAD
		FROM dbo.tblEquipo E INNER JOIN tblDispositivo D on D.ID_dispo = E.ID_dispo

SELECT R.IDReunion, CONCAT(P.Nombre, ' ',P.Apellido)  AS Responsable, T.TipoReunion, R.NOM_REUNION, R.fecharealizada,
		R.hora, E.NOM_EQUIPO
	FROM dbo.tblReunion R INNER JOIN tblPersonas P on P.IDPersona = R.IDPersona
	INNER JOIN tblTipoReunion T ON T.ID_Tipo = R.ID_Tipo
	INNER JOIN tblEquipo E on E.ID_Equipo = R.ID_Equipo