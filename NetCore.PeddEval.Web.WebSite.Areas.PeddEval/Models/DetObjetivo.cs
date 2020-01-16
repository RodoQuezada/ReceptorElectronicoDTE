using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models
{
    public class DetObjetivoModels
    {
        public int IdDetObjetivoEvaluacion { get; set; }
        public int IdObjetivoEvaluacion { get; set; }
        public int NomOjetivo { get; set; }
        public int DesOjetivo { get; set; }
        public int MetEsperada { get; set; }
        public int MetExcepcional { get; set; }
        public int PondObjetivo { get; set; }
        public int FecInicio { get; set; }
        public int FecVencimiento { get; set; }
        public int IdEstado { get; set; }
    }
}