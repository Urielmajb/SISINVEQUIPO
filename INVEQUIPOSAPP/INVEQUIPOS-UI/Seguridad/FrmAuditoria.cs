using System;
using Ofn;

namespace INVEQUIPOS_UI.Seguridad
{
    public partial class FrmAuditoria : DevExpress.XtraEditors.XtraForm
    {
        #region
        
        //Instanciamos una unica vez el formulario
        private static FrmAuditoria Childinstance = null;

        public static FrmAuditoria instance()
        {
            if (Childinstance == null || Childinstance.IsDisposed == true)
            {
                Childinstance = new FrmAuditoria();
                Childinstance.BringToFront();
            }
            return Childinstance;
        }

        #endregion


        public FrmAuditoria()
        {
            InitializeComponent();
        }



        private void FrmAuditoria_Load(object sender, EventArgs e)
        {
            TxtFI.EditValue = DateTime.Now.AddDays(-DateTime.Now.Day+1).ToShortDateString();
            TxtFF.EditValue = DateTime.Now.ToShortDateString();

        }

        private void BtnMostrar_Click(object sender, EventArgs e)
        {
            pivotGridControl1.DataSource = fn.Leer("Usp_Auditoria", TxtFI.Text, TxtFF.Text);
            pivotGridControl1.Refresh();

        }
    }
}
