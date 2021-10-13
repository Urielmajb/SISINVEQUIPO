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

        //Referencia a la tabla persona, donde la usaremos para cargar el Cmbx

        public DataTable ListarPersona()
        {
            var DT = new DataTable();
            try
            {
                DT = fn.Leer("Usp_Sel_CmbPersonas", 0);

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

        public ReunionEntity Obtener(int IDReunion)
        {
            var oReunionEntity = new ReunionEntity();
            var DT = fn.Leer("Usp_Sel_Reunion", IDReunion);
            if (DT.Rows.Count > 0)
            {
                oReunionEntity.IDReunion = (int)DT.Rows[0][0];
                oReunionEntity.IDPersona = (int)DT.Rows[0][1];
                oReunionEntity.ID_Tipo = (int)DT.Rows[0][2];
                oReunionEntity.NOM_REUNION = DT.Rows[0][3].ToString();
                oReunionEntity.fecharealizada = (DateTime)DT.Rows[0][4];
                oReunionEntity.hora = DT.Rows[0][5].ToString();

            }
            return oReunionEntity;
        }

        //public DataTable Construir_Grid_Equipo()
        //{
        //    var DT = new DataTable();
        //    try
        //    {   // carga todos los datos al combobox
        //        DT = fn.Leer("Usp_Construir_Grid_Equipo");
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new System.ArgumentException(ex.Message);
        //    }
        //    return DT;
        //}

        //public DataTable Construir_Grid_Dispositivo()
        //{
        //    var DT = new DataTable();
        //    try
        //    {   // carga todos los datos al combobox
        //        DT = fn.Leer("Usp_Construir_Grid_Dispositivo");
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new System.ArgumentException(ex.Message);
        //    }
        //    return DT;
        //}



    }
}
