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

namespace INVEQUIPOS_UI.Catalogos
{
    public partial class FrmListarPersona : DevExpress.XtraEditors.XtraForm
    {
        #region
        //Instanciamos la clase de Productos BLL

        PersonaBLL oPersona = new PersonaBLL();

        //Instanciamos una unica vez el formulario
        private static FrmListarPersona Childinstance = null;

        public static FrmListarPersona instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmListarPersona();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }

        public void Cargar()
        {
            gridControl1.DataSource = oPersona.Listar();
            gridView1.PopulateColumns();
            gridView1.HorzScrollVisibility = DevExpress.XtraGrid.Views.Base.ScrollVisibility.Always;
            gridView1.OptionsView.ColumnAutoWidth = false;
            Variables.FormatoGrid(ref gridView1);
            gridView1.Columns["Nombre"].Width = 250;
        }


        #endregion

        public FrmListarPersona()
        {
            InitializeComponent();
        }

        private void FrmListarPersona_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnNuevo_Click(object sender, EventArgs e)
        {
            Variables.gID = -1;
            FrmAgregarPersona frm = FrmAgregarPersona.instance();
            frm.ShowDialog();
            Cargar();
        }

        private void BtnEditar_Click(object sender, EventArgs e)
        {
            Variables.gID = (int)gridView1.GetFocusedRowCellValue("IDPersona");
            FrmAgregarPersona frm = FrmAgregarPersona.instance();
            frm.ShowDialog();
            Cargar();
        }
    }
}
