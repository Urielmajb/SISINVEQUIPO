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
    public partial class FrmListadoReuniones : DevExpress.XtraEditors.XtraForm
    {
        //#region
        ////Instanciamos la clase de Productos BLL

        //Reuniones oPersona = new PersonaBLL();

        ////Instanciamos una unica vez el formulario
        //private static FrmListadoReuniones Childinstance = null;

        //public static FrmListadoReuniones instance()
        //{
        //    if (Childinstance == null || Childinstance.IsDisposed == true)
        //    {
        //        Childinstance = new FrmListadoReuniones();
        //        Childinstance.BringToFront();
        //    }
        //    return Childinstance;
        //}

        ////public void Cargar()
        ////{
        ////    gridControl1.DataSource = oPersona.Listar();
        ////    gridView1.PopulateColumns();
        ////    gridView1.HorzScrollVisibility = DevExpress.XtraGrid.Views.Base.ScrollVisibility.Always;
        ////    gridView1.OptionsView.ColumnAutoWidth = false;
        ////    Variables.FormatoGrid(ref gridView1);
        ////    gridView1.Columns["Nombre"].Width = 250;
        ////}


        //#endregion



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

        }
    }
}
