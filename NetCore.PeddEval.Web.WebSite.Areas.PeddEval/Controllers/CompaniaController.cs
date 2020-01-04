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
    [Authorize]
    public class CompaniaController :  CoreLibrary.Web.Base.Controller
    {
        [Authorize]
        public ActionResult Index()
        {
            //se carga el viewbag de las Empresas
            Business.CompaniaBS bssCompania = new Business.CompaniaBS();
            DataTable dt = bssCompania.Todos();
            this.Result = bssCompania.Result;
            ViewBag.Empresa = dt;

            return View();
        }

        //[Authorize(Roles = "pedd_compania_delete")]
        public void Delete()
        {
            //se carga el viewbag de las Empresas
            Business.CompaniaBS bssCompania = new Business.CompaniaBS();
            DataTable dt = bssCompania.Todos();
            this.Result = bssCompania.Result;
            ViewBag.Compania = dt;

            return;
        }

        //[Authorize(Roles = "pedd_compania_edit")]
        public void Edit(int IdEmpresa)
        {
            //se carga el viewbag de las Empresas
            Business.CompaniaBS bssCompania = new Business.CompaniaBS();
            DataTable dt = bssCompania.Select(IdEmpresa);
            this.Result = bssCompania.Result;
            ViewBag.Compania = dt;

            return;
        }

        //[Authorize(Roles = "pedd_compania_create")]
        [HttpGet]
        public ActionResult Create()
        {
            //se carga el viewbag de los Estados
            Business.EstadoBS bssEstado = new Business.EstadoBS();
            DataTable dt = bssEstado.Todos();
            this.Result = bssEstado.Result;
            ViewBag.Estado = dt;

            return View();
        }


        // [Authorize(Roles = "pedd_compania_create")]
        [HttpPost]
        public string CreateCompania(NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models.CompaniaModels  CompaniaModel)
        {
            int IdCompania = CompaniaModel.IdCompania;
            int RutCompania = CompaniaModel.RutCompania;
            String DvCompania = CompaniaModel.DvCompania;
            String NomCompania = CompaniaModel.NomCompania.ToUpper();
            String GiroCompania = CompaniaModel.GiroCompania.ToUpper();
            String DirCompania = CompaniaModel.DirCompania.ToUpper();
            String FonoCompania = CompaniaModel.FonoCompania;
            int IdEstado = CompaniaModel.IdEstado;

            try
            {
                Business.CompaniaBS bssCompania = new Business.CompaniaBS();

                DataTable dt = bssCompania.Insert(RutCompania, DvCompania, NomCompania, GiroCompania, DirCompania, FonoCompania, IdEstado);

                this.Result = bssCompania.Result;

                foreach (DataRow dr in dt.Rows)
                {
                    CompaniaModel.IdCompania = int.Parse(dr["IdCompania"].ToString());
                }

                if (!Result.HasError)
                {
                   string strRetorno;

                   strRetorno = CompaniaModel.IdCompania.ToString();

                   return strRetorno;
                }

            }
            catch
            {
                return "";
            }

            return "";

        }

    }
}
