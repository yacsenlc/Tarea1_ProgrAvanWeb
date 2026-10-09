using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Contro_de_activos.Models
{
    public class Activo
    {
        public int Id { get; set; }
       public string Nombre { get; set; }
        public string Marca { get; set; }
        public string Numero { get; set; }
        public int Cantidad { get; set; }
        public string Estado { get; set; }
    }
}