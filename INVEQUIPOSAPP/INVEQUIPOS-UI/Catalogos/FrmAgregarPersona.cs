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

namespace INVEQUIPOS_UI.Catalogos
{
    public partial class FrmAgregarPersona : DevExpress.XtraEditors.XtraForm
    {

        #region
        //Instanciamos la clase de Productos BLL

        PersonaBLL oPersona = new PersonaBLL();

        //Instanciamos una unica vez el formulario
        private static FrmAgregarPersona Childinstance = null;

        public static FrmAgregarPersona instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmAgregarPersona();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }

        private bool Validaciones()
        {
            bool result = true;

            Error.ClearErrors();

            if (string.IsNullOrEmpty(this.TxtNombre.Text))
            {
                Error.SetError(TxtNombre, "El nombre no puede ser vacio");
                result = false;
            }
            if (string.IsNullOrEmpty(TxtApellido.Text))
            {
                Error.SetError(TxtApellido, "El Apellido no puede ser vacio");
                result = false;
            }

            if (string.IsNullOrEmpty(TxtArea.Text))
            {
                Error.SetError(TxtArea, "El Area no puede ser vacio");
                result = false;
            }

            if (string.IsNullOrEmpty(TxtCargo.Text))
            {
                Error.SetError(TxtCargo, "El cargo no puede ser vacio.");
            }

            if (string.IsNullOrEmpty(TxtFechaEntrega.Text))
            {
                Error.SetError(TxtCargo, "La fecha de entrega no puede estar vacia.");
            }

            if (string.IsNullOrEmpty(TxtFechaPrestamo.Text))
            {
                Error.SetError(TxtCargo, "La fecha prestamo no puede estar vacia.");
            }

            return result;
        }

        private void Nuevo()
        {
            Error.ClearErrors();
            TxtIdPersona.Text = "-1";
            TxtNombre.Text = "";
            TxtApellido.Text = "";
            BtnTiempoEntrega.Enabled = false;
            TxtEstado.Text = "A";
            TxtCargo.Text = "";
            TxtArea.Text = "";
        }


        #endregion

        public FrmAgregarPersona()
        {
            InitializeComponent();
        }

        private void FrmAgregarPersona_Load(object sender, EventArgs e)
        {

            TxtEstado.ReadOnly = true;

            if (Variables.gID > 0)
            {
                PersonaEntity oPersonaEntity = new PersonaEntity();
                oPersonaEntity = oPersona.Obtener(Variables.gID);

                TxtIdPersona.Text = oPersonaEntity.IDPersona.ToString();
                TxtNombre.Text = oPersonaEntity.Nombre.ToString();
                TxtApellido.Text = oPersonaEntity.Apellido.ToString();
                TxtCargo.Text = oPersonaEntity.Cargo.ToString();
                TxtArea.Text = oPersonaEntity.Area.ToString();
                TxtEstado.Text = oPersonaEntity.ACTIVO.ToString();
                TxtFechaEntrega.EditValue = oPersonaEntity.FechaEntrega.ToShortDateString();
                TxtFechaPrestamo.EditValue = oPersonaEntity.Fechaprestamo.ToShortDateString();
            }
            else
            {
                Nuevo();
            }


        }

        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnGrabar_Click(object sender, EventArgs e)
        {

            if (!Validaciones())
                return;

            PersonaEntity oPersonaEntity = new PersonaEntity();
            oPersonaEntity.IDPersona = int.Parse(TxtIdPersona.Text);
            oPersonaEntity.Nombre = TxtNombre.Text;
            oPersonaEntity.Apellido = TxtApellido.Text;
            oPersonaEntity.Cargo = TxtCargo.Text;
            oPersonaEntity.Area = TxtArea.Text;
            oPersonaEntity.ACTIVO = TxtEstado.Text;
            oPersonaEntity.Fechaprestamo = DateTime.Parse(TxtFechaPrestamo.Text);
            oPersonaEntity.FechaEntrega = DateTime.Parse(TxtFechaEntrega.Text);

            if (oPersona.Guardar(oPersonaEntity) < 0)
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
    }
}
