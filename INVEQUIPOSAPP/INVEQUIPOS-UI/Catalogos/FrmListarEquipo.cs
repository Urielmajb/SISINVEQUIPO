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
    public partial class FrmListarEquipo : DevExpress.XtraEditors.XtraForm
    {
        #region
        //Instanciamos la clase de Productos BLL

        EquipoBLL oEquipo = new EquipoBLL();

        //Instanciamos una unica vez el formulario
        private static FrmListarEquipo Childinstance = null;

        public static FrmListarEquipo instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmListarEquipo();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }

        public void Cargar()
        {
            gridControl1.DataSource = oEquipo.Listar();
            gridView1.PopulateColumns();
            gridView1.HorzScrollVisibility = DevExpress.XtraGrid.Views.Base.ScrollVisibility.Always;
            gridView1.OptionsView.ColumnAutoWidth = false;
            Variables.FormatoGrid(ref gridView1);
            gridView1.Columns["NOM_EQUIPO"].Width = 250;
        }


        #endregion


        public FrmListarEquipo()
        {
            InitializeComponent();
        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnNuevo_Click(object sender, EventArgs e)
        {
            Variables.gID = -1;
            FrmEquipo frm = FrmEquipo.instance();
            frm.ShowDialog();
            Cargar();
            
        }

        private void FrmListarEquipo_Load(object sender, EventArgs e)
        {
            Cargar();
        }

        private void BtnGrabar_Click(object sender, EventArgs e)
        {
            Variables.gID = (int)gridView1.GetFocusedRowCellValue("ID_Equipo");
            FrmEquipo frm = FrmEquipo.instance();
            frm.ShowDialog();
            Cargar();
        }

        private void labelControl1_Click(object sender, EventArgs e)
        {

        }
    }
}
