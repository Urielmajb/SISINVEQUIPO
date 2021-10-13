using BLL;
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
    }
}
