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
    public class FaseController :  CoreLibrary.Web.Base.Controller
    {
        [Authorize]
        public ActionResult Index()
        {
            //se carga el viebag de lasEvaluaciones activas
            //Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            //DataTable dtEval = bssEvaluacion.SelbyAct();
            //this.Result = bssEvaluacion.Result;
            //ViewBag.Evaluaciones = dtEval;

            //se carga el viewbag de las Fase de evaluacion activa
            Business.FaseEvaluacionBS bssFasEval = new Business.FaseEvaluacionBS();
            DataTable dtFasEval = bssFasEval.TodosActivos();
            this.Result = bssFasEval.Result;
            ViewBag.Fases = dtFasEval;

            //se se carga el viewbag de los Tipos de Fase
            Business.TipoFaseBS bssTipoFase = new Business.TipoFaseBS();
            DataTable dtTipoFase = bssTipoFase.Todos();
            this.Result = bssTipoFase.Result;
            ViewBag.TipoFase = dtTipoFase;

            return View();
        }

        [Authorize]

        public ActionResult RecargaFases()
        {
            //se carga el viebag de lasEvaluaciones activas
            //Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            //DataTable dtEval = bssEvaluacion.SelbyAct();
            //this.Result = bssEvaluacion.Result;
            //ViewBag.Evaluaciones = dtEval;

            //se carga el viewbag de las Fase de evaluacion activa
            Business.FaseEvaluacionBS bssFasEval = new Business.FaseEvaluacionBS();
            DataTable dtFasEval = bssFasEval.TodosActivos();
            this.Result = bssFasEval.Result;
            ViewBag.Fases = dtFasEval;

            //se se carga el viewbag de los Tipos de Fase
            Business.TipoFaseBS bssTipoFase = new Business.TipoFaseBS();
            DataTable dtTipoFase = bssTipoFase.Todos();
            this.Result = bssTipoFase.Result;
            ViewBag.TipoFase = dtTipoFase;

            return PartialView("_FasesEval");
        }


        //[Authorize(Roles = "pedd_fase_create")]
        [HttpPost]
        public ActionResult Create(int IdCabEval)
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

        //[Authorize(Roles = "pedd_fase_create")]
        public ActionResult CreateFromMenu()
        {

            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtCabEval = bssEvaluacion.SelbyAct();
            this.Result = bssEvaluacion.Result;
            ViewBag.CabEval = dtCabEval;

            //se se carga el viewbag de los Tipos de Fase
            Business.TipoFaseBS bssTipoFase = new Business.TipoFaseBS();
            DataTable dtTipoFase = bssTipoFase.Todos();
            this.Result = bssTipoFase.Result;
            ViewBag.TipoFase = dtTipoFase;

            return View();
        }


        //[Authorize(Roles = "pedd_fase_create")]
        [HttpPost]
        public string CreateFases(FormFaseModels FormFase)
        {
            int IdCabEvaluacion = FormFase.IdCabEvalFase;
            string FasesJson = FormFase.FasesJSON;

            Business.FaseEvaluacionBS bssFasEval = new Business.FaseEvaluacionBS();
            DataTable dtFases = bssFasEval.JasonToDatatable(FasesJson);

            int IdTipoFase = 0;
            string dfinicio = "";
            string dfTermino = "";
            int numOrden = 0;

            bool bValido = true;

            //VALIDACIONES

            if (IdCabEvaluacion < 1)
            {
                bValido = false;
            }

            if (bValido == false)
            {
                return "Debe seleccionar una Evaluación antes de grabar.";
            }

            string dfinicioEval="", dfTerminoEval="";

            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtEval = bssEvaluacion.Select(IdCabEvaluacion);

            foreach (DataRow drEval in dtEval.Rows)
            {
                dfinicioEval = drEval["dfInicio"].ToString();
                dfTerminoEval = drEval["dfTermino"].ToString();
            }

            DateTime dtValida;
            bool wasParsed;
            
            //Valida formato fecha 

            foreach (DataRow dr in dtFases.Rows)
            {
                dfinicio = dr[1].ToString();
                dfTermino = dr[2].ToString();

                wasParsed = DateTime.TryParse(dfinicio, out dtValida);

                if (wasParsed == false) { bValido = false; }

                wasParsed = DateTime.TryParse(dfTermino, out dtValida);

                if (wasParsed == false) { bValido = false; }

            }
             
            if (bValido == false)
            {
                return "Existe al menos una fecha inválida.";                                           
            }

            //valida fecha evaluacion

            foreach (DataRow dr in dtFases.Rows)
            {
                dfinicio = dr[1].ToString();
                dfTermino = dr[2].ToString();

                DateTime.TryParse(dfinicio, out dtValida);

               if((DateTime.Parse(dfinicioEval) > DateTime.Parse(dfinicio)) || (DateTime.Parse(dfTerminoEval) < DateTime.Parse(dfinicio)))
                { bValido = false; }

                if ((DateTime.Parse(dfinicioEval) > DateTime.Parse(dfTermino)) || (DateTime.Parse(dfTerminoEval) < DateTime.Parse(dfTermino)))
                { bValido = false; }

                if (DateTime.Parse(dfinicio) >= DateTime.Parse(dfTermino))
                { bValido = false; }

            }

            if (bValido == false)
            {
                return "Existe una fecha que está fuera del intervalo de la Evaluación.";
            }

            //valida orden de fechas

            DateTime dfAnterior = DateTime.Parse("01/01/1900");

            foreach (DataRow dr in dtFases.Rows)
            {
                dfinicio = dr[1].ToString();
                dfTermino = dr[2].ToString();
           

                if (dfAnterior > DateTime.Parse(dfinicio))
                { bValido = false; }

                dfAnterior = DateTime.Parse(dfinicio);


                if (dfAnterior > DateTime.Parse(dfTermino))
                { bValido = false; }

                dfAnterior = DateTime.Parse(dfTermino);

            }

            if (bValido == false)
            {
                return "Existe al menos una fecha que no es correlativa.";
            }

            //ASIGNACION

            try
            {
                foreach (DataRow dr in dtFases.Rows)
                {
                    numOrden = numOrden + 1;

                    IdTipoFase = int.Parse(dr[0].ToString());
                    dfinicio = dr[1].ToString();
                    dfTermino = dr[2].ToString();

                    bssFasEval.Insert(IdCabEvaluacion, IdTipoFase, dfinicio, dfTermino, numOrden, 1);

                }

                return "INSERTADO";
            }
            catch (Exception Ex)
            {
                return "";
            }


        }


        //// [Authorize(Roles = "pedd_evaluacion_edit")]
        //[HttpPost]
        //public string Edit(CabEvaluacionModels CabEvaluacion)
        //{
        //    int IdCabEvaluacion = CabEvaluacion.IdCabEvaluacion;
        //    int IdCompania = CabEvaluacion.IdCompania;
        //    string NomEvaluacion = CabEvaluacion.NomEvaluacion.ToUpper();
        //    String DesEvaluacion = CabEvaluacion.DesEvaluacion;
        //    String InsEvaluacion = CabEvaluacion.InsEvaluacion;
        //    String dfInicio = CabEvaluacion.dfInicio;
        //    String dfTermino = CabEvaluacion.dfTermino;
        //    int IdTipoEvaluacion = CabEvaluacion.IdTipoEvaluacion;
        //    int IdEstado = CabEvaluacion.IdEstado;

        //    string stRespuesta = "";
        //    try
        //    {
        //        Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();

        //        stRespuesta = bssEvaluacion.Edit(IdCabEvaluacion, IdCompania, NomEvaluacion, DesEvaluacion, InsEvaluacion, dfInicio, dfTermino, IdTipoEvaluacion, IdEstado);

        //        this.Result = bssEvaluacion.Result;

        //        return stRespuesta;
        //    }
        //    catch
        //    {
        //        return "";
        //    }
        //}


        // [Authorize(Roles = "pedd_fase_edit")]
        [HttpPost]
        public ActionResult Edit(int IdFaseEval)
        {
            FaseEvaluacionModels FaseEvaluacion = new FaseEvaluacionModels();

            Business.FaseEvaluacionBS bssFaseEvaluacion = new Business.FaseEvaluacionBS();
            DataTable dtFasEval = bssFaseEvaluacion.Select(IdFaseEval);

            foreach (DataRow dr in dtFasEval.Rows)
            {
                FaseEvaluacion.IdFaseEvaluacion = int.Parse(dr["IdFaseEvaluacion"].ToString());
                FaseEvaluacion.IdCabEvaluacion = int.Parse(dr["IdCabEvaluacion"].ToString());
                FaseEvaluacion.IdTipoFaseEval = int.Parse(dr["IdTipoFaseEval"].ToString());
                FaseEvaluacion.dfInicio = dr["dfInicio"].ToString();
                FaseEvaluacion.dfTermino = dr["dfTermino"].ToString();
                FaseEvaluacion.NumOrden = int.Parse(dr["NumOrden"].ToString());
                FaseEvaluacion.IdEstado = int.Parse(dr["idEstado"].ToString());
            }

            //se se carga el viewbag de los Tipos de Fases
            Business.TipoFaseBS bssTipoFases = new Business.TipoFaseBS();
            DataTable dtTipoFase = bssTipoFases.Todos();
            this.Result = bssTipoFases.Result;
            ViewBag.TipoFase = dtTipoFase;


            //se carga el viewbag de los Estados
            Business.EstadoBS bssEstado = new Business.EstadoBS();
            DataTable dtEst = bssEstado.Todos();
            this.Result = bssEstado.Result;
            ViewBag.Estado = dtEst;

            return View(FaseEvaluacion);
        }

        // [Authorize(Roles = "pedd_fase_edit")]
        [HttpPost]
        public string EditFase(Models.FaseEvaluacionModels FaseModel)
        {
            int IdFaseEval = FaseModel.IdFaseEvaluacion;
            string dfIninio = FaseModel.dfInicio;
            string dfTermino = FaseModel.dfTermino;
            int IdEstado = FaseModel.IdEstado;

            Business.FaseEvaluacionBS bssFaseEvaluacion = new Business.FaseEvaluacionBS();
            string stRespuesta = bssFaseEvaluacion.Update(IdFaseEval, dfIninio, dfTermino, IdEstado);

            return stRespuesta;
        }


        //// [Authorize(Roles = "pedd_fase_delete")]
        [HttpPost]
        public string Delete(int IdFaseEval)
        {
            int IdFaseEvaluacion = IdFaseEval;

            string stRespuesta = "";

            try
            {
                Business.FaseEvaluacionBS bssFaseEval = new Business.FaseEvaluacionBS();

                stRespuesta = bssFaseEval.Delete(IdFaseEvaluacion);

                this.Result = bssFaseEval.Result;

                return stRespuesta;
            }
            catch
            {
                return "";
            }
        }


    }
}
