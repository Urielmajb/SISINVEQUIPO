using DevExpress.XtraEditors;
using INVEQUIPOS_UI.Menu;
using Microsoft.Win32;
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

namespace INVEQUIPOS_UI.Seguridad
{
    public partial class FrmLogin : DevExpress.XtraEditors.XtraForm
    {
        public FrmLogin()
        {
            InitializeComponent();

            try
            {


                initskins();

                RegistryKey key;
                key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Invequipo");
                string apariencia = (String)key.GetValue("Apariencia");
                DevExpress.LookAndFeel.UserLookAndFeel.Default.SetSkinStyle(apariencia);

            }
            catch
            {

            }


        }

        private void initskins()
        {
            DevExpress.Skins.SkinManager.EnableFormSkins();
            DevExpress.UserSkins.BonusSkins.Register();
        }

        //SqlConnection con = new SqlConnection(@"Data Source = PRESENTACIONES1\\SQLEXPRESS; Initial Catalog = DBEquipo; User ID = net2; Password=2021");


        private void labelControl1_Click(object sender, EventArgs e)
        {

        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        public void loger(string usuario, string contrasenia)
        {
            


        }

        private void FrmLogin_Load(object sender, EventArgs e)
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

        }

        private void BtnAceptar_Click(object sender, EventArgs e)
        {
     
            if (TxtPwd.Text == "2021")
            {
                Variables.gstrUsername = TxtUsuario.Text;

                FrmMenu frm = new FrmMenu();
                this.Visible = false;
                frm.Show();
            }
            else
            {
                XtraMessageBox.Show("Contrasenia Incorrecta", Application.ProductName,
                                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void TxtPwd_Validated(object sender, EventArgs e)
        {
            if (TxtUsuario.Text.Length == 0)

                Error.SetError(TxtPwd, "Usuario es requerido");

            else
                Error.SetError(TxtPwd, "");
        }

        private void BtnConfServer_Click(object sender, EventArgs e)
        {
            FrmConfServidor frm = new FrmConfServidor();
            frm.ShowDialog();
        }
    }
}
