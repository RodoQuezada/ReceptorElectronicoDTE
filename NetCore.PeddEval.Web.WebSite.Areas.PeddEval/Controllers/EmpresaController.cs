using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using Microsoft.AspNet.Identity;
using CoreLibrary.Business;
using System.ComponentModel;
using CoreLibrary;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers
{
    [Authorize]
    public class EmpresaController : CoreLibrary.Web.Base.Controller
    {

        [Authorize]
        public ActionResult Index()
        {
            Business.EmpresaBS bssEmpresa = new Business.EmpresaBS();
            DataTable dt = bssEmpresa.Todos();
            this.Result = bssEmpresa.Result;
            ViewBag.Empresa = dt;

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
