using BLL;
using DevExpress.XtraEditors;
using Entity;
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

        //datatable a nivel global

        DataTable DTG = new DataTable();


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

        private void CargarComboboxPersona()
        {
            CmbPersona.Properties.DataSource = oReuniones.ListarPersona();
            CmbPersona.Properties.ValueMember = "IDPersona";
            CmbPersona.Properties.DisplayMember = "Persona";
            CmbPersona.EditValue = 1;
            CmbPersona.Properties.PopulateColumns();
        }

        private void CargarComboboxTipoReunion()
        { 
            CmbTipoReunion.Properties.DataSource = oReuniones.ListarTipoReunion();
            CmbTipoReunion.Properties.ValueMember = "ID_Tipo";
            CmbTipoReunion.Properties.DisplayMember = "TipoReunion";
            CmbTipoReunion.EditValue = 1;
            CmbTipoReunion.Properties.PopulateColumns();
        }

        private bool Validaciones()
        {
            //variable resultado
            bool resultado = true;
            //inicializar variable de error
            Error.ClearErrors();
            DateTime fecha;

            if (!DateTime.TryParse(TxtFechaRealizada.Text, out fecha))
            {
                Error.SetError(TxtFechaRealizada, "Fecha Incorrecta");
                resultado = false;
            }

            if (string.IsNullOrEmpty(this.txtNomReunion.Text))
            {
                Error.SetError(txtNomReunion, "El nombre de la reunion no puede ser vacio");
                resultado = false;
            }
            return resultado;
        }

        private void Nuevo()
        {
           
            TxtFechaRealizada.EditValue = DateTime.Now.Date;
            CmbTipoReunion.EditValue = null;
            CmbPersona.EditValue = null;
            txtNomReunion.Text = string.Empty;
            TxtHora.Text = string.Empty;

            Error.ClearErrors();
        }

        private void CargarCombobox_Grid()
        {
            DataTable dt = oReuniones.Construir_Grid();
            CmbEquipo.DataSource = dt;
            CmbEquipo.DisplayMember = "ID_Equipo";
            CmbEquipo.ValueMember = "ID_Equipo";
            CmbEquipo.PopulateColumns();
            CmbEquipo.Columns[1].Visible = false;
            CmbEquipo.Columns[2].Visible = false;

            CmbArticulo.DataSource = dt;
            CmbArticulo.DisplayMember = "NOM_EQUIPO";
            CmbArticulo.ValueMember = "ID_Equipo";
            CmbArticulo.PopulateColumns();
            CmbArticulo.Columns[0].Visible = false;
            CmbArticulo.Columns[2].Visible = false;
        }


        private void ConstruirGrid(int IDReunion)
        {
            DTG = oReuniones.Obtener_Detalle_Reunion(IDReunion);
            GridReunion.DataSource = DTG;
        }

        private void Inicializar (int IDReunion)
        {
            CargarCombobox_Grid();
            ConstruirGrid(IDReunion);
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

        private void FrmAgregarReuniones_Load(object sender, EventArgs e)
        {
            CargarComboboxPersona();
            CargarComboboxTipoReunion();
            Inicializar(Variables.gID);

            if (Variables.gID > 0)
            {
                ReunionEntity oReunionEntity = new ReunionEntity();
                oReunionEntity = oReuniones.Obtener(Variables.gID);
                TxtIdReunion.Text = oReunionEntity.IDReunion.ToString();
                txtNomReunion.Text = oReunionEntity.NOM_REUNION.ToString();
                TxtFechaRealizada.EditValue = oReunionEntity.fecharealizada;
                CmbTipoReunion.EditValue = oReunionEntity.ID_Tipo;
                CmbPersona.EditValue = oReunionEntity.IDPersona;
                TxtHora.Text = oReunionEntity.hora.ToString();
               }
            else
            {
                Nuevo();
            }


        }

        private void BtnGrabar_Click(object sender, EventArgs e)
        {
            int IDReunion = 0;
            if (!Validaciones())
                return;
            ReunionEntity oMaestro = new ReunionEntity();
            oMaestro.IDReunion = int.Parse(TxtIdReunion.Text);
            oMaestro.IDPersona = (int)CmbPersona.EditValue;
            oMaestro.ID_Tipo = (int)CmbTipoReunion.EditValue;
            oMaestro.fecharealizada = (DateTime)TxtFechaRealizada.EditValue;
            oMaestro.NOM_REUNION = txtNomReunion.Text;

            for (int i = 0; i < vReunion.RowCount - 1; i++)
            {
                DetalleReunionEquipos oDetalle = new DetalleReunionEquipos();
                //oDetalle.NUM_INV=
                oDetalle.ID_Equipo = (int)vReunion.GetRowCellValue(i, "ID_Equipo");
                oDetalle.CANTIDAD = (int)vReunion.GetRowCellValue(i, "CANTIDAD");
                oDetalle.FILA = (int)vReunion.GetRowCellValue(i, "FILA");
                oMaestro.Lineas.Add(oDetalle);
            }

            IDReunion = oReuniones.Grabar(oMaestro);
            if (IDReunion < 0)
            {
                XtraMessageBox.Show("Error al grabar Inventario, favor corregir",
                                    ProductName, MessageBoxButtons.OK,
                                    MessageBoxIcon.Error);
            }

            Nuevo();

            XtraMessageBox.Show("Inventario guardado satisfactoriamente, favor corregir",
                                   ProductName, MessageBoxButtons.OK,
                                   MessageBoxIcon.Information);

            this.Close();
        }
    }
}
