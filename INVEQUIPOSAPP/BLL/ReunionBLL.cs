using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ofn;
using Entity;
using DAL;
using System.Data;

namespace BLL
{
   public class ReunionBLL
    {
        
        ReunionesDAL oReuniones = new ReunionesDAL();

        public DataTable Listar()
        {
            return oReuniones.Listar();
        }

        public DataTable ListarPersona()
        {
            return oReuniones.ListarPersona();
        }

        public DataTable ListarTipoReunion()
        {
            return oReuniones.ListarTipoReunion();
        }

        public ReunionEntity Obtener(int IDReunion)
        {
            return oReuniones.Obtener(IDReunion);
        }

        public DataTable Construir_Grid()
        {
            return oReuniones.Construir_Grid();
        }


        public DataTable Obtener_Detalle_Reunion(int IDReunion)
        {
            return oReuniones.Obtener_Detalle_Reunion(IDReunion);
        }


        public int Grabar(ReunionEntity oReunionEntity)
        {
            return oReuniones.Grabar(oReunionEntity);

        }

    }
}
