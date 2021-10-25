
namespace INVEQUIPOS_UI.Menu
{
    partial class FrmMenu
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmMenu));
            this.formAssistant1 = new DevExpress.XtraBars.FormAssistant();
            this.ribbonControl1 = new DevExpress.XtraBars.Ribbon.RibbonControl();
            this.barButtonEquipo = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonPersonas = new DevExpress.XtraBars.BarButtonItem();
            this.TxtServidor = new DevExpress.XtraBars.BarStaticItem();
            this.TxtBD = new DevExpress.XtraBars.BarStaticItem();
            this.TxtUsuario = new DevExpress.XtraBars.BarStaticItem();
            this.TxtFecha = new DevExpress.XtraBars.BarStaticItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonConsulta = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonConsultaReuniones = new DevExpress.XtraBars.BarButtonItem();
            this.skinRibbonGalleryBarItem1 = new DevExpress.XtraBars.SkinRibbonGalleryBarItem();
            this.ribbonPage1 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup1 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPage3 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup2 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPage5 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup4 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonPage4 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            this.ribbonPageGroup3 = new DevExpress.XtraBars.Ribbon.RibbonPageGroup();
            this.ribbonStatusBar1 = new DevExpress.XtraBars.Ribbon.RibbonStatusBar();
            this.ribbonPage2 = new DevExpress.XtraBars.Ribbon.RibbonPage();
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).BeginInit();
            this.SuspendLayout();
            // 
            // ribbonControl1
            // 
            this.ribbonControl1.ExpandCollapseItem.Id = 0;
            this.ribbonControl1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.ribbonControl1.ExpandCollapseItem,
            this.ribbonControl1.SearchEditItem,
            this.barButtonEquipo,
            this.barButtonPersonas,
            this.TxtServidor,
            this.TxtBD,
            this.TxtUsuario,
            this.TxtFecha,
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonConsulta,
            this.barButtonConsultaReuniones,
            this.skinRibbonGalleryBarItem1});
            this.ribbonControl1.Location = new System.Drawing.Point(0, 0);
            this.ribbonControl1.MaxItemId = 15;
            this.ribbonControl1.Name = "ribbonControl1";
            this.ribbonControl1.Pages.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPage[] {
            this.ribbonPage1,
            this.ribbonPage3,
            this.ribbonPage5,
            this.ribbonPage4});
            this.ribbonControl1.Size = new System.Drawing.Size(807, 161);
            this.ribbonControl1.StatusBar = this.ribbonStatusBar1;
            this.ribbonControl1.Click += new System.EventHandler(this.ribbonControl1_Click);
            // 
            // barButtonEquipo
            // 
            this.barButtonEquipo.Caption = "Equipos Informaticos";
            this.barButtonEquipo.Id = 1;
            this.barButtonEquipo.ImageOptions.SvgImage = global::INVEQUIPOS_UI.Properties.Resources.electronics_laptopwindows;
            this.barButtonEquipo.Name = "barButtonEquipo";
            this.barButtonEquipo.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonEquipo_ItemClick);
            // 
            // barButtonPersonas
            // 
            this.barButtonPersonas.Caption = "Usuarios Responsables";
            this.barButtonPersonas.Id = 2;
            this.barButtonPersonas.ImageOptions.SvgImage = global::INVEQUIPOS_UI.Properties.Resources.bo_employee;
            this.barButtonPersonas.Name = "barButtonPersonas";
            this.barButtonPersonas.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonPersonas_ItemClick);
            // 
            // TxtServidor
            // 
            this.TxtServidor.Caption = "Servidor";
            this.TxtServidor.Id = 4;
            this.TxtServidor.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.servermode_16x16;
            this.TxtServidor.ImageOptions.LargeImage = global::INVEQUIPOS_UI.Properties.Resources.servermode_32x32;
            this.TxtServidor.Name = "TxtServidor";
            this.TxtServidor.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // TxtBD
            // 
            this.TxtBD.Caption = "BD";
            this.TxtBD.Id = 5;
            this.TxtBD.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.database_16x16;
            this.TxtBD.ImageOptions.LargeImage = global::INVEQUIPOS_UI.Properties.Resources.database_32x32;
            this.TxtBD.Name = "TxtBD";
            this.TxtBD.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // TxtUsuario
            // 
            this.TxtUsuario.Caption = "Usuario";
            this.TxtUsuario.Id = 6;
            this.TxtUsuario.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.bouser_16x16;
            this.TxtUsuario.ImageOptions.LargeImage = global::INVEQUIPOS_UI.Properties.Resources.bouser_32x32;
            this.TxtUsuario.Name = "TxtUsuario";
            this.TxtUsuario.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // TxtFecha
            // 
            this.TxtFecha.Alignment = DevExpress.XtraBars.BarItemLinkAlignment.Right;
            this.TxtFecha.Id = 7;
            this.TxtFecha.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.adateoccurring_16x16;
            this.TxtFecha.ImageOptions.LargeImage = global::INVEQUIPOS_UI.Properties.Resources.adateoccurring_32x32;
            this.TxtFecha.Name = "TxtFecha";
            this.TxtFecha.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Reuniones Realizadas";
            this.barButtonItem1.Id = 8;
            this.barButtonItem1.ImageOptions.SvgImage = global::INVEQUIPOS_UI.Properties.Resources.meeting;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "Configurar Servidor";
            this.barButtonItem2.Id = 10;
            this.barButtonItem2.ImageOptions.SvgImage = global::INVEQUIPOS_UI.Properties.Resources.servermode;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem2_ItemClick);
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "Auditoria de Sistema";
            this.barButtonItem3.Id = 11;
            this.barButtonItem3.ImageOptions.SvgImage = global::INVEQUIPOS_UI.Properties.Resources.security_visibility;
            this.barButtonItem3.Name = "barButtonItem3";
            this.barButtonItem3.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem3_ItemClick);
            // 
            // barButtonConsulta
            // 
            this.barButtonConsulta.Caption = "Consulta de Reuniones";
            this.barButtonConsulta.Id = 12;
            this.barButtonConsulta.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.sortbyorderdate_16x16;
            this.barButtonConsulta.ImageOptions.LargeImage = global::INVEQUIPOS_UI.Properties.Resources.sortbyorderdate_32x32;
            this.barButtonConsulta.Name = "barButtonConsulta";
            this.barButtonConsulta.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonConsulta_ItemClick);
            // 
            // barButtonConsultaReuniones
            // 
            this.barButtonConsultaReuniones.Caption = "Consulta Reuniones Realizadas";
            this.barButtonConsultaReuniones.Id = 13;
            this.barButtonConsultaReuniones.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.meeting_16x16;
            this.barButtonConsultaReuniones.ImageOptions.LargeImage = global::INVEQUIPOS_UI.Properties.Resources.meeting_32x32;
            this.barButtonConsultaReuniones.Name = "barButtonConsultaReuniones";
            this.barButtonConsultaReuniones.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonConsultaReuniones_ItemClick);
            // 
            // skinRibbonGalleryBarItem1
            // 
            this.skinRibbonGalleryBarItem1.Caption = "skinRibbonGalleryBarItem1";
            this.skinRibbonGalleryBarItem1.Id = 14;
            this.skinRibbonGalleryBarItem1.Name = "skinRibbonGalleryBarItem1";
            // 
            // ribbonPage1
            // 
            this.ribbonPage1.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup1});
            this.ribbonPage1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("ribbonPage1.ImageOptions.Image")));
            this.ribbonPage1.Name = "ribbonPage1";
            this.ribbonPage1.Text = "Catalogos";
            // 
            // ribbonPageGroup1
            // 
            this.ribbonPageGroup1.AllowTextClipping = false;
            this.ribbonPageGroup1.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.openhyperlink_32x32;
            this.ribbonPageGroup1.ItemLinks.Add(this.barButtonEquipo);
            this.ribbonPageGroup1.ItemLinks.Add(this.barButtonPersonas);
            this.ribbonPageGroup1.Name = "ribbonPageGroup1";
            this.ribbonPageGroup1.Text = "Alta de Catalogos";
            // 
            // ribbonPage3
            // 
            this.ribbonPage3.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup2});
            this.ribbonPage3.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.switchtimescalesto_16x16;
            this.ribbonPage3.Name = "ribbonPage3";
            this.ribbonPage3.Text = "Reuniones";
            // 
            // ribbonPageGroup2
            // 
            this.ribbonPageGroup2.AllowTextClipping = false;
            this.ribbonPageGroup2.ItemLinks.Add(this.barButtonItem1);
            this.ribbonPageGroup2.ItemLinks.Add(this.barButtonConsultaReuniones);
            this.ribbonPageGroup2.Name = "ribbonPageGroup2";
            this.ribbonPageGroup2.Text = "Eventos Realizados";
            // 
            // ribbonPage5
            // 
            this.ribbonPage5.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup4});
            this.ribbonPage5.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.editrangepermission_16x16;
            this.ribbonPage5.Name = "ribbonPage5";
            this.ribbonPage5.Text = "Seguridad";
            // 
            // ribbonPageGroup4
            // 
            this.ribbonPageGroup4.AllowTextClipping = false;
            this.ribbonPageGroup4.ItemLinks.Add(this.barButtonItem2);
            this.ribbonPageGroup4.ItemLinks.Add(this.barButtonItem3);
            this.ribbonPageGroup4.Name = "ribbonPageGroup4";
            this.ribbonPageGroup4.Text = "Configurar Servidor";
            // 
            // ribbonPage4
            // 
            this.ribbonPage4.Groups.AddRange(new DevExpress.XtraBars.Ribbon.RibbonPageGroup[] {
            this.ribbonPageGroup3});
            this.ribbonPage4.ImageOptions.Image = global::INVEQUIPOS_UI.Properties.Resources.colors_16x16;
            this.ribbonPage4.Name = "ribbonPage4";
            this.ribbonPage4.Text = "Apariencia";
            // 
            // ribbonPageGroup3
            // 
            this.ribbonPageGroup3.AllowTextClipping = false;
            this.ribbonPageGroup3.ItemLinks.Add(this.skinRibbonGalleryBarItem1);
            this.ribbonPageGroup3.Name = "ribbonPageGroup3";
            this.ribbonPageGroup3.Text = "Apariencia Sistema";
            // 
            // ribbonStatusBar1
            // 
            this.ribbonStatusBar1.ItemLinks.Add(this.TxtServidor);
            this.ribbonStatusBar1.ItemLinks.Add(this.TxtBD);
            this.ribbonStatusBar1.ItemLinks.Add(this.TxtUsuario);
            this.ribbonStatusBar1.ItemLinks.Add(this.TxtFecha);
            this.ribbonStatusBar1.Location = new System.Drawing.Point(0, 426);
            this.ribbonStatusBar1.Name = "ribbonStatusBar1";
            this.ribbonStatusBar1.Ribbon = this.ribbonControl1;
            this.ribbonStatusBar1.Size = new System.Drawing.Size(807, 24);
            // 
            // ribbonPage2
            // 
            this.ribbonPage2.Name = "ribbonPage2";
            this.ribbonPage2.Text = "ribbonPage2";
            // 
            // FrmMenu
            // 
            this.Appearance.BackColor = System.Drawing.Color.White;
            this.Appearance.Options.UseBackColor = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(807, 450);
            this.Controls.Add(this.ribbonStatusBar1);
            this.Controls.Add(this.ribbonControl1);
            this.IconOptions.Icon = ((System.Drawing.Icon)(resources.GetObject("FrmMenu.IconOptions.Icon")));
            this.IconOptions.SvgImage = global::INVEQUIPOS_UI.Properties.Resources.electronics_desktopmac;
            this.IsMdiContainer = true;
            this.Name = "FrmMenu";
            this.Ribbon = this.ribbonControl1;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.StatusBar = this.ribbonStatusBar1;
            this.Text = "Menu Principal";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FrmMenu_FormClosing);
            this.Load += new System.EventHandler(this.FrmMenu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ribbonControl1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.FormAssistant formAssistant1;
        private DevExpress.XtraBars.Ribbon.RibbonControl ribbonControl1;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage1;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup1;
        private DevExpress.XtraBars.Ribbon.RibbonStatusBar ribbonStatusBar1;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage2;
        private DevExpress.XtraBars.BarButtonItem barButtonEquipo;
        private DevExpress.XtraBars.BarButtonItem barButtonPersonas;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage3;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup2;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage5;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup4;
        private DevExpress.XtraBars.BarStaticItem TxtServidor;
        private DevExpress.XtraBars.BarStaticItem TxtBD;
        private DevExpress.XtraBars.BarStaticItem TxtUsuario;
        private DevExpress.XtraBars.BarStaticItem TxtFecha;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonConsulta;
        private DevExpress.XtraBars.BarButtonItem barButtonConsultaReuniones;
        private DevExpress.XtraBars.SkinRibbonGalleryBarItem skinRibbonGalleryBarItem1;
        private DevExpress.XtraBars.Ribbon.RibbonPage ribbonPage4;
        private DevExpress.XtraBars.Ribbon.RibbonPageGroup ribbonPageGroup3;
    }
}