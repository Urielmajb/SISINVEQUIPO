use DBEquipo

--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblDispositivo'
CREATE TABLE tblDispositivo	(ID_dispo INT IDENTITY (1,1),
                          Dispositivo VARCHAR(75) NOT NULL,
						  CONSTRAINT [PK_tblDispositivo_ID_dispo] PRIMARY KEY (ID_dispo))

--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblTipoReunion'
CREATE TABLE tblTipoReunion	(ID_Tipo INT IDENTITY (1,1),
                          TipoReunion VARCHAR(50) NOT NULL,
						  CONSTRAINT [PK_tblTipoReunion_ID_Tipo] PRIMARY KEY (ID_Tipo))

INSERT INTO tblTipoReunion VALUES ('PRESENCIAL'), ('VIRTUAL')


--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblEquipo'

CREATE TABLE tblEquipo	(ID_Equipo INT IDENTITY(1,1),
						ID_dispo INT,
                          NOM_EQUIPO VARCHAR(100),
						  CODIGO_ACTIVO VARCHAR(50),
						  ACTIVO   CHAR (1)    NOT NULL , --A(ACTIVO) O I (INACTIVO)
						  CONSTRAINT [PK_tblEquipo_ID_Equipo] PRIMARY KEY (ID_Equipo),
						  CONSTRAINT [CK_tblEquipo_ACTIVO]   CHECK (ACTIVO IN ('A','I')),
						  CONSTRAINT [FK_tblDispositivo_ID_dispo] FOREIGN KEY (ID_dispo)
						  REFERENCES tblDispositivo (ID_dispo)

)

--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblPersonas'

CREATE TABLE tblPersonas (IDPersona INT IDENTITY(1,1),
							Nombre VARCHAR (100),
							Apellido VARCHAR (100),
							Cargo VARCHAR (100),
							Area VARCHAR (100),
							ACTIVO  CHAR (1), 
							Fechaprestamo DATE,
							FechaEntrega DATE
							CONSTRAINT [PK_tblPersonas_IDPersona] PRIMARY KEY (IDPersona),
							CONSTRAINT [CK_tblPersonas_ACTIVO]   CHECK (ACTIVO IN ('A','I'))
)

--DBA_Generate_SQL_Structure 'DBEquipo','dbo','tblReunion'


--id, nombrereunion, tiporeunion, fecharealizada, hora, iddispositivo, idequipo, idpersona
CREATE TABLE tblReunion	(	IDReunion INT IDENTITY(1,1),
							ID_dispo INT,
							IDPersona INT,
							ID_Equipo INT,
							ID_Tipo INT,
							NOM_REUNION VARCHAR(200),
							fecharealizada DATE,
							hora VARCHAR (10),
							CONSTRAINT [PK_tblReunion_IDReunion] PRIMARY KEY (IDReunion),
							CONSTRAINT [FK1_tblDispositivo_ID_dispo] FOREIGN KEY (ID_dispo)
						  REFERENCES tblDispositivo (ID_dispo),
							CONSTRAINT [FK_tblPersonas_IDPersona] FOREIGN KEY (IDPersona)
							REFERENCES tblPersonas (IDPersona),
							CONSTRAINT [FK_tblEquipo_ID_Equipo] FOREIGN KEY (ID_Equipo)
							REFERENCES tblEquipo (ID_Equipo),
							CONSTRAINT [FK_tblTipoReunion_ID_Tipo] FOREIGN KEY (ID_Tipo)
							REFERENCES tblTipoReunion (ID_Tipo)

)

