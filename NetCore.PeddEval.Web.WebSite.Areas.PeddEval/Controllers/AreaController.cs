using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Data;
using Controller = CoreLibrary.Web.Base.Controller;
using NetCore.PeddEval.Business;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers
{

    [Authorize]
    public class AreaController : Controller
    {

        [Authorize]
        public ActionResult Index()
        {
            AreaBS areaBS = new AreaBS();
            DataTable dtArea = areaBS.AreasbyEmpresa(1);//Aca se debe definir de donde obtener el valor de la empresa
            this.Result = areaBS.Result;
            ViewBag.Area = dtArea;

            return View();
        }

        [HttpPost]
        public string Create(string codArea, string rutEmpresa, string nombre, string descripcion, int auditNoEliminar, DateTime auditFechaCreacion, DateTime auditUltimaFechaActualiza, string auditUsuarioActualiza)
        {
            //se carga el viewbag de los Estados

            Business.AreaBS areaBS = new Business.AreaBS();
            string Resultado = areaBS.InsertAreabyEmpresa(codArea, rutEmpresa, nombre, descripcion, auditNoEliminar, auditFechaCreacion, auditUltimaFechaActualiza, auditUsuarioActualiza);
            this.Result = areaBS.Result;

            return Resultado;

           
        }






    }
}
