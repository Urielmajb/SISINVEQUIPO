﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Ofn;
using Entity;
using System.Data;
using System.Data.SqlClient;

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

        public DataTable Construir_Grid()
        {
            var DT = new DataTable();
            try
            {   // carga todos los datos al combobox
                DT = fn.Leer("Usp_Construir_Grid");
            }
            catch (Exception ex)
            {
                throw new System.ArgumentException(ex.Message);
            }
            return DT;
        }

        public DataTable Obtener_Detalle_Reunion(int IDReunion)
        {
            var DT = new DataTable();
            try
            {   // carga todos los datos al combobox
                DT = fn.Leer("Usp_Sel_Detalle_ReunionEquipos", 0 );
            }
            catch (Exception ex)
            {
                throw new System.ArgumentException(ex.Message);
            }
            return DT;
        }

        public int Grabar(ReunionEntity oReunionEntity)
        {
            SqlConnection Cn = fn.GetConnection();
            SqlCommand Cmd = new SqlCommand();
            SqlTransaction tr = null;
            int IDReunion = 0;
            Cn.Open();
            tr = Cn.BeginTransaction();
            try
            {
                Cmd = new SqlCommand("Usp_Ins_Reunion", Cn, tr);
                Cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter parameter = new SqlParameter("@IDReunion", SqlDbType.Int, 4);
                parameter.Direction = ParameterDirection.InputOutput;
                parameter.Value = oReunionEntity.IDReunion;
                Cmd.Parameters.Add(parameter);

                Cmd.Parameters.AddWithValue("@IDPersona", oReunionEntity.IDPersona);
                Cmd.Parameters.AddWithValue("@ID_Tipo", oReunionEntity.ID_Tipo);
                Cmd.Parameters.AddWithValue("@NOM_REUNION", oReunionEntity.NOM_REUNION);
                Cmd.Parameters.AddWithValue("@fecharealizada", oReunionEntity.fecharealizada);
                Cmd.Parameters.AddWithValue("@hora", oReunionEntity.hora);
                Cmd.ExecuteNonQuery();

                if (IDReunion == 0)
                {
                    IDReunion = (int)parameter.Value;
                }
                oReunionEntity.IDReunion = IDReunion;

                foreach (DetalleReunionEquipos DetalleReunion in oReunionEntity.Lineas)
                {
                    Cmd = new SqlCommand("Usp_Ins_Detalle_ReunionEquipos", Cn, tr);
                    Cmd.CommandType = CommandType.StoredProcedure;
                    Cmd.Parameters.AddWithValue("@IDReunion", oReunionEntity.IDReunion);
                    Cmd.Parameters.AddWithValue("@ID_Equipo", DetalleReunion.ID_Equipo);
                    Cmd.Parameters.AddWithValue("@CANTIDAD", DetalleReunion.CANTIDAD);
                    Cmd.Parameters.AddWithValue("@FILA", DetalleReunion.FILA);
                    Cmd.ExecuteNonQuery();
                }
                tr.Commit();
                return IDReunion;
            }
            catch
            {
                tr.Rollback();
                return -1;
            }
            finally
            {
                Cn.Close();
            }

        }

    }
}
