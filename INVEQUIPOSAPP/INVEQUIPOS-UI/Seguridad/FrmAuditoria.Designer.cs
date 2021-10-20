
namespace INVEQUIPOS_UI.Seguridad
{
    partial class FrmAuditoria
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmAuditoria));
            this.formAssistant1 = new DevExpress.XtraBars.FormAssistant();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.pivotGridControl1 = new DevExpress.XtraPivotGrid.PivotGridControl();
            this.fieldTipoTrn1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldTabla1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldPK1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldCampo1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldValorOriginal1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldValorNuevo1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldFechaTrn1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldUsuario1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldFecha1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.TxtFF = new DevExpress.XtraEditors.DateEdit();
            this.TxtFI = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.Root = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem1 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.layoutControlItem2 = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem2 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem3 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem4 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem5 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.layoutControlItem3 = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem6 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.layoutControlItem5 = new DevExpress.XtraLayout.LayoutControlItem();
            this.dsAuditoria = new INVEQUIPOS_UI.DsAuditoria();
            this.uspAuditoriaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.usp_AuditoriaTableAdapter = new INVEQUIPOS_UI.DsAuditoriaTableAdapters.Usp_AuditoriaTableAdapter();
            this.emptySpaceItem7 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.BtnMostrar = new DevExpress.XtraEditors.SimpleButton();
            this.layoutControlItem4 = new DevExpress.XtraLayout.LayoutControlItem();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFF.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFF.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFI.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFI.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Root)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsAuditoria)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspAuditoriaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem4)).BeginInit();
            this.SuspendLayout();
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.pivotGridControl1);
            this.layoutControl1.Controls.Add(this.BtnMostrar);
            this.layoutControl1.Controls.Add(this.TxtFF);
            this.layoutControl1.Controls.Add(this.TxtFI);
            this.layoutControl1.Controls.Add(this.labelControl1);
            this.layoutControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.layoutControl1.Location = new System.Drawing.Point(0, 0);
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.Root = this.Root;
            this.layoutControl1.Size = new System.Drawing.Size(1384, 549);
            this.layoutControl1.TabIndex = 0;
            this.layoutControl1.Text = "layoutControl1";
            // 
            // pivotGridControl1
            // 
            this.pivotGridControl1.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.fieldTipoTrn1,
            this.fieldTabla1,
            this.fieldPK1,
            this.fieldCampo1,
            this.fieldValorOriginal1,
            this.fieldValorNuevo1,
            this.fieldFechaTrn1,
            this.fieldUsuario1,
            this.fieldFecha1});
            this.pivotGridControl1.Location = new System.Drawing.Point(12, 119);
            this.pivotGridControl1.Name = "pivotGridControl1";
            this.pivotGridControl1.Size = new System.Drawing.Size(1360, 377);
            this.pivotGridControl1.TabIndex = 8;
            // 
            // fieldTipoTrn1
            // 
            this.fieldTipoTrn1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldTipoTrn1.AreaIndex = 2;
            this.fieldTipoTrn1.Caption = "Tipo Trn";
            this.fieldTipoTrn1.FieldName = "TipoTrn";
            this.fieldTipoTrn1.Name = "fieldTipoTrn1";
            this.fieldTipoTrn1.Width = 130;
            // 
            // fieldTabla1
            // 
            this.fieldTabla1.AreaIndex = 0;
            this.fieldTabla1.Caption = "Tabla";
            this.fieldTabla1.FieldName = "Tabla";
            this.fieldTabla1.Name = "fieldTabla1";
            this.fieldTabla1.Width = 130;
            // 
            // fieldPK1
            // 
            this.fieldPK1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldPK1.AreaIndex = 3;
            this.fieldPK1.Caption = "PK";
            this.fieldPK1.FieldName = "PK";
            this.fieldPK1.Name = "fieldPK1";
            this.fieldPK1.Width = 130;
            // 
            // fieldCampo1
            // 
            this.fieldCampo1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldCampo1.AreaIndex = 4;
            this.fieldCampo1.Caption = "Campo";
            this.fieldCampo1.FieldName = "Campo";
            this.fieldCampo1.Name = "fieldCampo1";
            this.fieldCampo1.Width = 130;
            // 
            // fieldValorOriginal1
            // 
            this.fieldValorOriginal1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldValorOriginal1.AreaIndex = 5;
            this.fieldValorOriginal1.Caption = "Valor Original";
            this.fieldValorOriginal1.FieldName = "ValorOriginal";
            this.fieldValorOriginal1.Name = "fieldValorOriginal1";
            this.fieldValorOriginal1.Width = 450;
            // 
            // fieldValorNuevo1
            // 
            this.fieldValorNuevo1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldValorNuevo1.AreaIndex = 6;
            this.fieldValorNuevo1.Caption = "Valor Nuevo";
            this.fieldValorNuevo1.FieldName = "ValorNuevo";
            this.fieldValorNuevo1.Name = "fieldValorNuevo1";
            this.fieldValorNuevo1.Width = 450;
            // 
            // fieldFechaTrn1
            // 
            this.fieldFechaTrn1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldFechaTrn1.AreaIndex = 7;
            this.fieldFechaTrn1.Caption = "Hora";
            this.fieldFechaTrn1.FieldName = "FechaTrn";
            this.fieldFechaTrn1.Name = "fieldFechaTrn1";
            this.fieldFechaTrn1.ValueFormat.FormatString = "T";
            this.fieldFechaTrn1.ValueFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            // 
            // fieldUsuario1
            // 
            this.fieldUsuario1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldUsuario1.AreaIndex = 0;
            this.fieldUsuario1.Caption = "Usuario";
            this.fieldUsuario1.FieldName = "Usuario";
            this.fieldUsuario1.Name = "fieldUsuario1";
            this.fieldUsuario1.Width = 120;
            // 
            // fieldFecha1
            // 
            this.fieldFecha1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldFecha1.AreaIndex = 1;
            this.fieldFecha1.Caption = "Fecha";
            this.fieldFecha1.FieldName = "Fecha";
            this.fieldFecha1.Name = "fieldFecha1";
            // 
            // TxtFF
            // 
            this.TxtFF.EditValue = null;
            this.TxtFF.Location = new System.Drawing.Point(746, 45);
            this.TxtFF.Name = "TxtFF";
            this.TxtFF.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFF.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFF.Size = new System.Drawing.Size(131, 20);
            this.TxtFF.StyleController = this.layoutControl1;
            this.TxtFF.TabIndex = 6;
            // 
            // TxtFI
            // 
            this.TxtFI.EditValue = null;
            this.TxtFI.Location = new System.Drawing.Point(559, 45);
            this.TxtFI.Name = "TxtFI";
            this.TxtFI.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFI.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFI.Size = new System.Drawing.Size(107, 20);
            this.TxtFI.StyleController = this.layoutControl1;
            this.TxtFI.TabIndex = 5;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(606, 12);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(171, 19);
            this.labelControl1.StyleController = this.layoutControl1;
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "Auditoria de Sistema";
            // 
            // Root
            // 
            this.Root.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.Root.GroupBordersVisible = false;
            this.Root.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem1,
            this.emptySpaceItem1,
            this.layoutControlItem2,
            this.emptySpaceItem2,
            this.emptySpaceItem3,
            this.emptySpaceItem4,
            this.layoutControlItem4,
            this.emptySpaceItem5,
            this.layoutControlItem3,
            this.emptySpaceItem6,
            this.layoutControlItem5,
            this.emptySpaceItem7});
            this.Root.Name = "Root";
            this.Root.Size = new System.Drawing.Size(1384, 549);
            this.Root.TextVisible = false;
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.ContentHorzAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.layoutControlItem1.Control = this.labelControl1;
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(1364, 23);
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextVisible = false;
            // 
            // emptySpaceItem1
            // 
            this.emptySpaceItem1.AllowHotTrack = false;
            this.emptySpaceItem1.Location = new System.Drawing.Point(0, 488);
            this.emptySpaceItem1.Name = "emptySpaceItem1";
            this.emptySpaceItem1.Size = new System.Drawing.Size(1364, 41);
            this.emptySpaceItem1.TextSize = new System.Drawing.Size(0, 0);
            // 
            // layoutControlItem2
            // 
            this.layoutControlItem2.AppearanceItemCaption.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.layoutControlItem2.AppearanceItemCaption.Options.UseFont = true;
            this.layoutControlItem2.Control = this.TxtFI;
            this.layoutControlItem2.Location = new System.Drawing.Point(471, 33);
            this.layoutControlItem2.Name = "layoutControlItem2";
            this.layoutControlItem2.Size = new System.Drawing.Size(187, 24);
            this.layoutControlItem2.Text = "Fecha Inicial";
            this.layoutControlItem2.TextSize = new System.Drawing.Size(73, 14);
            // 
            // emptySpaceItem2
            // 
            this.emptySpaceItem2.AllowHotTrack = false;
            this.emptySpaceItem2.Location = new System.Drawing.Point(0, 23);
            this.emptySpaceItem2.Name = "emptySpaceItem2";
            this.emptySpaceItem2.Size = new System.Drawing.Size(1364, 10);
            this.emptySpaceItem2.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem3
            // 
            this.emptySpaceItem3.AllowHotTrack = false;
            this.emptySpaceItem3.Location = new System.Drawing.Point(0, 33);
            this.emptySpaceItem3.Name = "emptySpaceItem3";
            this.emptySpaceItem3.Size = new System.Drawing.Size(471, 24);
            this.emptySpaceItem3.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem4
            // 
            this.emptySpaceItem4.AllowHotTrack = false;
            this.emptySpaceItem4.Location = new System.Drawing.Point(869, 33);
            this.emptySpaceItem4.Name = "emptySpaceItem4";
            this.emptySpaceItem4.Size = new System.Drawing.Size(495, 24);
            this.emptySpaceItem4.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem5
            // 
            this.emptySpaceItem5.AllowHotTrack = false;
            this.emptySpaceItem5.Location = new System.Drawing.Point(0, 67);
            this.emptySpaceItem5.Name = "emptySpaceItem5";
            this.emptySpaceItem5.Size = new System.Drawing.Size(1157, 40);
            this.emptySpaceItem5.TextSize = new System.Drawing.Size(0, 0);
            // 
            // layoutControlItem3
            // 
            this.layoutControlItem3.AppearanceItemCaption.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.layoutControlItem3.AppearanceItemCaption.Options.UseFont = true;
            this.layoutControlItem3.Control = this.TxtFF;
            this.layoutControlItem3.Location = new System.Drawing.Point(658, 33);
            this.layoutControlItem3.Name = "layoutControlItem3";
            this.layoutControlItem3.Size = new System.Drawing.Size(211, 24);
            this.layoutControlItem3.Text = "Fecha Final";
            this.layoutControlItem3.TextSize = new System.Drawing.Size(73, 14);
            // 
            // emptySpaceItem6
            // 
            this.emptySpaceItem6.AllowHotTrack = false;
            this.emptySpaceItem6.Location = new System.Drawing.Point(0, 57);
            this.emptySpaceItem6.Name = "emptySpaceItem6";
            this.emptySpaceItem6.Size = new System.Drawing.Size(1364, 10);
            this.emptySpaceItem6.TextSize = new System.Drawing.Size(0, 0);
            // 
            // layoutControlItem5
            // 
            this.layoutControlItem5.Control = this.pivotGridControl1;
            this.layoutControlItem5.Location = new System.Drawing.Point(0, 107);
            this.layoutControlItem5.Name = "layoutControlItem5";
            this.layoutControlItem5.Size = new System.Drawing.Size(1364, 381);
            this.layoutControlItem5.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem5.TextVisible = false;
            // 
            // dsAuditoria
            // 
            this.dsAuditoria.DataSetName = "DsAuditoria";
            this.dsAuditoria.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // uspAuditoriaBindingSource
            // 
            this.uspAuditoriaBindingSource.DataMember = "Usp_Auditoria";
            this.uspAuditoriaBindingSource.DataSource = this.dsAuditoria;
            // 
            // usp_AuditoriaTableAdapter
            // 
            this.usp_AuditoriaTableAdapter.ClearBeforeFill = true;
            // 
            // emptySpaceItem7
            // 
            this.emptySpaceItem7.AllowHotTrack = false;
            this.emptySpaceItem7.Location = new System.Drawing.Point(1297, 67);
            this.emptySpaceItem7.Name = "emptySpaceItem7";
            this.emptySpaceItem7.Size = new System.Drawing.Size(67, 40);
            this.emptySpaceItem7.TextSize = new System.Drawing.Size(0, 0);
            // 
            // BtnMostrar
            // 
            this.BtnMostrar.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.show_32x32;
            this.BtnMostrar.Location = new System.Drawing.Point(1169, 79);
            this.BtnMostrar.Name = "BtnMostrar";
            this.BtnMostrar.Size = new System.Drawing.Size(136, 36);
            this.BtnMostrar.StyleController = this.layoutControl1;
            this.BtnMostrar.TabIndex = 7;
            this.BtnMostrar.Text = "Mostrar";
            this.BtnMostrar.Click += new System.EventHandler(this.BtnMostrar_Click);
            // 
            // layoutControlItem4
            // 
            this.layoutControlItem4.Control = this.BtnMostrar;
            this.layoutControlItem4.Location = new System.Drawing.Point(1157, 67);
            this.layoutControlItem4.Name = "layoutControlItem4";
            this.layoutControlItem4.Size = new System.Drawing.Size(140, 40);
            this.layoutControlItem4.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem4.TextVisible = false;
            // 
            // FrmAuditoria
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1384, 549);
            this.Controls.Add(this.layoutControl1);
            this.IconOptions.Icon = ((System.Drawing.Icon)(resources.GetObject("FrmAuditoria.IconOptions.Icon")));
            this.Name = "FrmAuditoria";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Auditoria ";
            this.Load += new System.EventHandler(this.FrmAuditoria_Load);
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            this.layoutControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFF.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFF.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFI.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFI.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Root)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsAuditoria)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspAuditoriaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem4)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.FormAssistant formAssistant1;
        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraLayout.LayoutControlGroup Root;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem1;
        private DevExpress.XtraEditors.DateEdit TxtFF;
        private DevExpress.XtraEditors.DateEdit TxtFI;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem2;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem3;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem2;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem3;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem4;
        private DevExpress.XtraEditors.SimpleButton BtnMostrar;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem4;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem5;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem6;
        private DevExpress.XtraPivotGrid.PivotGridControl pivotGridControl1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem5;
        private System.Windows.Forms.BindingSource uspAuditoriaBindingSource;
        private DsAuditoria dsAuditoria;
        private DsAuditoriaTableAdapters.Usp_AuditoriaTableAdapter usp_AuditoriaTableAdapter;
        private DevExpress.XtraPivotGrid.PivotGridField fieldTipoTrn1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldTabla1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldPK1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldCampo1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldValorOriginal1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldValorNuevo1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldFechaTrn1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldUsuario1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldFecha1;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem7;
    }
}