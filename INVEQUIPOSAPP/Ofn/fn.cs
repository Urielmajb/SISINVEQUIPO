using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ofn
{
    public class fn
    {

        public static SqlConnection GetConnection()
        {
            try
            {

                RegistryKey key;
                key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Invequipo");
                string gstrServername = (String)key.GetValue("Servidor");
                string gstrDbName = (String)key.GetValue("BD");
                string gstrSesion = (String)key.GetValue("Usuario");
                string gstrclave = (String)key.GetValue("clave");

                string strConnect = ("Data Source=" + (gstrServername + (";Initial Catalog="
                         + (gstrDbName + ";User ID=" + gstrSesion + ";Password=" + gstrclave))));

                //string strConnect = "Data Source=PRESENTACIONES1\\SQLEXPRESS;Initial Catalog=DBEquipo;User ID=net2;Password=2021";


                return new SqlConnection(strConnect);
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static DataTable Leer(string Cmd)
        {
            DataTable dt = new DataTable();
            SqlConnection Cn = GetConnection();
            SqlDataAdapter da = new SqlDataAdapter(Cmd, Cn);
            try
            {
                Cn.Open();
                da.SelectCommand.Connection = Cn;
                da.Fill(dt);
            }
            catch (Exception ex)
            {
                try
                {
                    da = new SqlDataAdapter(("SET DATEFORMAT DMY; EXEC " + Cmd), Cn);
                    da.SelectCommand.Connection = Cn;
                    da.Fill(dt);
                }
                catch (Exception exa)
                {
                    throw new Exception(exa.Message);
                }
            }
            return dt;
        }
        public static DataTable Leer(string Procedimiento, params object[] Parametros)
        {
            SqlConnection cn = fn.GetConnection();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = Procedimiento;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandTimeout = 0;
            cn.Open();
            cmd.Connection = cn;
            da.SelectCommand = cmd;
            SqlCommandBuilder.DeriveParameters(cmd);

            try
            {
                if ((Parametros != null))
                {
                    for (int i = 1; i <= Parametros.Length; i++)
                    {
                        cmd.Parameters[i].Value = Parametros[i - 1];
                    }
                }

                da.Fill(dt);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            return dt;
        }



        public static int Guardar(string Procedimiento, params object[] Parametros)
        {

            SqlConnection cn = fn.GetConnection();
            SqlCommand cmd = new SqlCommand();
            SqlTransaction tr = null;
            int r = 0;

            try
            {
                cmd.CommandText = Procedimiento;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 0;
                cn.Open();
                tr = cn.BeginTransaction();
                cmd.Connection = cn;
                cmd.Transaction = tr;
                SqlCommandBuilder.DeriveParameters(cmd);
                if (Parametros != null)
                {
                    for (int i = 1; i <= Parametros.Length; i++)
                    {
                        cmd.Parameters[i].Value = Parametros[i - 1];
                    }
                }

                r = Convert.ToInt32(cmd.ExecuteScalar());

                tr.Commit();
                cmd = null;
                cn.Close();

                return r;
            }
            catch (Exception)
            {
                tr.Rollback();
                return r;
                //throw new Exception(ex.Message);

            }
        }

        public static bool Eliminar(string Procedimiento, params object[] Parametros)
        {

            SqlConnection cn = fn.GetConnection();
            SqlCommand cmd = new SqlCommand();
            SqlTransaction tr = null;
            try
            {
                cmd.CommandText = Procedimiento;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandTimeout = 0;
                cn.Open();
                tr = cn.BeginTransaction();
                cmd.Connection = cn;
                cmd.Transaction = tr;
                SqlCommandBuilder.DeriveParameters(cmd);
                if (Parametros != null)
                {
                    for (int i = 1; i <= Parametros.Length; i++)
                    {
                        cmd.Parameters[i].Value = Parametros[i - 1];
                    }
                }
                cmd.ExecuteNonQuery();
                tr.Commit();
                cmd = null;
                cn.Close();

                return true;
            }
            catch (Exception)
            {
                tr.Rollback();
                return false;

            }
        }





    }
}
