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
    public class PersonaBLL
    {
        PersonaDAL oPersona = new PersonaDAL(); //Instanciamos las clase


        // lista toda la tabla
        public DataTable Listar()
        {
            return oPersona.Listar();
        }

        //enlista un unico valor de la tabla.
        public PersonaEntity Obtener(int IDPersona)
        {
            return oPersona.Obtener(IDPersona);
        }

        public int Nuevo(PersonaEntity oPersonaEntity)
        {
            return oPersona.Nuevo(oPersonaEntity);

        }

        public int Guardar(PersonaEntity oPersonaEntity)
        {
            if (oPersonaEntity.IDPersona < 0)
            {
                return oPersona.Nuevo(oPersonaEntity);
            }
            else
            {
                return oPersona.Editar(oPersonaEntity);
            }
        }
    }
}
