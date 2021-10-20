using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace INVEQUIPOS_UI
{
    //accedemos a la clase
    public class Variables
    {
        public enum TipoDato
        {
            Texto,
            Entero,
            Decimales
        }

        public static int gID;
        public static int gID2;
        public static string gstrServername;
        public static string gstrDBName;
        public static string gstrUsername;
        public static string gIDProducto;
        public static int IdUsuario;
        public static int URol;
        public static bool UAdmin;
        public static bool Actualizo;

        public static void Inicializar()
        {
            gID = -1;
            gstrServername = "";
            gstrDBName = "";
            gstrUsername = "";
            gIDProducto = "";
            gID2 = -1;
            IdUsuario = -1;
            URol = -1;
            UAdmin = false;
            Actualizo = false;

        }

        public static string ObtenerVersion(string ProductoVersion, string ProductNameV)
        {

            if ((System.Deployment.Application.ApplicationDeployment.IsNetworkDeployed))
            {
                Version ver;
                ver = System.Deployment.Application.ApplicationDeployment.CurrentDeployment.CurrentVersion;
                return ProductNameV.ToString() + ". Publicación v" + String.Format("{0}.{1}.{2}.{3}", ver.Major, ver.Minor, ver.Build, ver.Revision);
            }
            else
            {
                return ProductNameV.ToString() + ". Publicación v" + ProductoVersion;
            }
        }

        public static bool ValidarDato(KeyPressEventArgs e, TipoDato TipDato = TipoDato.Texto)
        {

            bool result = false;
            switch (TipDato)
            {
                case TipoDato.Texto:
                    if ((Convert.ToInt32(e.KeyChar) == 39))
                    {
                        if (!(Convert.ToInt32(e.KeyChar) == 13))
                        {
                            result = true;

                        }
                    }
                    break;
                case TipoDato.Entero:
                    if (!(((Convert.ToInt32(e.KeyChar) >= 48)
                                && (Convert.ToInt32(e.KeyChar) <= 57))
                                || (Convert.ToInt32(e.KeyChar) == 8)))
                    {
                        if (!(Convert.ToInt32(e.KeyChar) == 13))
                        {
                            result = true;
                        }
                    }
                    break;
                case TipoDato.Decimales:
                    if (!(((Convert.ToInt32(e.KeyChar) >= 48)
                                && (Convert.ToInt32(e.KeyChar) <= 57))
                                || ((Convert.ToInt32(e.KeyChar) == 8)
                                || ((Convert.ToInt32(e.KeyChar) == 45)
                                || (Convert.ToInt32(e.KeyChar) == 46)))))
                    {
                        if (!(Convert.ToInt32(e.KeyChar) == 13))
                        {
                            result = true;
                        }
                    }
                    break;
            }

            return result;
        }

        public static string nullToString(string value)
        {
            return value == null ? string.Empty : value;
        }

        public static void FormatoGrid(ref DevExpress.XtraGrid.Views.Grid.GridView Grid)
        {
            for (int i = 0; i <= Grid.Columns.Count - 1; i++)
            {
                Grid.Columns[i].Width = 200;
                Grid.Columns[i].OptionsColumn.AllowEdit = false;
                Grid.Columns[i].AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
                Grid.Columns[i].AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
                Grid.Columns[i].AppearanceHeader.Font = new System.Drawing.Font("Tahoma", 9, System.Drawing.FontStyle.Bold);

                if (Grid.Columns[i].ColumnType.Name == "Double" | Grid.Columns[i].ColumnType.Name == "Decimal")
                {
                    Grid.Columns[i].DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
                    Grid.Columns[i].DisplayFormat.FormatString = "{0:n2}";
                    Grid.Columns[i].SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
                    Grid.Columns[i].SummaryItem.DisplayFormat = "{0:n2}";
                }
            }
        }

    }
}
