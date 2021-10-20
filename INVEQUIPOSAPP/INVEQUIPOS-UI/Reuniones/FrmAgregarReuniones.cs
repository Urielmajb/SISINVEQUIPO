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


        private void CargarComboboxEquipoPrestar()
        { 
            CmbEquipoPrestado.Properties.DataSource = oReuniones.ListarEquipoPrestado();
            CmbEquipoPrestado.Properties.ValueMember = "ID_Equipo";
            CmbEquipoPrestado.Properties.DisplayMember = "NOM_EQUIPO";
            CmbEquipoPrestado.EditValue = 1;
            CmbEquipoPrestado.Properties.PopulateColumns();
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

            TxtIdReunion.Text = "-1";
            TxtFechaRealizada.EditValue = DateTime.Now.Date;
            CmbTipoReunion.EditValue = null;
            CmbPersona.EditValue = null;
            txtNomReunion.Text = string.Empty;
            TxtHora.Text = string.Empty;
            CmbEquipoPrestado.EditValue = null;
            Error.ClearErrors();
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
            CargarComboboxEquipoPrestar();

            if (Variables.gID > 0)
            {
                ReunionEntity oReunionEntity = new ReunionEntity();
                oReunionEntity = oReuniones.Obtener(Variables.gID);
                
                TxtIdReunion.Text = oReunionEntity.IDReunion.ToString();
                CmbPersona.EditValue = oReunionEntity.IDPersona;
                CmbTipoReunion.EditValue = oReunionEntity.ID_Tipo;
                txtNomReunion.Text = oReunionEntity.NOM_REUNION.ToString();
                TxtFechaRealizada.EditValue = oReunionEntity.fecharealizada;
                TxtHora.Text = oReunionEntity.hora.ToString();
                CmbEquipoPrestado.EditValue = oReunionEntity.ID_Equipo;
            }

            else
            {
                Nuevo();
            }

        }

        private void BtnGrabar_Click(object sender, EventArgs e)
        {
          
            if (!Validaciones())
                return;
            ReunionEntity oReunionEntity = new ReunionEntity();
            oReunionEntity.IDReunion = int.Parse(TxtIdReunion.Text);
            oReunionEntity.ID_Tipo = (int)CmbTipoReunion.EditValue;
            oReunionEntity.IDPersona = (int)CmbPersona.EditValue;
            oReunionEntity.fecharealizada = (DateTime)TxtFechaRealizada.EditValue;
            oReunionEntity.NOM_REUNION = txtNomReunion.Text;
            oReunionEntity.hora = TxtHora.Text;
            oReunionEntity.ID_Equipo = (int)CmbEquipoPrestado.EditValue;

            if (oReuniones.Guardar(oReunionEntity) < 0)
            {
                XtraMessageBox.Show("Error al grabar Personas, favor corregir",
                                    ProductName, MessageBoxButtons.OK,
                                    MessageBoxIcon.Error);

                return;
            }

            XtraMessageBox.Show("La persona responsable del Equipo ha sigo grabado satisfactoriamente",
                                ProductName,
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
            this.Close();

            Nuevo();


            
        }



        private void txtNomReunion_EditValueChanged(object sender, EventArgs e)
        {

        }

        private void FrmAgregarReuniones_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Activa el evento enter en el formulario en combiacion con keypreview = true
            if (e.KeyChar == Convert.ToChar(Keys.Enter))
            {
                System.Windows.Forms.SendKeys.Send("{TAB}");
                e.Handled = true;

            }
        }

        private void BtnNuevo_Click(object sender, EventArgs e)
        {
            Nuevo();
        }
    }
}
