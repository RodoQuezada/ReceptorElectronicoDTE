using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models
{
    public class CompaniaModels
    {
       public int IdCompania { get; set; }
       public int RutCompania { get; set; }
       public string DvCompania { get; set; }
       public string NomCompania { get; set; }
       public string GiroCompania { get; set; }
       public string DirCompania { get; set; }
       public string FonoCompania { get; set; }
       public int IdEstado { get; set; }

    }
}