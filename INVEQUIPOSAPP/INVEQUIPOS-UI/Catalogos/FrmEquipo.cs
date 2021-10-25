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
using Entity;
using DevExpress.XtraEditors;

namespace INVEQUIPOS_UI.Catalogos
{
    public partial class FrmEquipo : DevExpress.XtraEditors.XtraForm
    {

        #region
        //Instanciamos la clase de Productos BLL

        EquipoBLL oEquipo = new EquipoBLL();

        //Instanciamos una unica vez el formulario
        private static FrmEquipo Childinstance = null;

        public static FrmEquipo instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmEquipo();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }

        private void CargarCombobox()
        {
            CmbDispositivo.Properties.DataSource = oEquipo.ListarDispositivo();
            CmbDispositivo.Properties.ValueMember = "ID_dispo";
            CmbDispositivo.Properties.DisplayMember = "Dispositivo";
            CmbDispositivo.EditValue = null;
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
            if (string.IsNullOrEmpty(TxtCodigoActivo.Text))
            {
                Error.SetError(TxtCodigoActivo, "Codigo Activo no puede ser vacio");
                result = false;
            }

            if (string.IsNullOrEmpty(this.CmbDispositivo.Text))
            {
                Error.SetError(CmbDispositivo, "Dispositivo no puede ser vacio");
                result = false;
            }

            if (string.IsNullOrEmpty(this.TxtCantidad.Text))
            {
                Error.SetError(TxtCantidad, "Cantidad no puede ser vacio");
                result = false;
            }

            return result;
        }

        private void Nuevo()
        {
            Error.ClearErrors();
            TxtIdEquipo.Text = "-1";
            TxtNombre.Text = "";
            TxtCodigoActivo.Text = "";
            TxtActivo.Text = "A";
            TxtCantidad.Text = "";
        }

        #endregion
        public FrmEquipo()
        {
            InitializeComponent();
        }
        private void BtnCerrar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

      private void FrmEquipo_Load(object sender, EventArgs e)
        {
            
            TxtActivo.ReadOnly = true;
            CargarCombobox();

            if (Variables.gID > 0)
            {
                EquipoEntity oEquipoEntity = new EquipoEntity();
                oEquipoEntity = oEquipo.Obtener(Variables.gID);

                TxtIdEquipo.Text = oEquipoEntity.ID_Equipo.ToString();
                CmbDispositivo.EditValue = oEquipoEntity.ID_dispo;
                TxtNombre.Text = oEquipoEntity.NOM_EQUIPO.ToString();
                TxtCodigoActivo.Text = oEquipoEntity.CODIGO_ACTIVO.ToString();
                TxtActivo.Text = oEquipoEntity.ACTIVO.ToString();
                TxtCantidad.Text = oEquipoEntity.CANTIDAD.ToString();


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

            EquipoEntity oEquipoEntity = new EquipoEntity();
            oEquipoEntity.ID_Equipo = int.Parse(TxtIdEquipo.Text);
            oEquipoEntity.ID_dispo = (int)CmbDispositivo.EditValue;
            oEquipoEntity.NOM_EQUIPO = TxtNombre.Text;
            oEquipoEntity.CODIGO_ACTIVO = TxtCodigoActivo.Text;
            oEquipoEntity.ACTIVO = TxtActivo.Text;
            oEquipoEntity.CANTIDAD = int.Parse(TxtCantidad.Text);

            if (oEquipo.Guardar(oEquipoEntity) < 0)
            {
                XtraMessageBox.Show("Error al grabar Equipos, favor corregir",
                                    ProductName, MessageBoxButtons.OK,
                                    MessageBoxIcon.Error);

                return;
            }

            XtraMessageBox.Show("El Equipo ha sigo grabado satisfactoriamente",
                                ProductName,
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Information);
            this.Close();

            Nuevo();



        }

        private void FrmEquipo_KeyPress(object sender, KeyPressEventArgs e)
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
