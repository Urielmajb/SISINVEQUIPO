using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class PersonaEntity
    {
        public int IDPersona { get; set; }

        public string Nombre { get; set; }

        public string Apellido { get; set; }

        public string Cargo { get; set; }

        public string Area { get; set; }

        public string ACTIVO { get; set; }

        public DateTime Fechaprestamo { get; set; }

        public DateTime FechaEntrega { get; set; }


    }
}
