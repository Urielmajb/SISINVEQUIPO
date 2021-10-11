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

  

        public DataTable Construir_Grid_Equipo()
        {
            return oReuniones.Construir_Grid_Equipo();
        }

        public DataTable Construir_Grid_Dispositivo()
        {
            return oReuniones.Construir_Grid_Dispositivo();
        }







    }
}
