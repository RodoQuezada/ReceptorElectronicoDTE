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
    public class DepartamentoBS : CommonBusiness
    {
        private DataAccess.Departamento datDepartamento;
        protected string className;
        public DepartamentoBS()
        {
            className = string.Format("{0}.{1}", this.GetType().Namespace, this.GetType().Name);     
            this.datDepartamento = new DataAccess.Departamento();
        }
        public DataTable Todos()
        {
            DataTable dt = this.datDepartamento.SelectAll();
            this.Result = this.datDepartamento.Result;
            if (this.Result.HasError)
                return null;
            
            return dt;
        }

 
        public DataTable Select(int IdDepartmento)
        {
            DataTable dt = this.datDepartamento.Select(IdDepartmento);
            this.Result = this.datDepartamento.Result;
            return dt;
        }
 
    }
}
