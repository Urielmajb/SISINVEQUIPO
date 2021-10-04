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
    public class EquipoDAL
    {
        // lista toda la tabla
        public DataTable Listar()
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

        //Referencia a la tabla dispositivo, donde la usaremos para cargar el combobox.
        public DataTable ListarDispositivo()
        {
            var DT = new DataTable();
            try
            {
                DT = fn.Leer("Usp_Sel_Dispositivo");
            }
            catch (Exception ex)
            {
                throw new System.ArgumentException(ex.Message);
            }
            return DT;
        }

        //enlista un unico valor de la tabla.
        public EquipoEntity Obtener (int ID_Equipo)
        {
            var oEquipoEntity = new EquipoEntity();
            
            var DT = fn.Leer("Usp_Sel_Equipo", ID_Equipo);
            if (DT.Rows.Count > 0)
            {
                oEquipoEntity.ID_Equipo = (int)DT.Rows[0][0];
                oEquipoEntity.ID_dispo = (int)DT.Rows[0][1];
                oEquipoEntity.NOM_EQUIPO = DT.Rows[0][2].ToString();
                oEquipoEntity.CODIGO_ACTIVO = DT.Rows[0][3].ToString();
                oEquipoEntity.ACTIVO = DT.Rows[0][4].ToString();

            }

            return oEquipoEntity;
        }

        public int Nuevo(EquipoEntity oEquipoEntity)
        {
            int Exito = 0;
            try
            {
                Exito = fn.Guardar("Usp_Ins_Equipo", oEquipoEntity.ID_dispo, oEquipoEntity.NOM_EQUIPO, 
                                                     oEquipoEntity.CODIGO_ACTIVO, oEquipoEntity.ACTIVO);
            }
            catch
            {
                Exito = -1;
            }

            return Exito;

        }

        public int Editar(EquipoEntity oEquipoEntity)
        {
            int Exito = -1;
            try
            {
                Exito = fn.Guardar("Usp_Upd_Equipo", oEquipoEntity.ID_Equipo, oEquipoEntity.ID_dispo, oEquipoEntity.NOM_EQUIPO,
                                                     oEquipoEntity.CODIGO_ACTIVO, oEquipoEntity.ACTIVO);
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
