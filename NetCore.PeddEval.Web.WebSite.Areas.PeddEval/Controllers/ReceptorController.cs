using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using System.Data;
using NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Controllers
{
    [Authorize]
    public class ReceptorController : CoreLibrary.Web.Base.Controller
    {

        [Authorize]
        public ActionResult Index()
        {
            int IdEmpresa = 0;
            int IdUsuario = 0;
            List<EmpresaModel> _listaEmpresas = new List<EmpresaModel>();
            EmpresaModel empresaModel = new EmpresaModel();
            Business.EmpresaBS empresaBS = new Business.EmpresaBS();
            DataTable _empresas = empresaBS.SelectByIdEmpresa(IdEmpresa, IdUsuario);

            foreach(DataRow row in _empresas.Rows)
            {
                empresaModel.Id =   Int32.Parse( (row["ID"].ToString()));
                empresaModel.Nombre = row["Nombre"].ToString();
                empresaModel.Descripcion = row["Descripcion"].ToString();
                empresaModel.Rut = row["Rut"].ToString();

                _listaEmpresas.Add(empresaModel);
            }



            ViewBag.Receptor = null;

            return View();
        }

        [HttpGet]
        public ActionResult Create()
        {
            
            
            //se carga el viewbag de los Estados

            return View();
        }

        [Authorize]
        public ActionResult Condiciones()
        {

            string id = "1";
            string condicion = "condicion prueba";
            string entidad = "entidad prueba";
            DataTable table = new DataTable();

            table.Columns.Add("ID", typeof(string));
            table.Columns.Add("Condicion", typeof(string));
            table.Columns.Add("Entidad", typeof(string));         

            DataRow row;
            row = table.NewRow();
            row["ID"] = id;
            row["Condicion"] = condicion;
            row["Entidad"] = entidad;
            table.Rows.Add(row);
          



            ViewBag.Regla = table;

            return View();
        }

        [HttpPost]
        public ActionResult ChosenDropDown()
        {
            // insert method 
            return RedirectToAction("Create");
        }



    }
}
