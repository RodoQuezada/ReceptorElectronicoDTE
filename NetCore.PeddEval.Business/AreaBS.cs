using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;
using System.Data;
using CoreLibrary;
using CoreLibrary.Business;

namespace NetCore.PeddEval.Business
{
    public class AreaBS : CommonBusiness
    {
        private DataAccess.AreaDA datAreaDA;
        protected string className;

        public AreaBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);
            this.datAreaDA = new DataAccess.AreaDA();
        }

        public DataTable AreasbyEmpresa(int empresa_id)
        {
            DataTable dt = this.datAreaDA.SelectAreabyEmpresaAll(empresa_id);
            this.Result = this.datAreaDA.Result;
            if (this.Result.HasError)
                return null;

            return dt;
        }

        public string InsertAreabyEmpresa(string codArea, string rutEmpresa, string nombre, string descripcion, int auditNoEliminar, DateTime auditFechaCreacion, DateTime auditUltimaFechaActualiza, string auditUsuarioActualiza)
        {

         return  datAreaDA.Insert(codArea, rutEmpresa, nombre, descripcion, auditNoEliminar, auditFechaCreacion, auditUltimaFechaActualiza, auditUsuarioActualiza); 
        }
    }
}
