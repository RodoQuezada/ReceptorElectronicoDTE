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
    public class AreaController : CoreLibrary.Web.Base.Controller
    {

        [Authorize]
        public ActionResult Index()
        {

            ViewBag.Area = null;

            return View();
        }

        [HttpGet]
        public ActionResult Create()
        {
            //se carga el viewbag de los Estados

            return View();
        }






    }
}
