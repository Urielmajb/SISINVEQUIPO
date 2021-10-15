USE [DBEquipo]
GO

/****** Object:  Table [dbo].[tblDetalle_ReunionEquipos]    Script Date: 15/10/2021 10:45:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblDetalle_ReunionEquipos](
	[IDReunion] [int] NOT NULL,
	[ID_Equipo] [int] NOT NULL,
	[CANTIDAD] [int] NOT NULL,
	[FILA] [int] NOT NULL
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[tblDetalle_ReunionEquipos]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalle_ReunionEquipos_ID_Equipo] FOREIGN KEY([ID_Equipo])
REFERENCES [dbo].[tblEquipo] ([ID_Equipo])
GO

ALTER TABLE [dbo].[tblDetalle_ReunionEquipos] CHECK CONSTRAINT [FK_tblDetalle_ReunionEquipos_ID_Equipo]
GO

ALTER TABLE [dbo].[tblDetalle_ReunionEquipos]  WITH CHECK ADD  CONSTRAINT [FK_tblDetalle_ReunionEquipos_IDReunion] FOREIGN KEY([IDReunion])
REFERENCES [dbo].[tblReunion] ([IDReunion])
GO

ALTER TABLE [dbo].[tblDetalle_ReunionEquipos] CHECK CONSTRAINT [FK_tblDetalle_ReunionEquipos_IDReunion]
GO


