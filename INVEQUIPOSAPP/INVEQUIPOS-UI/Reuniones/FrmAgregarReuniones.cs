using BLL;
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
    public partial class FrmAgregarReuniones : DevExpress.XtraEditors.XtraForm
    {
        #region
        //Instanciamos la clase de Productos BLL

        ReunionBLL oReuniones = new ReunionBLL();

        //Instanciamos una unica vez el formulario
        private static FrmAgregarReuniones Childinstance = null;

        public static FrmAgregarReuniones instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmAgregarReuniones();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }



        #endregion

        public FrmAgregarReuniones()
        {
            InitializeComponent();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
