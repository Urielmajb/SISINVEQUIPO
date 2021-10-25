using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;
using DevExpress.Export;
using DevExpress.XtraPrinting;
using INVEQUIPOS_UI.Catalogos;
using DevExpress.XtraGrid.Views;
using DevExpress.XtraGrid.Views.Grid;
using INVEQUIPOS_UI.Reportes;
using DevExpress.XtraReports.UI;

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

        public FrmListadoReuniones()
        {
            InitializeComponent();
        }

        private void FrmListadoReuniones_Load(object sender, EventArgs e)
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
            FrmAgregarReuniones frm = FrmAgregarReuniones.instance();
            frm.ShowDialog();
            Cargar();
        }

        private void BtnEditar_Click(object sender, EventArgs e)
        {
            Variables.gID = (int)gridView1.GetFocusedRowCellValue("IDReunion");
            FrmAgregarReuniones frm = FrmAgregarReuniones.instance();
            frm.ShowDialog();
            Cargar();
        }

        private void BtnExportar_Click(object sender, EventArgs e)
        {

            GridView View = (GridView)gridControl1.MainView;

            if (View != null)
            {
                View.ExportToPdf("ListadoDocumentos.pdf");
            }

            Process pdfExport = new Process();
            pdfExport.StartInfo.FileName = "Acrobat.exe";
            pdfExport.StartInfo.Arguments = "ListadoDocumentos.pdf";
            pdfExport.Start();

            //gridView1.ExportToPdf("ListadoReuniones.xlsx",
            //     new PdfExportOptions { ExportType = ExportType.WYSIWYG }
            //     );
            //Process.Start("Documentos.xlsx");
        }

        //private void BtnImprimir_Click(object sender, EventArgs e)
        //{
        //    RptGeneralReuniones rpt = new RptGeneralReuniones();
        //    rpt.DataSource = oReuniones.ReporteGeneraldeEnventos();
        //    rpt.ShowPreview();
        //}
    }
}
