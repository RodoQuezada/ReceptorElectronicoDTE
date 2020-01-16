using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models
{
    public class FaseEvaluacionModels
    {
       public int IdFaseEvaluacion { get; set; }
       public int IdCabEvaluacion { get; set; }
       public int IdTipoFaseEval { get; set; }
       public string dfInicio { get; set; }
       public string dfTermino { get; set; }
       public int NumOrden { get; set; }
       public int IdEstado { get; set; }

    }
}