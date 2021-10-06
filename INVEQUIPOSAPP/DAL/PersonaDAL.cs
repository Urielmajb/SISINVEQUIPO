using Entity;
using Ofn;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
  public class PersonaDAL
    {

        // lista toda la tabla
        public DataTable Listar()
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

        //enlista un unico valor de la tabla.
        public PersonaEntity Obtener(int IDPersona)
        {
            var oPersonaEntity = new PersonaEntity();

            var DT = fn.Leer("Usp_Sel_Personas", IDPersona);
            if (DT.Rows.Count > 0)
            {

                oPersonaEntity.IDPersona = (int)DT.Rows[0][1];
                oPersonaEntity.Nombre = DT.Rows[0][2].ToString();
                oPersonaEntity.Apellido = DT.Rows[0][3].ToString();
                oPersonaEntity.Cargo = DT.Rows[0][4].ToString();
                oPersonaEntity.Area = DT.Rows[0][5].ToString();
                oPersonaEntity.ACTIVO = DT.Rows[0][6].ToString();
                oPersonaEntity.Fechaprestamo = (DateTime)DT.Rows[0][7];
                oPersonaEntity.FechaEntrega = (DateTime)DT.Rows[0][8];

            }

            return oPersonaEntity;
        }

        public int Nuevo(PersonaEntity oPersonaEntity)
        {
            int Exito = 0;
            try
            {
                Exito = fn.Guardar("Usp_Ins_Personas", oPersonaEntity.IDPersona, oPersonaEntity.Nombre, oPersonaEntity.Apellido,
                                                     oPersonaEntity.Cargo, oPersonaEntity.Area, oPersonaEntity.ACTIVO,
                                                     oPersonaEntity.Fechaprestamo, oPersonaEntity.FechaEntrega);
            }
            catch
            {
                Exito = -1;
            }

            return Exito;

        }

        public int Editar(PersonaEntity oPersonaEntity)
        {
            int Exito = -1;
            try
            {
                Exito = fn.Guardar("Usp_Upd_Personas", oPersonaEntity.IDPersona, oPersonaEntity.Nombre, oPersonaEntity.Apellido, 
                                                       oPersonaEntity.Cargo, oPersonaEntity.Area, oPersonaEntity.ACTIVO, 
                                                       oPersonaEntity.Fechaprestamo, oPersonaEntity.FechaEntrega);
            }
            catch
            {
                Exito = -1;
                //throw new System.ArgumentNullException(ex.Message);
            }

            return Exito;
        }


    }
}
