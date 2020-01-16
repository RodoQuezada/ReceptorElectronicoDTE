using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models
{
    public class EmpleadoModels
    {
       public int IdEmpleado { get; set; }
        public int IdCompania { get; set; }
        public int IdSucursal { get; set; }
        public int IdAreaFuncional { get; set; }
        public int IdDepartamento { get; set; }
        public int IdCargo { get; set; }
        public int RutEmpleado { get; set; }
        public string DvEmpleado  { get; set; }
        public string NomEmpleado { get; set; }
        public string AplPatEmpleado { get; set; }
        public string AplMatEmpleado { get; set; }
        public string EmailEmpleado { get; set; }
        public int flgEvaluador { get; set; }
        public int flgEvaluado { get; set; }
        public int IdEstado { get; set; }


    }
}