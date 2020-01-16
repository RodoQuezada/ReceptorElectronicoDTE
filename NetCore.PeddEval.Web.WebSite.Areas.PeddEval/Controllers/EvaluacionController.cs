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
    public class EvaluacionController :  CoreLibrary.Web.Base.Controller
    {
        [Authorize]
        public ActionResult Index()
        {
            //se carga el viewbag de las Evaluaciones
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtEval = bssEvaluacion.Todos(1);
            this.Result = bssEvaluacion.Result;
            ViewBag.Evaluacion = dtEval;

            //se se carga el viewbag de los Tipos de Evaluacion
            Business.TipoEvaluacionBS bssTipoEvaluacion = new Business.TipoEvaluacionBS();
            DataTable dtTipEval = bssTipoEvaluacion.Todos();
            this.Result = bssTipoEvaluacion.Result;
            ViewBag.TipoEvaluacion = dtTipEval;


            return View();
        }

        //[Authorize(Roles = "pedd_evaluacion_create")]
        [HttpGet]
        public ActionResult Create()
        {
            //se carga viewbag de las Empresas
            Business.CompaniaBS bssCompania = new Business.CompaniaBS();
            DataTable dtEmpr = bssCompania.Todos();
            this.Result = bssCompania.Result;
            ViewBag.Compania = dtEmpr;

            //se se carga el viewbag de los Tipos de Evaluacion
            Business.TipoEvaluacionBS bssTipoEvaluacion = new Business.TipoEvaluacionBS();
            DataTable dtTipEval = bssTipoEvaluacion.Todos();
            this.Result = bssTipoEvaluacion.Result;
            ViewBag.TipoEvaluacion = dtTipEval;

            //se carga el viewbag de los Estados
            Business.EstadoBS bssEstado = new Business.EstadoBS();
            DataTable dtEst = bssEstado.Todos();
            this.Result = bssEstado.Result;
            ViewBag.Estado = dtEst;

            //se carga el viewbag generico
            ViewBag.Generico = "";

            return View();
        }


        // [Authorize(Roles = "pedd_evaluacion_create")]
        [HttpPost]
        public string CreateCabEvaluacion(CabEvaluacionModels CabEvaluacion)
        {
            try
            {
                int IdCompania = CabEvaluacion.IdCompania;
                string NomEvaluacion = CabEvaluacion.NomEvaluacion.ToUpper();
                String DesEvaluacion = CabEvaluacion.DesEvaluacion;
                String InsEvaluacion = CabEvaluacion.InsEvaluacion;
                String dfInicio = CabEvaluacion.dfInicio;
                String dfTermino = CabEvaluacion.dfTermino;
                int IdTipoEvaluacion = CabEvaluacion.IdTipoEvaluacion;
                int IdEstado = CabEvaluacion.IdEstado;


                Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();

                DataTable dt = bssEvaluacion.Insert(IdCompania, NomEvaluacion, DesEvaluacion, InsEvaluacion, dfInicio, dfTermino, IdTipoEvaluacion, IdEstado);

                this.Result = bssEvaluacion.Result;

                foreach (DataRow dr in dt.Rows)
                {
                    CabEvaluacion.IdCabEvaluacion = int.Parse(dr["IdCabEvaluacion"].ToString());
                }

                if (!Result.HasError)
                {
                    string strRetorno;

                    strRetorno = CabEvaluacion.IdCabEvaluacion.ToString();

                    return strRetorno;
                }

            }
            catch
            {
                return "";
            }

            return "";

        }

        //[Authorize(Roles = "pedd_fase_create")]
        [HttpPost]
        public ActionResult FaseCreate(int IdCabEval)
        {
            int IdCabEvaluacion = IdCabEval;

            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtCabEval = bssEvaluacion.Select(IdCabEvaluacion);
            this.Result = bssEvaluacion.Result;
            ViewBag.CabEval = dtCabEval;

            //se se carga el viewbag de los Tipos de Fase
            Business.TipoFaseBS bssTipoFase = new Business.TipoFaseBS();
            DataTable dtTipoFase = bssTipoFase.Todos();
            this.Result = bssTipoFase.Result;
            ViewBag.TipoFase = dtTipoFase;

            return View();
        }

        // [Authorize(Roles = "pedd_evaluacion_edit")]
        [HttpPost]
        public string UpdateCabEvaluacion(CabEvaluacionModels CabEvaluacion)
        {
            try
            {
                int IdCabEvaluacion = CabEvaluacion.IdCabEvaluacion;
                int IdCompania = CabEvaluacion.IdCompania;
                string NomEvaluacion = CabEvaluacion.NomEvaluacion.ToUpper();
                String DesEvaluacion = CabEvaluacion.DesEvaluacion;
                String InsEvaluacion = CabEvaluacion.InsEvaluacion;
                String dfInicio = CabEvaluacion.dfInicio;
                String dfTermino = CabEvaluacion.dfTermino;
                int IdTipoEvaluacion = CabEvaluacion.IdTipoEvaluacion;
                int IdCompSucAreDep = CabEvaluacion.IdCompSucAreDep;
                int IdEstado = CabEvaluacion.IdEstado;

                string stRespuesta = "";

                Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();

                stRespuesta = bssEvaluacion.Edit(IdCabEvaluacion, IdCompania, NomEvaluacion, DesEvaluacion, InsEvaluacion, dfInicio, dfTermino, IdTipoEvaluacion, IdCompSucAreDep, IdEstado);

                this.Result = bssEvaluacion.Result;

                return stRespuesta;
            }
            catch
            {
                return "";
            }
        }


        // [Authorize(Roles = "pedd_evaluacion_edit")]
        [HttpPost]
        public ActionResult Edit(int IdCabEval)
        {
            CabEvaluacionModels CabEvaluacion = new CabEvaluacionModels();

            Business.EvaluacionBS bssCabEvaluacion = new Business.EvaluacionBS();
            DataTable dtCabEval = bssCabEvaluacion.Select(IdCabEval);

            foreach (DataRow dr in dtCabEval.Rows)
            {
                CabEvaluacion.IdCabEvaluacion = int.Parse(dr["IdCabEvaluacion"].ToString());
                CabEvaluacion.IdCompania = int.Parse(dr["IdCompania"].ToString());
                CabEvaluacion.NomEvaluacion = dr["NomEvaluacion"].ToString();
                CabEvaluacion.DesEvaluacion = dr["DesEvaluacion"].ToString();
                CabEvaluacion.InsEvaluacion = dr["InsEvaluacion"].ToString();
                CabEvaluacion.dfInicio = dr["dfInicio"].ToString();
                CabEvaluacion.dfTermino = dr["dfTermino"].ToString();
                CabEvaluacion.IdTipoEvaluacion = int.Parse(dr["IdTipoEvaluacion"].ToString());
                CabEvaluacion.IdCompSucAreDep = int.Parse(dr["IdCompSucAreDep"].ToString());
                CabEvaluacion.IdEstado = int.Parse(dr["idEstado"].ToString());
            }

            //se carga viewbag de las Empresas
            Business.CompaniaBS bssCompania = new Business.CompaniaBS();
            DataTable dtEmpr = bssCompania.Todos();
            this.Result = bssCompania.Result;
            ViewBag.Compania = dtEmpr;

            //se se carga el viewbag de los Tipos de Evaluacion
            Business.TipoEvaluacionBS bssTipoEvaluacion = new Business.TipoEvaluacionBS();
            DataTable dtTipEval = bssTipoEvaluacion.Todos();
            this.Result = bssTipoEvaluacion.Result;
            ViewBag.TipoEvaluacion = dtTipEval;

            //se carga el viewbag de los Estados
            Business.EstadoBS bssEstado = new Business.EstadoBS();
            DataTable dtEst = bssEstado.Todos();
            this.Result = bssEstado.Result;
            ViewBag.Estado = dtEst;

            //se carga el viewbag Generico: Compania - Area - Sucursal y Departamento
            string strTipoEvaluacion = "";

            foreach (DataRow drTipEval in dtTipEval.Rows)
            {
                if (int.Parse(drTipEval["IdTipoEvaluacion"].ToString()) == CabEvaluacion.IdTipoEvaluacion)
                {
                    strTipoEvaluacion = drTipEval["NomTipoEvaluacion"].ToString();
                }
            }

            DataTable dtGenerico = new DataTable("Generico");
            DataColumn dc = dtGenerico.Columns.Add("Id", typeof(int));
            dtGenerico.Columns.Add("Descripcion", typeof(String));

            if(strTipoEvaluacion== "ORGANIZACIONAL")
            {
                foreach (DataRow dr in dtEmpr.Rows)
                {
                    dtGenerico.Rows.Add(int.Parse(dr["IdCompania"].ToString()), dr["NomCompania"].ToString());
                }

            }

            if (strTipoEvaluacion == "AREAL")
            {
                Business.AreaFuncionalBS bssAreaFunc = new Business.AreaFuncionalBS();
                DataTable dtArea = bssAreaFunc.Todos();
                this.Result = bssAreaFunc.Result;
                foreach (DataRow dr2 in dtArea.Rows)
                {
                    dtGenerico.Rows.Add(int.Parse(dr2["IdAreaFuncional"].ToString()), dr2["NomArea"].ToString());
                }

            }

            ViewBag.Generico = dtGenerico;

            return View(CabEvaluacion);
        }

        // [Authorize(Roles = "pedd_evaluacion_delete")]
        [HttpPost]
        public string Delete(CabEvaluacionModels CabEvaluacion)
        {
            try
            {
                int IdCabEvaluacion = CabEvaluacion.IdCabEvaluacion;

                string stRespuesta = "";
            
                Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();

                stRespuesta = bssEvaluacion.Delete(IdCabEvaluacion);

                this.Result = bssEvaluacion.Result;

                return stRespuesta;
            }
            catch
            {
                return "";
            }
        }


    }
}
