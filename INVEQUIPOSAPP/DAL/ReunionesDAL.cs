using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ofn;
using Entity;
using System.Data;


namespace DAL
{
   public class ReunionesDAL
    {

        // lista toda la tabla
        public DataTable Listar()
        {
            var DT = new DataTable();
            try
            {
                DT = fn.Leer("Usp_Sel_Reunion", 0);

            }
            catch (Exception ex)
            {

                throw new System.ArgumentException(ex.Message);

            }

            return DT;
        }

        //Referencia a la tabla dispositivo, donde la usaremos para cargar el combobox.
        public DataTable ListarDispositivo()
        {
            var DT = new DataTable();
            try
            {
                DT = fn.Leer("Usp_Sel_Dispositivo", 0);
            }
            catch (Exception ex)
            {
                throw new System.ArgumentException(ex.Message);
            }
            return DT;
        }

        //Referencia a la tabla persona, donde la usaremos para cargar el Cmbx

        public DataTable ListarPersona()
        {
            var DT = new DataTable();
            try
            {
                DT = fn.Leer("Usp_Sel_Personas", 0);

            }
            catch (Exception ex)
            {

                throw new System.ArgumentException(ex.Message);

            }

            return DT;
        }

        //Referencia a la tabla Equipo, donde la usaremos para cargar el Cmbx.
        public DataTable ListarEquipo()
        {
            var DT = new DataTable();
            try
            {
                DT = fn.Leer("Usp_Sel_Equipo", 0);

            }
            catch (Exception ex)
            {

                throw new System.ArgumentException(ex.Message);

            }

            return DT;
        }

        //Referenci a al tabla Tipo Reunion, donde la usaremos para cargar el cmbx.
        public DataTable ListarTipoReunion()
        {
            var DT = new DataTable();
            try
            {
                DT = fn.Leer("Usp_Sel_TipoReunion", 0);

            }
            catch (Exception ex)
            {

                throw new System.ArgumentException(ex.Message);

            }

            return DT;
        }

        public ReunionEntity Obtener(int ID_Tipo)
        {
            var oReunionEntity = new ReunionEntity();

            var DT = fn.Leer("Usp_Sel_TipoReunion", ID_Tipo);
            if (DT.Rows.Count > 0)
            {

                oReunionEntity.ID_Tipo = (int)DT.Rows[0][0];
                oReunionEntity.ID_dispo = (int)DT.Rows[0][1];
                oReunionEntity.IDPersona = (int)DT.Rows[0][2];
                oReunionEntity.ID_Equipo = (int)DT.Rows[0][3];
                oReunionEntity.ID_Tipo = (int)DT.Rows[0][4];
                oReunionEntity.NOM_REUNION = DT.Rows[0][5].ToString();
                oReunionEntity.fecharealizada = (DateTime)DT.Rows[0][6];
                oReunionEntity.hora = DT.Rows[0][7].ToString();


                //oEquipoEntity.ID_Equipo = (int)DT.Rows[0][0];
                //oEquipoEntity.ID_dispo = (int)DT.Rows[0][1];
                //oEquipoEntity.NOM_EQUIPO = DT.Rows[0][2].ToString();
                //oEquipoEntity.CODIGO_ACTIVO = DT.Rows[0][3].ToString();
                //oEquipoEntity.ACTIVO = DT.Rows[0][4].ToString();

            }

            return oReunionEntity;
        }





    }
}
