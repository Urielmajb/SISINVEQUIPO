﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
   public  class ReunionEntity
    {

        public int IDReunion { get; set; }

        public int IDPersona { get; set; }

        public int ID_Tipo { get; set; }

        public string NOM_REUNION { get; set; }

        public DateTime fecharealizada { get; set; }

        public string hora { get; set; }

        public int ID_Equipo { get; set; }


    }
}
