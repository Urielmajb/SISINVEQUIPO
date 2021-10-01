using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class UsuarioEntity
    {
        public int IdUsuario { get; set; }

        public int IdSql { get; set; }

        public string ULogin { get; set; }

        public string UNombre { get; set; }

        public string Correro { get; set; }

        public int IdRol { get; set; }

        public bool Activo { get; set; }

        public bool Admin { get; set; }

    }
}
