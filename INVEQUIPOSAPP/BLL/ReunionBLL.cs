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

        public DataTable ListarEquipoPrestado()
        {
            return oReuniones.ListarEquipoPrestado();
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



        public int Nuevo(ReunionEntity oReunionEntity)
        {
            return oReuniones.Nuevo(oReunionEntity);

        }

        public int Guardar(ReunionEntity oReunionEntity)
        {
            if (oReunionEntity.IDReunion < 0)
            {
                return oReuniones.Nuevo(oReunionEntity);
            }
            else
            {
                return oReuniones.Editar(oReunionEntity);
            }
        }


        public DataTable ReporteEventosRealizados(int IDReunion)
        { 

            return oReuniones.ReporteEventosRealizados(IDReunion);
        }


        public DataTable ReporteGeneraldeEnventos()
        {

            return oReuniones.ReporteGeneraldeEnventos();
        }

        public int Grabar(ReunionEntity oReunionEntity)
        {
            return oReuniones.Grabar(oReunionEntity);

        }

        public int Ultimo_Numero()
        {
            return oReuniones.Ultimo_Numero();
        }


    }
}
