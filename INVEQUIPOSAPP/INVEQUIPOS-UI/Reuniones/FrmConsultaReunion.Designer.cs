
namespace INVEQUIPOS_UI.Reuniones
{
    partial class FrmConsultaReunion
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmConsultaReunion));
            this.formAssistant1 = new DevExpress.XtraBars.FormAssistant();
            this.layoutControl1 = new DevExpress.XtraLayout.LayoutControl();
            this.pivotGridControl1 = new DevExpress.XtraPivotGrid.PivotGridControl();
            this.uspConsultaReunionesBindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.dsConsultaMeetings = new INVEQUIPOS_UI.DsConsultaMeetings();
            this.fieldIDReunion1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldResponsable1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldTipoReunion1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldNOMEQUIPO1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldfecharealizada1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.fieldhora1 = new DevExpress.XtraPivotGrid.PivotGridField();
            this.TxtFechaFin = new DevExpress.XtraEditors.DateEdit();
            this.TxtFechaInicial = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.Root = new DevExpress.XtraLayout.LayoutControlGroup();
            this.layoutControlItem1 = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem1 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.layoutControlItem2 = new DevExpress.XtraLayout.LayoutControlItem();
            this.layoutControlItem3 = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem2 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem3 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.layoutControlItem4 = new DevExpress.XtraLayout.LayoutControlItem();
            this.emptySpaceItem4 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem5 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem6 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.emptySpaceItem7 = new DevExpress.XtraLayout.EmptySpaceItem();
            this.dBEquipoDataSet = new INVEQUIPOS_UI.DBEquipoDataSet();
            this.uspConsultaReunionesBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.usp_ConsultaReunionesTableAdapter = new INVEQUIPOS_UI.DBEquipoDataSetTableAdapters.Usp_ConsultaReunionesTableAdapter();
            this.dsConsultaReunion = new INVEQUIPOS_UI.DsConsultaReunion();
            this.uspConsultaReunionesBindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.usp_ConsultaReunionesTableAdapter1 = new INVEQUIPOS_UI.DsConsultaReunionTableAdapters.Usp_ConsultaReunionesTableAdapter();
            this.usp_ConsultaReunionesTableAdapter2 = new INVEQUIPOS_UI.DsConsultaMeetingsTableAdapters.Usp_ConsultaReunionesTableAdapter();
            this.BtnConsultar = new DevExpress.XtraEditors.SimpleButton();
            this.layoutControlItem5 = new DevExpress.XtraLayout.LayoutControlItem();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).BeginInit();
            this.layoutControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspConsultaReunionesBindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsConsultaMeetings)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaFin.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaFin.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaInicial.Properties.CalendarTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaInicial.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Root)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dBEquipoDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspConsultaReunionesBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsConsultaReunion)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspConsultaReunionesBindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem5)).BeginInit();
            this.SuspendLayout();
            // 
            // layoutControl1
            // 
            this.layoutControl1.Controls.Add(this.BtnConsultar);
            this.layoutControl1.Controls.Add(this.pivotGridControl1);
            this.layoutControl1.Controls.Add(this.TxtFechaFin);
            this.layoutControl1.Controls.Add(this.TxtFechaInicial);
            this.layoutControl1.Controls.Add(this.labelControl1);
            this.layoutControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.layoutControl1.Location = new System.Drawing.Point(0, 0);
            this.layoutControl1.Name = "layoutControl1";
            this.layoutControl1.Root = this.Root;
            this.layoutControl1.Size = new System.Drawing.Size(800, 450);
            this.layoutControl1.TabIndex = 0;
            this.layoutControl1.Text = "layoutControl1";
            // 
            // pivotGridControl1
            // 
            this.pivotGridControl1.DataSource = this.uspConsultaReunionesBindingSource2;
            this.pivotGridControl1.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.fieldIDReunion1,
            this.fieldResponsable1,
            this.fieldTipoReunion1,
            this.fieldNOMEQUIPO1,
            this.fieldfecharealizada1,
            this.fieldhora1});
            this.pivotGridControl1.Location = new System.Drawing.Point(12, 129);
            this.pivotGridControl1.Name = "pivotGridControl1";
            this.pivotGridControl1.Size = new System.Drawing.Size(776, 242);
            this.pivotGridControl1.TabIndex = 7;
            // 
            // uspConsultaReunionesBindingSource2
            // 
            this.uspConsultaReunionesBindingSource2.DataMember = "Usp_ConsultaReuniones";
            this.uspConsultaReunionesBindingSource2.DataSource = this.dsConsultaMeetings;
            // 
            // dsConsultaMeetings
            // 
            this.dsConsultaMeetings.DataSetName = "DsConsultaMeetings";
            this.dsConsultaMeetings.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // fieldIDReunion1
            // 
            this.fieldIDReunion1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldIDReunion1.AreaIndex = 0;
            this.fieldIDReunion1.Caption = "No Reunion";
            this.fieldIDReunion1.FieldName = "IDReunion";
            this.fieldIDReunion1.Name = "fieldIDReunion1";
            // 
            // fieldResponsable1
            // 
            this.fieldResponsable1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldResponsable1.AreaIndex = 2;
            this.fieldResponsable1.Caption = "Responsable";
            this.fieldResponsable1.FieldName = "Responsable";
            this.fieldResponsable1.Name = "fieldResponsable1";
            this.fieldResponsable1.Width = 150;
            // 
            // fieldTipoReunion1
            // 
            this.fieldTipoReunion1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldTipoReunion1.AreaIndex = 3;
            this.fieldTipoReunion1.Caption = "Tipo Reunion";
            this.fieldTipoReunion1.FieldName = "TipoReunion";
            this.fieldTipoReunion1.Name = "fieldTipoReunion1";
            this.fieldTipoReunion1.Width = 120;
            // 
            // fieldNOMEQUIPO1
            // 
            this.fieldNOMEQUIPO1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldNOMEQUIPO1.AreaIndex = 1;
            this.fieldNOMEQUIPO1.Caption = "Nombre del Equipo";
            this.fieldNOMEQUIPO1.FieldName = "NOM_EQUIPO";
            this.fieldNOMEQUIPO1.Name = "fieldNOMEQUIPO1";
            this.fieldNOMEQUIPO1.Width = 150;
            // 
            // fieldfecharealizada1
            // 
            this.fieldfecharealizada1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldfecharealizada1.AreaIndex = 4;
            this.fieldfecharealizada1.Caption = "fecharealizada";
            this.fieldfecharealizada1.FieldName = "fecharealizada";
            this.fieldfecharealizada1.Name = "fieldfecharealizada1";
            // 
            // fieldhora1
            // 
            this.fieldhora1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldhora1.AreaIndex = 5;
            this.fieldhora1.Caption = "hora";
            this.fieldhora1.FieldName = "hora";
            this.fieldhora1.Name = "fieldhora1";
            // 
            // TxtFechaFin
            // 
            this.TxtFechaFin.EditValue = null;
            this.TxtFechaFin.Location = new System.Drawing.Point(470, 45);
            this.TxtFechaFin.Name = "TxtFechaFin";
            this.TxtFechaFin.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFechaFin.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFechaFin.Size = new System.Drawing.Size(109, 20);
            this.TxtFechaFin.StyleController = this.layoutControl1;
            this.TxtFechaFin.TabIndex = 6;
            // 
            // TxtFechaInicial
            // 
            this.TxtFechaInicial.EditValue = null;
            this.TxtFechaInicial.Location = new System.Drawing.Point(281, 45);
            this.TxtFechaInicial.Name = "TxtFechaInicial";
            this.TxtFechaInicial.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFechaInicial.Properties.CalendarTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.TxtFechaInicial.Size = new System.Drawing.Size(111, 20);
            this.TxtFechaInicial.StyleController = this.layoutControl1;
            this.TxtFechaInicial.TabIndex = 5;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(265, 12);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(270, 19);
            this.labelControl1.StyleController = this.layoutControl1;
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "Consulta de Reuniones Relizadas";
            // 
            // Root
            // 
            this.Root.EnableIndentsWithoutBorders = DevExpress.Utils.DefaultBoolean.True;
            this.Root.GroupBordersVisible = false;
            this.Root.Items.AddRange(new DevExpress.XtraLayout.BaseLayoutItem[] {
            this.layoutControlItem1,
            this.emptySpaceItem1,
            this.layoutControlItem2,
            this.layoutControlItem3,
            this.emptySpaceItem2,
            this.emptySpaceItem3,
            this.layoutControlItem4,
            this.emptySpaceItem4,
            this.emptySpaceItem5,
            this.layoutControlItem5,
            this.emptySpaceItem6,
            this.emptySpaceItem7});
            this.Root.Name = "Root";
            this.Root.Size = new System.Drawing.Size(800, 450);
            this.Root.TextVisible = false;
            // 
            // layoutControlItem1
            // 
            this.layoutControlItem1.ContentHorzAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.layoutControlItem1.Control = this.labelControl1;
            this.layoutControlItem1.Location = new System.Drawing.Point(0, 0);
            this.layoutControlItem1.Name = "layoutControlItem1";
            this.layoutControlItem1.Size = new System.Drawing.Size(780, 23);
            this.layoutControlItem1.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem1.TextVisible = false;
            // 
            // emptySpaceItem1
            // 
            this.emptySpaceItem1.AllowHotTrack = false;
            this.emptySpaceItem1.Location = new System.Drawing.Point(0, 363);
            this.emptySpaceItem1.Name = "emptySpaceItem1";
            this.emptySpaceItem1.Size = new System.Drawing.Size(780, 67);
            this.emptySpaceItem1.TextSize = new System.Drawing.Size(0, 0);
            // 
            // layoutControlItem2
            // 
            this.layoutControlItem2.AppearanceItemCaption.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.layoutControlItem2.AppearanceItemCaption.Options.UseFont = true;
            this.layoutControlItem2.Control = this.TxtFechaInicial;
            this.layoutControlItem2.Location = new System.Drawing.Point(195, 33);
            this.layoutControlItem2.Name = "layoutControlItem2";
            this.layoutControlItem2.Size = new System.Drawing.Size(189, 24);
            this.layoutControlItem2.Text = "Fecha Inicio";
            this.layoutControlItem2.TextSize = new System.Drawing.Size(71, 14);
            // 
            // layoutControlItem3
            // 
            this.layoutControlItem3.AppearanceItemCaption.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.layoutControlItem3.AppearanceItemCaption.Options.UseFont = true;
            this.layoutControlItem3.Control = this.TxtFechaFin;
            this.layoutControlItem3.Location = new System.Drawing.Point(384, 33);
            this.layoutControlItem3.Name = "layoutControlItem3";
            this.layoutControlItem3.Size = new System.Drawing.Size(187, 24);
            this.layoutControlItem3.Text = "Fecha Fin";
            this.layoutControlItem3.TextSize = new System.Drawing.Size(71, 14);
            // 
            // emptySpaceItem2
            // 
            this.emptySpaceItem2.AllowHotTrack = false;
            this.emptySpaceItem2.Location = new System.Drawing.Point(0, 33);
            this.emptySpaceItem2.Name = "emptySpaceItem2";
            this.emptySpaceItem2.Size = new System.Drawing.Size(195, 24);
            this.emptySpaceItem2.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem3
            // 
            this.emptySpaceItem3.AllowHotTrack = false;
            this.emptySpaceItem3.Location = new System.Drawing.Point(571, 33);
            this.emptySpaceItem3.Name = "emptySpaceItem3";
            this.emptySpaceItem3.Size = new System.Drawing.Size(209, 24);
            this.emptySpaceItem3.TextSize = new System.Drawing.Size(0, 0);
            // 
            // layoutControlItem4
            // 
            this.layoutControlItem4.Control = this.pivotGridControl1;
            this.layoutControlItem4.Location = new System.Drawing.Point(0, 117);
            this.layoutControlItem4.Name = "layoutControlItem4";
            this.layoutControlItem4.Size = new System.Drawing.Size(780, 246);
            this.layoutControlItem4.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem4.TextVisible = false;
            // 
            // emptySpaceItem4
            // 
            this.emptySpaceItem4.AllowHotTrack = false;
            this.emptySpaceItem4.Location = new System.Drawing.Point(0, 23);
            this.emptySpaceItem4.Name = "emptySpaceItem4";
            this.emptySpaceItem4.Size = new System.Drawing.Size(780, 10);
            this.emptySpaceItem4.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem5
            // 
            this.emptySpaceItem5.AllowHotTrack = false;
            this.emptySpaceItem5.Location = new System.Drawing.Point(0, 107);
            this.emptySpaceItem5.Name = "emptySpaceItem5";
            this.emptySpaceItem5.Size = new System.Drawing.Size(780, 10);
            this.emptySpaceItem5.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem6
            // 
            this.emptySpaceItem6.AllowHotTrack = false;
            this.emptySpaceItem6.Location = new System.Drawing.Point(0, 57);
            this.emptySpaceItem6.Name = "emptySpaceItem6";
            this.emptySpaceItem6.Size = new System.Drawing.Size(780, 10);
            this.emptySpaceItem6.TextSize = new System.Drawing.Size(0, 0);
            // 
            // emptySpaceItem7
            // 
            this.emptySpaceItem7.AllowHotTrack = false;
            this.emptySpaceItem7.Location = new System.Drawing.Point(0, 67);
            this.emptySpaceItem7.Name = "emptySpaceItem7";
            this.emptySpaceItem7.Size = new System.Drawing.Size(614, 40);
            this.emptySpaceItem7.TextSize = new System.Drawing.Size(0, 0);
            // 
            // dBEquipoDataSet
            // 
            this.dBEquipoDataSet.DataSetName = "DBEquipoDataSet";
            this.dBEquipoDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // uspConsultaReunionesBindingSource
            // 
            this.uspConsultaReunionesBindingSource.DataMember = "Usp_ConsultaReuniones";
            this.uspConsultaReunionesBindingSource.DataSource = this.dBEquipoDataSet;
            // 
            // usp_ConsultaReunionesTableAdapter
            // 
            this.usp_ConsultaReunionesTableAdapter.ClearBeforeFill = true;
            // 
            // dsConsultaReunion
            // 
            this.dsConsultaReunion.DataSetName = "DsConsultaReunion";
            this.dsConsultaReunion.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // uspConsultaReunionesBindingSource1
            // 
            this.uspConsultaReunionesBindingSource1.DataMember = "Usp_ConsultaReuniones";
            this.uspConsultaReunionesBindingSource1.DataSource = this.dsConsultaReunion;
            // 
            // usp_ConsultaReunionesTableAdapter1
            // 
            this.usp_ConsultaReunionesTableAdapter1.ClearBeforeFill = true;
            // 
            // usp_ConsultaReunionesTableAdapter2
            // 
            this.usp_ConsultaReunionesTableAdapter2.ClearBeforeFill = true;
            // 
            // BtnConsultar
            // 
            this.BtnConsultar.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.showhidecomment_32x32;
            this.BtnConsultar.Location = new System.Drawing.Point(626, 79);
            this.BtnConsultar.Name = "BtnConsultar";
            this.BtnConsultar.Size = new System.Drawing.Size(162, 36);
            this.BtnConsultar.StyleController = this.layoutControl1;
            this.BtnConsultar.TabIndex = 8;
            this.BtnConsultar.Text = "Consultar";
            this.BtnConsultar.Click += new System.EventHandler(this.BtnConsultar_Click);
            // 
            // layoutControlItem5
            // 
            this.layoutControlItem5.Control = this.BtnConsultar;
            this.layoutControlItem5.Location = new System.Drawing.Point(614, 67);
            this.layoutControlItem5.Name = "layoutControlItem5";
            this.layoutControlItem5.Size = new System.Drawing.Size(166, 40);
            this.layoutControlItem5.TextSize = new System.Drawing.Size(0, 0);
            this.layoutControlItem5.TextVisible = false;
            // 
            // FrmConsultaReunion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.layoutControl1);
            this.IconOptions.Image = ((System.Drawing.Image)(resources.GetObject("FrmConsultaReunion.IconOptions.Image")));
            this.Name = "FrmConsultaReunion";
            this.Text = "Consulta de Eventos Realizados";
            this.Load += new System.EventHandler(this.FrmConsultaReunion_Load);
            ((System.ComponentModel.ISupportInitialize)(this.layoutControl1)).EndInit();
            this.layoutControl1.ResumeLayout(false);
            this.layoutControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pivotGridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspConsultaReunionesBindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsConsultaMeetings)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaFin.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaFin.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaInicial.Properties.CalendarTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.TxtFechaInicial.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Root)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emptySpaceItem7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dBEquipoDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspConsultaReunionesBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dsConsultaReunion)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.uspConsultaReunionesBindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.layoutControlItem5)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.FormAssistant formAssistant1;
        private DevExpress.XtraLayout.LayoutControl layoutControl1;
        private DevExpress.XtraLayout.LayoutControlGroup Root;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem1;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem1;
        private DevExpress.XtraEditors.DateEdit TxtFechaFin;
        private DevExpress.XtraEditors.DateEdit TxtFechaInicial;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem2;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem3;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem2;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem3;
        private DevExpress.XtraPivotGrid.PivotGridControl pivotGridControl1;
        private System.Windows.Forms.BindingSource uspConsultaReunionesBindingSource1;
        private DsConsultaReunion dsConsultaReunion;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem4;
        private DBEquipoDataSet dBEquipoDataSet;
        private System.Windows.Forms.BindingSource uspConsultaReunionesBindingSource;
        private DBEquipoDataSetTableAdapters.Usp_ConsultaReunionesTableAdapter usp_ConsultaReunionesTableAdapter;
        private DsConsultaReunionTableAdapters.Usp_ConsultaReunionesTableAdapter usp_ConsultaReunionesTableAdapter1;
        private System.Windows.Forms.BindingSource uspConsultaReunionesBindingSource2;
        private DsConsultaMeetings dsConsultaMeetings;
        private DevExpress.XtraPivotGrid.PivotGridField fieldIDReunion1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldResponsable1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldTipoReunion1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldNOMEQUIPO1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldfecharealizada1;
        private DevExpress.XtraPivotGrid.PivotGridField fieldhora1;
        private DsConsultaMeetingsTableAdapters.Usp_ConsultaReunionesTableAdapter usp_ConsultaReunionesTableAdapter2;
        private DevExpress.XtraEditors.SimpleButton BtnConsultar;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem4;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem5;
        private DevExpress.XtraLayout.LayoutControlItem layoutControlItem5;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem6;
        private DevExpress.XtraLayout.EmptySpaceItem emptySpaceItem7;
    }
}