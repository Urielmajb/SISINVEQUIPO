using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
using INVEQUIPOS_UI.Catalogos;


namespace INVEQUIPOS_UI.Reuniones
{
    public partial class FrmListadoReuniones : DevExpress.XtraEditors.XtraForm
    {
        #region
        //Instanciamos la clase 

        ReunionBLL oReuniones = new ReunionBLL();

        //Instanciamos una unica vez el formulario
        private static FrmListadoReuniones Childinstance = null;

        public static FrmListadoReuniones instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmListadoReuniones();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }



        #endregion



        public FrmListadoReuniones()
        {
            InitializeComponent();
        }

        private void FrmListadoReuniones_Load(object sender, EventArgs e)
        {

        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnNuevo_Click(object sender, EventArgs e)
        {
           // Variables.gID = -1;
            FrmAgregarReuniones frm = FrmAgregarReuniones.instance();
            frm.ShowDialog();
        }
    }
}
