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
    public class SucursalController : CoreLibrary.Web.Base.Controller
    {

        [Authorize]
        public ActionResult Index()
        {
            ViewBag.Sucursal = null;
            return View();
        }


        [HttpGet]
        public ActionResult Create()
        {
            //se carga el viewbag de los Estados

            return View();
        }

        [HttpPost]
        public ActionResult SelectEmpresaById(int IdEmpresa,int IdSucursal, int IdUsuario)
        {
            //se carga el viewbag de los Estados

            Business.SucursalBS sucursalBs = new Business.SucursalBS();
            DataTable _sucursal = sucursalBs.SelectByEmpSuc(IdEmpresa, IdSucursal, IdUsuario);
            this.Result = sucursalBs.Result;

            ViewBag.Sucursales = _sucursal;

            return View();

        }

    }
}
