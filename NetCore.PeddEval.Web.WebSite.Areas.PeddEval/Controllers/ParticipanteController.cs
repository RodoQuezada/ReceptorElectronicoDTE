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
    public class ParticipanteController :  CoreLibrary.Web.Base.Controller
    {
        [Authorize]
        public ActionResult Index()
        {
            ////se carga el viewbag de las Empresas
            //Business.CompaniaBS bssCompania = new Business.CompaniaBS();
            //DataTable dtCompanias = bssCompania.Todos();
            //this.Result = bssCompania.Result;
            //ViewBag.Companias = dtCompanias;

            ////se carga el viebag de las Evaluaciones activas
            //Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            //DataTable dtEval = bssEvaluacion.SelbyAct();
            //this.Result = bssEvaluacion.Result;
            //ViewBag.Evaluaciones = dtEval;

            //se carga el viewbag de los participantes
            Business.ParticipanteBS bssParticipantes = new Business.ParticipanteBS();
            DataTable dtPart = bssParticipantes.Todos();
            this.Result = bssParticipantes.Result;
            ViewBag.Participantes = dtPart;


            return View();
        }


        public ActionResult Create()
        {
            //se carga el viewbag de las Empresas
            Business.CompaniaBS bssCompania = new Business.CompaniaBS();
            DataTable dtCompanias = bssCompania.Todos();
            this.Result = bssCompania.Result;
            ViewBag.Companias = dtCompanias;

            //se carga el viebag de las Evaluaciones activas
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtEval = bssEvaluacion.SelbyAct();
            this.Result = bssEvaluacion.Result;
            ViewBag.Evaluaciones = dtEval;

            return View();
        }


        //[Authorize(Roles = "pedd_participante_create")]
        [HttpPost]
        public ActionResult ListBoxFilter(int IdCabEval)
        {
            //se carga el viebag de las Evaluaciones activas
            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtEval = bssEvaluacion.SelbyAct();
            this.Result = bssEvaluacion.Result;
            ViewBag.Evaluaciones = dtEval;
            
            int IdTipoEvaluacion = 0;
            int IdCompSucAreDep = 0;
            string NomGenerico = "";

            foreach (DataRow dr in dtEval.Rows)
            {
               if (int.Parse(dr["IdCabEvaluacion"].ToString()) == IdCabEval)
                {
                    IdTipoEvaluacion = int.Parse(dr["IdTipoEvaluacion"].ToString());
                    IdCompSucAreDep = int.Parse(dr["IdCompSucAreDep"].ToString());
                }
            }

            //se carga viewbag del segundo ListBox
            Business.TipoEvaluacionBS bssTipoEval = new Business.TipoEvaluacionBS();
            DataTable dtTipoEval = bssTipoEval.Select(IdTipoEvaluacion);

            string NomTipoEvaluacion = "";

            foreach (DataRow dr2 in dtTipoEval.Rows)
            { 
                if (int.Parse(dr2["IdTipoEvaluacion"].ToString()) == IdTipoEvaluacion)
                {
                    NomTipoEvaluacion = dr2["NomTipoEvaluacion"].ToString();
                }
            }

            if (NomTipoEvaluacion == "ORGANIZACIONAL")
            {
                 ViewBag.NombreListBox = "Empresa";

                //se carga el viewbag de las Empresas
                Business.CompaniaBS bssCompania = new Business.CompaniaBS();
                DataTable dtCompanias = bssCompania.Select(IdCompSucAreDep) ;
                this.Result = bssCompania.Result;

                foreach (DataRow dr3 in dtCompanias.Rows)
                {
                    if (int.Parse(dr3["IdCompania"].ToString()) == IdCompSucAreDep)
                    {
                        NomGenerico = dr3["NomCompania"].ToString();
                    }
                }

                ViewBag.IdGenerico = IdCompSucAreDep;
                ViewBag.NomGenerico = NomGenerico;
                ViewBag.IdCabEvaluacion = IdCabEval;
            }
            else
            {
                if (NomTipoEvaluacion == "AREAL")
                {
                    ViewBag.NombreListBox = "Area Operacional";

                    Business.AreaFuncionalBS bssAreaFun = new Business.AreaFuncionalBS();
                    DataTable dtAreaFun = bssAreaFun.Select(IdCompSucAreDep);
                    this.Result = bssAreaFun.Result;

                    foreach (DataRow dr3 in dtAreaFun.Rows)
                    {
                        if (int.Parse(dr3["IdAreaFuncional"].ToString()) == IdCompSucAreDep)
                        {
                            NomGenerico = dr3["NomArea"].ToString();
                        }
                    }

                    ViewBag.IdGenerico = IdCompSucAreDep;
                    ViewBag.NomGenerico = NomGenerico;
                    ViewBag.IdCabEvaluacion = IdCabEval;

                }
                else
                {
                    if (NomTipoEvaluacion == "DEPARTAMENTAL")
                    {
                        ViewBag.NombreListBox = "Departamento";

                        Business.DepartamentoBS bssDepartamento = new Business.DepartamentoBS();
                        DataTable dtDepartamento = bssDepartamento.Select(IdCompSucAreDep);
                        this.Result = bssDepartamento.Result;

                        foreach (DataRow dr3 in dtDepartamento.Rows)
                        {
                            if (int.Parse(dr3["IdDepartamento"].ToString()) == IdCompSucAreDep)
                            {
                                NomGenerico = dr3["NomDepartamento"].ToString();
                            }
                        }

                        ViewBag.IdGenerico = IdCompSucAreDep;
                        ViewBag.NomGenerico = NomGenerico;
                        ViewBag.IdCabEvaluacion = IdCabEval;

                    }
                    else
                    {
                        if (NomTipoEvaluacion == "SUCURSAL")
                        {
                            ViewBag.NombreListBox = "Sucursal";

                            Business.SucursalBS bssSucursal = new Business.SucursalBS();
                            DataTable dtSucursal = bssSucursal.Select(IdCompSucAreDep);
                            this.Result = bssSucursal.Result;

                            foreach (DataRow dr3 in dtSucursal.Rows)
                            {
                                if (int.Parse(dr3["IdSucursal"].ToString()) == IdCompSucAreDep)
                                {
                                    NomGenerico = dr3["NomSucursal"].ToString();
                                }
                            }

                            ViewBag.IdGenerico = IdCompSucAreDep;
                            ViewBag.NomGenerico = NomGenerico;
                            ViewBag.IdCabEvaluacion = IdCabEval;


                        }
                    }
                }
            }


            return PartialView("_ListBoxFilter");
        }


        //[Authorize(Roles = "pedd_participante_create")]
        [HttpPost]
        public ActionResult TableParticipantes(int IdCabEval)
        {
            int IdCabEvaluacion = IdCabEval;

            Business.ParticipanteBS bssParticipante = new Business.ParticipanteBS();
            DataTable dtPartEval = bssParticipante.SelectByEval(IdCabEvaluacion);
            this.Result = bssParticipante.Result;

            ViewBag.Participantes = dtPartEval;

            return PartialView("_DTParticipantes");
        }


        //[Authorize(Roles = "pedd_participante_create")]
        [HttpPost]
        public ActionResult Create(int IdCabEvalPar, int IdGenericoPar)
        {
            int IdCabEvaluacion = IdCabEvalPar;
            int IdGenerico = IdGenericoPar;
            int IdTipoEvaluacion = 0;
            int IdCompSucAreDep = 0;

            Business.EvaluacionBS bssEvaluacion = new Business.EvaluacionBS();
            DataTable dtCabEval = bssEvaluacion.Select(IdCabEvaluacion);
            this.Result = bssEvaluacion.Result;

            foreach (DataRow dr in dtCabEval.Rows)
            {
                if (int.Parse(dr["IdCabEvaluacion"].ToString()) == IdCabEvaluacion)
                {
                    IdTipoEvaluacion = int.Parse(dr["IdTipoEvaluacion"].ToString());
                    IdCompSucAreDep = int.Parse(dr["IdCompSucAreDep"].ToString());
                }
            }

            Business.TipoEvaluacionBS bssTipoEval = new Business.TipoEvaluacionBS();
            DataTable dtTipoEval = bssTipoEval.Select(IdTipoEvaluacion);

            string NomTipoEvaluacion = "";

            foreach (DataRow dr2 in dtTipoEval.Rows)
            {
                if (int.Parse(dr2["IdTipoEvaluacion"].ToString()) == IdTipoEvaluacion)
                {
                    NomTipoEvaluacion = dr2["NomTipoEvaluacion"].ToString();
                }
            }

            Business.ParticipanteBS bssParticipante = new Business.ParticipanteBS();

            if (NomTipoEvaluacion == "ORGANIZACIONAL")
            {
               
              bssParticipante.InsByCom(IdCabEvaluacion, IdCompSucAreDep);
              this.Result = bssParticipante.Result;

            }
            else
            {
                if (NomTipoEvaluacion == "AREAL")
                {
                    bssParticipante.InsByAFun(IdCabEvaluacion, IdCompSucAreDep);
                    this.Result = bssParticipante.Result;
                }
                else
                {
                    if (NomTipoEvaluacion == "DEPARTAMENTAL")
                    {
                        bssParticipante.InsByDep(IdCabEvaluacion, IdCompSucAreDep);
                        this.Result = bssParticipante.Result;
                    }
                    else
                    {
                        if (NomTipoEvaluacion == "SUCURSAL")
                        {
                            bssParticipante.InsBySuc(IdCabEvaluacion, IdCompSucAreDep);
                            this.Result = bssParticipante.Result;
                        }
                    }

                }

            }

            //se carga el Viewbag de los Participantes
            DataTable dtPartEval = bssParticipante.SelectByEval(IdCabEvaluacion);
            this.Result = bssParticipante.Result;

            ViewBag.Participantes = dtPartEval;

            return PartialView("_DTParticipantes");
        }

        //[Authorize(Roles = "pedd_participante_create")]
        //[HttpPost]
        //public string CreateFases(FormFaseModels FormFase)
        //{
        //    int IdCabEvaluacion = FormFase.IdCabEvalFase;
        //    string FasesJson = FormFase.FasesJSON;

        //    Business.FaseEvaluacionBS bssFasEval = new Business.FaseEvaluacionBS();
        //    DataTable dtFases = bssFasEval.JasonToDatatable(FasesJson);

        //    int IdTipoFase = 0;
        //    string dfinicio = "";
        //    string dfTermino = "";
        //    int numOrden = 0;
        //    try
        //    {
        //        foreach (DataRow dr in dtFases.Rows)
        //        {
        //            numOrden = numOrden + 1;

        //            IdTipoFase = int.Parse(dr[0].ToString());
        //            dfinicio = dr[1].ToString();
        //            dfTermino = dr[2].ToString();

        //            bssFasEval.Insert(IdCabEvaluacion, IdTipoFase, dfinicio, dfTermino, numOrden, 1);

        //        }

        //        return "INSERTADO";
        //    }
        //    catch(Exception Ex)
        //    {
        //        return "";
        //    }

        //}


        //// [Authorize(Roles = "pedd_participante_edit")]
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
