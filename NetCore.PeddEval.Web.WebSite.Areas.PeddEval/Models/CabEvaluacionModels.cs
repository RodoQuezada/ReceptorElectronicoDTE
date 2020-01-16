using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models
{
    public class CabEvaluacionModels
    {
        public int IdCabEvaluacion { get; set; }
        public int IdCompania { get; set; }
        public string NomEvaluacion { get; set; }
        public string DesEvaluacion { get; set; }
        public string InsEvaluacion { get; set; }
        public string dfInicio { get; set; }
        public string dfTermino { get; set; }
        public int IdTipoEvaluacion { get; set; }
        public int IdCompSucAreDep { get; set; }
        public int IdEstado { get; set; }
    }
}