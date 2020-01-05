using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Data;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers
{
    [Authorize]
    public class Proveedor : CoreLibrary.Web.Base.Controller
    {

        [Authorize]
        public ActionResult Index()
        {

            ViewBag.Proveedor = null;

            return View();
        }

        [HttpGet]
        public ActionResult Create()
        {
            //se carga el viewbag de los Estados

            return View();
        }

        //Pruenba de cambio.
    }
}
