using INVEQUIPOS_UI.Catalogos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using INVEQUIPOS_UI.Reuniones;
using INVEQUIPOS_UI.Seguridad;
using Microsoft.Win32;
using DevExpress.XtraEditors;
using DevExpress.LookAndFeel;
using DevExpress.XtraBars.Helpers;
using DevExpress.XtraEditors;

namespace INVEQUIPOS_UI.Menu
{
    public partial class FrmMenu : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public FrmMenu()
        {
            try
            {
                InitializeComponent();
                initskins();
                initskinGallery();
                RegistryKey key;
                key = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("Invequipo");
                string apariencia = (String)key.GetValue("Apariencia");
                DevExpress.LookAndFeel.UserLookAndFeel.Default.SetSkinStyle(apariencia);
            }
            catch
            {

            }
            //InitializeComponent();
        }


        private void initskins()
        {
            DevExpress.Skins.SkinManager.EnableFormSkins();
            DevExpress.UserSkins.BonusSkins.Register();
        }

        private void initskinGallery()
        {
            SkinHelper.InitSkinGallery(skinRibbonGalleryBarItem1, true);
        }

        private void FrmMenu_Load(object sender, EventArgs e)
        {
            TxtFecha.Caption = DateTime.Now.ToLocalTime().ToString();
            TxtUsuario.Caption = Variables.gstrUsername;
            TxtServidor.Caption = Variables.gstrServername;
            TxtBD.Caption = Variables.gstrDBName;

        }

        private void barButtonEquipo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmListarEquipo frm = FrmListarEquipo.instance();
            frm.MdiParent = this;
            frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void barButtonPersonas_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmListarPersona frm = FrmListarPersona.instance();
            frm.MdiParent = this;
            frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmListadoReuniones frm = FrmListadoReuniones.instance();
            //FrmReunionesGeneralescs frm = FrmReunionesGeneralescs.instance();
            frm.MdiParent = this;
            frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmConfServidor frm = new FrmConfServidor();
            //frm.MdiParent = this;
            //frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void ribbonControl1_Click(object sender, EventArgs e)
        {

        }

        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmAuditoria frm = FrmAuditoria.instance();
            frm.MdiParent = this;
            frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void barButtonConsulta_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmConsultaReunion frm = FrmConsultaReunion.instance();
            frm.MdiParent = this;
            frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void barButtonConsultaReuniones_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmConsultaReunion frm = FrmConsultaReunion.instance();
            frm.MdiParent = this;
            frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void FrmMenu_FormClosing(object sender, FormClosingEventArgs e)
        {
            RegistryKey mykey;
            mykey = Microsoft.Win32.Registry.CurrentUser.CreateSubKey("Invequipo");
            mykey.SetValue("Apariencia", UserLookAndFeel.Default.SkinName);
            mykey.Close();
            if (XtraMessageBox.Show("¿Esta seguro de Salir del Sistema?", Application.ProductName, MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.ExitThread();
            }
            else
            {
                e.Cancel = true;
            }
        }
    }
}
