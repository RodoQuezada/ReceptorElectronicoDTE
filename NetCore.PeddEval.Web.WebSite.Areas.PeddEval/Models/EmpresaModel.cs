using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NetCore.PeddEval.Web.WebSite.Areas.PeddEval.Models
{

    //@uthor: Rodolfo Quezada
    class EmpresaModel
    {

        private Business.EmpresaBS empresa = new Business.EmpresaBS();


        private int Id { get; set; }
        private string Rut { get; set; }
        private string Nombre { get; set; }
        private string Descripcion { get; set; }
        private DateTime AuditFechaCreacion { get; set; }
        private DateTime AuditUltimaFechaActualiza { get; set; }
        private string AuditUsuarioActualiza { get; set; }


        public EmpresaModel()
        {
            Id = 0;
            Rut = string.Empty;
            Nombre = string.Empty;
            Descripcion = string.Empty;
            AuditFechaCreacion = new DateTime();
            AuditUltimaFechaActualiza = new DateTime();
            AuditUsuarioActualiza = string.Empty;

        }

        public EmpresaModel(int id)
        {
            Id = id;
            Rut = string.Empty;
            Nombre = string.Empty;
            Descripcion = string.Empty;
            AuditFechaCreacion = new DateTime();
            AuditUltimaFechaActualiza = new DateTime();
            AuditUsuarioActualiza = string.Empty;
        }

        public EmpresaModel(int id, string rut, string nombre, string descripcion, DateTime auditFechaCreacion, DateTime auditUltimaFechaActualiza, string auditUsuarioActualiza)
        {
            Id = id;
            Rut = rut;
            Descripcion = descripcion;
            AuditFechaCreacion = auditFechaCreacion;
            AuditUltimaFechaActualiza = auditUltimaFechaActualiza;
            AuditUsuarioActualiza = auditUsuarioActualiza;
        }


        public string Insert( string rut, string nombre, string descripcion, string auditUsuarioActualiza)
        {
            Dictionary<string, string> values = new Dictionary<string, string>()
            {
                {"rut", rut },
                {"nombre" , nombre },
                {"descipcion", descripcion },
                {"auditUsuarioActualiza", auditUsuarioActualiza }
            };
            return empresa.InsertEmpresa(values);
        }

        public List<EmpresaModel> getAllEmpresas()
        {
            List<EmpresaModel> lstEmpresas = new List<EmpresaModel>();

            List<string[]> empresas = empresa.getAllEmpresas();

            if (empresas == null)
                return null;

            foreach(var item in empresas)
            {
                int IdEmp;               
                DateTime AuditFechaCreacionEmp;
                DateTime AuditUltimaFechaActualizaEmp;                

                if (!DateTime.TryParse(item[4], out AuditFechaCreacionEmp) || !DateTime.TryParse(item[5], out AuditUltimaFechaActualizaEmp))
                    return null;

                IdEmp = (item[0].Equals("")) ? 0 : int.Parse(item[0]);

                EmpresaModel empresaModel = new EmpresaModel(
                    IdEmp,
                    item[1],
                    item[2],
                    item[3],
                    AuditFechaCreacionEmp,
                    AuditUltimaFechaActualizaEmp,
                    item[6]                    
                    );
                lstEmpresas.Add(empresaModel);
             }
            return lstEmpresas;
        }


    }
}
