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
    public class ObjetivoController :  CoreLibrary.Web.Base.Controller
    {
        [Authorize]
        public ActionResult Index(int IdCabEval)
        {
            int IdCabEvaluacion = IdCabEval;

            //se carga el viebag de las Evaluaciones por Id
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtEval = bssEvaluacion.Select(IdCabEvaluacion); //.SelbyAct();
            this.Result = bssEvaluacion.Result;
            ViewBag.Evaluaciones = dtEval;

            //se carga el viewbag de los Empleados evaluados
            Business.ObjetivoBS bssObjetivo = new Business.ObjetivoBS();
            DataTable dtEmpleados = bssObjetivo.SelByEval(IdCabEvaluacion);
            this.Result = bssObjetivo.Result;
            ViewBag.EmpleadosEval = dtEmpleados;

            //se envia el Id de Evaluacion
            ViewBag.IdCabEvaluacion = IdCabEvaluacion;

            return View();
        }

        //[Authorize(Roles = "pedd_objetivo_evaluate")]
        public ActionResult ListToEvaluate(int objIdCabEval, int objIdEvador)
        {
            int IdCabEvaluacion = objIdCabEval;
            int IdEvaluador = objIdEvador;

            //se carga el viewbag de los Empleados evaluados
            Business.ObjetivoBS bssObjetivo = new Business.ObjetivoBS();
            DataTable dtEvaluados = bssObjetivo.SelectByJefe(IdCabEvaluacion, IdEvaluador);
            this.Result = bssObjetivo.Result;
            ViewBag.Evaluados = dtEvaluados;

            //se envia el Id de Evaluacion
            ViewBag.IdCabEvaluacion = IdCabEvaluacion;

            return View();
        }

        //[Authorize(Roles = "pedd_objetivo_evaluate")]
        public ActionResult Evaluate(int IdCabEval, int IdEmpEval)
        {
            int IdCabEvaluacion = IdCabEval;
            int IdEvaluado = IdEmpEval;

            //se carga el viewbag de los Empleados evaluados
            Business.DetObjetivoBS bssDetObjetivo = new Business.DetObjetivoBS();
            DataTable dtDetEval = bssDetObjetivo.SelByEvalEmp(IdCabEvaluacion, IdEvaluado);
            this.Result = bssDetObjetivo.Result;
            ViewBag.DetEvaluacion = dtDetEval;

            //se envia el nombre de Evaluacion
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtCabEval = bssEvaluacion.Select(IdCabEvaluacion);
            this.Result = bssDetObjetivo.Result;

            foreach (DataRow dr in dtCabEval.Rows)
            {
                ViewBag.NomEvaluacion = dr["NomEvaluacion"].ToString();
            }

            //se envia el nombre del evaluado
            Business.EmpleadoBS bssEmpleado = new Business.EmpleadoBS();
            DataTable dtEmp = bssEmpleado.Select(IdEvaluado);
            foreach (DataRow dr2 in dtEmp.Rows)
            {
                ViewBag.NomEvaluado = dr2["AplPatEmpleado"].ToString() + " " + dr2["AplMatEmpleado"].ToString() + " " + dr2["NomEmpleado"].ToString();   
            }



            return View();
        }

        //[Authorize(Roles = "pedd_objetivo_perobjetive")]
        public ActionResult PerObjetives(int perObjIdCabEval, int perObjIdEvador)
        {
            int IdCabEvaluacion = perObjIdCabEval;
            int IdEvaluado = perObjIdEvador;

            //se carga el viewbag de los Empleados evaluados
            Business.DetObjetivoBS bssDetObjetivo = new Business.DetObjetivoBS();
            DataTable dtDetEval = bssDetObjetivo.SelByEvalEmp(IdCabEvaluacion, IdEvaluado);
            this.Result = bssDetObjetivo.Result;
            ViewBag.DetEvaluacion = dtDetEval;

            //se envia el nombre de Evaluacion
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtCabEval = bssEvaluacion.Select(IdCabEvaluacion);
            this.Result = bssDetObjetivo.Result;

            foreach (DataRow dr in dtCabEval.Rows)
            {
                ViewBag.NomEvaluacion = dr["NomEvaluacion"].ToString();
            }

            //se envia el nombre del evaluado
            Business.EmpleadoBS bssEmpleado = new Business.EmpleadoBS();
            DataTable dtEmp = bssEmpleado.Select(IdEvaluado);
            foreach (DataRow dr2 in dtEmp.Rows)
            {
                ViewBag.NomEvaluado = dr2["AplPatEmpleado"].ToString() + " " + dr2["AplMatEmpleado"].ToString() + " " + dr2["NomEmpleado"].ToString();
            }

            return View();
        }




        //[Authorize(Roles = "pedd_objetivo_create")]
        [HttpPost]
        public ActionResult Create(int IdCabEval, int IdEmpEval)
        {
            int IdCabEvaluacion = IdCabEval;
            int IdEmpleado = IdEmpEval;

            //se carga el viewbag de Evaluaciones
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtCabEval = bssEvaluacion.Select(IdCabEvaluacion);
            this.Result = bssEvaluacion.Result;
            ViewBag.Evaluacion = dtCabEval;

            //se carga viewbag del Evaluado
            Business.EmpleadoBS bssEmpleado = new Business.EmpleadoBS();
            DataTable dtEmpleado = bssEmpleado.Select(IdEmpleado);
            this.Result = bssEmpleado.Result;

            foreach (DataRow dr in dtEmpleado.Rows)
            {
                ViewBag.IdEvaluado = int.Parse(dr["IdEmpleado"].ToString());
                ViewBag.NomEvaluado = dr["AplPatEmpleado"].ToString() + " " + dr["AplMatEmpleado"].ToString() + " " + dr["NomEmpleado"].ToString();
             }

            //se carga ViewBag del evaluador
            string Usuario = User.Identity.Name;

            Business.EmpleadoBS bssEvaluador = new Business.EmpleadoBS();
            DataTable dtEvaluador = bssEvaluador.SelByEmail(Usuario);
            this.Result = bssEvaluador.Result;

            if (dtEvaluador != null && dtEvaluador.Rows.Count > 0)
            {
                foreach (DataRow dr in dtEvaluador.Rows)
                {
                    ViewBag.IdEvaluador = int.Parse(dr["IdEmpleado"].ToString());
                }

            }

            // asigna evaluacion 
            ViewBag.IdCabEvaluacion = IdCabEvaluacion;

            return View();
        }


        //[Authorize(Roles = "pedd_objetivo_create")]
        [HttpPost]
        public string CreateCabObjetivo(int cabIdObjetivoEvaluacion, int cabIdCabEvaluacion, int cabIdEvaluador, int cabIdEvaluado, int cabIdEstado)
        {
            int IdObjetivoEvaluacion = cabIdObjetivoEvaluacion;
            int IdCabEvaluacion = cabIdCabEvaluacion;
            int IdEvaluador = cabIdEvaluador;
            int IdEvaluado = cabIdEvaluado;
            int IdEstado = cabIdEstado;

            try
            {
                Business.ObjetivoBS bssObjetivo = new Business.ObjetivoBS();
                DataTable dtObjetivo = bssObjetivo.Insert(IdCabEvaluacion, IdEvaluador, IdEvaluado, IdEstado);
                this.Result = bssObjetivo.Result;

                foreach (DataRow dr in dtObjetivo.Rows)
                {
                    IdObjetivoEvaluacion = int.Parse(dr["IdObjetivoEvaluacion"].ToString());
                    
                }
            }
            catch
            {
                return null;
            }

            return IdObjetivoEvaluacion.ToString();
        }

        //[Authorize(Roles = "pedd_objetivo_create")]
        [HttpPost]
        public string CreateDetObjetivo(int detIdDetObjetivoEvaluacion, int detIdObjetivoEvaluacion, string detNomOjetivo, string detDesOjetivo, string detMetEsperada, string detMetExcepcional, int detPondObjetivo, int detIdEstado)
        {
            int IdDetObjetivoEvaluacio = detIdDetObjetivoEvaluacion;
            int IdObjetivoEvaluacion = detIdObjetivoEvaluacion;
            string NomOjetivo = detNomOjetivo;
            string DesOjetivo = detDesOjetivo;
            string MetEsperada = detMetEsperada;
            string MetExcepcional = detMetExcepcional;
            int PondObjetivo = detPondObjetivo;
            int IdEstado = detIdEstado;

            try
            {
                Business.DetObjetivoBS bssDetObjetivo = new Business.DetObjetivoBS();
                DataTable dtDatObjetivo = bssDetObjetivo.Insert(IdObjetivoEvaluacion, NomOjetivo, DesOjetivo, MetEsperada, MetExcepcional, PondObjetivo, IdEstado);
                this.Result = bssDetObjetivo.Result;

                foreach (DataRow dr in dtDatObjetivo.Rows)
                {
                    IdDetObjetivoEvaluacio = int.Parse(dr["IdDetObjetivoEvaluacion"].ToString());

                }
            }
            catch
            {
                return null;
            }

            return IdDetObjetivoEvaluacio.ToString();
        }


        // [Authorize(Roles = "pedd_participante_edit")]
        [HttpPost]
        public string ActualizaNota(int IdDetObj, int NotaObj)
        {
            int IdDetObjetivo = IdDetObj;
            int NotaObjetivo = NotaObj;

            string stRespuesta = "";
            try
            {
                Business.DetObjetivoBS bssDetObjetivo = new Business.DetObjetivoBS();

                stRespuesta = bssDetObjetivo.UpdateNota(IdDetObjetivo, NotaObjetivo);

                this.Result = bssDetObjetivo.Result;

                return stRespuesta;
            }
            catch
            {
                return "";
            }
        }


        // [Authorize(Roles = "pedd_participante_edit")]
        //[HttpPost]
        //public ActionResult Edit(int IdFaseEval)
        //{
        //    FaseEvaluacionModels FaseEvaluacion = new FaseEvaluacionModels();

        //    Business.FaseEvaluacionBS bssFaseEvaluacion = new Business.FaseEvaluacionBS();
        //    DataTable dtFasEval = bssFaseEvaluacion.Select(IdFaseEval);

        //    foreach (DataRow dr in dtFasEval.Rows)
        //    {
        //        FaseEvaluacion.IdFaseEvaluacion = int.Parse(dr["IdFaseEvaluacion"].ToString());
        //        FaseEvaluacion.IdCabEvaluacion = int.Parse(dr["IdCabEvaluacion"].ToString());
        //        FaseEvaluacion.IdTipoFaseEval = int.Parse(dr["IdTipoFaseEval"].ToString());
        //        FaseEvaluacion.dfInicio = dr["dfInicio"].ToString();
        //        FaseEvaluacion.dfTermino = dr["dfTermino"].ToString();
        //        FaseEvaluacion.NumOrden = int.Parse(dr["NumOrden"].ToString());
        //        FaseEvaluacion.IdEstado = int.Parse(dr["idEstado"].ToString());


        //    }

        //    //se se carga el viewbag de los Tipos de Fases
        //    Business.TipoFaseBS bssTipoFases = new Business.TipoFaseBS();
        //    DataTable dtTipoFase = bssTipoFases.Todos();
        //    this.Result = bssTipoFases.Result;
        //    ViewBag.TipoFase = dtTipoFase;


        //    //se carga el viewbag de los Estados
        //    Business.EstadoBS bssEstado = new Business.EstadoBS();
        //    DataTable dtEst = bssEstado.Todos();
        //    this.Result = bssEstado.Result;
        //    ViewBag.Estado = dtEst;

        //    return View(FaseEvaluacion);
        //}

        //// [Authorize(Roles = "pedd_evaluacion_delete")]
        //[HttpPost]
        //public string Delete(CabEvaluacionModels CabEvaluacion)
        //{
        //    int IdCabEvaluacion = CabEvaluacion.IdCabEvaluacion;

        //    string stRespuesta = "";
        //    try
        //    {
        //        Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();

        //        stRespuesta = bssEvaluacion.Delete(IdCabEvaluacion);

        //        this.Result = bssEvaluacion.Result;

        //        return stRespuesta;
        //    }
        //    catch
        //    {
        //        return "";
        //    }
        //}


    }
}
