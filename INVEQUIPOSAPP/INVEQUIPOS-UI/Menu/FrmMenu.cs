﻿using INVEQUIPOS_UI.Catalogos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace INVEQUIPOS_UI.Menu
{
    public partial class FrmMenu : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public FrmMenu()
        {
            InitializeComponent();
        }

        private void FrmMenu_Load(object sender, EventArgs e)
        {

        }

        private void barButtonEquipo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmListarEquipo frm = FrmListarEquipo.instance();
            //frm.MdiParent = this;
            //frm.WindowState = FormWindowState.Maximized;
            frm.Show();
        }

        private void barButtonPersonas_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            FrmListarPersona frm = FrmListarPersona.instance();
            frm.Show();
        }
    }
}
