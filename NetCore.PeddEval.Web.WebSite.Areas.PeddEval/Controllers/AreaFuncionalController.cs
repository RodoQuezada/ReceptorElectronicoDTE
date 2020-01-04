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
using NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers
{
    //[Authorize]
    public class AreaFuncionalController : CoreLibrary.Web.Base.Controller
    {
        //[Authorize(Roles = "pedd_areafuncional_index")]
        public ActionResult Index()
        {
            //se carga el viewbag de las Empresas
            Business.AreaFuncionalBS bssAreaFuncional = new Business.AreaFuncionalBS();
            DataTable dt = bssAreaFuncional.Todos();
            this.Result = bssAreaFuncional.Result;
            ViewBag.AreaFuncional = dt;        

            return View();
        }

        //[Authorize(Roles = "pedd_compania_delete")]
        public void Delete()
        {
            //se carga el viewbag de las Empresas
            Business.AreaFuncionalBS bssAreaFuncional = new Business.AreaFuncionalBS();
            DataTable dt = bssAreaFuncional.Todos();
            this.Result = bssAreaFuncional.Result;
            ViewBag.Empresa = dt;

            return;
        }

        //[Authorize(Roles = "pedd_compania_update")]
        public void Update()
        {
            //se carga el viewbag de las Empresas
            Business.AreaFuncionalBS bssAreaFuncional = new Business.AreaFuncionalBS();
            DataTable dt = bssAreaFuncional.Todos();
            this.Result = bssAreaFuncional.Result;
            ViewBag.Empresa = dt;

            return;
        }

    }
}
