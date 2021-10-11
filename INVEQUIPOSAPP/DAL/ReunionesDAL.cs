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

        public DataTable Construir_Grid_Equipo()
        {
            var DT = new DataTable();
            try
            {   // carga todos los datos al combobox
                DT = fn.Leer("Usp_Construir_Grid_Equipo");
            }
            catch (Exception ex)
            {
                throw new System.ArgumentException(ex.Message);
            }
            return DT;
        }

        public DataTable Construir_Grid_Dispositivo()
        {
            var DT = new DataTable();
            try
            {   // carga todos los datos al combobox
                DT = fn.Leer("Usp_Construir_Grid_Dispositivo");
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





    }
}
