using Ofn;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace INVEQUIPOS_UI.Reuniones
{
    public partial class FrmConsultaReunion : DevExpress.XtraEditors.XtraForm
    {

        #region

        //Instanciamos una unica vez el formulario
        private static FrmConsultaReunion Childinstance = null;

        public static FrmConsultaReunion instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmConsultaReunion();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }

        #endregion

        public FrmConsultaReunion()
        {
            InitializeComponent();
        }

        private void BtnConsultar_Click(object sender, EventArgs e)
        {
            pivotGridControl1.DataSource = fn.Leer("Usp_ConsultaReuniones", TxtFechaInicial.Text, TxtFechaFin.Text);
            pivotGridControl1.Refresh();
        }

        private void FrmConsultaReunion_Load(object sender, EventArgs e)
        {
            TxtFechaInicial.EditValue = DateTime.Now.AddDays(-DateTime.Now.Day + 1).ToShortDateString();
            TxtFechaFin.EditValue = DateTime.Now.ToShortDateString();
        }
    }
}
