using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Win32;

namespace INVEQUIPOS_UI.Seguridad
{
    public partial class FrmConfServidor : DevExpress.XtraEditors.XtraForm
    {
        private bool Tested = false;

        public FrmConfServidor()
        {
            InitializeComponent();
        }

        private void BtnConexion_Click(object sender, EventArgs e)
        {
            SqlConnection Cn = new SqlConnection();

            Cn.ConnectionString = ("Data Source="
                         + (TxtServer.Text + (";Initial Catalog="
                         + (TxtBD.Text + ";User ID=" + this.TxtUser.Text + ";Password=" + this.TxtPwd.Text))));

            try
            {
                Cn.Open();
                Tested = true;
                XtraMessageBox.Show("La prueba de conexion ha sido satisfactoria", Application.ProductName, MessageBoxButtons.OK, MessageBoxIcon.Information);
                Cn.Close();
            }
            catch
            {
                Tested = false;
                XtraMessageBox.Show("La prueba de conexion no ha sido satisfactoria", Application.ProductName, MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmConfServidor_Load(object sender, EventArgs e)
        {

            //--Cargar el nombre del servidor y Base de Datos

            TxtServer.ReadOnly = true;
            TxtServer.BackColor = Color.Yellow;
            TxtServer.ForeColor = Color.Blue;

            TxtBD.ReadOnly = true;
            TxtBD.BackColor = Color.Yellow;
            TxtBD.ForeColor = Color.Blue;

            try
            {
                RegistryKey key;
                key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Invequipo");
                Variables.gstrServername = (String)key.GetValue("Servidor");
                Variables.gstrDBName = (String)key.GetValue("BD");

                this.TxtServer.Text = Variables.gstrServername;
                this.TxtBD.Text = Variables.gstrDBName;

            }
            catch
            {


            }



            //try
            //{
            //    //Recupera los datos del registros de windows de nuestros servidor y bd
            //    RegistryKey key;
            //    key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Invequipo");
            //    this.TxtServer.Text = (string)key.GetValue("Servidor");
            //    this.TxtBD.Text = (string)key.GetValue("BD");


            //}
            //catch
            //{

            //}
        }

        private void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (!Tested)
            {
                XtraMessageBox.Show("La prueba de conexion no ha sido verificada", Application.ProductName, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {

                RegistryKey mykey;
                mykey = Microsoft.Win32.Registry.CurrentUser.CreateSubKey("Invequipo");
                mykey.SetValue("Servidor", this.TxtServer.Text);
                mykey.SetValue("BD", this.TxtBD.Text);
                mykey.SetValue("Usuario", this.TxtUser.Text);
                mykey.SetValue("clave", this.TxtPwd.Text);
                //mykey.SetValue("Apariencia", "");
                mykey.Close();
                this.Close();

            }
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
