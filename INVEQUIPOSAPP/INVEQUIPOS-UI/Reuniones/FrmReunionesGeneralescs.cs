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
    public partial class FrmReunionesGeneralescs : DevExpress.XtraEditors.XtraForm
    {

        #region
        //Instanciamos la clase 

        ReunionBLL oReuniones = new ReunionBLL();

        //Instanciamos una unica vez el formulario
        private static FrmReunionesGeneralescs Childinstance = null;

        public static FrmReunionesGeneralescs instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmReunionesGeneralescs();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }

        public void Cargar()
        {
            gridControl1.DataSource = oReuniones.Listar();
            gridView1.PopulateColumns();
            gridView1.HorzScrollVisibility = DevExpress.XtraGrid.Views.Base.ScrollVisibility.Always;
            gridView1.OptionsView.ColumnAutoWidth = false;
            Variables.FormatoGrid(ref gridView1);
            gridView1.Columns["IDReunion"].Width = 250;
        }

        #endregion

        public FrmReunionesGeneralescs()
        {
            InitializeComponent();
        }

        private void FrmReunionesGeneralescs_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        private void BtnNuevo_Click(object sender, EventArgs e)
        {
            Variables.gID = -1;
            FrmAgregarReuniones frm = FrmAgregarReuniones.instance();
            frm.ShowDialog();
            Cargar();
        }
    }
}
