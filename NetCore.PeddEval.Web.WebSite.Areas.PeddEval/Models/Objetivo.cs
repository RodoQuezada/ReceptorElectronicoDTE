using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models
{
    public class ObjetivoModels
    {
       public int IdObjetivoEvaluacion { get; set; }
       public int IdCabEvaluacion { get; set; }
       public int IdEvaluador { get; set; }
       public int IdEvaluado { get; set; }
       public int IdEstado { get; set; }

    }
}