using DAL;
using Entity;
using Ofn;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace BLL
{
    public class EquipoBLL
    {
        
        EquipoDAL oEquipo = new EquipoDAL(); //Instanciamos las clase

        // lista toda la tabla
        public DataTable Listar()
        {
            return oEquipo.Listar();
        }

        //Referencia a la tabla dispositivo, donde la usaremos para cargar el combobox.
        public DataTable ListarDispositivo()
        {
            return oEquipo.ListarDispositivo();
        }

        //enlista un unico valor de la tabla.
        public EquipoEntity Obtener(int ID_Equipo)
        {

            return oEquipo.Obtener(ID_Equipo);
 
        }

        public int Nuevo(EquipoEntity oEquipoEntity)
        {
            return oEquipo.Nuevo(oEquipoEntity);

        }

        public int Guardar(EquipoEntity oEquipoEntity)
        {
            if (oEquipoEntity.ID_Equipo < 0)
            {
                return oEquipo.Nuevo(oEquipoEntity);
            }
            else
            {
                return oEquipo.Editar(oEquipoEntity);
            }
        }



    }
}
