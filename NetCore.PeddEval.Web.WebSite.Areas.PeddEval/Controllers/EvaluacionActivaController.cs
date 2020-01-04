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
    public class EvaluacionActivaController : CoreLibrary.Web.Base.Controller
    {
        [Authorize]
        public ActionResult Index()
        {
            //obtiene el IdEmpleado a partir del identity Name (usuario conectado)
            string Usuario = User.Identity.Name;
            int IdEmpleado = 0;
            int IdCompania = 0;

            Business.EmpleadoBS bssEmpleado = new Business.EmpleadoBS();
            DataTable dtEmpleado = bssEmpleado.SelByEmail(Usuario);
            this.Result = bssEmpleado.Result;

            if (dtEmpleado != null && dtEmpleado.Rows.Count > 0)
            {
                foreach (DataRow dr in dtEmpleado.Rows)
                {
                    IdEmpleado = int.Parse(dr["IdEmpleado"].ToString());
                    IdCompania = int.Parse(dr["IdCompania"].ToString());
                }

            }

            //se carga el viebag de las Evaluaciones activas de un Empleado
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtEval = bssEvaluacion.SelectByEmpleado(IdEmpleado, IdCompania);
            this.Result = bssEvaluacion.Result;
            ViewBag.Evaluaciones = dtEval;

            //se carga el viebag de las Evaluaciones activas de una Jefatura
            Business.EvaluacionBS bssEvalJef = new Business.EvaluacionBS();
            DataTable dtEvalJef = bssEvalJef.SelectByJefatura(IdEmpleado, IdCompania);
            this.Result = bssEvalJef.Result;
            ViewBag.EvaluacionesJefatura = dtEvalJef;

            ViewBag.IdEvaluador = IdEmpleado;
            ViewBag.IdEvaluado = IdEmpleado;

            return View();
        }

        //[Authorize(Roles = "pedd_group_create")]
        public ActionResult AddEvaluado()
        {
            //obtiene el IdEmpleado a partir del identity Name (usuario conectado)
            string Usuario = User.Identity.Name;
            int IdEmpleado = 0;
            int IdCompania = 0;

            Business.EmpleadoBS bssEmpleado = new Business.EmpleadoBS();
            DataTable dtEmpleado = bssEmpleado.SelByEmail(Usuario);
            this.Result = bssEmpleado.Result;

            if (dtEmpleado != null && dtEmpleado.Rows.Count > 0)
            {
                foreach (DataRow dr in dtEmpleado.Rows)
                {
                    IdEmpleado = int.Parse(dr["IdEmpleado"].ToString());
                    IdCompania = int.Parse(dr["IdCompania"].ToString());
                }

            }

            //se carga el viebag de las Evaluaciones activas de un Empleado
            //Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            //DataTable dtEval = bssEvaluacion.SelectByEmpleado(IdEmpleado, IdCompania);
            //this.Result = bssEvaluacion.Result;
            //ViewBag.Evaluaciones = dtEval;

            //se carga el viebag de las Evaluaciones activas de una Jefatura
            Business.EvaluacionBS bssEvalJef = new Business.EvaluacionBS();
            DataTable dtEvalJef = bssEvalJef.SelectByJefatura(IdEmpleado, IdCompania);
            this.Result = bssEvalJef.Result;
            ViewBag.EvaluacionesJefatura = dtEvalJef;

            ViewBag.IdEvaluador = IdEmpleado;
            ViewBag.IdEvaluado = IdEmpleado;

            return View();
        }

        //[Authorize(Roles = "pedd_group_create")]
        [HttpPost]
        public ActionResult ShowListEvaluados(int IdCabEval,int IdEvaluador)
        {
            //se carga el viebag de las Empleados Evaluados
            Business.GrupoEvaluacionBS bssGrupoEval = new Business.GrupoEvaluacionBS();
            DataTable dtGrupoEval = bssGrupoEval.SelectByJefe(IdCabEval, IdEvaluador);
            this.Result = bssGrupoEval.Result;

            ViewBag.EvaluacionesJefatura = dtGrupoEval;

            return PartialView("_DTEvaluados");
        }

        //[Authorize(Roles = "pedd_group_create")]
        [HttpPost]
        public ActionResult ShowSelectEvaluados(int IdCabEval, int IdEvaluador)
        {
            //se carga el viebag de las Empleados Evaluados
            Business.ParticipanteBS bssParticipante = new Business.ParticipanteBS();
            DataTable dtParticipante = bssParticipante.SelectDistinct(IdCabEval, IdEvaluador);
            this.Result = bssParticipante.Result;

            ViewBag.Participantes = dtParticipante;

            return PartialView("_DTParticipantes");
        }


        //[Authorize(Roles = "pedd_group_create")]
        [HttpPost]
        public string Create(int IdCabEvalGroup, int IdEvaluadGroup, int IdEmpleadGroup)
        {
           
            Business.GrupoEvaluacionBS bssGrupoEval = new Business.GrupoEvaluacionBS();
            string Resultado = bssGrupoEval.Insert(IdCabEvalGroup, IdEvaluadGroup, IdEmpleadGroup, 1);
            this.Result = bssGrupoEval.Result;

            return Resultado;

        }

        //[Authorize(Roles = "pedd_group_delete")]
        [HttpPost]
        public string Delete(int IdGrupoEval)
        {

            Business.GrupoEvaluacionBS bssGrupoEval = new Business.GrupoEvaluacionBS();
            string Resultado = bssGrupoEval.Delete(IdGrupoEval);
            this.Result = bssGrupoEval.Result;

            return Resultado;

        }

    }
}
